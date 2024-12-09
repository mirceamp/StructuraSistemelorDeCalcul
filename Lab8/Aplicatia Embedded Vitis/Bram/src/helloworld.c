/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
#include <sleep.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include "platform.h"
#include "xil_printf.h"
#include "xsdps.h"       // Drivere pentru cardul SD
#include <ff.h>
#include "xparameters.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "xgpio.h"

FATFS fatfs;              // Structura pentru sistemul de fișiere
FIL file;                 // Structura pentru fișier
FRESULT result;           // Variabila pentru rezultatele funcțiilor FatFS

#define BMP_HEADER_SIZE 54

#define BRAM0_BASE_ADDR XPAR_XBRAM_0_BASEADDR
#define BRAM1_BASE_ADDR XPAR_XBRAM_1_BASEADDR
#define BRAM2_BASE_ADDR XPAR_XBRAM_2_BASEADDR
#define BRAM3_BASE_ADDR XPAR_XBRAM_3_BASEADDR

XGpio startOperation, finishOperation;

int write_grayscale_image(const char* filename, uint8_t* pixelBuffer, int width, int height) 
{
    FIL newImageFile;
    FRESULT result;

    // Define BMP header size
    uint8_t bmpHeader[54] = {
        'B', 'M',  // Signature
        0, 0, 0, 0,  // File size (to be filled later)
        0, 0,  // Reserved1
        0, 0,  // Reserved2
        54 + 1024, 0, 0, 0,  // Offset to pixel data (54 header + 1024 palette)
        40, 0, 0, 0,  // Header size
        0, 0, 0, 0,  // Width (to be filled later)
        0, 0, 0, 0,  // Height (to be filled later)
        1, 0,  // Number of color planes
        8, 0,  // Bits per pixel (8 for grayscale)
        0, 0, 0, 0,  // Compression (none)
        0, 0, 0, 0,  // Image size (can be 0 for uncompressed)
        0x13, 0x0B, 0, 0,  // Horizontal resolution (2835 pixels/meter)
        0x13, 0x0B, 0, 0,  // Vertical resolution (2835 pixels/meter)
        0, 0, 0, 0,  // Number of colors in the palette (0 means all)
        0, 0, 0, 0   // Important color count (0 means all)
    };

    // Set width and height in the header
    bmpHeader[18] = (uint8_t)(width & 0xFF);
    bmpHeader[19] = (uint8_t)((width >> 8) & 0xFF);
    bmpHeader[20] = (uint8_t)((width >> 16) & 0xFF);
    bmpHeader[21] = (uint8_t)((width >> 24) & 0xFF);
    
    bmpHeader[22] = (uint8_t)(height & 0xFF);
    bmpHeader[23] = (uint8_t)((height >> 8) & 0xFF);
    bmpHeader[24] = (uint8_t)((height >> 16) & 0xFF);
    bmpHeader[25] = (uint8_t)((height >> 24) & 0xFF);

    // Calculate the size of the BMP file
    int pixelDataSize = width * height; // For 8-bit grayscale
    int fileSize = 54 + 1024 + pixelDataSize; // Header + Palette + Pixel Data

    // Set the file size in the header
    bmpHeader[2] = (uint8_t)(fileSize & 0xFF);
    bmpHeader[3] = (uint8_t)((fileSize >> 8) & 0xFF);
    bmpHeader[4] = (uint8_t)((fileSize >> 16) & 0xFF);
    bmpHeader[5] = (uint8_t)((fileSize >> 24) & 0xFF);

    // Open the new file for writing
    result = f_open(&newImageFile, filename, FA_CREATE_ALWAYS | FA_WRITE);
    if (result != FR_OK) {
        xil_printf("Failed to open file for writing\n");
        return XST_FAILURE;
    }

    // Write the BMP header
    uint bytesWritten;
    result = f_write(&newImageFile, bmpHeader, sizeof(bmpHeader), &bytesWritten);
    if (result != FR_OK || bytesWritten != sizeof(bmpHeader)) {
        f_close(&newImageFile);
        xil_printf("Failed to write BMP header\n");
        return XST_FAILURE;
    }

    // Write the color palette (grayscale)
    for (int i = 0; i < 256; i++) {
        uint8_t color[4] = { (uint8_t)i, (uint8_t)i, (uint8_t)i, 0 }; // B, G, R, Reserved
        result = f_write(&newImageFile, color, 4, &bytesWritten);
        if (result != FR_OK || bytesWritten != 4) {
            f_close(&newImageFile);
            xil_printf("Failed to write color palette\n");
            return XST_FAILURE;
        }
    }

    // Write pixel data
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            // Each pixel is written as a single byte (index to palette)
            uint8_t grayValue = pixelBuffer[i * width + j];
            result = f_write(&newImageFile, &grayValue, 1, &bytesWritten);
            if (result != FR_OK || bytesWritten != 1) {
                f_close(&newImageFile);
                xil_printf("Failed to write pixel data\n");
                return XST_FAILURE;
            }
        }
        // Write padding for the row (each row must be a multiple of 4 bytes)
        int paddingSize = (4 - (width % 4)) % 4;
        for (int padding = 0; padding < paddingSize; padding++) {
            uint8_t paddingByte = 0;
            f_write(&newImageFile, &paddingByte, 1, &bytesWritten);
        }
    }

    f_close(&newImageFile);
    xil_printf("Grayscale image saved to %s\n", filename);
    return XST_SUCCESS;
}


