#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <stdint.h>

#include "platform.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xparameters.h"
#include "zybo_z7_hdmi/display_ctrl.h"
#include <sleep.h>

#include <ff.h>
#include <xgpio.h>
#include <xstatus.h>

#include <arm_neon.h>
#include "xtmrctr.h"

/* ---------------- Ajutor pentru temporizatorul AXI (xtmrctr) ---------------- */
static XTmrCtr *pTimer = (XTmrCtr *)XPAR_XTMRCTR_0_BASEADDR; // pointer direct, fara reset
static double timer_clock_hz = (double)XPAR_XTMRCTR_0_CLOCK_FREQUENCY;
static double clock_period = 1.0 / XPAR_XTMRCTR_0_CLOCK_FREQUENCY;
static uint32_t start_tick = 0;
static uint32_t stop_tick  = 0;
static int timer_running = 0;

void axiTimerHelperInit(void)
{
    // Nu apelam XTmrCtr_Initialize! Temporizatorul este deja configurat de platforma.
    start_tick = 0;
    stop_tick = 0;
    timer_running = 0;
}

void startTimer(void)
{
    start_tick = XTmrCtr_GetValue(pTimer, 0);
    timer_running = 1;
}

void stopTimer(void)
{
    stop_tick = XTmrCtr_GetValue(pTimer, 0);
    timer_running = 0;
}

double getElapsedTimeInSeconds(void)
{
    uint32_t t_start = start_tick;
    uint32_t t_stop = timer_running ? XTmrCtr_GetValue(pTimer, 0) : stop_tick;

    uint32_t diff = (t_stop >= t_start) ? (t_stop - t_start) : (0xFFFFFFFF - t_start + 1 + t_stop);
    return (double)diff / timer_clock_hz;
}

double getElapsedTimeInMilliseconds(void)
{
    return getElapsedTimeInSeconds() * 1000.0;
}
/* ----------------------------------------------------------- */
XGpio gpio;
// Functii ajutatoare pentru GPIO (butoane si switch-uri)
int initButtonsAndSwitches(void)
{
    if (XGpio_Initialize(&gpio, XPAR_AXI_GPIO_BTN_AND_SW_BASEADDR) != XST_SUCCESS) {
        xil_printf("Failed to init GPIO (buttons/switches)\n");
        return XST_FAILURE;
    }

    XGpio_SetDataDirection(&gpio, 1, 0xF); // canalul 1 - butoane ca intrare
    XGpio_SetDataDirection(&gpio, 2, 0xF); // canalul 2 - switch-uri ca intrare
    return XST_SUCCESS;
}

int readButtons(void) {
    return XGpio_DiscreteRead(&gpio, 1) & 0xF;
}

int readSwitches(void) {
    return XGpio_DiscreteRead(&gpio, 2) & 0xF;
}
/*-------------------------------------------------------------*/
#define MAX_FRAME      (640 * 480)
#define FRAME_STRIDE   (640 * 4)

DisplayCtrl dispCtrl;
u32 frameBuf[DISPLAY_NUM_FRAMES][MAX_FRAME] __attribute__((aligned(0x20)));
void *pFrames[DISPLAY_NUM_FRAMES];

/* Numele fisierelor BMP de pe cardul SD */
#define RGB_FILENAME   "bucovina.bmp"
#define GRAY_FILENAME  "cat_gray.bmp"

/* Structura pentru datele imaginii incarcate */
typedef struct {
    uint8_t *rgb24;       /* buffer RGB24 continuu: width*height*3 bytes (R,G,B) */
    uint32_t width;
    uint32_t height;
    uint32_t bytes;       /* width*height*3 */
} ImageRGB;

/* Functii ajutatoare pentru citire in format Little Endian */
static inline uint16_t le16(const uint8_t *p) {
    return (uint16_t)(p[0] | (p[1] << 8));
}

static inline uint32_t le32(const uint8_t *p) {
    return (uint32_t)(p[0] | (p[1] << 8) | (p[2] << 16) | (p[3] << 24));
}

