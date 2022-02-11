/*
 * imx421.c
 *
 *  Created on: Sep 17, 2019
 *      Author: Hung Lam
 */


#include <stdio.h>
#include "altera_avalon_spi.h"
#include "imx421_mode_tbls.h"
#include "imx421.h"
#include "system.h"

#define SPI_SS_SCHEME	0x00				// force CSn at 1st byte, release CSn after last byte
// variables declaration
const imx421_reg *mode_table[] = {
	[IMX421_MODE_3712x1548] = mode_3712x1548,
	[IMX421_MODE_COMMON] = mode_table_common,
	[IMX421_MODE_START_STREAM] = imx421_start,
	[IMX421_MODE_STOP_STREAM] = imx421_stop,
	[IMX421_MODE_TEST_PATTERN] = tp_colorbars,
	[IMX421_MODE_SENSOR_TEST] = mode_sensor_test,
};

int imx421_write_reg(int slavenum, alt_u16 addr, alt_u8 val)
{
	int read_length = 0;

	alt_u8 tx_buf[3];
	alt_u8 rx_buf[3];	// dummy
	// write data to tx_buffer
	tx_buf[2] = val;					// byte[2]: data
	tx_buf[1] = (alt_u8) addr;			// byte[1]: address,
	tx_buf[0] = (alt_u8) (addr>>8);		// byte[0]: chipID,

	// write tx_buffer to shift register
	read_length = alt_avalon_spi_command(SPI_BASE, slavenum,
			SPI_W_REG_TLEN, tx_buf,
			SPI_W_REG_RLEN, rx_buf,
			SPI_SS_SCHEME);	// force CSn at 1st byte, release CSn after last byte

	return read_length;
}


//***********************************************************************//
int imx421_write_table(int slavenum,const imx421_reg table[])
{

	int read_length = 0;
	alt_u16 cnt = 0;

	while (table[cnt].addr != IMX421_TABLE_END) {
		if (table[cnt].addr == IMX421_TABLE_WAIT_MS) {
			usleep(table[cnt].val*1000);
		} else {
			read_length = imx421_write_reg(slavenum,
					table[cnt].addr, table[cnt].val);
			if (read_length < 0) {
				printf("REG0x%X=0x%X ERROR = %d\n",
						table[cnt].addr,
						table[cnt].val,
						read_length);
				return read_length;
			}
			usleep(1000);									// 1ms in delay to make sure that CS pin go HIGH
		}
		cnt++;
	}
	return read_length;
}
//************************************************************************//
