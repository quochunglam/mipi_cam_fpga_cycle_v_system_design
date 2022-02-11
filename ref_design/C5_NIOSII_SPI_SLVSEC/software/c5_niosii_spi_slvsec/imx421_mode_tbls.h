/*
 * imx421_mode_tbls.h
 *
 *  Created on: Sep 16, 2019
 *      Author: Hung Lam
 */

#ifndef IMX421_MODE_TBLS_H_
#define IMX421_MODE_TBLS_H_

#include "imx421.h"

#define IMX421_TABLE_WAIT_MS			0xFFFF
#define IMX421_TABLE_END				0xFFFA
#define IMX421_TABLE_ENABLE_GTX 		0xFFFB
#define IMX421_MAX_RETRIES				3
#define IMX421_WAIT_MS					2


imx421_reg mode_table_common[] = {
	{IMX421_TABLE_END, 0x00},
};

const imx421_reg imx421_start[] = {
	{IMX421_TABLE_WAIT_MS, 7},
	{0x0200, 0x00},						// make to normal operation mode
	{IMX421_TABLE_WAIT_MS, 14},			// probably this is enough
	{IMX421_TABLE_END, 0x00},
};

const imx421_reg imx421_stop[] = {
	{0x0200, 0x01},						// make the standby to active mode
	{IMX421_TABLE_WAIT_MS, 7},
	{IMX421_TABLE_END, 0x00},
};

const imx421_reg tp_colorbars[] = {
	{IMX421_TABLE_END, 0x00},
};

/*--------------------------------------------------------------------------------------
 *	page 58
 *	imx421_reg mode table - mode_3712x1548
 * 	Initialization table
 * -------------------------------------------------------------------------------------*/
