
module c5_niosii_spi_slvsec (
	clk_clk,
	inck_en_inck_en_o,
	key_export,
	led_export,
	reg_1v2_en_reg_1v2_en_o,
	reg_1v8_en_reg_1v8_en_o,
	reg_3v3_en_reg_3v3_en_o,
	reset_reset_n,
	spi_MISO,
	spi_MOSI,
	spi_SCLK,
	spi_SS_n,
	sw_export,
	xclr_xclr_o);	

	input		clk_clk;
	output		inck_en_inck_en_o;
	input		key_export;
	output	[7:0]	led_export;
	output		reg_1v2_en_reg_1v2_en_o;
	output		reg_1v8_en_reg_1v8_en_o;
	output		reg_3v3_en_reg_3v3_en_o;
	input		reset_reset_n;
	input		spi_MISO;
	output		spi_MOSI;
	output		spi_SCLK;
	output		spi_SS_n;
	input	[3:0]	sw_export;
	output		xclr_xclr_o;
endmodule