/* Functie pentru incarcarea unui fisier BMP (24-bit BI_RGB sau 8-bit paletizat BI_RGB)
   - fname: numele fisierului (ex: "cat_rgb.bmp")
   - out: pointer catre structura ImageRGB (aloca automat memorie pentru out->rgb24)
   Returneaza XST_SUCCESS sau XST_FAILURE
*/
int load_bmp_as_rgb24(const char *fname, ImageRGB *out) {
    FIL fil;
    FATFS fatfs;
    FRESULT res;
    UINT read;

    memset(out, 0, sizeof(ImageRGB));

    res = f_mount(&fatfs, "0:/", 0);
    if (res != FR_OK) {
        xil_printf("f_mount error %d\n", res);
        return XST_FAILURE;
    }

    res = f_open(&fil, fname, FA_READ);
    if (res != FR_OK) {
        xil_printf("f_open(%s) error %d\n", fname, res);
        return XST_FAILURE;
    }

    /* Citim headerul BMP (minim 54 bytes) */
    uint8_t header[54];
    res = f_read(&fil, header, sizeof(header), &read);
    if (res != FR_OK || read != sizeof(header)) {
        xil_printf("Error reading BMP header %d read=%u\n", res, read);
        f_close(&fil);
        return XST_FAILURE;
    }

    if (header[0] != 'B' || header[1] != 'M') {
        xil_printf("Not a BMP file: %s\n", fname);
        f_close(&fil);
        return XST_FAILURE;
    }

    uint32_t bfOffBits = le32(&header[10]);
    int32_t biWidth = (int32_t)le32(&header[18]);
    int32_t biHeight = (int32_t)le32(&header[22]);
    uint16_t biPlanes = le16(&header[26]);
    uint16_t biBitCount = le16(&header[28]);
    uint32_t biCompression = le32(&header[30]);

    if (biPlanes != 1) {
        xil_printf("Unsupported BMP planes != 1\n");
        f_close(&fil);
        return XST_FAILURE;
    }

    if (biCompression != 0) {
        xil_printf("Unsupported BMP compression (only BI_RGB)\n");
        f_close(&fil);
        return XST_FAILURE;
    }

    uint32_t width = (uint32_t)biWidth;
    uint32_t height = (uint32_t)(biHeight < 0 ? -biHeight : biHeight);
    bool top_down = (biHeight < 0);

    /* Daca imaginea este paletizata (8-bit), citim paleta */
    uint8_t *palette = NULL;
    uint32_t palette_entries = 0;
    if (biBitCount == 8) {
        if (bfOffBits <= 54) {
            xil_printf("Invalid BMP (no palette)\n");
            f_close(&fil);
            return XST_FAILURE;
        }
        palette_entries = (bfOffBits - 54) / 4;
        if (palette_entries == 0) palette_entries = 256;
        if (palette_entries > 256) palette_entries = 256;
        palette = (uint8_t *)malloc(palette_entries * 4);
        if (!palette) {
            xil_printf("No memory for palette\n");
            f_close(&fil);
            return XST_FAILURE;
        }

        /* Citim paleta dupa header */
        res = f_read(&fil, palette, palette_entries * 4, &read);
        if (res != FR_OK || read != (palette_entries * 4)) {
            xil_printf("Error reading palette\n");
            free(palette);
            f_close(&fil);
            return XST_FAILURE;
        }
    } else {
        /* Daca este 24-bit, mergem direct la datele imaginii */
        if (bfOffBits > 54) {
            if (f_lseek(&fil, bfOffBits) != FR_OK) {
                xil_printf("f_lseek -> bfOffBits failed\n");
                f_close(&fil);
                return XST_FAILURE;
            }
        }
    }

    /* Alocam memorie pentru imagine */
    uint64_t needed = (uint64_t)width * (uint64_t)height * 3ULL;
    if (needed == 0) {
        xil_printf("Invalid BMP size 0\n");
        if (palette) free(palette);
        f_close(&fil);
        return XST_FAILURE;
    }

    uint8_t *buf = (uint8_t *)malloc((size_t)needed);
    if (!buf) {
        xil_printf("Failed to malloc image buffer (%u bytes)\n", (unsigned)needed);
        if (palette) free(palette);
        f_close(&fil);
        return XST_FAILURE;
    }

    /* Citim randurile imaginii in ordinea potrivita */
    if (biBitCount == 24) {
        uint32_t row_padded = ((width * 3 + 3) & ~3);
        uint8_t *rowbuf = (uint8_t *)malloc(row_padded);
        if (!rowbuf) {
            xil_printf("No memory for row buffer\n");
            free(buf);
            if (palette) free(palette);
            f_close(&fil);
            return XST_FAILURE;
        }

        for (uint32_t row = 0; row < height; row++) {
            uint32_t bmpRow = top_down ? row : (height - 1 - row);
            uint32_t pos = bfOffBits + bmpRow * row_padded;
            if (f_lseek(&fil, pos) != FR_OK) {
                xil_printf("f_lseek row %u failed\n", row);
                free(rowbuf);
                free(buf);
                if (palette) free(palette);
                f_close(&fil);
                return XST_FAILURE;
            }
            if (f_read(&fil, rowbuf, row_padded, &read) != FR_OK || read != row_padded) {
                xil_printf("f_read row %u failed\n", row);
                free(rowbuf);
                free(buf);
                if (palette) free(palette);
                f_close(&fil);
                return XST_FAILURE;
            }

            uint8_t *dst = buf + row * width * 3;
            for (uint32_t x = 0; x < width; x++) {
                uint32_t s = x * 3;
                uint8_t b = rowbuf[s + 0];
                uint8_t g = rowbuf[s + 1];
                uint8_t r = rowbuf[s + 2];
                dst[x*3 + 0] = r;
                dst[x*3 + 1] = g;
                dst[x*3 + 2] = b;
            }
        }
        free(rowbuf);
    } else if (biBitCount == 8) {
        uint32_t row_padded = ((width + 3) & ~3);
        uint8_t *rowbuf = (uint8_t *)malloc(row_padded);
        if (!rowbuf) {
            xil_printf("No memory for 8-bit rowbuf\n");
            free(buf);
            if (palette) free(palette);
            f_close(&fil);
            return XST_FAILURE;
        }

        for (uint32_t row = 0; row < height; row++) {
            uint32_t bmpRow = top_down ? row : (height - 1 - row);
            uint32_t pos = bfOffBits + bmpRow * row_padded;
            if (f_lseek(&fil, pos) != FR_OK) {
                xil_printf("f_lseek 8bit row %u failed\n", row);
                free(rowbuf);
                free(buf);
                if (palette) free(palette);
                f_close(&fil);
                return XST_FAILURE;
            }
            if (f_read(&fil, rowbuf, row_padded, &read) != FR_OK || read != row_padded) {
                xil_printf("f_read 8bit row %u failed\n", row);
                free(rowbuf);
                free(buf);
                if (palette) free(palette);
                f_close(&fil);
                return XST_FAILURE;
            }

            uint8_t *dst = buf + row * width * 3;
            for (uint32_t x = 0; x < width; x++) {
                uint8_t idx = rowbuf[x];
                /* Paleta BMP stocata ca B,G,R,0 */
                uint32_t paloff = idx * 4;
                uint8_t b = palette[paloff + 0];
                uint8_t g = palette[paloff + 1];
                uint8_t r = palette[paloff + 2];
                dst[x*3 + 0] = r;
                dst[x*3 + 1] = g;
                dst[x*3 + 2] = b;
            }
        }
        free(rowbuf);
        free(palette);
    } else {
        xil_printf("Unsupported BMP bitcount %u for %s\n", biBitCount, fname);
        free(buf);
        if (palette) free(palette);
        f_close(&fil);
        return XST_FAILURE;
    }

    f_close(&fil);
    out->rgb24 = buf;
    out->width = width;
    out->height = height;
    out->bytes = (uint32_t)needed;
    xil_printf("Loaded %s (%ux%u) -> %u bytes\n", fname, width, height, (unsigned)out->bytes);
    return XST_SUCCESS;
}

