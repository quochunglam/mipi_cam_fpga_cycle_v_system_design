// =============================================================================
// FILE NAME	: C5_NIOSII_SPI_SLVSEC_TOP.v
// DEPARTMENT	: EBOTS INC
// AUTHOR		: Hung Lam
// DATE			: Jul.20,2019
// =============================================================================
// DESCRIPTION	: NIOS II SPI SLVSEC
// =============================================================================
// REVISION HISTORY	:
//	v1.0			: Initial version release
// =============================================================================
// PARAMETERS	:
// =============================================================================
// I/O PORTS	:
// =============================================================================
`timescale 1 ps / 1 ps

module C5_NIOSII_SPI_SLVSEC_TOP (
		input  wire       FPGA_CLK_50,       		//   clk.clk
		input  wire [1:0] KEY,    						//   key.export
		output wire [7:0] LED,    						//   led.export
		input  wire       SPI_MISO,      			//   spi.MISO
		output wire       SPI_MOSI,      			//      .MOSI
		output wire       SPI_SCLK,      			//      .SCLK
		output wire       SPI_SS_n,      			//      .SS_n
		input  wire [3:0] SW,      						//    sw.export
		output wire			REG_1V2_EN,
		output wire			REG_1V8_EN,
		output wire			REG_3V3_EN,
		output wire			INCK_EN,
		output wire			XCLR,
		output wire			B_LASER,
		output wire			R_LASER, 
		output wire			DLP_EN, 
		output wire			XTRIG		
);

	c5_niosii_spi_slvsec u_c5_niosii_spi_slvsec (
		.clk_clk       				(FPGA_CLK_50),       		//   	clk.clk
		.reset_reset_n 				(KEY[0]), 						// 	reset.reset_n
		.key_export    				(KEY[1]),    					//   	key.export
		.led_export    				(LED),    						//   	led.export
		.sw_export     				(SW),     						//    sw.export
		.spi_MISO      				(SPI_MISO),      				//   	spi.MISO
		.spi_MOSI      				(SPI_MOSI),      				//      .MOSI
		.spi_SCLK      				(SPI_SCLK),      				//      .SCLK
		.spi_SS_n      				(SPI_SS_n),       				//      .SS_n
		.reg_1v2_en_reg_1v2_en_o 	(REG_1V2_EN), 					// reg_1v2_en.reg_1v2_en_o
		.reg_1v8_en_reg_1v8_en_o 	(REG_1V8_EN), 					// reg_1v8_en.reg_1v8_en_o
		.reg_3v3_en_reg_3v3_en_o 	(REG_3V3_EN), 					// reg_3v3_en.reg_3v3_en_o
		.inck_en_inck_en_o       	(INCK_EN),       				//    inck_en.inck_en_o
		.xclr_xclr_o             	(XCLR),              			//       xclr.xclr_o
		.xtrig_o_xtrig_o				(XTRIG),
		.b_laser_en_b_laser_en_o	(B_LASER),
		.r_laser_en_o_r_laser_en_o	(R_LASER),
		.dlp_en_o_dlp_en_o			(DLP_EN)
	);
	
	
	
endmodule
