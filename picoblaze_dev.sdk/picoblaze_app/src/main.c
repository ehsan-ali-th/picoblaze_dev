#include <stdio.h>
#include <xil_io.h>
#include <xgpio.h>
#include <xscugic.h>
#include <stdbool.h>
#include <xbram.h>

#include "pBlaze_prog.h"

#define STOP_AT_FIRST_MISMATCH  0

#define LED_CHANNEL				1
#define DIP_SW_CHANNEL			2
#define LED_DELAY     			30000000

#define GPIO_DATA_5_OFFSET		0XFF0A0054


void fill_picoBlaze_BRAM();

union mydouble {
	  double _double;
	  u64 _bytes;
	};

u64 op1_feed_array[] = {
		0x0000000000000000,		// 0
		0x0000000000000001,		// 1
		0x0000000000000010,		// 2
		0x00000000000000FF,		// 3
		0x0000000000000FFF,		// 4
		0x00000000000ABCD1,		// 5
		0x0000000000000010,		// 6
		0x0001000000000000,		// 7
		0x0001111111111110,		// 8
		0x0001111111111111,		// 9
		0x0001234567890123,		// 10
		0x100FFFFFFFFFFFFF,		// 11
		0x105FFFFFFFFFFFFF,		// 12
		0x101FFFFFFFFFFFFF,		// 13
		0x1000000000000001,		// 14
		0x1000000000000011,		// 15
		0x1110000000000001,		// 16
		0xFFF0000000000000,		// 17
		0x7FF0000000000000,		// 18
		0x7FF123456789ABC1,		// 19
		0x7FF0000000000001,		// 20
		0x7FF1000000000001,
		0x7FF2000000000001,
		0x7FF3000000000001,
		0x7FFF000000000001,
		0x7FFF000345670001,
		0x7FFF000000000002,
		0x7FFF000000000003,
		0x7FFFFFFFFFFFFFF1,
		0x8000000000000000,		//
		0x8000000000000001,		// 30
		0x8000000000000010,		// 31
		0x80000000000000FF,		//
		0x8000000000000FFF,		//
		0x80000000000ABCD1,		//
		0x8000000000000010,		//
		0x8001000000000000,		// 36
		0x8001111111111110,		//
		0x8001111111111111,		//
		0x8001234567890123,		//
		0x800FFFFFFFFFFFFF,		//
		0x805FFFFFFFFFFFFF,		//
		0x801FFFFFFFFFFFFF,		//
		0x8000000000000001,		//
		0x8000000000000011,		//
		0x8110000000000001,		//
		0x8FF0000000000000,		//
		0x8FF0000000000000,		//
		0x8FF123456789ABC1,
		0x8FF0000000000001,		//
		0x8FF1000000000001,
		0x8FF2000000000001,
		0x8FF3000000000001,
		0x8FFF000000000001,
		0x8FFF000345670001,
		0x8FFF000000000002,
		0x8FFF000000000003,
		0x8FFFFFFFFFFFFFF1,
		0x8FFFFFFFFFFFFFFF,
		0x4059000000000000,
		0x4049000000000000

};

