// =============================================================================
// FILE NAME	: laser_dlp_xtrig_controller_avms.v
// DEPARTMENT	: EBOTS 
// AUTHOR		: Hung Lam
// DATE			: 
// =============================================================================
// DESCRIPTION	: LASER/DLP/XTRIG Controller with AVALON MM Slave for register maps
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

module laser_dlp_xtrig_controller_avms #(
	// module parameter
	parameter DLP_PULSE_WIDTH 	= 32'd200; 							// 200us = 0.2ms
	parameter DATA_WIDTH 		= 32          					// word size of each input and output register
)
(
	// avalon slave port
	input	wire										slave_clk,
	input	wire										slave_reset_n,
	input	wire	[ 1:0]  							slave_addr,
	input	wire	[(DATA_WIDTH/8)-1:0]  		slave_byteenable,
	input	wire										slave_read,
	input wire										slave_write,
	input wire	[DATA_WIDTH-1:0]				slave_wriredata,
	output reg	[DATA_WIDTH-1:0]				slave_readdata,
	
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

	// LASER/DLP/XTRIG REGISTER
	reg			bit0_dlp_en;
	reg			bit1_xtrig_en;
	reg			bit2_red_laser_en;
	reg 			bit3_blue_laser_en;
	reg			bit4_xtrig_mode;
	reg 			bit5_xtrig_cycle_start; 
	wire 			bit6_xtrig_cycle_status;
	
	reg[7:0]		num_xtrig_pulse;
	
	reg[15:0] 	dlp_delay_time;
	reg[15:0] 	xtrig_delay_time;
	
	reg[15:0] 	xtrig_exposure_time;
	reg[15:0] 	data_write_time;
	
	reg[15:0] 	diff_dlp_xtrig_delay;
	reg[15:0] 	diff_data_xtrig_delay_time;
	
	
	
	// =============================================================================
	// INITIALIZATION
	// =============================================================================

	initial begin
		bit0_dlp_en				<= 1'b0;
		bit1_xtrig_en			<= 1'b0;	
		bit2_red_laser_en		<= 1'b0;
		bit3_blue_laser_en	<= 1'b0;
		bit4_xtrig_mode		<= 1'b0;
		
		bit5_xtrig_cycle_start		<= 1'b0;
		
		num_xtrig_pulse		<= 8'b0;
		dlp_delay_time			<= 15'b0;
		xtrig_delay_time		<= 15'b0;
		xtrig_exposure_time	<= 15'b0;
		data_write_time		<= 15'b0;
	end
	
	// =============================================================================
	// REGISTER MAP READ/WRITE
	// =============================================================================
	// AVMS WRITE
	always @(posedge slave_clk or negedge slave_reset_n)
   begin
		if (!slave_reset_n)
		begin
			bit0_dlp_en				<= 1'b0;
			bit1_xtrig_en			<= 1'b0;	
			bit2_red_laser_en		<= 1'b0;
			bit3_blue_laser_en	<= 1'b0;
			bit4_xtrig_mode		<= 1'b0;
			bit5_xtrig_cycle_start	<= 1'b0;
			num_xtrig_pulse		<= 8'b0;
			dlp_delay_time			<= 15'b0;
			xtrig_delay_time		<= 15'b0;
			xtrig_exposure_time	<= 15'b0;
			data_write_time		<= 15'b0;
		end
		else
			// write
			if ((slave_addr[1:0] == 2'b00) & (slave_write)) begin
				{bit5_xtrig_cycle_start,bit4_xtrig_mode,bit3_blue_laser_en,bit2_red_laser_en,bit1_xtrig_en,bit0_dlp_en} <= slave_wriredata[5:0];
				num_xtrig_pulse 		<= slave_wriredata[15:8];			
			end
			else if ((slave_addr[1:0] == 2'b01) & (slave_write)) begin
				dlp_delay_time 		<= slave_wriredata[31:16];
				xtrig_delay_time 		<= slave_wriredata[15:0 ];
				diff_dlp_xtrig_delay	<= xtrig_delay_time - dlp_delay_time;
			end
			else if ((slave_addr[1:0] == 2'b10) & (slave_write)) begin
				xtrig_exposure_time 	<= slave_wriredata[31:16];
				data_write_time 		<= slave_wriredata[15:0 ];
				diff_data_xtrig_delay_time	<= data_write_time - xtrig_delay_time;
			end		
	end

	
	// AVMS READ
	always @(posedge slave_clk)
   begin
		// read
		slave_readdata	<= {25'b0,((slave_addr[1:0] == 2'b00) & (slave_read))? bit6_xtrig_cycle_status: 1'b0, 6'b0};
	end

	// =============================================================================
	// laser_dlp_xtrig_controller
	// =============================================================================
	laser_dlp_xtrig_controller u_laser_dlp_xtrig_controller(
	.ctrl_clk_i(ctrl_clk_i),
	.ctrl_rst_n_i(ctrl_rst_n_i),
	// configuration inputs
	.xtrig_cycle_start_i(bit5_xtrig_cycle_start),
	.bit0_dlp_en(bit0_dlp_en),
	.bit1_xtrig_en(bit1_xtrig_en),
	.bit2_red_laser_en(bit2_red_laser_en),
	.bit3_blue_laser_en(bit3_blue_laser_en),
	.bit4_xtrig_mode(bit4_xtrig_mode),
	.num_xtrig_pulse(num_xtrig_pulse),
	.dlp_delay_time(dlp_delay_time),
	.diff_dlp_xtrig_delay(diff_dlp_xtrig_delay),
	.xtrig_exposure_time(xtrig_exposure_time),
	.diff_data_xtrig_delay_time(diff_data_xtrig_delay_time),
	
	// output
	.b_laser_en_o(b_laser_en_o),
	.r_laser_en_o(r_laser_en_o),
	.dlp_en_o(dlp_en_o),
	.xtrig_o(xtrig_o),
	
	// status
	.xtrig_cycle_done_o(bit6_xtrig_cycle_status)
	
	);
	
	
endmodule
`default_nettype wire