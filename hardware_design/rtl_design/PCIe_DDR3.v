// =======================================================================================
// FILE NAME	: pcie_ddr3.v
// DEPARTMENT	:  
// AUTHOR		: Hung Lam
// DATE			: 
// =======================================================================================
// DESCRIPTION	: Top level design
// =======================================================================================
// REVISION HISTORY	:
//	v1.0			: Initial version release
// =======================================================================================
// PARAMETERS	:
// =======================================================================================
// I/O PORTS	:	
// =======================================================================================

`define ENABLE_DDR3
`define ENABLE_PCIE
`define ENABLE_CAM_GPIO1

module PCIe_DDR3(

	//////////// CLOCK //////////
	input 		          		CLOCK_50_B3B,
	input 		          		CLOCK_50_B4A,
	input 		          		CLOCK_50_B5B,
	input 		          		CLOCK_50_B6A,
	input 		          		CLOCK_50_B7A,
	input 		          		CLOCK_50_B8A,

	//////////// Buttons //////////
	input 		          		CPU_RESET_n,
	input 		     [3:0]		KEY,

	//////////// Swtiches //////////
	input 		     [3:0]		SW,

	//////////// LED //////////
	output		     [3:0]		LED,

	//////////// HEX0 //////////
	output		     [6:0]		HEX0,
	output		          		HEX0_DP,

	//////////// HEX1 //////////
	output		     [6:0]		HEX1,
	output		          		HEX1_DP,

	//////////// FAN //////////
	output		          		FAN_CTRL,

	//////////// SDRAM //////////
	output		    [12:0]		DRAM_ADDR,
	output		     [1:0]		DRAM_BA,
	output		          		DRAM_CAS_n,
	output		          		DRAM_CKE,
	output		          		DRAM_CLK,
	output		          		DRAM_CS_n,
	inout 		    [15:0]		DRAM_DQ,
	output		          		DRAM_LDQM,
	output		          		DRAM_RAS_n,
	output		          		DRAM_UDQM,
	output		          		DRAM_WE_n,

`ifdef ENABLE_DDR3	
	//////////// DDR3 //////////
	output		    [14:0]		DDR3_ADDR,
	output		     [2:0]		DDR3_BA,
	output		          		DDR3_CAS_n,
	output		          		DDR3_CKE,
	output		          		DDR3_CK_n,
	output		          		DDR3_CK_p,
	output		          		DDR3_CS_n,
	output		     [3:0]		DDR3_DM,
	inout 		    [31:0]		DDR3_DQ,
	inout 		     [3:0]		DDR3_DQS_n,
	inout 		     [3:0]		DDR3_DQS_p,
	output		          		DDR3_ODT,
	output		          		DDR3_RAS_n,
	output		          		DDR3_RESET_n,
	input 		          		DDR3_RZQ,
	output		          		DDR3_WE_n,
`endif /*ENABLE_DDR3*/

`ifdef ENABLE_CAM_GPIO1
	//////////// GPIO_1, GPIO_1 connect to D8M-GPIO //////////
	inout 		          		CAMERA1_CAMERA_I2C_SCL,
	inout 		          		CAMERA1_CAMERA_I2C_SDA,
	output		          		CAMERA1_CAMERA_PWDN_n,
	output		          		CAMERA1_MIPI_CS_n,
	inout 		          		CAMERA1_MIPI_I2C_SCL,
	inout 		          		CAMERA1_MIPI_I2C_SDA,
	output		          		CAMERA1_MIPI_MCLK,
	input 		          		CAMERA1_MIPI_PIXEL_CLK,
	input 		     [9:0]		CAMERA1_MIPI_PIXEL_D,
	input 		          		CAMERA1_MIPI_PIXEL_HS,
	input 		          		CAMERA1_MIPI_PIXEL_VS,
	output		          		CAMERA1_MIPI_REFCLK,
	output		          		CAMERA1_MIPI_RESET_n,
	
`endif /*ENABLE_CAM_GPIO1*/
	//////////// Uart to Usb //////////
	input 		          		UART_CTS,
	output		          		UART_RTS,
	input 		          		UART_RX,
	output		          		UART_TX,

	//////////// Arduino Interface //////////
	output		          		ADC_CONVST,
	output		          		ADC_SCK,
	output		          		ADC_SDI,
	input 		          		ADC_SDO,
	inout 		    [15:0]		ARD_IO,

`ifdef ENABLE_PCIE	
	//////////// PCIE //////////
	inout 		          		PCIE_PERST_n,
	input 		          		PCIE_REFCLK_p,
	input 		     [3:0]		PCIE_RX_p,
	inout 		          		PCIE_SMBCLK,
	inout 		          		PCIE_SMBDAT,
	output		     [3:0]		PCIE_TX_p,
	inout 		          		PCIE_WAKE_n,
