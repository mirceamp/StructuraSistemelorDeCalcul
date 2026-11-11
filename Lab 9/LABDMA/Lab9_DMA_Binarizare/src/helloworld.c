
#include <string.h>

#include "platform.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xstatus.h"
#include "xaxidma.h"
#include "ff.h"

#define MAX_IMAGE_BYTES (1024U * 1024U)
#define MAX_BMP_HEADER 4096U
#define IO_CHUNK 4096U

/* Buffere in DDR, aliniate la 64 octeti */
static u8 input_pixels[MAX_IMAGE_BYTES]
    __attribute__((aligned(64)));

static u8 output_pixels[MAX_IMAGE_BYTES]
    __attribute__((aligned(64)));

static u8 bmp_header[MAX_BMP_HEADER];

static FATFS fatfs;
static XAxiDma dma;

/* Citeste o valoare de 32 de biti din BMP */
static u32 bmp_u32(const u8 *p)
{
    return (u32)p[0] |
           ((u32)p[1] << 8) |
           ((u32)p[2] << 16) |
           ((u32)p[3] << 24);
}

/* Citire date de pe cardul SD */
static int citeste(FIL *f, u8 *dest, u32 bytes)
{
    while (bytes > 0U) {
        UINT n = 0;
        UINT chunk = (bytes > IO_CHUNK) ?
                      IO_CHUNK : (UINT)bytes;

        if (f_read(f, dest, chunk, &n) != FR_OK ||
            n != chunk)
            return XST_FAILURE;

        dest += chunk;
        bytes -= chunk;
    }

    return XST_SUCCESS;
}

/* Scriere date pe cardul SD */
static int scrie(FIL *f, const u8 *src, u32 bytes)
{
    while (bytes > 0U) {
        UINT n = 0;
        UINT chunk = (bytes > IO_CHUNK) ?
                      IO_CHUNK : (UINT)bytes;

        if (f_write(f, src, chunk, &n) != FR_OK ||
            n != chunk)
            return XST_FAILURE;

        src += chunk;
        bytes -= chunk;
    }

    return XST_SUCCESS;
}

/* Initializare AXI DMA */
static int initializare_dma(void)
{
    XAxiDma_Config *cfg;

#ifdef SDT
    cfg = XAxiDma_LookupConfig(
        XPAR_XAXIDMA_0_BASEADDR);
#else
    cfg = XAxiDma_LookupConfig(
        XPAR_AXIDMA_0_DEVICE_ID);
#endif

    if (cfg == NULL)
        return XST_FAILURE;

    if (XAxiDma_CfgInitialize(&dma, cfg)
        != XST_SUCCESS)
        return XST_FAILURE;

    if (XAxiDma_HasSg(&dma))
        return XST_FAILURE;

    /* Dezactivam intreruperile - folosim polling */
    XAxiDma_IntrDisable(
        &dma,
        XAXIDMA_IRQ_ALL_MASK,
        XAXIDMA_DMA_TO_DEVICE);

    XAxiDma_IntrDisable(
        &dma,
        XAXIDMA_IRQ_ALL_MASK,
        XAXIDMA_DEVICE_TO_DMA);

    return XST_SUCCESS;
}

/* Transferul imaginii prin DMA */
static int binarizare_dma(u32 bytes)
{
    int status;

    /* Scriem datele din cache in DDR */
    Xil_DCacheFlushRange(
        (INTPTR)input_pixels, bytes);

    Xil_DCacheFlushRange(
        (INTPTR)output_pixels, bytes);

    /* Pornim receptia: PL -> DDR */
    status = XAxiDma_SimpleTransfer(
        &dma,
        (UINTPTR)output_pixels,
        bytes,
        XAXIDMA_DEVICE_TO_DMA);

    if (status != XST_SUCCESS)
        return XST_FAILURE;

    /* Pornim transmiterea: DDR -> PL */
    status = XAxiDma_SimpleTransfer(
        &dma,
        (UINTPTR)input_pixels,
        bytes,
        XAXIDMA_DMA_TO_DEVICE);

    if (status != XST_SUCCESS)
        return XST_FAILURE;

    /* Asteptam finalizarea transferurilor */
    while (
        XAxiDma_Busy(
            &dma, XAXIDMA_DMA_TO_DEVICE) ||

        XAxiDma_Busy(
            &dma, XAXIDMA_DEVICE_TO_DMA)) {
    }

    /* Actualizam cache-ul cu rezultatul din DDR */
    Xil_DCacheInvalidateRange(
        (INTPTR)output_pixels, bytes);

    return XST_SUCCESS;
}

