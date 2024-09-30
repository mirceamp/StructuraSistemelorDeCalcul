
#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xscugic.h"
#include "xil_exception.h"


#define INTC_INTERRUPT_MUL_ID  61
#define INTC_INTERRUPT_ID  62
// Variabile pentru a stoca valorile contorilor
volatile u32 counter_btn1 = 0;
volatile u32 counter_btn2 = 0;

volatile u32 rez;
// Instanțe GPIO și Controller de Întreruperi
XGpio inputButon, inputSwitch, outputLed;
XScuGic Intc; // Instanță controller de întreruperi

//inpututri si outputuri la modulul de inmultire
 XGpio startMultiplication,inputRst, inputA, inputB, outputMul, outputGata;

// Protocoale funcții
void ButtonInterruptHandler(void *CallbackRef);
void SignalGataIntreruptHandler(void *CallbackRef);
int SetupInterruptSystem(XScuGic *IntcInstancePtr, XGpio *GpioInstancePtr, XGpio *GpioMulPtr2);
void DisplayCounterOnLEDs(int switch_data);

int main()
{
    int switch_data = 0;
  
   //initializare pt butoane switchuri si leduri
   XGpio_Initialize(&inputButon, XPAR_AXI_GPIO_BTN_BASEADDR);
   XGpio_Initialize(&inputSwitch, XPAR_AXI_GPIO_SW_BASEADDR);
   XGpio_Initialize(&outputLed, XPAR_AXI_GPIO_LED_BASEADDR);

    //initializare pt porturile de la modulul vhdl
   XGpio_Initialize(&inputA, XPAR_AXI_GPIO_OPERANDA_BASEADDR);
   XGpio_Initialize(&inputB, XPAR_AXI_GPIO_OPERANDB_BASEADDR);
   XGpio_Initialize(&startMultiplication, XPAR_AXI_GPIO_STARTBIT_BASEADDR);
   XGpio_Initialize(&outputMul, XPAR_AXI_GPIO_REZ_BASEADDR);
   XGpio_Initialize(&inputRst, XPAR_AXI_GPIO_RESETARE_BASEADDR);
   XGpio_Initialize(&outputGata, XPAR_AXI_GPIO_GATA_BASEADDR);
   

    //directia pt butoane switchuri si pt leduri
    XGpio_SetDataDirection(&inputButon, 1, 0xF);//intrare 
    XGpio_SetDataDirection(&inputSwitch, 1, 0xF);//intrare 
    XGpio_SetDataDirection(&outputLed, 1, 0x0);//iesire

    //directia pt pinii de la modulul in vhdl
   XGpio_SetDataDirection(&inputA, 1, 0x0);			
   XGpio_SetDataDirection(&inputB, 1, 0x0);			
   XGpio_SetDataDirection(&startMultiplication, 1, 0);		
   XGpio_SetDataDirection(&inputRst, 1, 0);		
   XGpio_SetDataDirection(&outputMul, 1, 0xFF);			
   XGpio_SetDataDirection(&outputGata, 1, 1);		

    SetupInterruptSystem(&Intc, &inputButon, &outputGata);

    init_platform();
    
    print("Incepem procesarea in Labul 5 \n");


    while (1) {
        // Citește starea switch-urilor
       switch_data = XGpio_DiscreteRead(&inputSwitch, 1);
        
        // Afișează contorul corespunzător pe LED-uri
        DisplayCounterOnLEDs(switch_data);
    }

    cleanup_platform();

    return 0;
}

// Funcție care afișează contorul corespunzător pe LED-uri în funcție de switch-uri
void DisplayCounterOnLEDs(int switch_data) {
    int led_value = 0;

    // În funcție de switch-ul activ, afișăm contorul corespunzător
    if (switch_data & 0x1) {
        led_value = counter_btn1;
        printf("Valoarea primului operand e %d\n", counter_btn1);
    } else if (switch_data & 0x2) {
        led_value = counter_btn2;
        printf("Valoarea celui de-al doilea operand e %d\n", counter_btn2);
    } else if (switch_data & 0x4) {
        printf("Rezultatul inmultirii e %d\n", rez);
    }
    else {
        led_value = 0;
    }
   
    // Afișează valoarea pe LED-uri
    XGpio_DiscreteWrite(&outputLed, 1, led_value);
}

