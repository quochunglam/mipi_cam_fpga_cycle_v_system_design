// =============================================================================
// FILE NAME	: camera_poweron_sequence_sm.v
// DEPARTMENT	: EBOTS 
// AUTHOR		: Hung Lam
// DATE			: 
// =============================================================================
// DESCRIPTION	: Camera power On sequence (1v2, 1v8, 3v3, INCK_EN, XCLR)
// =============================================================================
// REVISION HISTORY	:
//	v1.0		: Initial version release
// =============================================================================
// PARAMETERS	:
// =============================================================================
// I/O PORTS	:
// =============================================================================

`timescale 1ps/1ps
`default_nettype none

module camera_poweron_sequence_sm #(
	parameter	TIMEOUT_THRESHOLD	= 32'd1000000	// 1,000,000 * (1/clk_mhz)
)
(
	input	wire								ctrl_clk_i,
	input	wire								ctrl_rst_n_i,	
	output wire								reg_1v2_en_o,
	output wire								reg_1v8_en_o,
	output wire								reg_3v3_en_o,
	output wire								inck_en_o,
	output wire								xclr_o
);

	localparam	STATE0 = 3'b000;
	localparam 	STATE1 = 3'b001;
	localparam 	STATE2 = 3'b010;
	localparam 	STATE3 = 3'b011;
	localparam 	STATE4 = 3'b100;
	localparam 	STATE5 = 3'b101;

	localparam 	DISABLE = 3'b111;
	
	localparam 	COUNTER_ZERO = 32'b0;
	
	reg[31:0]	timeout_count_ff;
	wire			timeout_count_reset;
	wire			timeout_count_enable;

	reg[2:0]		current_state;
	reg[2:0]		next_state;
	
	reg			inck_en;
	reg			xclr;
	reg			reg_1v2_en;
	reg			reg_1v8_en;
	reg			reg_3v3_en;
	
	// ---------------------------------------------------------------------
	// Initialization
	// ---------------------------------------------------------------------
	initial begin
		inck_en 		= 1'b0;
		xclr 			= 1'b0;
		reg_1v2_en 	= 1'b0;
		reg_1v8_en 	= 1'b0;
		reg_3v3_en 	= 1'b0;
		
		timeout_count_ff 	= COUNTER_ZERO;
		current_state 		= STATE0;
		next_state 			= STATE0;
	end
	
	// ---------------------------------------------------------------------
	// Power On Sequence Control State machine
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
					if ( ( timeout_count_ff >= TIMEOUT_THRESHOLD ) &  timeout_count_enable ) begin
						next_state <= STATE1;
					end
					else begin
						next_state <= STATE0;
					end	
				end
				
			STATE1 : 
				begin
					if ( ( timeout_count_ff >= TIMEOUT_THRESHOLD ) &  timeout_count_enable ) begin
						next_state <= STATE2;
					end
					else begin
						next_state <= STATE1;
					end
				end
				
			STATE2 : 
				begin
					if ( ( timeout_count_ff >= TIMEOUT_THRESHOLD ) &  timeout_count_enable ) begin
						next_state <= STATE3;
					end
					else begin
						next_state <= STATE2;
					end
				end
		
			STATE3 : 
				begin
					if ( ( timeout_count_ff >= TIMEOUT_THRESHOLD ) &  timeout_count_enable ) begin
						next_state <= STATE4;
					end
					else begin
						next_state <= STATE3;
					end
				end
		
			STATE4 : 
				begin
					if ( ( timeout_count_ff >= TIMEOUT_THRESHOLD ) &  timeout_count_enable ) begin
						next_state <= STATE5;
					end
					else begin
						next_state <= STATE4;
					end
				end
			
			STATE5 : 
				begin
					if ( ( timeout_count_ff >= TIMEOUT_THRESHOLD ) &  timeout_count_enable ) begin
						next_state <= DISABLE;
					end
					else begin
						next_state <= STATE5;
					end
				end

			DISABLE : 
				begin
					next_state <= DISABLE;
				end
				
			default : 
				begin
					next_state <= DISABLE;
				end
				
		endcase
	end
	
	
	// reg_1v2_en_o
	always @(posedge ctrl_clk_i or negedge ctrl_rst_n_i) begin
		if ( !ctrl_rst_n_i ) begin
			reg_1v2_en <= 1'b0;
		end 
		else begin
			reg_1v2_en <= ( current_state == STATE1 ) | ( current_state == STATE2 ) | ( current_state == STATE3 ) | ( current_state == STATE4 ) | ( current_state == STATE5 )| ( current_state == DISABLE );
		end
	end
	
	assign reg_1v2_en_o = reg_1v2_en;
	
	
	// reg_1v8_en_o
	always @(posedge ctrl_clk_i or negedge ctrl_rst_n_i) begin
		if ( !ctrl_rst_n_i ) begin
			reg_1v8_en <= 1'b0;
		end 
		else begin
			reg_1v8_en <= ( current_state == STATE2 ) | ( current_state == STATE3 ) | ( current_state == STATE4 ) | ( current_state == STATE5 )| ( current_state == DISABLE );
		end
	end
	
	assign reg_1v8_en_o = reg_1v8_en;
	

	// reg_3v3_en_o
	always @(posedge ctrl_clk_i or negedge ctrl_rst_n_i) begin
		if ( !ctrl_rst_n_i ) begin
			reg_3v3_en <= 1'b0;
		end 
		else begin
			reg_3v3_en <= ( current_state == STATE3 ) | ( current_state == STATE4 ) | ( current_state == STATE5 )| ( current_state == DISABLE );
		end
	end
	
	assign reg_3v3_en_o = reg_3v3_en;
	

	// xclr_o
	always @(posedge ctrl_clk_i or negedge ctrl_rst_n_i) begin
		if ( !ctrl_rst_n_i ) begin
			xclr <= 1'b0;
		end 
		else begin
			xclr <= ( ( current_state == STATE4 ) | ( current_state == STATE5 ) | ( current_state == DISABLE ));
		end
	end
	
	assign xclr_o = xclr;
	
	
	// inck_en_o
	always @(posedge ctrl_clk_i or negedge ctrl_rst_n_i) begin
		if ( !ctrl_rst_n_i ) begin
			inck_en <= 1'b0;
		end 
		else begin
			inck_en <= ( ( current_state == STATE5 ) | ( current_state == DISABLE ) );
		end
	end
	
	assign inck_en_o = inck_en;
	

	
	
	// ---------------------------------------------------------------------
	// Timeout Counter
	// ---------------------------------------------------------------------
	
	always @(posedge ctrl_clk_i or negedge ctrl_rst_n_i) begin
		if (!ctrl_rst_n_i) begin
			timeout_count_ff <= 32'd0;
		end 
		else begin
			if (timeout_count_reset) begin
				timeout_count_ff <= 32'd0;
			end
			else if (timeout_count_enable) begin
					timeout_count_ff <= timeout_count_ff + 32'd1;
			end
		end
	end
	
	assign timeout_count_reset = ( ( ( current_state == STATE1 ) & ( next_state == STATE2 ) )
										|	 ( ( current_state == STATE2 ) & ( next_state == STATE3 ) )
										|	 ( ( current_state == STATE3 ) & ( next_state == STATE4 ) )
										|	 ( ( current_state == STATE4 ) & ( next_state == STATE5 ) )
										|   ( ( current_state == STATE5 ) & ( next_state == DISABLE ) ) );
	
	assign timeout_count_enable = ( current_state != DISABLE );	// stop timeout counter if current state is DISABLE
	
endmodule
`default_nettype wire