/* Citire, procesare si salvare imagine BMP */
static int proceseaza_imagine(
    const char *intrare,
    const char *iesire)
{
    FIL f;
    u8 header54[54];
    u32 offset, width, height, bytes;

    xil_printf("\r\nCitire: %s\r\n", intrare);

    if (f_open(&f, intrare, FA_READ) != FR_OK) {
        xil_printf("Eroare deschidere imagine!\r\n");
        return XST_FAILURE;
    }

    /* Citim primii 54 octeti ai antetului BMP */
    if (citeste(&f, header54, 54U) != XST_SUCCESS) {
        f_close(&f);
        return XST_FAILURE;
    }

    /* Extragem dimensiunile si pozitia pixelilor */
    offset = bmp_u32(&header54[10]);
    width  = bmp_u32(&header54[18]);
    height = bmp_u32(&header54[22]);

    /* Verificari minime pentru protectia memoriei */
    if (offset < 54U ||
        offset > MAX_BMP_HEADER ||
        width == 0U ||
        height == 0U ||
        width > 1024U ||
        height > 1024U ||
        (width & 3U) != 0U ||
        height > MAX_IMAGE_BYTES / width) {

        xil_printf("Dimensiuni BMP neacceptate!\r\n");
        f_close(&f);
        return XST_FAILURE;
    }

    bytes = width * height;

    /* Pastram antetul si paleta originala */
    memcpy(bmp_header, header54, 54U);

    if (citeste(&f, bmp_header + 54U,
                offset - 54U) != XST_SUCCESS ||
        citeste(&f, input_pixels,
                bytes) != XST_SUCCESS) {

        xil_printf("Eroare citire BMP!\r\n");
        f_close(&f);
        return XST_FAILURE;
    }

    f_close(&f);

    xil_printf("Imagine: %lu x %lu\r\n",
               (unsigned long)width,
               (unsigned long)height);

    xil_printf("Dimensiune: %lu octeti\r\n",
               (unsigned long)bytes);

    /* Procesarea in acceleratorul VHDL */
    xil_printf("Procesare prin DMA...\r\n");

    if (binarizare_dma(bytes) != XST_SUCCESS) {
        xil_printf("Eroare DMA!\r\n");
        return XST_FAILURE;
    }

    /* Salvam imaginea procesata */
    if (f_open(&f, iesire,
               FA_CREATE_ALWAYS | FA_WRITE) != FR_OK) {

        xil_printf("Eroare creare fisier!\r\n");
        return XST_FAILURE;
    }

    if (scrie(&f, bmp_header, offset) != XST_SUCCESS ||
        scrie(&f, output_pixels, bytes) != XST_SUCCESS) {

        xil_printf("Eroare salvare BMP!\r\n");
        f_close(&f);
        return XST_FAILURE;
    }

    if (f_close(&f) != FR_OK)
        return XST_FAILURE;

    xil_printf("Salvat: %s\r\n", iesire);

    return XST_SUCCESS;
}

int main(void)
{
    init_platform();

    xil_printf(
        "\r\n=== LAB 9 - BMP prin AXI DMA ===\r\n");

    if (initializare_dma() != XST_SUCCESS) {
        xil_printf("Initializare DMA esuata!\r\n");
        cleanup_platform();
        return XST_FAILURE;
    }

    /* Montam cardul SD */
    if (f_mount(&fatfs, "0:/", 1) != FR_OK) {
        xil_printf("Montare card SD esuata!\r\n");
        cleanup_platform();
        return XST_FAILURE;
    }

    /* Procesam prima imagine */
    int r1 = proceseaza_imagine(
        "0:/poz1.bmp",
        "0:/out1.bmp");

    /* Procesam a doua imagine */
    int r2 = proceseaza_imagine(
        "0:/poz2.bmp",
        "0:/out2.bmp");

    f_mount(NULL, "0:/", 0);

    xil_printf("\r\n=== AM FINALIZAT ===\r\n");

    cleanup_platform();

    return (r1 == XST_SUCCESS &&
            r2 == XST_SUCCESS) ?
           XST_SUCCESS : XST_FAILURE;
}