u64 op2_feed_array[] = {
		0x0000000000000000,		// 0
		0x0000000000000001,		// 1
		0x0000000000000010,		// 2
		0x00000000000000FF,		// 3
		0x0000000000000FFF,		// 4
		0x00000000000ABCD1,		// 5
		0x0000000000000010,		// 6
		0x0001000000000000,		// 7
		0x0001111111111110,		// 8
		0x0001111111111111,		// 9
		0x0001234567890123,		// 10
		0x100FFFFFFFFFFFFF,		//
		0x105FFFFFFFFFFFFF,		//
		0x101FFFFFFFFFFFFF,		//
		0x1000000000000001,		//
		0x1000000000000011,		// 15
		0x1110000000000001,		//
		0xFFF0000000000000,		//
		0x7FF0000000000000,		//
		0x7FF123456789ABC1,
		0x7FF0000000000001,		// 20
		0x7FF1000000000001,
		0x7FF2000000000001,
		0x7FF3000000000001,		//
		0x7FFF000000000001,
		0x7FFF000345670001,		// 25
		0x7FFF000000000002,
		0x7FFF000000000003,
		0x7FFFFFFFFFFFFFF1,
		0x8000000000000000,		// 20
		0x8000000000000001,		// 30
		0x8000000000000010,		//
		0x80000000000000FF,		//
		0x8000000000000FFF,		//
		0x80000000000ABCD1,		//
		0x8000000000000010,		//
		0x8001000000000000,		//
		0x8001111111111110,		//
		0x8001111111111111,		//
		0x8001234567890123,		//
		0x800FFFFFFFFFFFFF,		// 40
		0x805FFFFFFFFFFFFF,		//
		0x801FFFFFFFFFFFFF,		// 42
		0x8000000000000001,		//
		0x8000000000000011,		//
		0x8110000000000001,		//
		0x8FF0000000000000,		//
		0x8FF0000000000000,		//
		0x8FF123456789ABC1,		//
		0x8FF0000000000001,		//
		0x8FF1000000000001,		// 50
		0x8FF2000000000001,
		0x8FF3000000000001,
		0x8FFF000000000001,
		0x8FFF000345670001,
		0x8FFF000000000002,
		0x8FFF000000000003,
		0x8FFFFFFFFFFFFFF1,		// 58
		0x8FFFFFFFFFFFFFFF,
		0x4059000000000000,
		0x4049000000000000
};

XGpio Gpio; 						// The Instance of the GPIO Driver
XScuGic InterruptControllerInstance; 	    // Instance of the Interrupt Controller
XBram Bram;	/* The Instance of the BRAM Driver */

static XScuGic_Config *GicConfig;   // The configuration parameters of the
                                    //   controller

int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr);
void IRQ0Handler(void *CallbackRef);

// Create a shared variable to be used by the main thread of processing and
// the interrupt processing
 volatile static int InterruptProcessed = FALSE;

static
void PSU_Mask_Write(unsigned long offset, unsigned long mask,
	unsigned long val)
{
	unsigned long RegVal = 0x0;

	RegVal = Xil_In32(offset);
	RegVal &= ~(mask);
	RegVal |= (val & mask);
	Xil_Out32(offset, RegVal);
}

static void AssertPrint(const char8 *FilenamePtr, s32 LineNumber){
	xil_printf("ASSERT: File Name: %s ", FilenamePtr);
	xil_printf("Line Number: %d\r\n",LineNumber);
}

void enable_caches() {
#ifdef __PPC__
    Xil_ICacheEnableRegion(CACHEABLE_REGION_MASK);
    Xil_DCacheEnableRegion(CACHEABLE_REGION_MASK);
#elif __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_ICACHE
    Xil_ICacheEnable();
#endif
#ifdef XPAR_MICROBLAZE_USE_DCACHE
    Xil_DCacheEnable();
#endif
#endif
}

void disable_caches() {
#ifdef __MICROBLAZE__
#ifdef XPAR_MICROBLAZE_USE_DCACHE
    Xil_DCacheDisable();
#endif
#ifdef XPAR_MICROBLAZE_USE_ICACHE
    Xil_ICacheDisable();
#endif
#endif
}

