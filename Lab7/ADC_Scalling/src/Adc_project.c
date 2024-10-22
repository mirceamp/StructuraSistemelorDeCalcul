/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/


#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "xparameters.h"
#include "xadcps.h"
#include "xadcps_hw.h"
#include <unistd.h> 
#include "xgpio.h"
#include "xil_exception.h"

#define XADC_DEVICE_ID 0
#define LSB_BITS_NOT_USED 4
#define TEMP_CONV_FACTOR 503.975/4096
#define TEMP_CONV_TERM -273.15
#define VOLT_CONV_FACTOR 3.0/4096

#define XADCPS_SEQ_CH_VAUX14 (1 << 30)
#define XADCPS_SEQ_CH_VAUX7  (1 << 23)
#define XADCPS_SEQ_CH_VAUX15 (1 << 31)
#define XADCPS_SEQ_CH_VAUX6  (1 << 22)

static XAdcPs_Config *xadc_cfg;
static XAdcPs xadc_ctl;

XGpio startDvision,inputRst, dividend, divizor, outputDivQ, outputDivR, outputGata;

int main()
{
    init_platform();

    s32 status;
    u16 temp, vccint, vccaux, vbram, vccpint, vccpaux, vccpdro;
    uint16_t factorScalareConstant = 14;

    XGpio_Initialize(&startDvision, XPAR_AXI_GPIO_START_BASEADDR);
    XGpio_Initialize(&inputRst, XPAR_AXI_GPIO_RESETARE_BASEADDR);
    XGpio_Initialize(&dividend, XPAR_AXI_GPIO_DIVIDEND_BASEADDR);
    XGpio_Initialize(&divizor, XPAR_AXI_GPIO_DIVISOR_BASEADDR);
    XGpio_Initialize(&outputDivQ, XPAR_AXI_GPIO_QUOTIENT_BASEADDR);
    XGpio_Initialize(&outputDivR, XPAR_AXI_GPIO_REMAINDER_BASEADDR);
    XGpio_Initialize(&outputGata, XPAR_AXI_GPIO_GATA_BASEADDR);

    XGpio_SetDataDirection(&startDvision, 1, 0);// ieșire 
    XGpio_SetDataDirection(&inputRst, 1, 0);//iesire 
    XGpio_SetDataDirection(&dividend, 1, 0x000);//iesire
    XGpio_SetDataDirection(&divizor, 1, 0x000);//iesire
    XGpio_SetDataDirection(&outputDivQ, 1, 0xFFF);//iesire
    XGpio_SetDataDirection(&outputDivR, 1, 0b1111111111111);//iesiere
    XGpio_SetDataDirection(&outputGata, 1, 1);//iesire

    //u32 vauxp;

    xadc_cfg = XAdcPs_LookupConfig(XADC_DEVICE_ID);
    if(NULL == xadc_cfg)
    {
         print("Configuratia a crapat \n\r");
         return XST_FAILURE;
    }

    status = XAdcPs_CfgInitialize(&xadc_ctl, xadc_cfg, xadc_cfg->BaseAddress);

    if(status != XST_SUCCESS)
    {
         print("Statusul a crapat \n\r");
         return XST_FAILURE;
    }

    print("Configuratia a mers ok incepe procesarea \n\r");

    XAdcPs_SetSequencerMode(&xadc_ctl,XADCPS_SEQ_MODE_CONTINPASS);
    u32 ChannelMask = XADCPS_SEQ_CH_VAUX14 | XADCPS_SEQ_CH_VAUX7 | XADCPS_SEQ_CH_VAUX15 | XADCPS_SEQ_CH_VAUX6;

    XAdcPs_SetSeqChEnables(&xadc_ctl, ChannelMask);
  

    while (1) {
      
    temp = XAdcPs_GetAdcData(&xadc_ctl,XADCPS_CH_TEMP);
    vccint =  XAdcPs_GetAdcData(&xadc_ctl,XADCPS_CH_VCCINT);
    vccaux =  XAdcPs_GetAdcData(&xadc_ctl,XADCPS_CH_VCCAUX);
    vbram =  XAdcPs_GetAdcData(&xadc_ctl,XADCPS_CH_VBRAM);
    vccpint =  XAdcPs_GetAdcData(&xadc_ctl,XADCPS_CH_VCCPINT);
    vccpaux = XAdcPs_GetAdcData(&xadc_ctl,XADCPS_CH_VCCPAUX);
    vccpdro = XAdcPs_GetAdcData(&xadc_ctl,XADCPS_CH_VCCPDRO);
   // vauxp = XAdcPs_GetAdcData(&xadc_ctl, 30);

    printf("Die temperature %.2f C \n",((float)(temp >> LSB_BITS_NOT_USED)) * TEMP_CONV_FACTOR + TEMP_CONV_TERM);
    printf("VCCINT: %.3f V \n", ((float)(vccint >> LSB_BITS_NOT_USED)) * VOLT_CONV_FACTOR);
    printf("VCCAUX: %.3f V \n", ((float)(vccaux >> LSB_BITS_NOT_USED)) * VOLT_CONV_FACTOR);
    printf("VBRAM: %.3f V \n", ((float)(vbram >> LSB_BITS_NOT_USED)) * VOLT_CONV_FACTOR);
    printf("VCCPINT: %.3f V \n", ((float)(vccpint >> LSB_BITS_NOT_USED)) * VOLT_CONV_FACTOR);
    printf("VCCPAUX: %.3f V \n", ((float)(vccpaux >> LSB_BITS_NOT_USED)) * VOLT_CONV_FACTOR);
    printf("VCCPDRO: %.3f V \n", ((float)(vccpdro >> LSB_BITS_NOT_USED)) * VOLT_CONV_FACTOR);

    unsigned long Vaux14Data = XAdcPs_GetAdcData(&xadc_ctl, 30);
    unsigned long Vaux7Data = XAdcPs_GetAdcData(&xadc_ctl, 23);
    unsigned long Vaux15Data = XAdcPs_GetAdcData(&xadc_ctl, 31);
    unsigned long Vaux6Data = XAdcPs_GetAdcData(&xadc_ctl, 22);

    Vaux14Data >>= LSB_BITS_NOT_USED;

    printf("Potentiometer Value: %lu %lu %lu %lu \r\n",Vaux14Data,
                                    (Vaux7Data >> LSB_BITS_NOT_USED),
                                    (Vaux15Data >> LSB_BITS_NOT_USED), 
                                    (Vaux6Data >> LSB_BITS_NOT_USED));
    
    
    XGpio_DiscreteWrite(&inputRst, 1, 0); 
    XGpio_DiscreteWrite(&dividend, 1, Vaux14Data); 
    XGpio_DiscreteWrite(&divizor, 1, factorScalareConstant);
    XGpio_DiscreteWrite(&startDvision, 1, 1);
  
    int gataImpartire = 0;
    do{
        
        gataImpartire = XGpio_DiscreteRead(&outputGata, 1);//facem pooling

    }while(gataImpartire == 0);

    //După ce semnalul gataImpartire devine 1, adăugăm o mică întârziere de 1 milisecundă (usleep(1000)) 
    //pentru a ne asigura că semnalele ieșirii sunt complet stabilizate și propagate
    usleep(1000);
    
    int quotient = XGpio_DiscreteRead(&outputDivQ, 1);
    int remainder = XGpio_DiscreteRead(&outputDivR, 1);

    printf("Quotient Obtinut %d, rest obtinut %d \n",quotient,remainder);

    XGpio_DiscreteWrite(&startDvision, 1, 0);

  // Sleep for a bit to make the output readable
    usleep(1000000); // Întârziere de 1 secundă (1.000.000 microsecunde)
    
    }

    cleanup_platform();

    return 0;
}
