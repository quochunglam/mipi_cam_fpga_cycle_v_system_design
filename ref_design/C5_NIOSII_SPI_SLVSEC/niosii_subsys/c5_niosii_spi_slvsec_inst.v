	c5_niosii_spi_slvsec u0 (
		.clk_clk                 (<connected-to-clk_clk>),                 //        clk.clk
		.inck_en_inck_en_o       (<connected-to-inck_en_inck_en_o>),       //    inck_en.inck_en_o
		.key_export              (<connected-to-key_export>),              //        key.export
		.led_export              (<connected-to-led_export>),              //        led.export
		.reg_1v2_en_reg_1v2_en_o (<connected-to-reg_1v2_en_reg_1v2_en_o>), // reg_1v2_en.reg_1v2_en_o
		.reg_1v8_en_reg_1v8_en_o (<connected-to-reg_1v8_en_reg_1v8_en_o>), // reg_1v8_en.reg_1v8_en_o
		.reg_3v3_en_reg_3v3_en_o (<connected-to-reg_3v3_en_reg_3v3_en_o>), // reg_3v3_en.reg_3v3_en_o
		.reset_reset_n           (<connected-to-reset_reset_n>),           //      reset.reset_n
		.spi_MISO                (<connected-to-spi_MISO>),                //        spi.MISO
		.spi_MOSI                (<connected-to-spi_MOSI>),                //           .MOSI
		.spi_SCLK                (<connected-to-spi_SCLK>),                //           .SCLK
		.spi_SS_n                (<connected-to-spi_SS_n>),                //           .SS_n
		.sw_export               (<connected-to-sw_export>),               //         sw.export
		.xclr_xclr_o             (<connected-to-xclr_xclr_o>)              //       xclr.xclr_o
	);