int main()
{
	volatile int Delay;		// Used to introduce delay
	int GpioStatus;

	enable_caches();

	// Setup an assert call back to get some info if we assert.
	Xil_AssertSetCallback(AssertPrint);

	// Initialize the GPIO driver
	GpioStatus = XGpio_Initialize(&Gpio, XPAR_GPIO_0_DEVICE_ID);

	if (GpioStatus != XST_SUCCESS) {
		printf("Gpio Initialization Failed\r\n");
		return XST_FAILURE;
	}

	// Set the direction for all signals as output : 0x0
	XGpio_SetDataDirection(&Gpio, LED_CHANNEL, 0x0);

	// Turn all LEDs off
	XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, 0x0);

	// Initialize the interrupt controller driver so that it is ready to
	// be used.
	GicConfig = XScuGic_LookupConfig(XPAR_SCUGIC_0_DEVICE_ID);
	if (NULL == GicConfig) {
		return XST_FAILURE;
	}
	int Status = XScuGic_CfgInitialize(&InterruptControllerInstance, GicConfig,
						GicConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Perform a self-test to ensure that the hardware was built
	// correctly
	Status = XScuGic_SelfTest(&InterruptControllerInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Setup the Interrupt System
	Status = SetUpInterruptSystem(&InterruptControllerInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Connect a device driver handler that will be called when an
	// interrupt for the device occurs, the device driver handler performs
	// the specific interrupt processing for the device
	Status = XScuGic_Connect(&InterruptControllerInstance,
				XPAR_FABRIC_PBLAZE_0_IRQS_INTR,
				(Xil_ExceptionHandler)IRQ0Handler,
				(void *)&InterruptControllerInstance);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Enable the interrupt for the device and then cause (simulate) an
	// interrupt so the handlers will be called
	XScuGic_Enable(&InterruptControllerInstance, XPAR_FABRIC_PBLAZE_0_IRQS_INTR);

	//  Simulate the Interrupt
	Status = XScuGic_SoftwareIntr(&InterruptControllerInstance,
					0,
					XPAR_CPU_ID);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	/*while (1) {
		getchar();

		printf ("\e[3J\e[H");	// clear screen buffer
		printf ("\e[2J\e[H");	// Clear screen

		PSU_Mask_Write(GPIO_DATA_5_OFFSET, 0xFFFFFFFFU, 0xC0000000U);
		// Delay
		for (Delay = 0; Delay < 10; Delay++) {}
		// Set Picoblaze to run
		PSU_Mask_Write(GPIO_DATA_5_OFFSET, 0xFFFFFFFFU, 0x80000000U);

		if (InterruptProcessed) {
				printf("Got it.");
		}
	}*/

	XBram_Config *ConfigPtr1;


	// Lookup configuration data in the device configuration table.
	// Use this configuration info down below when initializing this
	// driver.

	ConfigPtr1 = XBram_LookupConfig(XPAR_PSU_APM_1_DEVICE_ID);
	if (ConfigPtr1 == (XBram_Config *) NULL) {
		return XST_FAILURE;
	}

	Status = XBram_CfgInitialize(&Bram, ConfigPtr1,
					 ConfigPtr1->CtrlBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	//
	// Execute the BRAM driver selftest.
	//
	Status = XBram_SelfTest(&Bram, 0);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	union mydouble op1, op2;
	union mydouble result_from_ARM;
	union mydouble result_from_picoBlaze;

	int test_count = 0;
	int failed_count = 0;

	for (int i = 0; i < 64; i = i + 4) {
		Xil_Out32BE (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + i, 0x00000000);
	}

	// Get the number of test feed array elements.
	int op1_test_count = sizeof (op1_feed_array) / 8;
	int op2_test_count = sizeof (op2_feed_array) / 8;

	bool all_tests_passed = true;

	printf ("\e[3J\e[H");	// clear screen buffer
	printf ("\e[2J\e[H");	// Clear screen

	// Upload the PicoBlaze Program.
	fill_picoBlaze_BRAM();


	printf ("Press a key to start verification process. \n\r");
	getchar();
	printf ("\e[3J\e[H");	// clear screen buffer
	printf ("\e[2J\e[H");	// Clear screen
	printf ("Welcome to ARM Hardcore PS on Xilinx FPGA \n\r");

	// Turn debug output on for PicoBlaze = 0x01
	Xil_Out8 (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0xFFC, 0x00);


	//printf ("Test: IEEE-754 64-bit Addition started. \n\r");
	//printf ("Test: IEEE-754 64-bit Multiplication started. \n\r");
	printf ("Test: IEEE-754 64-bit Division Started. \n\r");
	for (int i = 0; i < op1_test_count; i++) {
		for (int j = 0; j < op2_test_count; j++) {
			//printf("i = %i \t j= %i \n", i, j);
		// Turn LED1 and LED2 off: Picoblaze reset done.
		XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, 0x0);


		/*Xil_Out32(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0, 0x12345678);
		Xil_Out32(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4, 0x05060708);
		Xil_Out32(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 8, 0x12345678);
		Xil_Out32(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0xC, 0xabcdef12);

		u32 loc0 = Xil_In32(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR);
		u32 loc4 = Xil_In32(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4);
		u32 loc8 = Xil_In32(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 8);
		u32 locc = Xil_In32(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0xC);

		printf ("loc0 = %x, loc4 = %x, loc8 = %x, locc = %x \n\r", loc0, loc4, loc8, locc);*/

		op1._bytes = op1_feed_array[i];
		op2._bytes = op2_feed_array[j];

		//op1._bytes = 0x123456789ABCDEF9;
		//op2._bytes = 0x1122334455667788;

		//result_from_ARM._double = op1._double + op2._double;
		//result_from_ARM._double = op1._double * op2._double;
		result_from_ARM._double = op1._double / op2._double;
		test_count ++;

		// write zero into memory
		/*int j = 1;
		for (int i = 0; i < 64; i = i + 4) {
			Xil_Out32 (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + i, j);
			j ++;
		}*/

		// Write two 64-bit value into shared memory
		Xil_Out32BE (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0, op1._bytes >> 32);
		Xil_Out32BE (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4, op1._bytes);
		Xil_Out32BE (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 8, op2._bytes >> 32);
		Xil_Out32BE (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0xC, op2._bytes);

		//Xil_Out32BE (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0x10, op3._bytes >> 32);
		//Xil_Out32BE (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0x14, op3._bytes);

		/*printf ("Wrote at memory %x, the value = %x \t", XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0,
				Xil_In32 (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0));
		printf ("Wrote at memory %x, the value = %x \n\r", XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4,
				Xil_In32 (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4));
		printf ("Wrote at memory %x, the value = %x \t", XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 8,
				Xil_In32 (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 8));
		printf ("Wrote at memory %x, the value = %x \n\r", XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 12,
				Xil_In32 (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 12));*/

		// Turn LED1 on: ARM has written two operands in memory.
		XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, 0x1);

		// Last argument of PSU_Mask_Write:
		//	The first two MSB bits are effective: 0x MSB1 MSB2 .....
		//
		// MSB1: 	PL auxiliary reset. Active Low.
		//			Never set it to 0 for more than few cycles.
		// MSB0: 	PicoBlaze reset: Active High

		//printf ("Reset PicoBlaze.");
		// Reset Picoblaze
		PSU_Mask_Write(GPIO_DATA_5_OFFSET, 0xFFFFFFFFU, 0xC0000000U);
		// Delay
		for (Delay = 0; Delay < 10; Delay++) {}
		// Set Picoblaze to run
		PSU_Mask_Write(GPIO_DATA_5_OFFSET, 0xFFFFFFFFU, 0x80000000U);

		// Turn LED1 and LED2 on: Picoblaze reset done.
		XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, 0x3);

		InterruptProcessed = FALSE;

		//printf ("entering while loop. \n\r");
		while (1) {
			if (InterruptProcessed) {


				/*Xil_Out32BE (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0, 0x00000000);
				Xil_Out32BE (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4, 0x00000000);

				Xil_Out32BE (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 8, 0x00000000);
				Xil_Out32BE (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0xC, 0x00000000);*/

				// Read the 64 bit result from shared memory
				u32 high  = Xil_In32 (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0x10); // dummy read
				u32 low  = Xil_In32 (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0x14);
				//u32 high = Xil_In32 (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 0x18);

				u64 high_low = low;

				//printf ("high = %x \t low = %x \n\r", high, low);

				result_from_picoBlaze._bytes = high_low << 32 | high;

				if (result_from_ARM._bytes != result_from_picoBlaze._bytes) {
					printf("Calculation is not correct @ i=%d, j=%d\n\r", i, j);
					printf ("op1 = %lf \t op1 = %lx \t", op1._double, op1._bytes);
					printf ("op2 = %lf \t op2 = %lx \n\r", op2._double, op2._bytes);

					printf ("ARM result:       double = %lf \t result = %lx \n\r",
							result_from_ARM._double,
							result_from_ARM._bytes);
					printf ("PicoBlaze result: double = %lf \t result = %lx \n\r",
							result_from_picoBlaze._double,
							result_from_picoBlaze._bytes);
					printf("=======================================================\n\r");
					failed_count++;
					all_tests_passed = false;
#if STOP_AT_FIRST_MISMATCH
					return -1;
#endif
				}
				break;
			}
		}


	}

	}


	printf ("Total number of tests = %i\n\r", test_count);

	if (all_tests_passed) {
		printf ("All tests PASSED.\n\r");
	} else {
		printf ("%i tests FAILED.\n\r", failed_count);
	}

	printf ("Bye.\n\r");

    /*while (1) {     	// wait forever.
    	// Blink LED3
    	XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, 0x7);

    	// Delay
    	for (Delay = 0; Delay < LED_DELAY; Delay++) {}

    	// Blink LED3
    	XGpio_DiscreteWrite(&Gpio, LED_CHANNEL, 0x3);

    	// Delay
    	for (Delay = 0; Delay < LED_DELAY; Delay++) {}
   }*/

	disable_caches();

    return 0;
}

