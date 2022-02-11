	niosii_subsys u0 (
		.clk_clk                    (<connected-to-clk_clk>),                    //          clk.clk
		.key_export                 (<connected-to-key_export>),                 //          key.export
		.led_export                 (<connected-to-led_export>),                 //          led.export
		.reset_reset_n              (<connected-to-reset_reset_n>),              //        reset.reset_n
		.spi_mm_bride_waitrequest   (<connected-to-spi_mm_bride_waitrequest>),   // spi_mm_bride.waitrequest
		.spi_mm_bride_readdata      (<connected-to-spi_mm_bride_readdata>),      //             .readdata
		.spi_mm_bride_readdatavalid (<connected-to-spi_mm_bride_readdatavalid>), //             .readdatavalid
		.spi_mm_bride_burstcount    (<connected-to-spi_mm_bride_burstcount>),    //             .burstcount
		.spi_mm_bride_writedata     (<connected-to-spi_mm_bride_writedata>),     //             .writedata
		.spi_mm_bride_address       (<connected-to-spi_mm_bride_address>),       //             .address
		.spi_mm_bride_write         (<connected-to-spi_mm_bride_write>),         //             .write
		.spi_mm_bride_read          (<connected-to-spi_mm_bride_read>),          //             .read
		.spi_mm_bride_byteenable    (<connected-to-spi_mm_bride_byteenable>),    //             .byteenable
		.spi_mm_bride_debugaccess   (<connected-to-spi_mm_bride_debugaccess>),   //             .debugaccess
		.sw_export                  (<connected-to-sw_export>)                   //           sw.export
	);

