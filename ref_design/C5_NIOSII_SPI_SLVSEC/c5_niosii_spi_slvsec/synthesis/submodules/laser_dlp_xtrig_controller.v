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
// =============================================================================

`timescale 1ps / 1ps
`default_nettype none

module laser_dlp_xtrig_controller 
(
	
	// input
	input	wire										ctrl_clk_i,
	input	wire										ctrl_rst_n_i,
	// control
	input wire 										xtrig_cycle_start_i,
	
	// input configuration
	input wire										bit0_dlp_en,	
	input wire										bit1_xtrig_en,		
	input wire										bit2_red_laser_en,		
	input wire										bit3_blue_laser_en,		
	input wire										bit4_xtrig_mode,
	
	input wire [7:0]								num_xtrig_pulse,	
	
	input wire [15:0]								dlp_delay_time,		
	input wire [15:0]								diff_dlp_xtrig_delay,
	
	input wire [15:0]								xtrig_exposure_time,		
	input wire [15:0]								diff_data_xtrig_delay_time,
	
	// output	
	output wire										b_laser_en_o,
	output wire										r_laser_en_o,
	output wire										dlp_en_o,
	output wire										xtrig_o,
	
	// status
	output wire 									xtrig_cycle_done_o, 
		
	// debug
	output wire [2:0]								current_state_o,
	output wire 									debug_wire_o,
	output wire [3:0]								debug_wire_con_o
);


	// =============================================================================
	// REG/WIRE DECLARATION
	// =============================================================================
	localparam	STATE0 = 3'b000;
	localparam 	STATE1 = 3'b001;
	localparam 	STATE2 = 3'b010;
	localparam 	STATE3 = 3'b011;
	localparam 	STATE4 = 3'b100;
	
	localparam 	COUNTER_ZERO = 16'b0;
	
	// counter delay
	reg[15:0]	timeout_count_ff;
	wire			timeout_count_reset;
	wire			timeout_count_enable;

	reg[2:0]		current_state;
	reg[2:0]		next_state;
	
	// output buffer register
	reg			b_laser_en;
	reg			r_laser_en;
	reg			dlp_en;
	reg			xtrig;

	reg 			xtrig_cycle_done; 
	reg[7:0]		sm_num_xtrig_pulse;

	reg 			xtrig_cycle_start_sync;		
	reg 			xtrig_cycle_start_sync1;		
	reg 			xtrig_cycle_start_sync2;		
	wire 			xtrig_cycle_start_rising_edge;
	
