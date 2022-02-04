// top_mm_interconnect_0.v

// This file was auto-generated from altera_mm_interconnect_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module top_mm_interconnect_0 (
		input  wire        pcie_256_dma_coreclkout_clk,                   //                 pcie_256_dma_coreclkout.clk
		input  wire        csr_regmap_reset2_reset_bridge_in_reset_reset, // csr_regmap_reset2_reset_bridge_in_reset.reset
		input  wire [63:0] pcie_256_dma_Rxm_BAR2_address,                 //                   pcie_256_dma_Rxm_BAR2.address
		output wire        pcie_256_dma_Rxm_BAR2_waitrequest,             //                                        .waitrequest
		input  wire [3:0]  pcie_256_dma_Rxm_BAR2_byteenable,              //                                        .byteenable
		input  wire        pcie_256_dma_Rxm_BAR2_read,                    //                                        .read
		output wire [31:0] pcie_256_dma_Rxm_BAR2_readdata,                //                                        .readdata
		output wire        pcie_256_dma_Rxm_BAR2_readdatavalid,           //                                        .readdatavalid
		input  wire        pcie_256_dma_Rxm_BAR2_write,                   //                                        .write
		input  wire [31:0] pcie_256_dma_Rxm_BAR2_writedata,               //                                        .writedata
		output wire [2:0]  csr_regmap_s2_address,                         //                           csr_regmap_s2.address
		output wire        csr_regmap_s2_write,                           //                                        .write
		input  wire [31:0] csr_regmap_s2_readdata,                        //                                        .readdata
		output wire [31:0] csr_regmap_s2_writedata,                       //                                        .writedata
		output wire [3:0]  csr_regmap_s2_byteenable,                      //                                        .byteenable
		output wire        csr_regmap_s2_chipselect,                      //                                        .chipselect
		output wire        csr_regmap_s2_clken                            //                                        .clken
	);

	wire         pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_waitrequest;   // csr_regmap_s2_translator:uav_waitrequest -> pcie_256_dma_Rxm_BAR2_translator:uav_waitrequest
	wire  [31:0] pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_readdata;      // csr_regmap_s2_translator:uav_readdata -> pcie_256_dma_Rxm_BAR2_translator:uav_readdata
	wire         pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_debugaccess;   // pcie_256_dma_Rxm_BAR2_translator:uav_debugaccess -> csr_regmap_s2_translator:uav_debugaccess
	wire  [63:0] pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_address;       // pcie_256_dma_Rxm_BAR2_translator:uav_address -> csr_regmap_s2_translator:uav_address
	wire         pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_read;          // pcie_256_dma_Rxm_BAR2_translator:uav_read -> csr_regmap_s2_translator:uav_read
	wire   [3:0] pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_byteenable;    // pcie_256_dma_Rxm_BAR2_translator:uav_byteenable -> csr_regmap_s2_translator:uav_byteenable
	wire         pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_readdatavalid; // csr_regmap_s2_translator:uav_readdatavalid -> pcie_256_dma_Rxm_BAR2_translator:uav_readdatavalid
	wire         pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_lock;          // pcie_256_dma_Rxm_BAR2_translator:uav_lock -> csr_regmap_s2_translator:uav_lock
	wire         pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_write;         // pcie_256_dma_Rxm_BAR2_translator:uav_write -> csr_regmap_s2_translator:uav_write
	wire  [31:0] pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_writedata;     // pcie_256_dma_Rxm_BAR2_translator:uav_writedata -> csr_regmap_s2_translator:uav_writedata
	wire   [2:0] pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_burstcount;    // pcie_256_dma_Rxm_BAR2_translator:uav_burstcount -> csr_regmap_s2_translator:uav_burstcount

	altera_merlin_master_translator #(
		.AV_ADDRESS_W                (64),
		.AV_DATA_W                   (32),
		.AV_BURSTCOUNT_W             (1),
		.AV_BYTEENABLE_W             (4),
		.UAV_ADDRESS_W               (64),
		.UAV_BURSTCOUNT_W            (3),
		.USE_READ                    (1),
		.USE_WRITE                   (1),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (0),
		.USE_CHIPSELECT              (0),
		.USE_BURSTCOUNT              (0),
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
	) pcie_256_dma_rxm_bar2_translator (
		.clk                    (pcie_256_dma_coreclkout_clk),                                              //                       clk.clk
		.reset                  (csr_regmap_reset2_reset_bridge_in_reset_reset),                            //                     reset.reset
		.uav_address            (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_address),       // avalon_universal_master_0.address
		.uav_burstcount         (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_burstcount),    //                          .burstcount
		.uav_read               (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_read),          //                          .read
		.uav_write              (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_write),         //                          .write
		.uav_waitrequest        (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_waitrequest),   //                          .waitrequest
		.uav_readdatavalid      (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_readdatavalid), //                          .readdatavalid
		.uav_byteenable         (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_byteenable),    //                          .byteenable
		.uav_readdata           (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_readdata),      //                          .readdata
		.uav_writedata          (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_writedata),     //                          .writedata
		.uav_lock               (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_lock),          //                          .lock
		.uav_debugaccess        (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_debugaccess),   //                          .debugaccess
		.av_address             (pcie_256_dma_Rxm_BAR2_address),                                            //      avalon_anti_master_0.address
		.av_waitrequest         (pcie_256_dma_Rxm_BAR2_waitrequest),                                        //                          .waitrequest
		.av_byteenable          (pcie_256_dma_Rxm_BAR2_byteenable),                                         //                          .byteenable
		.av_read                (pcie_256_dma_Rxm_BAR2_read),                                               //                          .read
		.av_readdata            (pcie_256_dma_Rxm_BAR2_readdata),                                           //                          .readdata
		.av_readdatavalid       (pcie_256_dma_Rxm_BAR2_readdatavalid),                                      //                          .readdatavalid
		.av_write               (pcie_256_dma_Rxm_BAR2_write),                                              //                          .write
		.av_writedata           (pcie_256_dma_Rxm_BAR2_writedata),                                          //                          .writedata
		.av_burstcount          (1'b1),                                                                     //               (terminated)
		.av_beginbursttransfer  (1'b0),                                                                     //               (terminated)
		.av_begintransfer       (1'b0),                                                                     //               (terminated)
		.av_chipselect          (1'b0),                                                                     //               (terminated)
		.av_lock                (1'b0),                                                                     //               (terminated)
		.av_debugaccess         (1'b0),                                                                     //               (terminated)
		.uav_clken              (),                                                                         //               (terminated)
		.av_clken               (1'b1),                                                                     //               (terminated)
		.uav_response           (2'b00),                                                                    //               (terminated)
		.av_response            (),                                                                         //               (terminated)
		.uav_writeresponsevalid (1'b0),                                                                     //               (terminated)
		.av_writeresponsevalid  ()                                                                          //               (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (3),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (64),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (1),
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
		.AV_READ_WAIT_CYCLES            (0),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) csr_regmap_s2_translator (
		.clk                    (pcie_256_dma_coreclkout_clk),                                              //                      clk.clk
		.reset                  (csr_regmap_reset2_reset_bridge_in_reset_reset),                            //                    reset.reset
		.uav_address            (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_address),       // avalon_universal_slave_0.address
		.uav_burstcount         (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_burstcount),    //                         .burstcount
		.uav_read               (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_read),          //                         .read
		.uav_write              (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_write),         //                         .write
		.uav_waitrequest        (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid      (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_readdatavalid), //                         .readdatavalid
		.uav_byteenable         (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_byteenable),    //                         .byteenable
		.uav_readdata           (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_readdata),      //                         .readdata
		.uav_writedata          (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_writedata),     //                         .writedata
		.uav_lock               (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_lock),          //                         .lock
		.uav_debugaccess        (pcie_256_dma_rxm_bar2_translator_avalon_universal_master_0_debugaccess),   //                         .debugaccess
		.av_address             (csr_regmap_s2_address),                                                    //      avalon_anti_slave_0.address
		.av_write               (csr_regmap_s2_write),                                                      //                         .write
		.av_readdata            (csr_regmap_s2_readdata),                                                   //                         .readdata
		.av_writedata           (csr_regmap_s2_writedata),                                                  //                         .writedata
		.av_byteenable          (csr_regmap_s2_byteenable),                                                 //                         .byteenable
		.av_chipselect          (csr_regmap_s2_chipselect),                                                 //                         .chipselect
		.av_clken               (csr_regmap_s2_clken),                                                      //                         .clken
		.av_read                (),                                                                         //              (terminated)
		.av_begintransfer       (),                                                                         //              (terminated)
		.av_beginbursttransfer  (),                                                                         //              (terminated)
		.av_burstcount          (),                                                                         //              (terminated)
		.av_readdatavalid       (1'b0),                                                                     //              (terminated)
		.av_waitrequest         (1'b0),                                                                     //              (terminated)
		.av_writebyteenable     (),                                                                         //              (terminated)
		.av_lock                (),                                                                         //              (terminated)
		.uav_clken              (1'b0),                                                                     //              (terminated)
		.av_debugaccess         (),                                                                         //              (terminated)
		.av_outputenable        (),                                                                         //              (terminated)
		.uav_response           (),                                                                         //              (terminated)
		.av_response            (2'b00),                                                                    //              (terminated)
		.uav_writeresponsevalid (),                                                                         //              (terminated)
		.av_writeresponsevalid  (1'b0)                                                                      //              (terminated)
	);

endmodule
