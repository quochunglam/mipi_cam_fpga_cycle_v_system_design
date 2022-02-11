
module c5_niosii_spi_slvsec (
	b_laser_en_b_laser_en_o,
	clk_clk,
	dlp_en_o_dlp_en_o,
	inck_en_inck_en_o,
	key_export,
	led_export,
	r_laser_en_o_r_laser_en_o,
	reg_1v2_en_reg_1v2_en_o,
	reg_1v8_en_reg_1v8_en_o,
	reg_3v3_en_reg_3v3_en_o,
	reset_reset_n,
	sw_export,
	xclr_xclr_o,
	xtrig_o_xtrig_o,
	spi_MISO,
	spi_MOSI,
	spi_SCLK,
	spi_SS_n);	

	output		b_laser_en_b_laser_en_o;
	input		clk_clk;
	output		dlp_en_o_dlp_en_o;
	output		inck_en_inck_en_o;
	input		key_export;
	output	[7:0]	led_export;
	output		r_laser_en_o_r_laser_en_o;
	output		reg_1v2_en_reg_1v2_en_o;
	output		reg_1v8_en_reg_1v8_en_o;
	output		reg_3v3_en_reg_3v3_en_o;
	input		reset_reset_n;
	input	[3:0]	sw_export;
	output		xclr_xclr_o;
	output		xtrig_o_xtrig_o;
	input		spi_MISO;
	output		spi_MOSI;
	output		spi_SCLK;
	output		spi_SS_n;
endmodule
