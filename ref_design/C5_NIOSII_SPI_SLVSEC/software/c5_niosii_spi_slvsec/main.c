/*
 * main.c
 *
 *  Created on: Sep 16, 2019
 *      Author: Hung Lam
 */

#include "main.h"


void main_init(void);

// 10ms
void LED_task(alt_u8 led_command);	// 10ms
void SW_task(alt_u8* sw_value);		// 10ms

// 100ms
void SPI_task(void);				// 100ms

// variables declaration
extern const imx421_reg *mode_table[];

extern alt_u8	rtos_task_1ms_flag;
extern alt_u8	rtos_task_10ms_flag;
extern alt_u8	rtos_task_100ms_flag;

extern alt_u8	rtos_task_1ms_flag_high_prior;
extern alt_u8	rtos_task_10ms_flag_high_prior;
extern alt_u8	rtos_task_100ms_flag_high_prior;


int main()
{
	printf("Welcome to EBOTS FPGA system!\r\n");
	main_init();

	// os task processing
	while(1)
	{
		// high priority os tasks
		if (rtos_task_1ms_flag_high_prior == ON)
		{
			// 1ms tasks

			// rtos flag 1ms: OFF
			rtos_task_1ms_flag_high_prior = OFF;
		}
		if (rtos_task_10ms_flag_high_prior == ON)
		{
			// 10ms tasks

			// rtos flag 10ms: OFF
			rtos_task_10ms_flag_high_prior = OFF;
		}
		if (rtos_task_100ms_flag_high_prior == ON)
		{
			// 100ms tasks

			// os flag 100ms: OFF
			rtos_task_100ms_flag_high_prior = OFF;
		}

		// normal priority os tasks
		if (rtos_task_1ms_flag == ON)
		{
			// 1ms tasks

			// os flag 1ms: OFF
			rtos_task_1ms_flag = OFF;
		}
		if (rtos_task_10ms_flag == ON)
		{
			// 10ms tasks
			SW_task(&sw_value);
			LED_task(LED_CMD_CNT_EN);

			// os flag 10ms: OFF
			rtos_task_10ms_flag = OFF;
		}
		if (rtos_task_100ms_flag == ON)
		{
			// 100ms tasks
			SPI_task();
			// os flag 100ms: OFF
			rtos_task_100ms_flag = OFF;
		}
	}
}

/*
 * alt_avalon_key_edge_detect_irq() is the interrupt handler
 * KEY FALLING EDGE DETECTION
 */

static void alt_avalon_key_edge_detect_irq (void* base)
{
	// disable key falling edge interrupt
	IOWR_ALTERA_AVALON_PIO_IRQ_MASK(NIOSII_CPU_KEY_BASE, CLR_KEY_INT_MSK);
	// clear interrupt flag
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(NIOSII_CPU_KEY_BASE, CLR_KEY_EDGE_CAPT);
	// interrupt handling body
	printf("Key is pressed \n");
	imx421_user_sel = sw_value;
	imx421_user_sel_status = ALREADY_SEL;
	printf("SW value is %d\n",sw_value);

	// enable key falling edge interrupt
	IOWR_ALTERA_AVALON_PIO_IRQ_MASK(NIOSII_CPU_KEY_BASE, KEY_INT_MSK);
}

/* main_init - initialization function */
void main_init(void)
{
	led_counter_status = LED_CMD_CNT_EN;
	led_counter = 0;
	led_out = 0;

	// register key interrupt handler, and enable KEY interrupt
	alt_ic_isr_register(NIOSII_CPU_KEY_IRQ_INTERRUPT_CONTROLLER_ID, NIOSII_CPU_KEY_IRQ, alt_avalon_key_edge_detect_irq,
			NIOSII_CPU_KEY_BASE, NULL);

	// enable key interrupt - falling edge capture interrupt
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(NIOSII_CPU_KEY_BASE, KEY_EDGE_CAPT);
	IOWR_ALTERA_AVALON_PIO_IRQ_MASK(NIOSII_CPU_KEY_BASE, KEY_INT_MSK);

	// imx421_sm = INIT
	imx421_sm = INIT;

	// imx421_user_sel_status = NOT_SEL
	imx421_user_sel_status = NOT_SEL;
}