//	wire 			sm_num_xtrig_pulse_cnt; 
	wire 			sm_num_xtrig_pulse_reset; 
	wire 			state_0_to_1; 
	wire 			state_1_to_2; 
	wire 			state_2_to_3; 
	wire 			state_3_to_4; 
	wire 			state_4_to_0; 
	wire 			state_4_to_1; 
	wire			state_4_to_x; 
	wire 			trans_common_conditions;
	wire 			con_check;
	
	reg 			state_4_to_x_sync; 
	reg			state_4_to_x_sync1;
	wire			state_4_to_x_rising_edge;
	// =============================================================================
	// INITIALIZATION
	// =============================================================================

	initial begin
		// state machine
		current_state 						<= STATE0;
		next_state							<= STATE0;	
		// counter
		timeout_count_ff 					<= COUNTER_ZERO;
		// reg output
		b_laser_en							<= 1'b0;
		r_laser_en							<= 1'b0;
		dlp_en								<= 1'b0;
		xtrig									<= 1'b0;
		// status reg
		xtrig_cycle_done 					<= 1'b0;		// set to 0: done and waiting for start pulse
		sm_num_xtrig_pulse 				<= 8'b0;
		xtrig_cycle_start_sync			<= 1'b0;
		xtrig_cycle_start_sync1			<= 1'b0;
		xtrig_cycle_start_sync2			<= 1'b0;
		state_4_to_x_sync					<= 1'b0;
		state_4_to_x_sync1 				<= 1'b0;
	end
	

	
	// =============================================================================
	// LASER - DLP - XTRIG State machine
	// =============================================================================
	
	// trans_common_conditions assignment
	assign trans_common_conditions = (bit2_red_laser_en || bit3_blue_laser_en) && (bit0_dlp_en) && (bit1_xtrig_en);
	
	// transition conditions
	assign state_0_to_1 = (current_state == STATE0) && ( sm_num_xtrig_pulse < (num_xtrig_pulse-8'b1)) && trans_common_conditions && (xtrig_cycle_done == 1'b1);
	assign state_1_to_2 = (current_state == STATE1) && ( timeout_count_ff >= dlp_delay_time ) &&  timeout_count_enable && trans_common_conditions;
	assign state_2_to_3 = (current_state == STATE2) && ( timeout_count_ff >= diff_dlp_xtrig_delay ) &&  timeout_count_enable & trans_common_conditions; 
	assign state_3_to_4 = (current_state == STATE3) && ( timeout_count_ff >= xtrig_exposure_time ) &&  timeout_count_enable & trans_common_conditions;
	
	assign state_4_to_x = (current_state == STATE4) && ( timeout_count_ff >= diff_data_xtrig_delay_time ) &&  timeout_count_enable && trans_common_conditions; 
	assign state_4_to_0 = state_4_to_x && (sm_num_xtrig_pulse >= (num_xtrig_pulse-8'b1)) && (bit4_xtrig_mode == 1'b1);	// one cycle mode 
	assign state_4_to_1 = state_4_to_x && (((sm_num_xtrig_pulse < (num_xtrig_pulse-8'b1)) && (bit4_xtrig_mode == 1'b1)) || (bit4_xtrig_mode == 1'b0));

	// ---------------------------------------------------------------------
	// state_4_to_x rising edge detector
	// ---------------------------------------------------------------------
	always @(posedge ctrl_clk_i) begin 
		state_4_to_x_sync 	<= state_4_to_x;
		state_4_to_x_sync1 	<= state_4_to_x_sync;
	end
	assign state_4_to_x_rising_edge = (state_4_to_x_sync && !state_4_to_x_sync1);

	
	// ---------------------------------------------------------------------
	// xtrig_cycle_start_i rising edge detector
	// ---------------------------------------------------------------------
	always @(posedge ctrl_clk_i) begin 
		xtrig_cycle_start_sync 		<= xtrig_cycle_start_i;
		xtrig_cycle_start_sync1 	<= xtrig_cycle_start_sync;
		xtrig_cycle_start_sync2 	<= xtrig_cycle_start_sync1;
	end
	assign xtrig_cycle_start_rising_edge = (xtrig_cycle_start_sync1 && !xtrig_cycle_start_sync2);
	
	// ---------------------------------------------------------------------
	// XTRIG CYCLE DONE
	// ---------------------------------------------------------------------
	always @(posedge ctrl_clk_i or negedge ctrl_rst_n_i ) begin
		if ( !ctrl_rst_n_i) begin
			xtrig_cycle_done <= 1'b0;		// reset 
		end
				
		else if (xtrig_cycle_start_rising_edge) begin
			xtrig_cycle_done <= 1'b1;		// reset
		end
		
		else if (state_4_to_0) begin
			xtrig_cycle_done <= 1'b0;
		end
	end	
	
	// ---------------------------------------------------------------------
	// TRANSITION TABLE
	// ---------------------------------------------------------------------
	always @(posedge ctrl_clk_i or negedge ctrl_rst_n_i) begin
		if ( !ctrl_rst_n_i ) begin
			current_state <= STATE0;
		end 
		else begin
			current_state <= next_state;
		end
	end
	
	always @( * ) begin
		
		case ( current_state ) 
		
			STATE0 :
				begin
					// Transition condition [1]
					if (state_0_to_1) begin
						next_state <= STATE1;
					end
					else begin
						next_state <= STATE0;
					end	
				end
				
			STATE1 : 
				begin
					// Transition condition [2]
					if (state_1_to_2) begin
						next_state <= STATE2;
					end
					else begin
						next_state <= STATE1;
					end
				end
				
			STATE2 : 
				begin
					// Transition condition [3]
					if (state_2_to_3) begin
						next_state <= STATE3;
					end
					else begin
						next_state <= STATE2;
					end
				end
		
			STATE3 : 
				begin
					// Transition condition [4]
					if (state_3_to_4) begin
						next_state <= STATE4;
					end
					else begin
						next_state <= STATE3;
					end
				end
		
			STATE4 : 
				begin
					
					if (state_4_to_1) 
						begin
							// Transition condition [5]
							next_state <= STATE1;	
						end
					else if (state_4_to_0)  
						begin	
							// Transition condition [6]
							next_state <= STATE0;
						end
					else 
						begin 
							next_state <= STATE4;
						end
				end
				
			default: 
				next_state <= STATE0;
		endcase
	end

	// =============================================================================
	// DEBUGGING and STATUS - LASER - DLP - XTRIG State machine
	// =============================================================================
	// debug_wire_o
	
	assign debug_wire_o 		= (sm_num_xtrig_pulse == 8'b0);
	assign con_check			= (sm_num_xtrig_pulse < (num_xtrig_pulse-8'b1));
	assign debug_wire_con_o = {state_4_to_1, state_4_to_0, con_check, state_4_to_x};
		
	assign current_state_o 	= current_state;
	

	
	// xtrig_cycle_done_o
	assign xtrig_cycle_done_o = ~xtrig_cycle_done;
	
	// b_laser_en_o
	always @(posedge ctrl_clk_i or negedge ctrl_rst_n_i) begin
		if ( !ctrl_rst_n_i ) begin
			b_laser_en <= 1'b0;
		end 
		else begin
			// only enable when bit3_blue_laser_en is 1
			b_laser_en <= (bit3_blue_laser_en) & (( current_state == STATE1 ) | ( current_state == STATE2 ) | ( current_state == STATE3 ));
		end
	end
	
	assign b_laser_en_o = b_laser_en;
	
	
	// r_laser_en_o
	always @(posedge ctrl_clk_i or negedge ctrl_rst_n_i) begin
		if ( !ctrl_rst_n_i ) begin
			r_laser_en <= 1'b0;
		end 
		else begin
			// only enable when bit3_blue_laser_en is 1
			r_laser_en <= (bit2_red_laser_en) & (( current_state == STATE1 ) | ( current_state == STATE2 ) | ( current_state == STATE3 ));
		end
	end
	
	assign r_laser_en_o = r_laser_en;	
	
	// dlp_en_o
	always @(posedge ctrl_clk_i or negedge ctrl_rst_n_i) begin
		if ( !ctrl_rst_n_i ) begin
			dlp_en <= 1'b0;
		end 
		else begin
			// only enable when bit3_blue_laser_en is 1
			dlp_en <= (bit0_dlp_en) & (( current_state == STATE2 ) | ( current_state == STATE3 ));
		end
	end
	
	assign dlp_en_o = dlp_en;
	
	// xtrig_o
	always @(posedge ctrl_clk_i or negedge ctrl_rst_n_i) begin
		if ( !ctrl_rst_n_i ) begin
			xtrig <= 1'b0;
		end 
		else begin
			// only enable when bit3_blue_laser_en is 1
			xtrig <= (bit1_xtrig_en) & ( current_state == STATE3 );
		end
	end
	
	assign xtrig_o = ~xtrig;	
	
	
	// ---------------------------------------------------------------------
	// SM XTRIG PULSE Counter
	// ---------------------------------------------------------------------
	
	always @(posedge ctrl_clk_i or negedge ctrl_rst_n_i)
	begin 
		if (!ctrl_rst_n_i) begin
			sm_num_xtrig_pulse <= 8'b0;
		end 
		else if (xtrig_cycle_start_rising_edge || sm_num_xtrig_pulse_reset) begin
			sm_num_xtrig_pulse <= 8'b0;
		end
		else if (state_4_to_x_rising_edge) begin
			sm_num_xtrig_pulse <= sm_num_xtrig_pulse + 8'b1;
		end
	end
	
	//assign sm_num_xtrig_pulse_cnt   = state_4_to_x;
	assign sm_num_xtrig_pulse_reset = state_4_to_x && ( sm_num_xtrig_pulse >= (num_xtrig_pulse-8'b1)); 
	
	// ---------------------------------------------------------------------
	// Timeout Counter
	// ---------------------------------------------------------------------
	
	always @(posedge ctrl_clk_i or negedge ctrl_rst_n_i) begin
		if (!ctrl_rst_n_i) begin
			timeout_count_ff <= 16'b0;
		end 
		else begin
			if (timeout_count_reset) begin
				timeout_count_ff <= 16'b0;
			end
			else if (timeout_count_enable) begin
					timeout_count_ff <= timeout_count_ff + 16'b1;
			end
		end
	end
	
	assign timeout_count_reset = ( ( ( current_state == STATE1 ) & ( next_state == STATE2 ) )
										|	 ( ( current_state == STATE2 ) & ( next_state == STATE3 ) )
										|	 ( ( current_state == STATE3 ) & ( next_state == STATE4 ) )
										|   ( ( current_state == STATE4 ) & ( next_state == STATE1 ) )
										|   ( ( current_state == STATE4 ) & ( next_state == STATE0 ) )	);
	
	assign timeout_count_enable = (current_state != STATE0);	// stop timeout counter if current state is DISABLE or STATE0
	
endmodule
`default_nettype wire