/* Initializare controler de afisare */
static int init_display_controller() {
    int i;
    for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
        pFrames[i] = frameBuf[i];

    DisplayInitialize(&dispCtrl, (u16)XPAR_XAXIVDMA_0_BASEADDR,
                      (u16)XPAR_XVTC_0_BASEADDR,
                      XPAR_HDMI_AXI_DYNCLK_0_BASEADDR,
                      pFrames, FRAME_STRIDE);
    DisplayChangeFrame(&dispCtrl, 0);
    DisplaySetMode(&dispCtrl, &VMODE_640x480);
    DisplayStart(&dispCtrl);
    xil_printf("Display started: %s (%.3f MHz)\n", dispCtrl.vMode.label, dispCtrl.pxlFreq);
    return XST_SUCCESS;
}

/* Conversie imagine RGB24 catre bufferul video HDMI, cu scalare */
void rgb24_to_vdma32_scaled_display_db(const uint8_t *src,
                                       uint32_t src_w, uint32_t src_h,
                                       uint32_t dst_w, uint32_t dst_h,
                                       uint32_t stride)
{
    if (!src || src_w == 0 || src_h == 0 || dst_w == 0 || dst_h == 0) return;

    /* Selectam bufferul din spate (cel invizibil) */
    uint32_t back = !dispCtrl.curFrame;
    uint32_t *dst = (uint32_t *)dispCtrl.framePtr[back];
    if (!dst) {
        xil_printf("ERROR: framePtr[%u] nul\n", back);
        return;
    }

    /* Conversie si scalare: scriem complet imaginea in back buffer */
    if (src_w == dst_w && src_h == dst_h) {
        for (uint32_t y = 0; y < dst_h; ++y) {
            const uint8_t *srcRow = src + y * src_w * 3;
            uint32_t *dstRow = dst + y * stride;
            for (uint32_t x = 0; x < dst_w; ++x) {
                uint8_t r = srcRow[x*3 + 0];
                uint8_t g = srcRow[x*3 + 1];
                uint8_t b = srcRow[x*3 + 2];
                dstRow[x] = ((uint32_t)r << 16) | ((uint32_t)g << 8) | (uint32_t)b;
            }
        }
    } else {
        for (uint32_t y = 0; y < dst_h; ++y) {
            uint32_t srcY = (y * src_h) / dst_h;
            const uint8_t *srcRow = src + srcY * src_w * 3;
            uint32_t *dstRow = dst + y * stride;
            for (uint32_t x = 0; x < dst_w; ++x) {
                uint32_t srcX = (x * src_w) / dst_w;
                uint8_t r = srcRow[srcX*3 + 0];
                uint8_t g = srcRow[srcX*3 + 1];
                uint8_t b = srcRow[srcX*3 + 2];
                dstRow[x] = ((uint32_t)r << 16) | ((uint32_t)g << 8) | (uint32_t)b;
            }
        }
    }

    /* Golim cache-ul pentru zona scrisa */
    size_t flush_size = (size_t)dst_h * (size_t)stride * 4u;
    Xil_DCacheFlushRange((UINTPTR)dst, flush_size);

    /* Schimbam cadrele (back devine front) */
    DisplayChangeFrame(&dispCtrl, back);
    /* Asteptam sincronizarea pentru a evita efectul de tearing */
    DisplayWaitForSync(&dispCtrl);
}

