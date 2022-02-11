/*
 * main.h
 *
 *  Created on: Sep 16, 2019
 *      Author: Hung Lam
 */

#ifndef MAIN_H_
#define MAIN_H_

#include <stdio.h>
#include <io.h>

#include "alt_types.h"
#include "altera_avalon_pio_regs.h"
#include "priv/alt_iic_isr_register.h"

// system configuration import from .sopc
#include "system.h"
#include "imx421.h"

// typedef, definition
#define ENABLE 	0x01
#define DISABLE 0x00

#define ON 	0x01
#define OFF 0x00

// LED
#define LED_CYCLE			50
#define LED_CMD_CNT_EN		0x01
#define LED_CMD_CNT_DIS		0x00
#define LED_CMD_CNT_RST 	0x02
#define LED_CMD_ALL_ON 		0x03
#define LED_CMD_ALL_OFF		0x04

// SW
#define SW_READ				0x00

// KEY
#define KEY_INT_MSK			0x01
#define KEY_EDGE_CAPT		0x01
#define CLR_KEY_INT_MSK		0x00
#define CLR_KEY_EDGE_CAPT	0x00
// SPI
#define SS0					0x00
#define INIT				0x00
#define USER_SEL			0x01
#define EXIT				0x02

// User selection status
#define NOT_SEL				0x01
#define ALREADY_SEL			0x02

alt_u16 led_counter;
alt_u8 led_counter_status;
alt_u8 led_out;

alt_u8 sw_value;

alt_u8 imx421_sm;
alt_u8 imx421_user_sel;
alt_u8 imx421_user_sel_status;




#endif /* MAIN_H_ */
