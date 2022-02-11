
module top (
	clk_clk,
	ddr3_status_external_connection_export,
	hip_ctrl_test_in,
	hip_ctrl_simu_mode_pipe,
	hip_pipe_sim_pipe_pclk_in,
	hip_pipe_sim_pipe_rate,
	hip_pipe_sim_ltssmstate,
	hip_pipe_eidleinfersel0,
	hip_pipe_eidleinfersel1,
	hip_pipe_eidleinfersel2,
	hip_pipe_eidleinfersel3,
	hip_pipe_powerdown0,
	hip_pipe_powerdown1,
	hip_pipe_powerdown2,
	hip_pipe_powerdown3,
	hip_pipe_rxpolarity0,
	hip_pipe_rxpolarity1,
	hip_pipe_rxpolarity2,
	hip_pipe_rxpolarity3,
	hip_pipe_txcompl0,
	hip_pipe_txcompl1,
	hip_pipe_txcompl2,
	hip_pipe_txcompl3,
	hip_pipe_txdata0,
	hip_pipe_txdata1,
	hip_pipe_txdata2,
	hip_pipe_txdata3,
	hip_pipe_txdatak0,
	hip_pipe_txdatak1,
	hip_pipe_txdatak2,
	hip_pipe_txdatak3,
	hip_pipe_txdetectrx0,
	hip_pipe_txdetectrx1,
	hip_pipe_txdetectrx2,
	hip_pipe_txdetectrx3,
	hip_pipe_txelecidle0,
	hip_pipe_txelecidle1,
	hip_pipe_txelecidle2,
	hip_pipe_txelecidle3,
	hip_pipe_txdeemph0,
	hip_pipe_txdeemph1,
	hip_pipe_txdeemph2,
	hip_pipe_txdeemph3,
	hip_pipe_txmargin0,
	hip_pipe_txmargin1,
	hip_pipe_txmargin2,
	hip_pipe_txmargin3,
	hip_pipe_txswing0,
	hip_pipe_txswing1,
	hip_pipe_txswing2,
	hip_pipe_txswing3,
	hip_pipe_phystatus0,
	hip_pipe_phystatus1,
	hip_pipe_phystatus2,
	hip_pipe_phystatus3,
	hip_pipe_rxdata0,
	hip_pipe_rxdata1,
	hip_pipe_rxdata2,
	hip_pipe_rxdata3,
	hip_pipe_rxdatak0,
	hip_pipe_rxdatak1,
	hip_pipe_rxdatak2,
	hip_pipe_rxdatak3,
	hip_pipe_rxelecidle0,
	hip_pipe_rxelecidle1,
	hip_pipe_rxelecidle2,
	hip_pipe_rxelecidle3,
	hip_pipe_rxstatus0,
	hip_pipe_rxstatus1,
	hip_pipe_rxstatus2,
	hip_pipe_rxstatus3,
	hip_pipe_rxvalid0,
	hip_pipe_rxvalid1,
	hip_pipe_rxvalid2,
	hip_pipe_rxvalid3,
	hip_serial_rx_in0,
	hip_serial_rx_in1,
	hip_serial_rx_in2,
	hip_serial_rx_in3,
	hip_serial_tx_out0,
	hip_serial_tx_out1,
	hip_serial_tx_out2,
	hip_serial_tx_out3,
	i2c_opencores_camera_export_scl_pad_io,
	i2c_opencores_camera_export_sda_pad_io,
	i2c_opencores_mipi_export_scl_pad_io,
	i2c_opencores_mipi_export_sda_pad_io,
	mem_if_ddr3_emif_0_pll_ref_clk_clk,
	mem_if_ddr3_emif_0_status_local_init_done,
	mem_if_ddr3_emif_0_status_local_cal_success,
	mem_if_ddr3_emif_0_status_local_cal_fail,
	memory_mem_a,
	memory_mem_ba,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_dm,
	memory_mem_ras_n,
	memory_mem_cas_n,
	memory_mem_we_n,
	memory_mem_reset_n,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	memory_mem_odt,
	mipi_pwdn_n_external_connection_export,
	mipi_reset_n_external_connection_export,
	oct_rzqin,
	pcie_256_hip_avmm_0_reconfig_clk_locked_fixedclk_locked,
	pcie_rstn_npor,
	pcie_rstn_pin_perst,
	pio_button_external_connection_export,
	pio_led_external_connection_export,
	pll_0_outclk1_100mhz_clk,
	pll_0_outclk2_20mhz_clk,
	refclk_clk,
	reset_reset_n,
	sdram_vfb_wire_addr,
	sdram_vfb_wire_ba,
	sdram_vfb_wire_cas_n,
	sdram_vfb_wire_cke,
	sdram_vfb_wire_cs_n,
	sdram_vfb_wire_dq,
	sdram_vfb_wire_dqm,
	sdram_vfb_wire_ras_n,
	sdram_vfb_wire_we_n,
	terasic_auto_focus_0_conduit_vcm_i2c_sda,
	terasic_auto_focus_0_conduit_clk50,
	terasic_auto_focus_0_conduit_vcm_i2c_scl,
	terasic_camera_0_conduit_end_cam_d,
	terasic_camera_0_conduit_end_cam_fval,
	terasic_camera_0_conduit_end_cam_lval,
	terasic_camera_0_conduit_end_cam_pix);	

	input		clk_clk;
	input	[2:0]	ddr3_status_external_connection_export;
	input	[31:0]	hip_ctrl_test_in;
	input		hip_ctrl_simu_mode_pipe;
	input		hip_pipe_sim_pipe_pclk_in;
	output	[1:0]	hip_pipe_sim_pipe_rate;
	output	[4:0]	hip_pipe_sim_ltssmstate;
	output	[2:0]	hip_pipe_eidleinfersel0;
	output	[2:0]	hip_pipe_eidleinfersel1;
	output	[2:0]	hip_pipe_eidleinfersel2;
	output	[2:0]	hip_pipe_eidleinfersel3;
	output	[1:0]	hip_pipe_powerdown0;
	output	[1:0]	hip_pipe_powerdown1;
	output	[1:0]	hip_pipe_powerdown2;
	output	[1:0]	hip_pipe_powerdown3;
	output		hip_pipe_rxpolarity0;
	output		hip_pipe_rxpolarity1;
	output		hip_pipe_rxpolarity2;
	output		hip_pipe_rxpolarity3;
	output		hip_pipe_txcompl0;
	output		hip_pipe_txcompl1;
	output		hip_pipe_txcompl2;
	output		hip_pipe_txcompl3;
	output	[7:0]	hip_pipe_txdata0;
	output	[7:0]	hip_pipe_txdata1;
	output	[7:0]	hip_pipe_txdata2;
	output	[7:0]	hip_pipe_txdata3;
	output		hip_pipe_txdatak0;
	output		hip_pipe_txdatak1;
	output		hip_pipe_txdatak2;
	output		hip_pipe_txdatak3;
	output		hip_pipe_txdetectrx0;
	output		hip_pipe_txdetectrx1;
	output		hip_pipe_txdetectrx2;
	output		hip_pipe_txdetectrx3;
	output		hip_pipe_txelecidle0;
	output		hip_pipe_txelecidle1;
	output		hip_pipe_txelecidle2;
	output		hip_pipe_txelecidle3;
	output		hip_pipe_txdeemph0;
	output		hip_pipe_txdeemph1;
	output		hip_pipe_txdeemph2;
	output		hip_pipe_txdeemph3;
	output	[2:0]	hip_pipe_txmargin0;
	output	[2:0]	hip_pipe_txmargin1;
	output	[2:0]	hip_pipe_txmargin2;
	output	[2:0]	hip_pipe_txmargin3;
	output		hip_pipe_txswing0;
	output		hip_pipe_txswing1;
	output		hip_pipe_txswing2;
	output		hip_pipe_txswing3;
	input		hip_pipe_phystatus0;
	input		hip_pipe_phystatus1;
	input		hip_pipe_phystatus2;
	input		hip_pipe_phystatus3;
	input	[7:0]	hip_pipe_rxdata0;
	input	[7:0]	hip_pipe_rxdata1;
	input	[7:0]	hip_pipe_rxdata2;
	input	[7:0]	hip_pipe_rxdata3;
	input		hip_pipe_rxdatak0;
	input		hip_pipe_rxdatak1;
	input		hip_pipe_rxdatak2;
	input		hip_pipe_rxdatak3;
	input		hip_pipe_rxelecidle0;
	input		hip_pipe_rxelecidle1;
	input		hip_pipe_rxelecidle2;
	input		hip_pipe_rxelecidle3;
	input	[2:0]	hip_pipe_rxstatus0;
	input	[2:0]	hip_pipe_rxstatus1;
	input	[2:0]	hip_pipe_rxstatus2;
	input	[2:0]	hip_pipe_rxstatus3;
	input		hip_pipe_rxvalid0;
	input		hip_pipe_rxvalid1;
	input		hip_pipe_rxvalid2;
	input		hip_pipe_rxvalid3;
	input		hip_serial_rx_in0;
	input		hip_serial_rx_in1;
	input		hip_serial_rx_in2;
	input		hip_serial_rx_in3;
	output		hip_serial_tx_out0;
	output		hip_serial_tx_out1;
	output		hip_serial_tx_out2;
	output		hip_serial_tx_out3;
	inout		i2c_opencores_camera_export_scl_pad_io;
	inout		i2c_opencores_camera_export_sda_pad_io;
	inout		i2c_opencores_mipi_export_scl_pad_io;
	inout		i2c_opencores_mipi_export_sda_pad_io;
	input		mem_if_ddr3_emif_0_pll_ref_clk_clk;
	output		mem_if_ddr3_emif_0_status_local_init_done;
	output		mem_if_ddr3_emif_0_status_local_cal_success;
	output		mem_if_ddr3_emif_0_status_local_cal_fail;
	output	[14:0]	memory_mem_a;
	output	[2:0]	memory_mem_ba;
	output	[0:0]	memory_mem_ck;
	output	[0:0]	memory_mem_ck_n;
	output	[0:0]	memory_mem_cke;
	output	[0:0]	memory_mem_cs_n;
	output	[3:0]	memory_mem_dm;
	output	[0:0]	memory_mem_ras_n;
	output	[0:0]	memory_mem_cas_n;
	output	[0:0]	memory_mem_we_n;
	output		memory_mem_reset_n;
	inout	[31:0]	memory_mem_dq;
	inout	[3:0]	memory_mem_dqs;
	inout	[3:0]	memory_mem_dqs_n;
	output	[0:0]	memory_mem_odt;
	output		mipi_pwdn_n_external_connection_export;
	output		mipi_reset_n_external_connection_export;
	input		oct_rzqin;
	output		pcie_256_hip_avmm_0_reconfig_clk_locked_fixedclk_locked;
	input		pcie_rstn_npor;
	input		pcie_rstn_pin_perst;
	input	[3:0]	pio_button_external_connection_export;
	output	[3:0]	pio_led_external_connection_export;
	output		pll_0_outclk1_100mhz_clk;
	output		pll_0_outclk2_20mhz_clk;
	input		refclk_clk;
	input		reset_reset_n;
	output	[12:0]	sdram_vfb_wire_addr;
	output	[1:0]	sdram_vfb_wire_ba;
	output		sdram_vfb_wire_cas_n;
	output		sdram_vfb_wire_cke;
	output		sdram_vfb_wire_cs_n;
	inout	[15:0]	sdram_vfb_wire_dq;
	output	[1:0]	sdram_vfb_wire_dqm;
	output		sdram_vfb_wire_ras_n;
	output		sdram_vfb_wire_we_n;
	inout		terasic_auto_focus_0_conduit_vcm_i2c_sda;
	input		terasic_auto_focus_0_conduit_clk50;
	inout		terasic_auto_focus_0_conduit_vcm_i2c_scl;
	input	[11:0]	terasic_camera_0_conduit_end_cam_d;
	input		terasic_camera_0_conduit_end_cam_fval;
	input		terasic_camera_0_conduit_end_cam_lval;
	input		terasic_camera_0_conduit_end_cam_pix;
endmodule