/* Adunare cu factor aditiv */
void add_neon_rgb24(const uint8_t *src, uint8_t *dst, uint32_t bytes, uint8_t factor)
{
   // TO DO
}

/* Negativul imaginii */
void negative_neon_rgb24(const uint8_t *src, uint8_t *dst, uint32_t bytes)
{
    // TO DO
}

/* Transformare imagine RGB in tonuri de gri */
void grayscale_neon_rgb24(const uint8_t *src, uint8_t *dst, uint32_t pixels) {
  // TO DO
}

/* Bucla principala: citeste butoanele si afiseaza imaginea corespunzatoare */
static void main_loop(const ImageRGB *img_rgb) {
    int btn_data;
    int sw_data;
    xil_printf("Ready: Btn0=RGB, Btn1=GRY, Btn2=ADD, Btn3=THR. SW=param (0..15 -> 0..255)\n");

    // Alocam buffer temporar RGB24 (reutilizat) — dimensiune = src_w * src_h * 3
    size_t tmp_bytes = (size_t)img_rgb->width * img_rgb->height * 3;
    uint8_t *tmp_rgb24 = (uint8_t *)malloc(tmp_bytes);
    if (!tmp_rgb24) {
        xil_printf("ERROR: nu am putut aloca tmp_rgb24 (%u bytes)\n", (unsigned)tmp_bytes);
        // Daca nu avem memorie, continuam doar cu imaginea originala
    }
   
    while (1) {
		//se citeste valoarea butoanelor si a switch-urilor
        btn_data = readButtons();
        sw_data  = readSwitches(); /* 0..15 */

        uint8_t param = (uint8_t)(sw_data * 17); /* scala 0..255 */
        const uint8_t *src_for_display = NULL;
        bool want_render = false;    

       if (btn_data & 0x1) { // RGB
	        //daca butonul 1 e apasat afisam poza originala 
            src_for_display = img_rgb->rgb24;
            want_render = true;
            
        while (readButtons() & 0x1) usleep(40000);
    } else if (btn_data & 0x2) { // GRAY
       
        uint32_t src_pixels = img_rgb->width * img_rgb->height;
		//daca butonul 2 e apasat afisam poza in tonuri de gri
        grayscale_neon_rgb24(img_rgb->rgb24, tmp_rgb24, src_pixels);
        
		src_for_display = tmp_rgb24;               
        want_render = true;

        while (readButtons() & 0x2) usleep(40000);
    }else if (btn_data & 0x4) {
        //daca butonul 3 e apasat afisam poza modificata cu un factor aditiv 
        add_neon_rgb24(img_rgb->rgb24, tmp_rgb24, (uint32_t)tmp_bytes, param);
               
        src_for_display = tmp_rgb24; 
        want_render = true;
       
    }else if (btn_data & 0x8) {
         //daca butonul 4 e apasat afisam negativul imaginii
         negative_neon_rgb24(img_rgb->rgb24, tmp_rgb24, (uint32_t)tmp_bytes);
               
         src_for_display = tmp_rgb24; 
         want_render = true;
        
    }
    else {
            usleep(50000);
        }
    
       if (want_render && src_for_display) {
            rgb24_to_vdma32_scaled_display_db(src_for_display, img_rgb->width, img_rgb->height,
                                  dispCtrl.vMode.width, dispCtrl.vMode.height,
                                  dispCtrl.stride / 4);
        }      
    }
}

int main() {
    init_platform();
    initButtonsAndSwitches();   // Initializare GPIO pentru butoane
    init_display_controller();  // Pornire display
    axiTimerHelperInit(); 
    
    xil_printf("BMP large-file display example\n");

    /* Dezactivam cache-ul in timpul citirii de pe SD */
    Xil_DCacheDisable();

    ImageRGB img_rgb = {0};

    if (load_bmp_as_rgb24(RGB_FILENAME, &img_rgb) != XST_SUCCESS) {
        xil_printf("Failed to load RGB BMP '%s'\n", RGB_FILENAME);
        cleanup_platform();
        return XST_FAILURE;
    }
   /* Optional: reactivam cache-ul dupa incarcare */
   /* Xil_DCacheEnable(); */
    main_loop(&img_rgb);

    /* In mod normal, nu se ajunge aici */
    free(img_rgb.rgb24);
    cleanup_platform();
    return 0;
}