int main()
{
   xil_printf("Incepem\n");
   XGpio_Initialize(&startOperation, XPAR_AXI_GPIO_START_BASEADDR);
   XGpio_Initialize(&finishOperation, XPAR_AXI_GPIO_FINISHED_BASEADDR);

  XGpio_SetDataDirection(&startOperation, 1, 0);//iesire
  XGpio_SetDataDirection(&finishOperation, 1, 1);//intrare


  init_platform();
   
  uint32_t imageSize;
  result = f_mount(&fatfs, "0:/", 1);
    if (result != FR_OK) {
        xil_printf("Eroare la montarea cardului SD. Cod eroare: %d\n", result);
        return XST_FAILURE;
    }

  // Deschidem fișierul BMP
result = f_open(&file, "image.bmp", FA_READ);
if (result != FR_OK) {
    xil_printf("Eroare la deschiderea fișierului BMP. Cod eroare: %d\n", result);
    f_mount(NULL, "0:/", 1);
    return XST_FAILURE;
}

// Citim antetul BMP
uint8_t bmpHeader[BMP_HEADER_SIZE];
uint bytesRead;
result = f_read(&file, bmpHeader, BMP_HEADER_SIZE, &bytesRead);
if (result != FR_OK || bytesRead != BMP_HEADER_SIZE) {
    xil_printf("Eroare la citirea antetului BMP.\n");
    f_close(&file);
    f_mount(NULL, "0:/", 1);
    return XST_FAILURE;
}

// Verificăm semnătura BMP ('B' și 'M')
if (bmpHeader[0] != 'B' || bmpHeader[1] != 'M') {
    xil_printf("Fișierul nu este în format BMP valid.\n");
    f_close(&file);
    f_mount(NULL, "0:/", 1);
    return XST_FAILURE;
}

// Extragem dimensiunea și offset-ul datelor pixelilor
uint32_t dataOffset = *(uint32_t*)&bmpHeader[10];
uint32_t width = *(uint32_t*)&bmpHeader[18];
uint32_t height = *(uint32_t*)&bmpHeader[22];
uint16_t bitsPerPixel = *(uint16_t*)&bmpHeader[28];
imageSize = width * height;

// Verificăm dacă imaginea este 8 biți grayscale
if (bitsPerPixel != 8) {
    xil_printf("Imaginea nu este grayscale de 8 biți.\n");
    f_close(&file);
    f_mount(NULL, "0:/", 1);
    return XST_FAILURE;
}

xil_printf("Dimensiunea imaginii (grayscale): %d x %d\n", width, height);

// Mutăm poziția în fișier la offset-ul de date
f_lseek(&file, dataOffset);

// Calculăm numărul de biți de padding pe fiecare linie
uint32_t padding = (4 - (width % 4)) % 4;

// Citim datele pixelilor
uint8_t pixel;
uint8_t *image;
image = (uint8_t *)malloc(height * width * sizeof(uint8_t));

for (uint32_t row = 0; row < height; row++) {
    int iw = row * width;
    for (uint32_t col = 0; col < width; col++) {
        result = f_read(&file, &pixel, 1, &bytesRead);
        if (result != FR_OK || bytesRead != 1) {
            xil_printf("Eroare la citirea pixelului (%d, %d).\n", row, col);
            free(image);  // Eliberăm memoria alocată
            f_close(&file);
            f_mount(NULL, "0:/", 1);
            return XST_FAILURE;
        }
        // Afișăm valoarea pixelului în hexazecimal (opțional)
        image[iw + col] = pixel;
    }
    // Sărim peste padding-ul necesar (înaintăm cursorul manual)
    uint32_t bytesToSkip = padding;
    while (bytesToSkip > 0) {
        uint8_t temp; // pentru a citi byte-ul pe care-l sărim
        result = f_read(&file, &temp, 1, &bytesRead);
        if (result != FR_OK || bytesRead != 1) {
            xil_printf("Eroare la sărirea padding-ului pe linia %d.\n", row);
            free(image);  // Eliberăm memoria alocată
            f_close(&file);
            f_mount(NULL, "0:/", 1);
            return XST_FAILURE;
        }
        bytesToSkip--;
    }
}

// Închidem fișierul și demontăm cardul SD
f_close(&file);
 
    xil_printf("Citirea imaginii BMP s-a incheiat.\n");
    xil_printf("Incepem Transferul in BRAM.\n");
     
    Xil_DCacheDisable();
    //copiem pe fiecare BRAM valorile corespunzatoare
    // Transferăm imaginea în cele 4 BRAM-uri
    int b1,b2,b3,b4;
    uint32_t index1,index2,index3,index4;
    b1 = 0; b2 = 0; b3 = 0; b4 = 0;
    index1 = 0;
    index2 = 0;
    index3 = 0;
    index4 = 0;
    uint32_t bram_index = 0; // Valorile vor fi 0, 1, 2, 3

for (uint32_t i = 0; i < imageSize; i += 4) {
    if (i >= 32768) {  // Capacitatea totală a celor 4 BRAM-uri este de 32768 octeți
        xil_printf("Imaginea este prea mare pentru BRAM.\n");
        break;
    }
    
    uint32_t pixel_word = (image[i] << 24);
    if (i + 1 < imageSize) pixel_word |= (image[i + 1] << 16);
    if (i + 2 < imageSize) pixel_word |= (image[i + 2] << 8);
    if (i + 3 < imageSize) pixel_word |= image[i + 3];
    xil_printf("Valorile pixelilor sunt %u %u %u %u \n",image[i], image[i + 1],  image[i + 2], image[i + 3] ) ;
    uint32_t address_offset;
    
   if((i / 4) < 2048 && (i / 4) >= 0)
   {
     bram_index = 0;   
     address_offset = index1;
     index1+=4;
   }
   else if((i / 4) < 2 * 2048 && (i / 4) >= 2048)
   {
     bram_index = 1; 
     address_offset = index2;
     index2+=4;  
   }
   else if((i / 4) < 3 * 2048 && (i / 4) >= 2 * 2048 )
   {
     bram_index = 2;  
     address_offset = index3;
     index3+=4; 
   }
   else {
     bram_index = 3;
     address_offset = index4;
     index4+=4; 
   }
   // Determinăm în care BRAM să scriem
  
    xil_printf("Suntem la pixelii %d %d %d %d care sunt plasati in BRAMUL %d.\n", i, i + 1, i + 2, i + 3,bram_index);
    
    switch (bram_index) {
        case 0:
            Xil_Out32(BRAM0_BASE_ADDR + address_offset, pixel_word); b1++;
            break;
        case 1:
            Xil_Out32(BRAM1_BASE_ADDR + address_offset, pixel_word); b2++;
            break;
        case 2:
            Xil_Out32(BRAM2_BASE_ADDR + address_offset, pixel_word); b3++;
            break;
        case 3:
            Xil_Out32(BRAM3_BASE_ADDR + address_offset, pixel_word); b4++;
            break;
    }
}

    Xil_DCacheEnable();

    xil_printf("Contenturi Bram %d %d %d %d.\n", b1, b2, b3, b3);
    //incepem operatia de binarizare
    XGpio_DiscreteWrite(&startOperation, 1, 1);

    //asteptam ca binarizarea sa se finalizeze
    int gataBinarizare = 0; 
    do{ 
        gataBinarizare = XGpio_DiscreteRead(&finishOperation, 1); 
      }while(gataBinarizare == 0); //facem pooling

    XGpio_DiscreteWrite(&startOperation, 1, 0);
    
    xil_printf("Incepem citirea din BRAM.\n");    
    Xil_DCacheDisable();

    // Citirea imaginii binarizate din BRAM
    
        b1 = 0; b2 = 0; b3 = 0; b4 = 0;
        index1 = 0;
        index2 = 0;
        index3 = 0;
        index4 = 0;
            
    for (uint32_t i = 0; i < imageSize; i += 4) 
    {
        uint32_t address_offset;
            
        if((i / 4) < 2048 && (i / 4) >= 0)
        {
            bram_index = 0;   
            address_offset = index1;
            index1+=4;
        }
        else if((i / 4) < 2 * 2048 && (i / 4) >= 2048)
        {
            bram_index = 1; 
            address_offset = index2
            index2+=4;  
        }
        else if((i / 4) < 3 * 2048 && (i / 4) >= 2 * 2048 )
        {
            bram_index = 2;  
            address_offset = index3;
            index3+=4; 
        }
        else {
            bram_index = 3;
            address_offset = index4;
            index4+=4; 
        }
        // Determinăm în care BRAM să scriem
        
        xil_printf("Citim Pixelii %d %d %d %d care sunt plasati in BRAMUL %d.\n", i, i + 1, i + 2, i + 3,bram_index);

            uint32_t pixel_word;
            switch (bram_index) {
                case 0:
                    pixel_word = Xil_In32(BRAM0_BASE_ADDR + address_offset); b1++;
                    break;
                case 1:
                    pixel_word = Xil_In32(BRAM1_BASE_ADDR + address_offset);b2++;
                    break;
                case 2:
                    pixel_word = Xil_In32(BRAM2_BASE_ADDR + address_offset);b3++;
                    break;
                case 3:
                    pixel_word = Xil_In32(BRAM3_BASE_ADDR + address_offset);b4++;
                    break;
            }
            // Extragem cei 4 pixeli de 8 biți din pixel_word și îi stocăm în output_image
            image[i] = (pixel_word >> 24) & 0xFF;
            image[i + 1] = (pixel_word >> 16) & 0xFF;
            image[i + 2] = (pixel_word >> 8) & 0xFF;
            image[i + 3] = pixel_word & 0xFF;

        xil_printf("Valorile pixelilor sunt %u %u %u %u \n",image[i], image[i + 1],  image[i + 2], image[i + 3] ) ;       
    }
    // Activăm cache-ul din nou după ce citirea este completă
    Xil_DCacheEnable();
    
    xil_printf("Incepem scrierea rezultatului pe disk.\n");

    write_grayscale_image("0:/rezult.bmp",image,  width,  height) ;

    f_mount(NULL, "0:/", 1);

    // Eliberăm memoria
    free(image);
    

    xil_printf("Scrierea imaginii BMP pe disk s-a incheiat.\n");

    cleanup_platform();
    return 0;
}
