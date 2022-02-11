// =============================================================================
// FILE NAME	: laser_dlp_xtrig_controller.v
// DEPARTMENT	: EBOTS 
// AUTHOR		: Hung Lam
// DATE			: 
// =============================================================================
// DESCRIPTION	: LASER/DLP/XTRIG Controller 
// =============================================================================
// REVISION HISTORY	:
//	v1.0			: Initial version release
// =============================================================================
// PARAMETERS	:
// =============================================================================
// I/O PORTS	:	
//		Input	: CLK, RST_N
//		Output: R_LASER_EN, B_LASER_EN, DLP_EN, XTRIG
//		I/f	: Avalon MM Slave
// =============================================================================

`timescale 1ps/1ps
`default_nettype none

module laser_dlp_xtrig_controller #(
	// module parameter
	parameter DLP_PULSE_WIDTH 	= 32'd200 							// 200us = 0.2ms
	parameter DATA_WIDTH 		= 32;          					// word size of each input and output register
)
(
	// avalon slave port
	input	wire										slave_clk;
	input	wire										slave_reset_n;
	input	wire										slave_chipselect_n;
	input	wire	[ 1:0]  							slave_addr;
	input	wire	[(DATA_WIDTH/8)-1:0]  		slave_byteenable;
	input	wire										slave_read;
	input wire										slave_wrtie;
	input wire	[DATA_WIDTH-1:0]				slave_wriredata;
	output reg	[DATA_WIDTH-1:0]				slave_readdata;
	
	// input
	input	wire										ctrl_clk_i,
	input	wire										ctrl_rst_n_i,

	// output	
	output wire										b_laser_en_o,
	output wire										r_laser_en_o,
	output wire										dlp_en_o,
	output wire										xtrig_o

);


	// =============================================================================
	// REG/WIRE DECLARATION
	// =============================================================================
	
	localparam	STATE0 = 3'b000;
	localparam 	STATE1 = 3'b001;
	localparam 	STATE2 = 3'b010;
	localparam 	STATE3 = 3'b011;
	localparam 	STATE4 = 3'b100;
	localparam 	STATE5 = 3'b101;

	localparam 	DISABLE = 3'b111;
	
	localparam 	COUNTER_ZERO = 32'b0;
	
	// xtrig counter delay
	reg[15:0]	xtrig_timeout_count_ff;
	wire			xtrig_timeout_count_reset;
	wire			xtrig_timeout_count_enable;

	// dlp counter delay
	reg[15:0]	dlp_timeout_count_ff;
	wire			dlp_timeout_count_reset;
	wire			dlp_timeout_count_enable;
	
	reg[2:0]		current_state;
	reg[2:0]		next_state;
	
	// output buffer register
	reg			b_laser_en;
	reg			r_laser_en;
	reg			dlp_en;
	reg			xtrig;

	// avalon mm slave
	reg [DATA_WIDTH-1:0] datain_0;
	reg [DATA_WIDTH-1:0] datain_1;
	reg [DATA_WIDTH-1:0] datain_2;
	reg [DATA_WIDTH-1:0] datain_3;
	
	
	// internal logic signals
	wire [(DATA_WIDTH/8)-1:0] internal_byteenable;  // when DATA_WIDTH is 8 bits need to hardcode this signal to 1 since the fabric doesn't support 1 bit byte enables
	
	wire [3:0] address_decode;
	
	
	// =============================================================================
	// INITIALIZATION
	// =============================================================================

	initial begin
	
	
	
	end

	// =============================================================================
	// when the data width is 8 need to hardcode the 1 bit byteenable to high
	// =============================================================================
	generate
		if (DATA_WIDTH == 8)
		begin
			assign internal_byteenable = 1'b1;
		end
		else
		begin
			assign internal_byteenable = slave_byteenable;
		end
	endgenerate
	
	// four register address decodes (using one-hot encoding)  A bank is considered to be a grouping of four addresses.
	assign address_decode[0] = (slave_addr[1:0] == 2'b00) & (slave_write | slave_read);
	assign address_decode[1] = (slave_addr[1:0] == 2'b01) & (slave_write | slave_read);
	assign address_decode[2] = (slave_addr[1:0] == 2'b10) & (slave_write | slave_read);
	assign address_decode[3] = (slave_addr[1:0] == 2'b11) & (slave_write | slave_read);
	
	// =============================================================================
	// REGISTER MAP READ/WRITE
	// =============================================================================
	
	`define LASER_DLP_XTRIG_CTRL_REG				0
	`define DELAY_TIME_REG							1
	`define XTRIG_XPOSURE_DATAWRITE_TIME_REG	2


	// write for control
	reg 				measure_fifo_start;
	reg  [11:0] 	measure_fifo_num;
	reg	[2:0]		measure_fifo_ch;

	always @ (posedge slave_clk or negedge slave_reset_n)	
		begin
	
	
	
		end


// =============================================================================
// helper module to simplify having a register of variable width 
// and containing independent byte lanes
// =============================================================================
	

module register_with_bytelanes #(
	parameter DATA_WIDTH = 32;
)
	input clk;
	input reset;
	
	input [DATA_WIDTH-1:0] data_in;
	input write;
	input [(DATA_WIDTH/8)-1:0] byte_enables;
	output reg [DATA_WIDTH-1:0] data_out;
);

	// generating write logic for each group of 8 bits for 'data_out'
	generate
	genvar LANE;
		for(LANE = 0; LANE < (DATA_WIDTH/8); LANE = LANE+1)
		begin: register_bytelane_generation	
			always @ (posedge clk or posedge reset)
			begin
				if(reset == 1)
				begin
					data_out[(LANE*8)+7:(LANE*8)] <= 0;
				end
				else
				begin
					if((byte_enables[LANE] == 1) & (write == 1))
					begin
						data_out[(LANE*8)+7:(LANE*8)] <= data_in[(LANE*8)+7:(LANE*8)];  // write to each byte lane with write = 1 and the lane byteenable = 1
					end
				end
			end
		end
	endgenerate
	
endmodule
		

endmodule
`default_nettype wire