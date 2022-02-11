
module niosii_subsys (
	clk_clk,
	key_export,
	led_export,
	reset_reset_n,
	spi_mm_bride_waitrequest,
	spi_mm_bride_readdata,
	spi_mm_bride_readdatavalid,
	spi_mm_bride_burstcount,
	spi_mm_bride_writedata,
	spi_mm_bride_address,
	spi_mm_bride_write,
	spi_mm_bride_read,
	spi_mm_bride_byteenable,
	spi_mm_bride_debugaccess,
	sw_export);	

	input		clk_clk;
	input		key_export;
	output	[7:0]	led_export;
	input		reset_reset_n;
	input		spi_mm_bride_waitrequest;
	input	[31:0]	spi_mm_bride_readdata;
	input		spi_mm_bride_readdatavalid;
	output	[0:0]	spi_mm_bride_burstcount;
	output	[31:0]	spi_mm_bride_writedata;
	output	[9:0]	spi_mm_bride_address;
	output		spi_mm_bride_write;
	output		spi_mm_bride_read;
	output	[3:0]	spi_mm_bride_byteenable;
	output		spi_mm_bride_debugaccess;
	input	[3:0]	sw_export;
endmodule
