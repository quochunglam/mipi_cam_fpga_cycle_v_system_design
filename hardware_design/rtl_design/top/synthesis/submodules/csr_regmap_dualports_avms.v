// =======================================================================================
// FILE NAME	: csr_regmap_dualports_avms.v
// DEPARTMENT	:  
// AUTHOR		: Hung Lam
// DATE			: 
// =======================================================================================
// DESCRIPTION	: CSR register maps with dual port avms
// =======================================================================================
// REVISION HISTORY	:
//	v1.0			: Initial version release
// =======================================================================================
// PARAMETERS	:
// =======================================================================================
// I/O PORTS	:	
//		Input	: CLK, RST_N
//		Output: R_LASER_EN, B_LASER_EN, DLP_EN, XTRIG
//		I/f	: Avalon MM Slave
// =======================================================================================

`timescale 1ps/1ps
`default_nettype none

module csr_regmap_dualports_avms #(
	// module parameter
	parameter DATA_WIDTH 		= 32,     			// word size of each input and output register
	parameter ADDR_WIDTH 		= 3
)
(
	// avalon slave port 0 
	input	wire										avms_clk_0,
	input	wire										avms_reset_n_0,
	input	wire	[(ADDR_WIDTH-1):0]  				avms_addr_0,
	input	wire	[(DATA_WIDTH/8)-1:0]  				avms_byteenable_0,
	input	wire										avms_read_0,
	input 	wire										avms_write_0,
	input 	wire	[DATA_WIDTH-1:0]					avms_writedata_0,
	output 	reg		[DATA_WIDTH-1:0]					avms_readdata_0,
	
	// avalon slave port 1 
	input	wire										avms_clk_1,
	input	wire										avms_reset_n_1,
	input	wire	[(ADDR_WIDTH-1):0]  				avms_addr_1,
	input	wire	[(DATA_WIDTH/8)-1:0]  				avms_byteenable_1,
	input	wire										avms_read_1,
	input 	wire										avms_write_1,
	input 	wire	[DATA_WIDTH-1:0]					avms_writedata_1,
	output 	reg		[DATA_WIDTH-1:0]					avms_readdata_1

);

	// =============================================================================
	// REG/WIRE DECLARATION
	// =============================================================================

	// Control Status Registers
	reg[31:0] 	csr_reg32 [0:ADDR_WIDTH-1];
	reg[31:0] 	csr_reg32_p0 [0:ADDR_WIDTH-1]; 
	reg[31:0] 	csr_reg32_p1 [0:ADDR_WIDTH-1];
	reg 		avms_write_0_r; 
	reg 		avms_write_1_r; 

	// =============================================================================
	// INITIALIZATION
	// =============================================================================

	// initial begin
	// 	genvar i;
	// 	generate 		
	// 		for (i = 0; i < (2**ADDR_WIDTH); i = i+1) begin: initialization
	// 			csr_reg32[i] 	<= 32'b0;
	// 			csr_reg32_p0[i] <= 32'b0;
	// 			csr_reg32_p1[i] <= 32'b0; 
	// 		end
	// 	endgenerate 
	// end
	
	// =============================================================================
	// REGISTER MAP READ/WRITE - Port 0
	// =============================================================================
	// write and reset
	always @(posedge avms_clk_0)
   	begin
		// avms_write_0_r <= avms_write_0; 
		if (avms_write_0) csr_reg32[avms_addr_0] <= avms_writedata_0[31:0];
	end

	// avms-p0 read
	always @(posedge avms_clk_0)
	begin 
		if (avms_read_0) avms_readdata_0 <= csr_reg32[avms_addr_0]; 
	end

	// =============================================================================
	// REGISTER MAP READ/WRITE - Port 1
	// =============================================================================
	// write and reset
	always @(posedge avms_clk_1)
   	begin
		// avms_write_1_r <= avms_write_1; 
		if (avms_write_1) csr_reg32[avms_addr_1] <= avms_writedata_1[31:0];
	end

	// avms-p1 read
	always @(posedge avms_clk_1)
	begin 
		if (avms_read_1) avms_readdata_1 <= csr_reg32[avms_addr_1]; 
	end

endmodule
`default_nettype wire