const imx421_reg mode_3712x1548[] = {
	/*
	 * test registers
	*/
	{0x0B25, 0x7F},
	{IMX421_TABLE_END, 0x00},
	/*
		CHIP ID 2 related registers
	*/
	{0x0200, 0x00},		// normal operation mode
	{0x020C, 0x00},		// setting master mode operation stop --> change to 0x00: master mode operation start
	{0x0234, 0x00},		// register hold invalid
	{0x023C, 0x00}, 	// drive mode setting all pixel both H anx V
	{0x02D0, 0x98},		// VOPB effective area and V blank width setting LSB
	{0x02D1, 0x07},		// VOPB effective area and V blank width setting MSB
	{0x02D2, 0x10}, 	// FINFO width setting LSB
	{0x02D3, 0x04}, 	// FINFO width setting
	{0x02D4, 0x1C},		// Page 71, SLVS-EC seting AD8bit for 409.2 VMAX
	{0x02D5, 0x06},		//
	{0x02D6, 0x00},
	{0x02D8, 0x74},		// Page 71, SLVS-EC seting AD8bit for 409.2 HMAX
	{0x02D9, 0x00},
	{0x02DC, 0x00},		// set data rate to normal FREQ set
	{0x02E2, 0x1C},		// set GTWAIT value ( YXU: Should it be 0x1C for SLVS-EC seting AD8bit for 409.2 HMAX per page 71? )
	{0x02E3, 0x14}, 	// set GSDLY value

	/*
		CHIP ID 3 related registers (Will revisit back when we are ready for ROI mode)
	*/
	{0x0300, 0x00},		// ROI mode enable set to overlap mode --> change to 0x00: ROI mode, not overlap ROI
	{0x0304, 0x00},		// horizontal and vertical FIDO ROI disable
	{0x0305, 0x00},
	{0x0320, 0x00},		// designation of horizontal and vertical cropping position (fixed to zero)
	{0x0321, 0x00},
	{0x0322, 0x00},
	{0x0323, 0x00},
	{0x0324, 0x00},
	{0x0325, 0x00},
	{0x0326, 0x00},
	{0x0327, 0x00},
	{0x0328, 0x00},
	{0x0329, 0x00},
//	{0x0329, 0x00},		// YXU: This line is repeated, should it be deleteted?
	{0x032A, 0x00},
	{0x032B, 0x00},
	{0x032C, 0x00},
	{0x032D, 0x00},
	{0x032E, 0x00},
	{0x032F, 0x00},
	{0x0330, 0x00},
	{0x0331, 0x00},
	{0x0332, 0x00},
	{0x0333, 0x00},
	{0x0334, 0x00},
	{0x0335, 0x00},
	{0x0336, 0x00},
	{0x0337, 0x00},
	{0x0338, 0x00},
	{0x0339, 0x00},
	{0x033A, 0x00},
	{0x033B, 0x00},
	{0x033C, 0x00},
	{0x033D, 0x00},
	{0x033E, 0x00},
	{0x033F, 0x00},
	{0x0340, 0x00},
	{0x0341, 0x00},
	{0x0342, 0x00},
	{0x0343, 0x00},
	{0x0344, 0x00},
	{0x0345, 0x00},
	{0x0346, 0x00},
	{0x0347, 0x00},
	{0x0348, 0x00},
	{0x0349, 0x00},
	{0x034A, 0x00},
	{0x034B, 0x00},
	{0x034C, 0x00},
	{0x034D, 0x00},
	{0x034E, 0x00},
	{0x034F, 0x00},
	{0x0350, 0x00},
	{0x0351, 0x00},
	{0x0352, 0x00},
	{0x0353, 0x00},
	{0x0354, 0x00},
	{0x0355, 0x00},
	{0x0356, 0x00},
	{0x0357, 0x00},
	{0x0358, 0x00},
	{0x0359, 0x00},
	{0x035A, 0x00},
	{0x035B, 0x00},
	{0x035C, 0x00},
	{0x035D, 0x00},
	{0x035E, 0x00},
	{0x035F, 0x00},

	/*
		CHIP ID 4 related registers
	*/
	{0x0400, 0x44},		// Full HD, binning off, AD 8bit,
	{0x0404, 0x00},		// vertical and horizontal normal mode (non inverted)
	{0x0420, 0x52},		// INCKSEL0 to 74.25MHz
	{0x0421, 0x20},		// INCKSEL1 to 74.25MHz
	{0x0424, 0x52},		// INCKSEL2	to 74.25HMz
	{0x0425, 0x20},		// INCKSEL3 to 74.25MHz
	{0x0426, 0x83},		// SLVS-EC FREQ_SYNC normal rate
	{0x0430, 0x39},		// not FASTTRIG
	{0x0431, 0x00},		//
	{0x0432, 0x03},		// set vertical interrupt enable
	{0x0440, 0x18},		// LSB storage time adjustment designated in line unit
	{0x0441, 0x00},		//
	{0x0442, 0x00},		// MSB storage time adjustment designated in line unit
	/*
		CHIP ID 5 related registers
		Not there
	*/

	/*
		CHIP ID 6 related registers
	*/
	{0x0600, 0x00},		// global shutter trigger mode --> Hung: change to normal mode for testing
	{0x0630, 0x02}, 	// ODBIT output bit setting at 8bit
	{0x0635, 0x0F},		// TOUT1SEL and TOUT2SEL pin to pulse output
	{0x063A, 0x21}, 	// MK:: has question.TRIG_TOUT_1_SEL and TRIG_TOUT_2_SEL to be pulse output ( YXU: Shoild it be 0x21? ) Hung: change to 0x21 as on page 49
	{0x063C, 0xC0},		// SYNCSEL normal output
	{0x0644, 0x01},		// STBSLVS SLVS channel to 8 ch
	{0x0645, 0x01},		// SLVS channel sel to 8ch
	{0x0678, 0x02},		// PULSE1_EN_TRIG model enable
	{0x0679, 0x00},		// PULSE1_UP pulse 1 active period start timing setting LSB
	{0x067A, 0x00},		//
	{0x067B, 0x00},		// PULSE1_UP pulse 1 active period start timing setting MSB
	{0x067C, 0x00},		// PULSE1_DN pulse 1 active period end timing setting LSB
	{0x067D, 0x00},		//
	{0x067E, 0x00},		// PULSE1_DN pulse 1 active period end timing setting MSB
	{0x0680, 0x02},		// PULSE2_EN_TRIG model enable
	{0x0681, 0x00},		// PULSE2_UP pulse 2 active period start timing setting LSB
	{0x0682, 0x00},		//
	{0x0683, 0x00},		// PULSE2_UP pulse 2 active period start timing setting MSB
	{0x0684, 0x00},		// PULSE2_DN pulse 2 active period end timing setting LSB
	{0x0685, 0x00},		//
	{0x0686, 0x00},		// PULSE2_DN pulse 2 active period end timing setting MSB

	/*
		CHIP ID 7 related registers
	*/
	{0x0702, 0x08},		// GAIN_RTS	gain reflection timign at normal mode --> Gain reflect at the frame
	{0x0710, 0x00},		// Low conversion gain efficiency
	{0x0714, 0x00}, 	// setting digital gain to 0dB, (setting range 00h - 48h) LSB
	{0x0715, 0x00},		// setting digital gain to 0dB, (setting range 00h - 48h) MSB

	/**********This is PG register map only using for testing************/
	{0x0750, 0x60},		// PG operation enabled, Clock operation
	{0x0751, 0x00},		// PG mode setting to Sequence Pattern 1
	/****************************************************************/

	{0x07C0, 0x00},		// setting black level offset to 8bit LSB ( YXU: Should this be 0x0F for AD8bit? )
	{0x07C1, 0x00},		// setting black level offset to 8bit MSB


	/*
		CHIP ID 8 related registers
	*/
	/*
		CHIP ID 9 related registers
	*/
	/*
		CHIP ID 0A related registers
	*/
	/*
		CHIP ID 0B related registers
	*/
	{0x0B04, 0x00},		// set SLVS-EC output lane 8 ch
	{0x0B20, 0x00},		// no CRC insertion.
	{0x0B21, 0x00}, 	// ECC 2 byte parity --> Hung changed to 0x00 for setting no ECC parity insertion
	{0x0B22, 0x0A},		// Set length of low output period during mode and initialization
	{0x0B24, 0xFF},
	{0x0B25, 0x7F},
	{0x0B26, 0x00},
	{0x0B28, 0x10},		// DESKEWCODE_LEN Deskew code transfer times 01h min  (need to check with the actual output from oscope)
	{0x0B2A, 0x10},		// DESKEWCODE_INTVL	Deskew transmission interval 04h min
	{0x0B2C, 0x10},		// Standby code transfer time 03h min
	{0x0B30, 0xAA},		// set the symbol following the comma symbol within standby code (Seems like putting any symbol)
	{0x0B31, 0x00},		// doing nothing
	{0x0B32, 0x60},		// set symbol following comma symbol within Deskew code
	{0x0B33, 0x00},		// doinng nothin
	{0x0B34, 0x00},		// 1st symbol for idle code
	{0x0B35, 0x00},		// do nothing
	{0x0B36, 0x00},		// 2dn symbol for idle code
	{0x0B37, 0x00},		// do nothing
	{0x0B38, 0x00},		// 3rd symbol for idle code
	{0x0B39, 0x00},		// do nothing
	{0x0B3A, 0x00},		// set 4th symbol for idle code
	{0x0B3B, 0x00},		// do nothing
	{0x0B40, 0x03},		// set the symbol for standby code
	{0x0B41, 0x00},		// do nothing

	{IMX421_TABLE_WAIT_MS, 20},

	{IMX421_TABLE_END, 0x00},
};