/******************************************************************************/
/**
*
* This function connects the interrupt handler of the interrupt controller to
* the processor.  This function is separate to allow it to be customized for
* each application.  Each processor or RTOS may require unique processing to
* connect the interrupt handler.
*
* @param	XScuGicInstancePtr is the instance of the interrupt controller
*		that needs to be worked on.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr)
{

	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the ARM processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler) XScuGic_InterruptHandler,
			XScuGicInstancePtr);

	/*
	 * Enable interrupts in the ARM
	 */
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

/******************************************************************************/
/**
*
* This function is designed to look like an interrupt handler in a device
* driver. This is typically a 2nd level handler that is called from the
* interrupt controller interrupt handler.  This handler would typically
* perform device specific processing such as reading and writing the registers
* of the device to clear the interrupt condition and pass any data to an
* application using the device driver.  Many drivers already provide this
* handler and the user is not required to create it.
*
* @param	CallbackRef is passed back to the device driver's interrupt
*		handler by the XScuGic driver.  It was given to the XScuGic
*		driver in the XScuGic_Connect() function call.  It is typically
*		a pointer to the device driver instance variable.
*		In this example, we do not care about the callback
*		reference, so we passed it a 0 when connecting the handler to
*		the XScuGic driver and we make no use of it here.
*
* @return	None.
*
* @note		None.
*
****************************************************************************/
void IRQ0Handler(void *CallbackRef)
{
	InterruptProcessed = TRUE;

}

void fill_picoBlaze_BRAM() {
	int loc = 0;
	for (int i = 0; i < 16384; i = i + 4) {
		//printf("Writing to = %x\n", XPAR_AXI_BRAM_CTRL_1_S_AXI_BASEADDR + i);
		Xil_Out32 (XPAR_AXI_BRAM_CTRL_1_S_AXI_BASEADDR + i , program_4k[loc]);
		// XBram_WriteReg(XPAR_AXI_BRAM_CTRL_1_S_AXI_BASEADDR, 0, 0x11223344);
		loc++;
	}
}
