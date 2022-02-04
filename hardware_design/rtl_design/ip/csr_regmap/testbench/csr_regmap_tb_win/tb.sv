
// =============================================================================
// FILE NAME    : tb.sv
// AUTHOR       : Hung Lam
// DATE         :  
// =============================================================================
// DESCRIPTION  :   
// =============================================================================
// REVISION HISTORY
//  v1.0        : Initial version release
//  v2.0        : 
// =============================================================================

`timescale 1ps/1ps
`include "../../hdl/Structs.svh"

module tb;

   // setting ip clk to 125MHz
   localparam  CLK_HALF_PERIOD          	= 4;
   localparam  CLK_PERIOD               	= (CLK_HALF_PERIOD * 2);   

	// =============================================================================
	// TEST REGISTER - WIRE 
	// =============================================================================
	// register - wire definition
	reg                                    wClk;
   reg                                    wRst_n;
   reg [2:0]                              avms_p0_addr; 
   reg [31:0]                             avms_p0_writedata; 
   reg [31:0]                             avms_p0_readdata;  
   reg                                    avms_p0_read; 
   reg                                    avms_p0_write; 
   reg [2:0]                              avms_p1_addr; 
   reg [31:0]                             avms_p1_writedata; 
   reg [31:0]                             avms_p1_readdata;  
   reg                                    avms_p1_read; 
   reg                                    avms_p1_write; 

   //-----------------------------------------------------------------------------------------------------------//

   // generate the clocks & reset	
   // clock for xtrig IP
   always 
   begin
		#(CLK_HALF_PERIOD) wClk = ~wClk;
	end 

	initial 
   	begin
			wClk						= 1'b0;
			wRst_n					= 1'b1;

      	// assert reset
		   #(10 * CLK_PERIOD)  	
			   wRst_n 						= 'd0;
      	// deassert reset 
		   #(50 * CLK_PERIOD)  	
			   wRst_n 						= 'd1;

         #(100 * CLK_PERIOD)
            avms_p0_addr            = 'd3;
            avms_p0_write           = 'd1;
            avms_p0_writedata       = 'd16; 

         #(101 * CLK_PERIOD)
            avms_p0_write           = 'd0;

         #(105 * CLK_PERIOD)
            avms_p0_addr            = 'd3;
            avms_p0_read            = 'd1;

         #(106 * CLK_PERIOD)
            avms_p0_read            = 'd0;
      end
   
   csr_regmap_dualports_avms #(
      .DATA_WIDTH(32),
      .ADDR_WIDTH(3)
   )
   Dut(
      // avalon slave port 0
      .avms_clk_0          (wClk),
	   .avms_reset_n_0      (wRst_n),
	   .avms_addr_0         (avms_p0_addr),
	   .avms_byteenable_0   (),
	   .avms_read_0         (avms_p0_read),
	   .avms_write_0        (avms_p0_write),
	   .avms_writedata_0    (avms_p0_writedata),
	   .avms_readdata_0     (avms_p0_readdata),
	
	   // avalon slave port 1 
	   .avms_clk_1          (wClk),
	   .avms_reset_n_1      (wRst_n),
	   .avms_addr_1         (avms_p1_addr),
	   .avms_byteenable_1   (),
	   .avms_read_1         (avms_p1_read),
	   .avms_write_1        (avms_p1_write),
	   .avms_writedata_1    (avms_p1_writedata),
	   .avms_readdata_1     (avms_p1_readdata)
   );




endmodule