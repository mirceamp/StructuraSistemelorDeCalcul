/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include <xgpio.h>
#include "xparameters.h"
#include "sleep.h"


int main()
{

   XGpio inputButon, inputSwitch, outputLed;
   XGpio inputClaX, inputClaY, inputCin, outputSum, outputCout;

   int button_data = 0;
   int switch_data = 0;
   int operandX,operandY,operandCin;
   operandCin = 0;
   int sumaObtinuta, coutObtinut;
 
   XGpio_Initialize(&inputButon, XPAR_AXI_GPIO_0_BASEADDR);	
   XGpio_Initialize(&inputSwitch, XPAR_AXI_GPIO_1_BASEADDR);
   XGpio_Initialize(&outputLed, XPAR_AXI_GPIO_2_BASEADDR);	
   
   XGpio_Initialize(&inputClaX, XPAR_AXI_GPIO_X_BASEADDR);
   XGpio_Initialize(&inputClaY, XPAR_AXI_GPIO_Y_BASEADDR);
   XGpio_Initialize(&inputCin, XPAR_AXI_GPIO_CIN_BASEADDR);
   XGpio_Initialize(&outputSum, XPAR_AXI_GPIO_SUM_BASEADDR);
   XGpio_Initialize(&outputCout, XPAR_AXI_GPIO_COUT_BASEADDR);
   
//acestea sunt pt periferice
   XGpio_SetDataDirection(&inputButon, 1, 0xF);		
   XGpio_SetDataDirection(&inputSwitch, 1, 0xF);		
   XGpio_SetDataDirection(&outputLed, 1, 0x0);		
   
//acestea sunt pt CLA
   XGpio_SetDataDirection(&inputClaX, 1, 0x0);			
   XGpio_SetDataDirection(&inputClaY, 1, 0x0);			
   XGpio_SetDataDirection(&inputCin, 1, 0);			
   XGpio_SetDataDirection(&outputSum, 1, 0xF);			
   XGpio_SetDataDirection(&outputCout, 1, 1);			
  
    init_platform();

    print("Incepem procesarea in Labul 4 \n");

    while(1){

      switch_data = XGpio_DiscreteRead(&inputSwitch, 1);	//get switch data
 
      button_data = XGpio_DiscreteRead(&inputButon, 1);	//get button data

      //printeaza mesaje in functie de butoanele apasate
      if(button_data == 0b00000){} //do nothing
 
      else if(button_data == 0b00001)
      {
          operandX = switch_data;
          printf("Operandul X este %d \n",operandX);
      }
      else if(button_data == 0b00010)
      { 
        operandY = switch_data;
        printf("Operandul Y este %d \n",operandY);
      }
      else if(button_data == 0b00100)
      {
          XGpio_DiscreteWrite(&inputClaX, 1, operandX);
          XGpio_DiscreteWrite(&inputClaY, 1, operandY);
          XGpio_DiscreteWrite(&inputCin, 1, operandCin);
        
        sumaObtinuta = XGpio_DiscreteRead(&outputSum, 1);
        coutObtinut = XGpio_DiscreteRead(&outputCout, 1);

        XGpio_DiscreteWrite(&outputLed, 1, sumaObtinuta);	
 
        printf("Suma Obtinuta este %d \n",sumaObtinuta);
        printf("Carry-ul Obtinut este %d \n",coutObtinut);
      }
      else
          print("Apasati pe butoanele 1, 2 sau 3 \n");
 
      usleep(200000);			//delay
 
   }


    cleanup_platform();
    return 0;
}
