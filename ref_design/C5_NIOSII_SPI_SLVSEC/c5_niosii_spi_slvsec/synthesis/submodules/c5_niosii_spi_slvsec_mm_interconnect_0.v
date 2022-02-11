// c5_niosii_spi_slvsec_mm_interconnect_0.v

// This file was auto-generated from altera_mm_interconnect_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module c5_niosii_spi_slvsec_mm_interconnect_0 (
		input  wire        pll_0_outclk0_clk,                            //                          pll_0_outclk0.clk
		input  wire        niosii_cpu_reset_reset_bridge_in_reset_reset, // niosii_cpu_reset_reset_bridge_in_reset.reset
		input  wire        spi_reset_reset_bridge_in_reset_reset,        //        spi_reset_reset_bridge_in_reset.reset
		input  wire [9:0]  niosii_cpu_spi_mm_bridge_address,             //               niosii_cpu_spi_mm_bridge.address
		output wire        niosii_cpu_spi_mm_bridge_waitrequest,         //                                       .waitrequest
		input  wire [0:0]  niosii_cpu_spi_mm_bridge_burstcount,          //                                       .burstcount
		input  wire [3:0]  niosii_cpu_spi_mm_bridge_byteenable,          //                                       .byteenable
		input  wire        niosii_cpu_spi_mm_bridge_read,                //                                       .read
		output wire [31:0] niosii_cpu_spi_mm_bridge_readdata,            //                                       .readdata
		output wire        niosii_cpu_spi_mm_bridge_readdatavalid,       //                                       .readdatavalid
		input  wire        niosii_cpu_spi_mm_bridge_write,               //                                       .write
		input  wire [31:0] niosii_cpu_spi_mm_bridge_writedata,           //                                       .writedata
		input  wire        niosii_cpu_spi_mm_bridge_debugaccess,         //                                       .debugaccess
		output wire [2:0]  spi_spi_control_port_address,                 //                   spi_spi_control_port.address
		output wire        spi_spi_control_port_write,                   //                                       .write
		output wire        spi_spi_control_port_read,                    //                                       .read
		input  wire [15:0] spi_spi_control_port_readdata,                //                                       .readdata
		output wire [15:0] spi_spi_control_port_writedata,               //                                       .writedata
		output wire        spi_spi_control_port_chipselect               //                                       .chipselect
	);

	wire         niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_waitrequest;   // spi_spi_control_port_translator:uav_waitrequest -> niosii_cpu_spi_mm_bridge_translator:uav_waitrequest
	wire  [31:0] niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_readdata;      // spi_spi_control_port_translator:uav_readdata -> niosii_cpu_spi_mm_bridge_translator:uav_readdata
	wire         niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_debugaccess;   // niosii_cpu_spi_mm_bridge_translator:uav_debugaccess -> spi_spi_control_port_translator:uav_debugaccess
	wire   [9:0] niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_address;       // niosii_cpu_spi_mm_bridge_translator:uav_address -> spi_spi_control_port_translator:uav_address
	wire         niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_read;          // niosii_cpu_spi_mm_bridge_translator:uav_read -> spi_spi_control_port_translator:uav_read
	wire   [3:0] niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_byteenable;    // niosii_cpu_spi_mm_bridge_translator:uav_byteenable -> spi_spi_control_port_translator:uav_byteenable
	wire         niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_readdatavalid; // spi_spi_control_port_translator:uav_readdatavalid -> niosii_cpu_spi_mm_bridge_translator:uav_readdatavalid
	wire         niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_lock;          // niosii_cpu_spi_mm_bridge_translator:uav_lock -> spi_spi_control_port_translator:uav_lock
	wire         niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_write;         // niosii_cpu_spi_mm_bridge_translator:uav_write -> spi_spi_control_port_translator:uav_write
	wire  [31:0] niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_writedata;     // niosii_cpu_spi_mm_bridge_translator:uav_writedata -> spi_spi_control_port_translator:uav_writedata
	wire   [2:0] niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_burstcount;    // niosii_cpu_spi_mm_bridge_translator:uav_burstcount -> spi_spi_control_port_translator:uav_burstcount

	altera_merlin_master_translator #(
		.AV_ADDRESS_W                (10),
		.AV_DATA_W                   (32),
		.AV_BURSTCOUNT_W             (1),
		.AV_BYTEENABLE_W             (4),
		.UAV_ADDRESS_W               (10),
		.UAV_BURSTCOUNT_W            (3),
		.USE_READ                    (1),
		.USE_WRITE                   (1),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (0),
		.USE_CHIPSELECT              (0),
		.USE_BURSTCOUNT              (1),
		.USE_READDATAVALID           (1),
		.USE_WAITREQUEST             (1),
		.USE_READRESPONSE            (0),
		.USE_WRITERESPONSE           (0),
		.AV_SYMBOLS_PER_WORD         (4),
		.AV_ADDRESS_SYMBOLS          (1),
		.AV_BURSTCOUNT_SYMBOLS       (0),
		.AV_CONSTANT_BURST_BEHAVIOR  (0),
		.UAV_CONSTANT_BURST_BEHAVIOR (0),
		.AV_LINEWRAPBURSTS           (0),
		.AV_REGISTERINCOMINGSIGNALS  (0)
	) niosii_cpu_spi_mm_bridge_translator (
		.clk                    (pll_0_outclk0_clk),                                                           //                       clk.clk
		.reset                  (spi_reset_reset_bridge_in_reset_reset),                                       //                     reset.reset
		.uav_address            (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_address),       // avalon_universal_master_0.address
		.uav_burstcount         (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_burstcount),    //                          .burstcount
		.uav_read               (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_read),          //                          .read
		.uav_write              (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_write),         //                          .write
		.uav_waitrequest        (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_waitrequest),   //                          .waitrequest
		.uav_readdatavalid      (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_readdatavalid), //                          .readdatavalid
		.uav_byteenable         (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_byteenable),    //                          .byteenable
		.uav_readdata           (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_readdata),      //                          .readdata
		.uav_writedata          (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_writedata),     //                          .writedata
		.uav_lock               (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_lock),          //                          .lock
		.uav_debugaccess        (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_debugaccess),   //                          .debugaccess
		.av_address             (niosii_cpu_spi_mm_bridge_address),                                            //      avalon_anti_master_0.address
		.av_waitrequest         (niosii_cpu_spi_mm_bridge_waitrequest),                                        //                          .waitrequest
		.av_burstcount          (niosii_cpu_spi_mm_bridge_burstcount),                                         //                          .burstcount
		.av_byteenable          (niosii_cpu_spi_mm_bridge_byteenable),                                         //                          .byteenable
		.av_read                (niosii_cpu_spi_mm_bridge_read),                                               //                          .read
		.av_readdata            (niosii_cpu_spi_mm_bridge_readdata),                                           //                          .readdata
		.av_readdatavalid       (niosii_cpu_spi_mm_bridge_readdatavalid),                                      //                          .readdatavalid
		.av_write               (niosii_cpu_spi_mm_bridge_write),                                              //                          .write
		.av_writedata           (niosii_cpu_spi_mm_bridge_writedata),                                          //                          .writedata
		.av_debugaccess         (niosii_cpu_spi_mm_bridge_debugaccess),                                        //                          .debugaccess
		.av_beginbursttransfer  (1'b0),                                                                        //               (terminated)
		.av_begintransfer       (1'b0),                                                                        //               (terminated)
		.av_chipselect          (1'b0),                                                                        //               (terminated)
		.av_lock                (1'b0),                                                                        //               (terminated)
		.uav_clken              (),                                                                            //               (terminated)
		.av_clken               (1'b1),                                                                        //               (terminated)
		.uav_response           (2'b00),                                                                       //               (terminated)
		.av_response            (),                                                                            //               (terminated)
		.uav_writeresponsevalid (1'b0),                                                                        //               (terminated)
		.av_writeresponsevalid  ()                                                                             //               (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (16),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (1),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (10),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (0),
		.USE_UAV_CLKEN                  (0),
		.USE_READRESPONSE               (0),
		.USE_WRITERESPONSE              (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (1),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) spi_spi_control_port_translator (
		.clk                    (pll_0_outclk0_clk),                                                           //                      clk.clk
		.reset                  (spi_reset_reset_bridge_in_reset_reset),                                       //                    reset.reset
		.uav_address            (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_address),       // avalon_universal_slave_0.address
		.uav_burstcount         (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_burstcount),    //                         .burstcount
		.uav_read               (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_read),          //                         .read
		.uav_write              (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_write),         //                         .write
		.uav_waitrequest        (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid      (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_readdatavalid), //                         .readdatavalid
		.uav_byteenable         (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_byteenable),    //                         .byteenable
		.uav_readdata           (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_readdata),      //                         .readdata
		.uav_writedata          (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_writedata),     //                         .writedata
		.uav_lock               (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_lock),          //                         .lock
		.uav_debugaccess        (niosii_cpu_spi_mm_bridge_translator_avalon_universal_master_0_debugaccess),   //                         .debugaccess
		.av_address             (spi_spi_control_port_address),                                                //      avalon_anti_slave_0.address
		.av_write               (spi_spi_control_port_write),                                                  //                         .write
		.av_read                (spi_spi_control_port_read),                                                   //                         .read
		.av_readdata            (spi_spi_control_port_readdata),                                               //                         .readdata
		.av_writedata           (spi_spi_control_port_writedata),                                              //                         .writedata
		.av_chipselect          (spi_spi_control_port_chipselect),                                             //                         .chipselect
		.av_begintransfer       (),                                                                            //              (terminated)
		.av_beginbursttransfer  (),                                                                            //              (terminated)
		.av_burstcount          (),                                                                            //              (terminated)
		.av_byteenable          (),                                                                            //              (terminated)
		.av_readdatavalid       (1'b0),                                                                        //              (terminated)
		.av_waitrequest         (1'b0),                                                                        //              (terminated)
		.av_writebyteenable     (),                                                                            //              (terminated)
		.av_lock                (),                                                                            //              (terminated)
		.av_clken               (),                                                                            //              (terminated)
		.uav_clken              (1'b0),                                                                        //              (terminated)
		.av_debugaccess         (),                                                                            //              (terminated)
		.av_outputenable        (),                                                                            //              (terminated)
		.uav_response           (),                                                                            //              (terminated)
		.av_response            (2'b00),                                                                       //              (terminated)
		.uav_writeresponsevalid (),                                                                            //              (terminated)
		.av_writeresponsevalid  (1'b0)                                                                         //              (terminated)
	);

endmodule