`endif /*ENABLE_PCIE*/

	//////////// SMA //////////
	input 		          		SMA_CLKIN,
	output		          		SMA_CLKOUT
);


//=======================================================
//  REG/WIRE declarations
//=======================================================
wire [3:0]	pio_led;
wire [3:0]	pio_button;
wire [31:0] pcie_hip_ctrl_test_in;
wire 			ddr3_local_init_done;
wire 			ddr3_local_cal_success;
wire 			ddr3_local_cal_fail;

//////////////////////
// PCIE RESET
wire     any_rstn;
reg      any_rstn_r  /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R102"  */;
reg      any_rstn_rr /* synthesis ALTERA_ATTRIBUTE = "SUPPRESS_DA_RULE_INTERNAL=R102"  */;
//=======================================================
//  Structural coding
//=======================================================
assign 	pcie_hip_ctrl_test_in[4:0]  =  5'b01000;
assign 	pcie_hip_ctrl_test_in[5] =  1'b1;
assign 	pcie_hip_ctrl_test_in[31:6] =  26'h2;

assign 	FAN_CTRL    = 1'b1;
assign 	PCIE_WAKE_n = 1'b1;
assign 	any_rstn = PCIE_PERST_n & CPU_RESET_n ;
 
assign 	CAMERA1_MIPI_CS_n = 1'b0; 

//reset Synchronizer
always @(posedge CLOCK_50_B3B or negedge any_rstn)
    begin
      if (any_rstn == 0)
        begin
          any_rstn_r <= 0;
          any_rstn_rr <= 0;
        end
      else
        begin
          any_rstn_r <= 1;
          any_rstn_rr <= any_rstn_r;
        end
    end


	 
top u0 (
			// PCIe
			.clk_clk                                                 (CLOCK_50_B3B),                                                 //                                     clk.clk
			.hip_ctrl_test_in                                        (pcie_hip_ctrl_test_in),                                        //                                hip_ctrl.test_in
			.hip_ctrl_simu_mode_pipe                                 (1'b0),                                 								//                                        .simu_mode_pipe
			.hip_pipe_sim_pipe_pclk_in                               (1'b0),                               									//                                hip_pipe.sim_pipe_pclk_in
			.hip_pipe_sim_pipe_rate                                  (1'b0),                                  								//                                        .sim_pipe_rate
			.hip_serial_rx_in0                                       (PCIE_RX_p[0]),                                       				// hip_serial.rx_in0
			.hip_serial_rx_in1                                       (PCIE_RX_p[1]),                                       				//           .rx_in1
			.hip_serial_rx_in2                                       (PCIE_RX_p[2]),                                       				//           .rx_in2
			.hip_serial_rx_in3                                       (PCIE_RX_p[3]),                                       				//           .rx_in3
			.hip_serial_tx_out0                                      (PCIE_TX_p[0]),                                      				//           .tx_out0
			.hip_serial_tx_out1                                      (PCIE_TX_p[1]),                                      				//           .tx_out1
			.hip_serial_tx_out2                                      (PCIE_TX_p[2]),                                      				//           .tx_out2
			.hip_serial_tx_out3                                      (PCIE_TX_p[3]),                                      				//           .tx_out3
			.pcie_rstn_npor                                          (any_rstn_rr),                                          //                               pcie_rstn.npor
			.pcie_rstn_pin_perst                                     (PCIE_PERST_n),                                     //                                        .pin_perst
			.refclk_clk                                              (PCIE_REFCLK_p),                                              //                                  refclk.clk
			.reset_reset_n                                           ((CPU_RESET_n==1'b0)?1'b0:(PCIE_PERST_n==1'b0)?1'b0:1'b1),                                           //                                   reset.reset_n

			// I2C
			.i2c_opencores_camera_export_scl_pad_io                  (CAMERA1_CAMERA_I2C_SCL),                  //             i2c_opencores_camera_export.scl_pad_io
			.i2c_opencores_camera_export_sda_pad_io                  (CAMERA1_CAMERA_I2C_SDA),                  //                                        .sda_pad_io
			.i2c_opencores_mipi_export_scl_pad_io                    (CAMERA1_MIPI_I2C_SCL),                    //               i2c_opencores_mipi_export.scl_pad_io
			.i2c_opencores_mipi_export_sda_pad_io                    (CAMERA1_MIPI_I2C_SDA),                    //                                        .sda_pad_io
        
			// DDR3
			.mem_if_ddr3_emif_0_pll_ref_clk_clk                      (CLOCK_50_B4A),                      			 						// mem_if_ddr3_emif_0_pll_ref_clk.clk		  
			.mem_if_ddr3_emif_0_status_local_init_done   				(ddr3_local_init_done),   													// mem_if_ddr3_emif_status.local_init_done
			.mem_if_ddr3_emif_0_status_local_cal_success				  	(ddr3_local_cal_success), 													//                        .local_cal_success
			.mem_if_ddr3_emif_0_status_local_cal_fail  			     	(ddr3_local_cal_fail),    													//                        .local_cal_fail

			.memory_mem_a                              				  	(DDR3_ADDR),                              								// memory.mem_a
			.memory_mem_ba                            					(DDR3_BA),                             									//       .mem_ba
			.memory_mem_ck                           					  	(DDR3_CK_p),                             								//       .mem_ck
			.memory_mem_ck_n                         					  	(DDR3_CK_n),                           									//       .mem_ck_n
			.memory_mem_cke                         					  	(DDR3_CKE),                            									//       .mem_cke
			.memory_mem_cs_n                         					  	(DDR3_CS_n),                           									//       .mem_cs_n
			.memory_mem_dm                           					  	(DDR3_DM),                             									//       .mem_dm
			.memory_mem_ras_n                         					(DDR3_RAS_n),                          									//       .mem_ras_n
			.memory_mem_cas_n                        					  	(DDR3_CAS_n),                          									//       .mem_cas_n
			.memory_mem_we_n                        					  	(DDR3_WE_n),                           									//       .mem_we_n
			.memory_mem_reset_n                      					  	(DDR3_RESET_n),                       									//       .mem_reset_n
			.memory_mem_dq                          					  	(DDR3_DQ),                             									//       .mem_dq
			.memory_mem_dqs                          					  	(DDR3_DQS_p),                            								//       .mem_dqs
			.memory_mem_dqs_n                        					  	(DDR3_DQS_n),                          									//       .mem_dqs_n
			.memory_mem_odt                          					  	(DDR3_ODT),                            									//       .mem_odt
			.oct_rzqin                                					(DDR3_RZQ),                                 							// oct.rzqin
			// DDR3 status
			.ddr3_status_external_connection_export                  ({ddr3_local_cal_success, ddr3_local_cal_fail, ddr3_local_init_done}), 
			
			// GPIO
			.pio_button_external_connection_export                   (pio_button),                   //          pio_button_external_connection.export
			.pio_led_external_connection_export                      (pio_led),                      //             pio_led_external_connection.export

			// PLL
			.pll_0_outclk1_100mhz_clk                                (),                                              //                    pll_0_outclk1_100mhz.clk
			.pll_0_outclk2_20mhz_clk                                 (CAMERA1_MIPI_REFCLK),                           //                     pll_0_outclk2_50mhz.clk

			// SDRAM FrameBuffer
			.sdram_vfb_wire_addr                                     (DRAM_ADDR),                                     //                          sdram_vfb_wire.addr
			.sdram_vfb_wire_ba                                       (DRAM_BA),                                       //                                        .ba
			.sdram_vfb_wire_cas_n                                    (DRAM_CAS_n),                                    //                                        .cas_n
			.sdram_vfb_wire_cke                                      (DRAM_CKE),                                      //                                        .cke
			.sdram_vfb_wire_cs_n                                     (DRAM_CS_n),                                     //                                        .cs_n
			.sdram_vfb_wire_dq                                       (DRAM_DQ),                                       //                                        .dq
			.sdram_vfb_wire_dqm                                      ({DRAM_UDQM,DRAM_LDQM}),                         //                                        .dqm
			.sdram_vfb_wire_ras_n                                    (DRAM_RAS_n),                                    //                                        .ras_n
			.sdram_vfb_wire_we_n                                     (DRAM_WE_n),                                     //                                        .we_n

			// Camera
			.mipi_pwdn_n_external_connection_export                  (CAMERA1_CAMERA_PWDN_n),                  		 //         mipi_pwdn_n_external_connection.export
			.mipi_reset_n_external_connection_export                 (CAMERA1_MIPI_RESET_n),                 			 //        mipi_reset_n_external_connection.export
			.terasic_auto_focus_0_conduit_vcm_i2c_sda                (CAMERA1_CAMERA_I2C_SDA),                			 //            terasic_auto_focus_0_conduit.vcm_i2c_sda
			.terasic_auto_focus_0_conduit_clk50                      (CLOCK_50_B5B),                      				 //                                        .clk50
			.terasic_auto_focus_0_conduit_vcm_i2c_scl                (CAMERA1_CAMERA_I2C_SCL),                			 //                                        .vcm_i2c_scl
			.terasic_camera_0_conduit_end_cam_d                      ({CAMERA1_MIPI_PIXEL_D[9:0],2'b00}),             //            terasic_camera_0_conduit_end.cam_d
			.terasic_camera_0_conduit_end_cam_fval                   (CAMERA1_MIPI_PIXEL_VS),                   		 //                                      .cam_fval
			.terasic_camera_0_conduit_end_cam_lval                   (CAMERA1_MIPI_PIXEL_HS),                   		 //                                        .cam_lval
			.terasic_camera_0_conduit_end_cam_pix                    (~CAMERA1_MIPI_PIXEL_CLK)                     	 //                                        .cam_pix
    );


	 FpsMonitor fpscount(
			.clk50(CLOCK_50_B6A), 
			.vs(CAMERA1_MIPI_PIXEL_VS), 
			
			.fps(), 
			.hex_fps_h(HEX1), 
			.hex_fps_l(HEX0)
	 ); 
	 
assign 	LED        = pio_led; // led high-active
assign 	pio_button = KEY;     // button high-active



endmodule