void SignalGataIntreruptHandler(void *CallbackRef)
{
    XGpio *GpioPtr = (XGpio *)CallbackRef;
   
    // Citește valoarea de la GPIO
    rez = XGpio_DiscreteRead(&outputMul, 1);

    printf("Dupa inmultire avem %d\n", rez);

    XGpio_DiscreteWrite(&startMultiplication, 1, 0);
    XGpio_DiscreteWrite(&inputRst, 1, 1);
   

    XGpio_InterruptClear(GpioPtr, 1);

}

void ButtonInterruptHandler(void *CallbackRef) {

    xil_printf("Button Interrupt Triggered\n"); // Debug

   // Convertim CallbackRef la pointer de tip XGpio
    XGpio *GpioPtr = (XGpio *)CallbackRef;

    uint32_t btn_value;

    // Citește starea butoanelor folosind pointerul la GPIO din CallbackRef
    btn_value = XGpio_DiscreteRead(GpioPtr, 1);

    // Verifică care buton a fost apăsat și incrementează contorul corespunzător
    if (btn_value & 0x1) {
        counter_btn1++;
    } else if (btn_value & 0x2) {
        counter_btn2++;
    } else if (btn_value & 0x4) {
       
       XGpio_DiscreteWrite(&inputRst, 1, 0);
       XGpio_DiscreteWrite(&inputA, 1, counter_btn1);
       XGpio_DiscreteWrite(&inputB, 1, counter_btn2);
       XGpio_DiscreteWrite(&startMultiplication, 1, 1);
       
    } 

    // Șterge întreruperea pentru butoane folosind pointerul la GPIO din CallbackRef
    XGpio_InterruptClear(GpioPtr, 1);
}

// Configurare sistem de întreruperi
int SetupInterruptSystem(XScuGic *IntcInstancePtr, XGpio *GpioInstancePtr, XGpio *GpioMulPtr2) {

    XScuGic_Config *IntcConfig;
    int status;

    // Inițializează controller-ul de întreruperi
    IntcConfig = XScuGic_LookupConfig(0);
    status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig, IntcConfig->CpuBaseAddress);

    if(status != XST_SUCCESS) return XST_FAILURE;
    
    // Registrează handlerul pentru întreruperi
   // Registrează handlerul pentru întreruperi
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
                                 (Xil_ExceptionHandler)XScuGic_InterruptHandler,
                                 IntcInstancePtr);

    // Activează întreruperile
    Xil_ExceptionEnable();

    // Conectează handlerul pentru butoane la întrerupere
     // Conectează handlerul pentru butoane la întrerupere
    XScuGic_Connect(IntcInstancePtr, INTC_INTERRUPT_ID,
                    (Xil_ExceptionHandler)ButtonInterruptHandler,
                    (void *)GpioInstancePtr);

     // Conectează handlerul pentru gata la întrerupere
    XScuGic_Connect(IntcInstancePtr, INTC_INTERRUPT_MUL_ID,
                    (Xil_ExceptionHandler)SignalGataIntreruptHandler,
                    (void *)GpioMulPtr2);

    // Setează prioritatea și tipul de trigger
    XScuGic_SetPriorityTriggerType(IntcInstancePtr, INTC_INTERRUPT_ID, 0x00, 0x3);
    XScuGic_SetPriorityTriggerType(IntcInstancePtr, INTC_INTERRUPT_MUL_ID, 0x00, 0x3);
 
 // Activează întreruperea pentru butoane în controller-ul de întreruperi
    XGpio_InterruptEnable(GpioInstancePtr, 1);
    XGpio_InterruptGlobalEnable(GpioInstancePtr);

    XGpio_InterruptEnable(GpioMulPtr2, 1);
    XGpio_InterruptGlobalEnable(GpioMulPtr2);

    // Activează întruperea pentru GPIO în controller
    XScuGic_Enable(IntcInstancePtr, INTC_INTERRUPT_ID);
    XScuGic_Enable(IntcInstancePtr, INTC_INTERRUPT_MUL_ID);


    return XST_SUCCESS;
}