//static imx421_reg mode_3712x1548_read[ARRAY_SIZE(mode_3712x1548)];

const imx421_reg mode_sensor_test[] = {
	/*
		CHIP ID 2 related registers
	*/
	{0x0200, 0x00},		// normal operation mode
	{0x020C, 0x00},		// setting master mode operation stop --> change to 0x00: master mode operation start
	{IMX421_TABLE_WAIT_MS, 20},
	{IMX421_TABLE_END, 0x00},

	{0x02D4, 0x1C},		// Page 71, SLVS-EC seting AD8bit for 409.2 VMAX
	{0x02D5, 0x06},		//
	{0x02D6, 0x00},
	{0x02D8, 0x74},		// Page 71, SLVS-EC seting AD8bit for 409.2 HMAX
	{0x02D9, 0x00},
	{0x02E2, 0x1C},		// set GTWAIT value ( YXU: Should it be 0x1C for SLVS-EC seting AD8bit for 409.2 HMAX per page 71? )
	{0x02E3, 0x14}, 	// set GSDLY value

	/*
		CHIP ID 4 related registers
	*/
	{0x0400, 0x44},		// Full HD, binning off, AD 8bit,
	{0x0420, 0x52},		// INCKSEL0 to 74.25MHz
	{0x0421, 0x20},		// INCKSEL1 to 74.25MHz
	{0x0424, 0x52},		// INCKSEL2	to 74.25HMz
	{0x0425, 0x20},		// INCKSEL3 to 74.25MHz

	/*
		CHIP ID 6 related registers
	*/
//	{0x0600, 0x00},		// global shutter trigger mode --> Hung: change to normal mode for testing
	{0x0630, 0x02}, 	// ODBIT output bit setting at 8bit
	{0x0635, 0x0F},		// TOUT1SEL and TOUT2SEL pin to pulse output
	{0x063A, 0x21}, 	// MK:: has question.TRIG_TOUT_1_SEL and TRIG_TOUT_2_SEL to be pulse output ( YXU: Shoild it be 0x21? ) Hung: change to 0x21 as on page 49
	{0x0678, 0x02},		// PULSE1_EN_TRIG model enable
	{0x0680, 0x02},		// PULSE2_EN_TRIG model enable

	/*
		CHIP ID 7 related registers
	*/
	{0x0702, 0x08},		// GAIN_RTS	gain reflection timign at normal mode --> Gain reflect at the frame

	/**********This is PG register map only using for testing************/
	{0x0750, 0x07},		// PG operation enabled, Clock operation
	{0x0751, 0x01},		// PG mode setting to Sequence Pattern 1
	/****************************************************************/

	{0x07C0, 0x00},		// setting black level offset to 8bit LSB ( YXU: Should this be 0x0F for AD8bit? )
	{0x07C1, 0x00},		// setting black level offset to 8bit MSB

	{0x0B21, 0x00}, 	// ECC 2 byte parity --> Hung changed to 0x00 for setting no ECC parity insertion
	{0x0B22, 0x0A},		// Set length of low output period during mode and initialization

	{IMX421_TABLE_WAIT_MS, 20},

	{IMX421_TABLE_END, 0x00},
};


#endif /* IMX421_MODE_TBLS_H_ */
