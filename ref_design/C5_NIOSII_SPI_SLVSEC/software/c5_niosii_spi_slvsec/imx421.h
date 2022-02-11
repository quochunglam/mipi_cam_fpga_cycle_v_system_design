/*
 * imx421.h
 *
 *  Created on: Sep 17, 2019
 *      Author: Hung Lam
 */

#ifndef IMX421_H_
#define IMX421_H_

#include "alt_types.h"

// Write Imx register: write length: 3, read lenght: 0
#define SPI_W_REG_TLEN	3
#define SPI_W_REG_RLEN	0
// Read Imx register: write length: 2, read lenght: 1
#define SPI_R_REG_TLEN	2
#define SPI_R_REG_RLEN	1
struct reg_16_8 {
	alt_u16 addr;							// change to u16 for chipID + address this was set u32 in IMX204
	alt_u8 val;
};
#define imx421_reg struct reg_16_8

enum {
	IMX421_MODE_3712x1548,
	IMX421_MODE_COMMON,
	IMX421_MODE_START_STREAM,
	IMX421_MODE_STOP_STREAM,
	IMX421_MODE_TEST_PATTERN,
	IMX421_MODE_SENSOR_TEST,
};

// functions declaration, extern
int imx421_write_table(int slavenum,const imx421_reg table[]);
int imx421_write_reg(int slavenum, alt_u16 addr, alt_u8 val);

#endif /* IMX421_H_ */