void LED_task(alt_u8 led_command)
{
	switch (led_command)
	{
		case	LED_CMD_CNT_EN:
			led_counter_status = LED_CMD_CNT_EN;
			led_counter++;
		break;

		case	LED_CMD_CNT_DIS:
			led_counter_status = LED_CMD_CNT_DIS;
		break;

		case	LED_CMD_CNT_RST:
			led_counter = 0;
		break;

		case	LED_CMD_ALL_ON:
			led_out = 0xf;
			led_counter_status = LED_CMD_CNT_DIS;
			IOWR(NIOSII_CPU_LED_BASE, 0x00, led_out | (sw_value<<4));
		break;

		case	LED_CMD_ALL_OFF:
			led_out = 0x0;
			led_counter_status = LED_CMD_CNT_DIS;
			IOWR(NIOSII_CPU_LED_BASE, 0x00, led_out | sw_value<<4);
		break;

	default: break;
	}

	if (led_counter >= LED_CYCLE)	// 500ms
	{
		led_counter = 0;
		led_out++;
		//printf("%d \n",led_out);
		led_out &= 0x0f;		// keep only low nibble

	}
	IOWR(NIOSII_CPU_LED_BASE, 0x00, led_out | sw_value<<4);
}

void SW_task(alt_u8* sw_value)
{
	*sw_value = IORD(NIOSII_CPU_SW_BASE, SW_READ);
}

void SPI_task(void)
{
	int read_length;
	read_length = 0;
	switch (imx421_sm)
	{
	case INIT:
		// print out mode table for user selection
		printf("| This is IMX421 setting mode |\n");
		printf("Please select mode table sending to CIS \n");
		printf("1 - IMX421_MODE_3712x1548 \n");
		printf("2 - IMX421_MODE_COMMON \n");
		printf("3 - IMX421_MODE_START_STREAM \n");
		printf("4 - IMX421_MODE_STOP_STREAM \n");
		printf("5 - IMX421_MODE_TEST_PATTERN \n");
		printf("|----------------------------| \n");
		printf("0 - NO SELECTION - EXIT \n");
		printf("Configure your switch then press enter key to continue!\n");
		// move to USER_SEL state
		imx421_sm = USER_SEL;
		break;
	case USER_SEL:
		// scan user selection, waiting for user selection then action
		if (imx421_user_sel_status == ALREADY_SEL)
		{
			switch (imx421_user_sel)
			{
				case (1+IMX421_MODE_3712x1548):
					printf("Mode 1 - IMX421_MODE_3712x1548 selected \n");
					read_length = imx421_write_table(SS0, mode_table[IMX421_MODE_3712x1548]);
					// move to INIT state
					imx421_sm = INIT;
					break;
				case (1+IMX421_MODE_COMMON):
					printf("Mode 2 - IMX421_MODE_COMMON selected \n");
					read_length = imx421_write_table(SS0, mode_table[IMX421_MODE_COMMON]);
					// move to INIT state
					imx421_sm = INIT;
					break;
				case (1+IMX421_MODE_START_STREAM):
					printf("Mode 3 - IMX421_MODE_START_STREAM selected \n");
					read_length = imx421_write_table(SS0, mode_table[IMX421_MODE_START_STREAM]);
					// move to INIT state
					imx421_sm = INIT;
					break;
				case (1+IMX421_MODE_STOP_STREAM):
					printf("Mode 4 - IMX421_MODE_STOP_STREAM selected \n");
					read_length = imx421_write_table(SS0, mode_table[IMX421_MODE_STOP_STREAM]);
					break;
				case (1+IMX421_MODE_TEST_PATTERN):
					printf("Mode 5 - IMX421_MODE_TEST_PATTERN selected \n");
					read_length = imx421_write_table(SS0, mode_table[IMX421_MODE_TEST_PATTERN]);
					// move to INIT state
					imx421_sm = INIT;
					break;
				case 0:
					imx421_sm = EXIT;
					break;
				default:break;
			}
			// clear imx421_user_sel_status to NOT_SEL for the next selection
			imx421_user_sel_status = NOT_SEL;
			// err happened, printout msg and exit
			printf("SPI read length is %d!\n", read_length);

		}
		break;
	default: break;
	}
}


