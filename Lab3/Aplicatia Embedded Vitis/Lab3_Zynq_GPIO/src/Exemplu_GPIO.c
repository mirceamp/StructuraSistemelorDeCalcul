
#include <stdio.h>
#include "platform.h"
#include <xgpio.h>
#include "xparameters.h"
#include "sleep.h"


int main()
{
   
   XGpio input, output;
   int button_data = 0;
   int switch_data = 0;
 
   XGpio_Initialize(&input, XPAR_AXI_GPIO_0_BASEADDR);	//initialize input XGpio variable
   XGpio_Initialize(&output, XPAR_AXI_GPIO_1_BASEADDR);	//initialize output XGpio variable
 
   XGpio_SetDataDirection(&input, 1, 0xF);			//set first channel tristate buffer to input
   XGpio_SetDataDirection(&input, 2, 0xF);			//set second channel tristate buffer to input
 
   XGpio_SetDataDirection(&output, 1, 0x0);		//set first channel tristate buffer to output
   
   init_platform();
   
   print("Incepem procesarea \r\n");
    

   while(1){
      switch_data = XGpio_DiscreteRead(&input, 2);	//get switch data
 
      button_data = XGpio_DiscreteRead(&input, 1);	//get button data

      XGpio_DiscreteWrite(&output, 1, button_data);	//write switch data to the LEDs
 
      //print message dependent on whether one or more buttons are pressed
      if(switch_data == 0b00000){} //do nothing
 
      else if(switch_data == 0b00001)
          print("switchul 0 a fost actionat \r\n");
 
      else if(switch_data == 0b00010)
          print("switchul 1 a fost actionat \r\n");
 
      else if(switch_data == 0b00100)
          print("switchul 2 a fost actionat \r\n");
 
      else if(switch_data == 0b01000)
          print("switchul 3 a fost actionat \r\n");
 
      else
          print("mai multe switchuri au fost actionate \r\n");
 
      usleep(200000);			//delay
 
   }
    cleanup_platform();
    return 0;
}
