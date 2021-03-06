	component top is
		port (
			clk_clk                                                 : in    std_logic                     := 'X';             -- clk
			ddr3_status_external_connection_export                  : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- export
			hip_ctrl_test_in                                        : in    std_logic_vector(31 downto 0) := (others => 'X'); -- test_in
			hip_ctrl_simu_mode_pipe                                 : in    std_logic                     := 'X';             -- simu_mode_pipe
			hip_pipe_sim_pipe_pclk_in                               : in    std_logic                     := 'X';             -- sim_pipe_pclk_in
			hip_pipe_sim_pipe_rate                                  : out   std_logic_vector(1 downto 0);                     -- sim_pipe_rate
			hip_pipe_sim_ltssmstate                                 : out   std_logic_vector(4 downto 0);                     -- sim_ltssmstate
			hip_pipe_eidleinfersel0                                 : out   std_logic_vector(2 downto 0);                     -- eidleinfersel0
			hip_pipe_eidleinfersel1                                 : out   std_logic_vector(2 downto 0);                     -- eidleinfersel1
			hip_pipe_eidleinfersel2                                 : out   std_logic_vector(2 downto 0);                     -- eidleinfersel2
			hip_pipe_eidleinfersel3                                 : out   std_logic_vector(2 downto 0);                     -- eidleinfersel3
			hip_pipe_powerdown0                                     : out   std_logic_vector(1 downto 0);                     -- powerdown0
			hip_pipe_powerdown1                                     : out   std_logic_vector(1 downto 0);                     -- powerdown1
			hip_pipe_powerdown2                                     : out   std_logic_vector(1 downto 0);                     -- powerdown2
			hip_pipe_powerdown3                                     : out   std_logic_vector(1 downto 0);                     -- powerdown3
			hip_pipe_rxpolarity0                                    : out   std_logic;                                        -- rxpolarity0
			hip_pipe_rxpolarity1                                    : out   std_logic;                                        -- rxpolarity1
			hip_pipe_rxpolarity2                                    : out   std_logic;                                        -- rxpolarity2
			hip_pipe_rxpolarity3                                    : out   std_logic;                                        -- rxpolarity3
			hip_pipe_txcompl0                                       : out   std_logic;                                        -- txcompl0
			hip_pipe_txcompl1                                       : out   std_logic;                                        -- txcompl1
			hip_pipe_txcompl2                                       : out   std_logic;                                        -- txcompl2
			hip_pipe_txcompl3                                       : out   std_logic;                                        -- txcompl3
			hip_pipe_txdata0                                        : out   std_logic_vector(7 downto 0);                     -- txdata0
			hip_pipe_txdata1                                        : out   std_logic_vector(7 downto 0);                     -- txdata1
			hip_pipe_txdata2                                        : out   std_logic_vector(7 downto 0);                     -- txdata2
			hip_pipe_txdata3                                        : out   std_logic_vector(7 downto 0);                     -- txdata3
			hip_pipe_txdatak0                                       : out   std_logic;                                        -- txdatak0
			hip_pipe_txdatak1                                       : out   std_logic;                                        -- txdatak1
			hip_pipe_txdatak2                                       : out   std_logic;                                        -- txdatak2
			hip_pipe_txdatak3                                       : out   std_logic;                                        -- txdatak3
			hip_pipe_txdetectrx0                                    : out   std_logic;                                        -- txdetectrx0
			hip_pipe_txdetectrx1                                    : out   std_logic;                                        -- txdetectrx1
			hip_pipe_txdetectrx2                                    : out   std_logic;                                        -- txdetectrx2
			hip_pipe_txdetectrx3                                    : out   std_logic;                                        -- txdetectrx3
			hip_pipe_txelecidle0                                    : out   std_logic;                                        -- txelecidle0
			hip_pipe_txelecidle1                                    : out   std_logic;                                        -- txelecidle1
			hip_pipe_txelecidle2                                    : out   std_logic;                                        -- txelecidle2
			hip_pipe_txelecidle3                                    : out   std_logic;                                        -- txelecidle3
			hip_pipe_txdeemph0                                      : out   std_logic;                                        -- txdeemph0
			hip_pipe_txdeemph1                                      : out   std_logic;                                        -- txdeemph1
			hip_pipe_txdeemph2                                      : out   std_logic;                                        -- txdeemph2
			hip_pipe_txdeemph3                                      : out   std_logic;                                        -- txdeemph3
			hip_pipe_txmargin0                                      : out   std_logic_vector(2 downto 0);                     -- txmargin0
			hip_pipe_txmargin1                                      : out   std_logic_vector(2 downto 0);                     -- txmargin1
			hip_pipe_txmargin2                                      : out   std_logic_vector(2 downto 0);                     -- txmargin2
			hip_pipe_txmargin3                                      : out   std_logic_vector(2 downto 0);                     -- txmargin3
			hip_pipe_txswing0                                       : out   std_logic;                                        -- txswing0
			hip_pipe_txswing1                                       : out   std_logic;                                        -- txswing1
			hip_pipe_txswing2                                       : out   std_logic;                                        -- txswing2
			hip_pipe_txswing3                                       : out   std_logic;                                        -- txswing3
			hip_pipe_phystatus0                                     : in    std_logic                     := 'X';             -- phystatus0
			hip_pipe_phystatus1                                     : in    std_logic                     := 'X';             -- phystatus1
			hip_pipe_phystatus2                                     : in    std_logic                     := 'X';             -- phystatus2
			hip_pipe_phystatus3                                     : in    std_logic                     := 'X';             -- phystatus3
			hip_pipe_rxdata0                                        : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- rxdata0
			hip_pipe_rxdata1                                        : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- rxdata1
			hip_pipe_rxdata2                                        : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- rxdata2
			hip_pipe_rxdata3                                        : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- rxdata3
			hip_pipe_rxdatak0                                       : in    std_logic                     := 'X';             -- rxdatak0
			hip_pipe_rxdatak1                                       : in    std_logic                     := 'X';             -- rxdatak1
			hip_pipe_rxdatak2                                       : in    std_logic                     := 'X';             -- rxdatak2
			hip_pipe_rxdatak3                                       : in    std_logic                     := 'X';             -- rxdatak3
			hip_pipe_rxelecidle0                                    : in    std_logic                     := 'X';             -- rxelecidle0
			hip_pipe_rxelecidle1                                    : in    std_logic                     := 'X';             -- rxelecidle1
			hip_pipe_rxelecidle2                                    : in    std_logic                     := 'X';             -- rxelecidle2
			hip_pipe_rxelecidle3                                    : in    std_logic                     := 'X';             -- rxelecidle3
			hip_pipe_rxstatus0                                      : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- rxstatus0
			hip_pipe_rxstatus1                                      : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- rxstatus1
			hip_pipe_rxstatus2                                      : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- rxstatus2
			hip_pipe_rxstatus3                                      : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- rxstatus3
			hip_pipe_rxvalid0                                       : in    std_logic                     := 'X';             -- rxvalid0
			hip_pipe_rxvalid1                                       : in    std_logic                     := 'X';             -- rxvalid1
			hip_pipe_rxvalid2                                       : in    std_logic                     := 'X';             -- rxvalid2
			hip_pipe_rxvalid3                                       : in    std_logic                     := 'X';             -- rxvalid3
			hip_serial_rx_in0                                       : in    std_logic                     := 'X';             -- rx_in0
			hip_serial_rx_in1                                       : in    std_logic                     := 'X';             -- rx_in1
			hip_serial_rx_in2                                       : in    std_logic                     := 'X';             -- rx_in2
			hip_serial_rx_in3                                       : in    std_logic                     := 'X';             -- rx_in3
			hip_serial_tx_out0                                      : out   std_logic;                                        -- tx_out0
			hip_serial_tx_out1                                      : out   std_logic;                                        -- tx_out1
			hip_serial_tx_out2                                      : out   std_logic;                                        -- tx_out2
			hip_serial_tx_out3                                      : out   std_logic;                                        -- tx_out3
			i2c_opencores_camera_export_scl_pad_io                  : inout std_logic                     := 'X';             -- scl_pad_io
			i2c_opencores_camera_export_sda_pad_io                  : inout std_logic                     := 'X';             -- sda_pad_io
			i2c_opencores_mipi_export_scl_pad_io                    : inout std_logic                     := 'X';             -- scl_pad_io
			i2c_opencores_mipi_export_sda_pad_io                    : inout std_logic                     := 'X';             -- sda_pad_io
			mem_if_ddr3_emif_0_pll_ref_clk_clk                      : in    std_logic                     := 'X';             -- clk
			mem_if_ddr3_emif_0_status_local_init_done               : out   std_logic;                                        -- local_init_done
			mem_if_ddr3_emif_0_status_local_cal_success             : out   std_logic;                                        -- local_cal_success
			mem_if_ddr3_emif_0_status_local_cal_fail                : out   std_logic;                                        -- local_cal_fail
			memory_mem_a                                            : out   std_logic_vector(14 downto 0);                    -- mem_a
			memory_mem_ba                                           : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck                                           : out   std_logic_vector(0 downto 0);                     -- mem_ck
			memory_mem_ck_n                                         : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
			memory_mem_cke                                          : out   std_logic_vector(0 downto 0);                     -- mem_cke
			memory_mem_cs_n                                         : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
			memory_mem_dm                                           : out   std_logic_vector(3 downto 0);                     -- mem_dm
			memory_mem_ras_n                                        : out   std_logic_vector(0 downto 0);                     -- mem_ras_n
			memory_mem_cas_n                                        : out   std_logic_vector(0 downto 0);                     -- mem_cas_n
			memory_mem_we_n                                         : out   std_logic_vector(0 downto 0);                     -- mem_we_n
			memory_mem_reset_n                                      : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq                                           : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			memory_mem_dqs                                          : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n                                        : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			memory_mem_odt                                          : out   std_logic_vector(0 downto 0);                     -- mem_odt
			mipi_pwdn_n_external_connection_export                  : out   std_logic;                                        -- export
			mipi_reset_n_external_connection_export                 : out   std_logic;                                        -- export
			oct_rzqin                                               : in    std_logic                     := 'X';             -- rzqin
			pcie_256_hip_avmm_0_reconfig_clk_locked_fixedclk_locked : out   std_logic;                                        -- fixedclk_locked
			pcie_rstn_npor                                          : in    std_logic                     := 'X';             -- npor
			pcie_rstn_pin_perst                                     : in    std_logic                     := 'X';             -- pin_perst
			pio_button_external_connection_export                   : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			pio_led_external_connection_export                      : out   std_logic_vector(3 downto 0);                     -- export
			pll_0_outclk1_100mhz_clk                                : out   std_logic;                                        -- clk
			pll_0_outclk2_20mhz_clk                                 : out   std_logic;                                        -- clk
			refclk_clk                                              : in    std_logic                     := 'X';             -- clk
			reset_reset_n                                           : in    std_logic                     := 'X';             -- reset_n
			sdram_vfb_wire_addr                                     : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_vfb_wire_ba                                       : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_vfb_wire_cas_n                                    : out   std_logic;                                        -- cas_n
			sdram_vfb_wire_cke                                      : out   std_logic;                                        -- cke
			sdram_vfb_wire_cs_n                                     : out   std_logic;                                        -- cs_n
			sdram_vfb_wire_dq                                       : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_vfb_wire_dqm                                      : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_vfb_wire_ras_n                                    : out   std_logic;                                        -- ras_n
			sdram_vfb_wire_we_n                                     : out   std_logic;                                        -- we_n
			terasic_auto_focus_0_conduit_vcm_i2c_sda                : inout std_logic                     := 'X';             -- vcm_i2c_sda
			terasic_auto_focus_0_conduit_clk50                      : in    std_logic                     := 'X';             -- clk50
			terasic_auto_focus_0_conduit_vcm_i2c_scl                : inout std_logic                     := 'X';             -- vcm_i2c_scl
			terasic_camera_0_conduit_end_cam_d                      : in    std_logic_vector(11 downto 0) := (others => 'X'); -- cam_d
			terasic_camera_0_conduit_end_cam_fval                   : in    std_logic                     := 'X';             -- cam_fval
			terasic_camera_0_conduit_end_cam_lval                   : in    std_logic                     := 'X';             -- cam_lval
			terasic_camera_0_conduit_end_cam_pix                    : in    std_logic                     := 'X'              -- cam_pix
		);
	end component top;

	u0 : component top
		port map (
			clk_clk                                                 => CONNECTED_TO_clk_clk,                                                 --                                     clk.clk
			ddr3_status_external_connection_export                  => CONNECTED_TO_ddr3_status_external_connection_export,                  --         ddr3_status_external_connection.export
			hip_ctrl_test_in                                        => CONNECTED_TO_hip_ctrl_test_in,                                        --                                hip_ctrl.test_in
			hip_ctrl_simu_mode_pipe                                 => CONNECTED_TO_hip_ctrl_simu_mode_pipe,                                 --                                        .simu_mode_pipe
			hip_pipe_sim_pipe_pclk_in                               => CONNECTED_TO_hip_pipe_sim_pipe_pclk_in,                               --                                hip_pipe.sim_pipe_pclk_in
			hip_pipe_sim_pipe_rate                                  => CONNECTED_TO_hip_pipe_sim_pipe_rate,                                  --                                        .sim_pipe_rate
			hip_pipe_sim_ltssmstate                                 => CONNECTED_TO_hip_pipe_sim_ltssmstate,                                 --                                        .sim_ltssmstate
			hip_pipe_eidleinfersel0                                 => CONNECTED_TO_hip_pipe_eidleinfersel0,                                 --                                        .eidleinfersel0
			hip_pipe_eidleinfersel1                                 => CONNECTED_TO_hip_pipe_eidleinfersel1,                                 --                                        .eidleinfersel1
			hip_pipe_eidleinfersel2                                 => CONNECTED_TO_hip_pipe_eidleinfersel2,                                 --                                        .eidleinfersel2
			hip_pipe_eidleinfersel3                                 => CONNECTED_TO_hip_pipe_eidleinfersel3,                                 --                                        .eidleinfersel3
			hip_pipe_powerdown0                                     => CONNECTED_TO_hip_pipe_powerdown0,                                     --                                        .powerdown0
			hip_pipe_powerdown1                                     => CONNECTED_TO_hip_pipe_powerdown1,                                     --                                        .powerdown1
			hip_pipe_powerdown2                                     => CONNECTED_TO_hip_pipe_powerdown2,                                     --                                        .powerdown2
			hip_pipe_powerdown3                                     => CONNECTED_TO_hip_pipe_powerdown3,                                     --                                        .powerdown3
			hip_pipe_rxpolarity0                                    => CONNECTED_TO_hip_pipe_rxpolarity0,                                    --                                        .rxpolarity0
			hip_pipe_rxpolarity1                                    => CONNECTED_TO_hip_pipe_rxpolarity1,                                    --                                        .rxpolarity1
			hip_pipe_rxpolarity2                                    => CONNECTED_TO_hip_pipe_rxpolarity2,                                    --                                        .rxpolarity2
			hip_pipe_rxpolarity3                                    => CONNECTED_TO_hip_pipe_rxpolarity3,                                    --                                        .rxpolarity3
			hip_pipe_txcompl0                                       => CONNECTED_TO_hip_pipe_txcompl0,                                       --                                        .txcompl0
			hip_pipe_txcompl1                                       => CONNECTED_TO_hip_pipe_txcompl1,                                       --                                        .txcompl1
			hip_pipe_txcompl2                                       => CONNECTED_TO_hip_pipe_txcompl2,                                       --                                        .txcompl2
			hip_pipe_txcompl3                                       => CONNECTED_TO_hip_pipe_txcompl3,                                       --                                        .txcompl3
			hip_pipe_txdata0                                        => CONNECTED_TO_hip_pipe_txdata0,                                        --                                        .txdata0
			hip_pipe_txdata1                                        => CONNECTED_TO_hip_pipe_txdata1,                                        --                                        .txdata1
			hip_pipe_txdata2                                        => CONNECTED_TO_hip_pipe_txdata2,                                        --                                        .txdata2
			hip_pipe_txdata3                                        => CONNECTED_TO_hip_pipe_txdata3,                                        --                                        .txdata3
			hip_pipe_txdatak0                                       => CONNECTED_TO_hip_pipe_txdatak0,                                       --                                        .txdatak0
			hip_pipe_txdatak1                                       => CONNECTED_TO_hip_pipe_txdatak1,                                       --                                        .txdatak1
			hip_pipe_txdatak2                                       => CONNECTED_TO_hip_pipe_txdatak2,                                       --                                        .txdatak2
			hip_pipe_txdatak3                                       => CONNECTED_TO_hip_pipe_txdatak3,                                       --                                        .txdatak3
			hip_pipe_txdetectrx0                                    => CONNECTED_TO_hip_pipe_txdetectrx0,                                    --                                        .txdetectrx0
			hip_pipe_txdetectrx1                                    => CONNECTED_TO_hip_pipe_txdetectrx1,                                    --                                        .txdetectrx1
			hip_pipe_txdetectrx2                                    => CONNECTED_TO_hip_pipe_txdetectrx2,                                    --                                        .txdetectrx2
			hip_pipe_txdetectrx3                                    => CONNECTED_TO_hip_pipe_txdetectrx3,                                    --                                        .txdetectrx3
			hip_pipe_txelecidle0                                    => CONNECTED_TO_hip_pipe_txelecidle0,                                    --                                        .txelecidle0
			hip_pipe_txelecidle1                                    => CONNECTED_TO_hip_pipe_txelecidle1,                                    --                                        .txelecidle1
			hip_pipe_txelecidle2                                    => CONNECTED_TO_hip_pipe_txelecidle2,                                    --                                        .txelecidle2
			hip_pipe_txelecidle3                                    => CONNECTED_TO_hip_pipe_txelecidle3,                                    --                                        .txelecidle3
			hip_pipe_txdeemph0                                      => CONNECTED_TO_hip_pipe_txdeemph0,                                      --                                        .txdeemph0
			hip_pipe_txdeemph1                                      => CONNECTED_TO_hip_pipe_txdeemph1,                                      --                                        .txdeemph1
			hip_pipe_txdeemph2                                      => CONNECTED_TO_hip_pipe_txdeemph2,                                      --                                        .txdeemph2
			hip_pipe_txdeemph3                                      => CONNECTED_TO_hip_pipe_txdeemph3,                                      --                                        .txdeemph3
			hip_pipe_txmargin0                                      => CONNECTED_TO_hip_pipe_txmargin0,                                      --                                        .txmargin0
			hip_pipe_txmargin1                                      => CONNECTED_TO_hip_pipe_txmargin1,                                      --                                        .txmargin1
			hip_pipe_txmargin2                                      => CONNECTED_TO_hip_pipe_txmargin2,                                      --                                        .txmargin2
			hip_pipe_txmargin3                                      => CONNECTED_TO_hip_pipe_txmargin3,                                      --                                        .txmargin3
			hip_pipe_txswing0                                       => CONNECTED_TO_hip_pipe_txswing0,                                       --                                        .txswing0
			hip_pipe_txswing1                                       => CONNECTED_TO_hip_pipe_txswing1,                                       --                                        .txswing1
			hip_pipe_txswing2                                       => CONNECTED_TO_hip_pipe_txswing2,                                       --                                        .txswing2
			hip_pipe_txswing3                                       => CONNECTED_TO_hip_pipe_txswing3,                                       --                                        .txswing3
			hip_pipe_phystatus0                                     => CONNECTED_TO_hip_pipe_phystatus0,                                     --                                        .phystatus0
			hip_pipe_phystatus1                                     => CONNECTED_TO_hip_pipe_phystatus1,                                     --                                        .phystatus1
			hip_pipe_phystatus2                                     => CONNECTED_TO_hip_pipe_phystatus2,                                     --                                        .phystatus2
			hip_pipe_phystatus3                                     => CONNECTED_TO_hip_pipe_phystatus3,                                     --                                        .phystatus3
			hip_pipe_rxdata0                                        => CONNECTED_TO_hip_pipe_rxdata0,                                        --                                        .rxdata0
			hip_pipe_rxdata1                                        => CONNECTED_TO_hip_pipe_rxdata1,                                        --                                        .rxdata1
			hip_pipe_rxdata2                                        => CONNECTED_TO_hip_pipe_rxdata2,                                        --                                        .rxdata2
			hip_pipe_rxdata3                                        => CONNECTED_TO_hip_pipe_rxdata3,                                        --                                        .rxdata3
			hip_pipe_rxdatak0                                       => CONNECTED_TO_hip_pipe_rxdatak0,                                       --                                        .rxdatak0
			hip_pipe_rxdatak1                                       => CONNECTED_TO_hip_pipe_rxdatak1,                                       --                                        .rxdatak1
			hip_pipe_rxdatak2                                       => CONNECTED_TO_hip_pipe_rxdatak2,                                       --                                        .rxdatak2
			hip_pipe_rxdatak3                                       => CONNECTED_TO_hip_pipe_rxdatak3,                                       --                                        .rxdatak3
			hip_pipe_rxelecidle0                                    => CONNECTED_TO_hip_pipe_rxelecidle0,                                    --                                        .rxelecidle0
			hip_pipe_rxelecidle1                                    => CONNECTED_TO_hip_pipe_rxelecidle1,                                    --                                        .rxelecidle1
			hip_pipe_rxelecidle2                                    => CONNECTED_TO_hip_pipe_rxelecidle2,                                    --                                        .rxelecidle2
			hip_pipe_rxelecidle3                                    => CONNECTED_TO_hip_pipe_rxelecidle3,                                    --                                        .rxelecidle3
			hip_pipe_rxstatus0                                      => CONNECTED_TO_hip_pipe_rxstatus0,                                      --                                        .rxstatus0
			hip_pipe_rxstatus1                                      => CONNECTED_TO_hip_pipe_rxstatus1,                                      --                                        .rxstatus1
			hip_pipe_rxstatus2                                      => CONNECTED_TO_hip_pipe_rxstatus2,                                      --                                        .rxstatus2
			hip_pipe_rxstatus3                                      => CONNECTED_TO_hip_pipe_rxstatus3,                                      --                                        .rxstatus3
			hip_pipe_rxvalid0                                       => CONNECTED_TO_hip_pipe_rxvalid0,                                       --                                        .rxvalid0
			hip_pipe_rxvalid1                                       => CONNECTED_TO_hip_pipe_rxvalid1,                                       --                                        .rxvalid1
			hip_pipe_rxvalid2                                       => CONNECTED_TO_hip_pipe_rxvalid2,                                       --                                        .rxvalid2
			hip_pipe_rxvalid3                                       => CONNECTED_TO_hip_pipe_rxvalid3,                                       --                                        .rxvalid3
			hip_serial_rx_in0                                       => CONNECTED_TO_hip_serial_rx_in0,                                       --                              hip_serial.rx_in0
			hip_serial_rx_in1                                       => CONNECTED_TO_hip_serial_rx_in1,                                       --                                        .rx_in1
			hip_serial_rx_in2                                       => CONNECTED_TO_hip_serial_rx_in2,                                       --                                        .rx_in2
			hip_serial_rx_in3                                       => CONNECTED_TO_hip_serial_rx_in3,                                       --                                        .rx_in3
			hip_serial_tx_out0                                      => CONNECTED_TO_hip_serial_tx_out0,                                      --                                        .tx_out0
			hip_serial_tx_out1                                      => CONNECTED_TO_hip_serial_tx_out1,                                      --                                        .tx_out1
			hip_serial_tx_out2                                      => CONNECTED_TO_hip_serial_tx_out2,                                      --                                        .tx_out2
			hip_serial_tx_out3                                      => CONNECTED_TO_hip_serial_tx_out3,                                      --                                        .tx_out3
			i2c_opencores_camera_export_scl_pad_io                  => CONNECTED_TO_i2c_opencores_camera_export_scl_pad_io,                  --             i2c_opencores_camera_export.scl_pad_io
			i2c_opencores_camera_export_sda_pad_io                  => CONNECTED_TO_i2c_opencores_camera_export_sda_pad_io,                  --                                        .sda_pad_io
			i2c_opencores_mipi_export_scl_pad_io                    => CONNECTED_TO_i2c_opencores_mipi_export_scl_pad_io,                    --               i2c_opencores_mipi_export.scl_pad_io
			i2c_opencores_mipi_export_sda_pad_io                    => CONNECTED_TO_i2c_opencores_mipi_export_sda_pad_io,                    --                                        .sda_pad_io
			mem_if_ddr3_emif_0_pll_ref_clk_clk                      => CONNECTED_TO_mem_if_ddr3_emif_0_pll_ref_clk_clk,                      --          mem_if_ddr3_emif_0_pll_ref_clk.clk
			mem_if_ddr3_emif_0_status_local_init_done               => CONNECTED_TO_mem_if_ddr3_emif_0_status_local_init_done,               --               mem_if_ddr3_emif_0_status.local_init_done
			mem_if_ddr3_emif_0_status_local_cal_success             => CONNECTED_TO_mem_if_ddr3_emif_0_status_local_cal_success,             --                                        .local_cal_success
			mem_if_ddr3_emif_0_status_local_cal_fail                => CONNECTED_TO_mem_if_ddr3_emif_0_status_local_cal_fail,                --                                        .local_cal_fail
			memory_mem_a                                            => CONNECTED_TO_memory_mem_a,                                            --                                  memory.mem_a
			memory_mem_ba                                           => CONNECTED_TO_memory_mem_ba,                                           --                                        .mem_ba
			memory_mem_ck                                           => CONNECTED_TO_memory_mem_ck,                                           --                                        .mem_ck
			memory_mem_ck_n                                         => CONNECTED_TO_memory_mem_ck_n,                                         --                                        .mem_ck_n
			memory_mem_cke                                          => CONNECTED_TO_memory_mem_cke,                                          --                                        .mem_cke
			memory_mem_cs_n                                         => CONNECTED_TO_memory_mem_cs_n,                                         --                                        .mem_cs_n
			memory_mem_dm                                           => CONNECTED_TO_memory_mem_dm,                                           --                                        .mem_dm
			memory_mem_ras_n                                        => CONNECTED_TO_memory_mem_ras_n,                                        --                                        .mem_ras_n
			memory_mem_cas_n                                        => CONNECTED_TO_memory_mem_cas_n,                                        --                                        .mem_cas_n
			memory_mem_we_n                                         => CONNECTED_TO_memory_mem_we_n,                                         --                                        .mem_we_n
			memory_mem_reset_n                                      => CONNECTED_TO_memory_mem_reset_n,                                      --                                        .mem_reset_n
			memory_mem_dq                                           => CONNECTED_TO_memory_mem_dq,                                           --                                        .mem_dq
			memory_mem_dqs                                          => CONNECTED_TO_memory_mem_dqs,                                          --                                        .mem_dqs
			memory_mem_dqs_n                                        => CONNECTED_TO_memory_mem_dqs_n,                                        --                                        .mem_dqs_n
			memory_mem_odt                                          => CONNECTED_TO_memory_mem_odt,                                          --                                        .mem_odt
			mipi_pwdn_n_external_connection_export                  => CONNECTED_TO_mipi_pwdn_n_external_connection_export,                  --         mipi_pwdn_n_external_connection.export
			mipi_reset_n_external_connection_export                 => CONNECTED_TO_mipi_reset_n_external_connection_export,                 --        mipi_reset_n_external_connection.export
			oct_rzqin                                               => CONNECTED_TO_oct_rzqin,                                               --                                     oct.rzqin
			pcie_256_hip_avmm_0_reconfig_clk_locked_fixedclk_locked => CONNECTED_TO_pcie_256_hip_avmm_0_reconfig_clk_locked_fixedclk_locked, -- pcie_256_hip_avmm_0_reconfig_clk_locked.fixedclk_locked
			pcie_rstn_npor                                          => CONNECTED_TO_pcie_rstn_npor,                                          --                               pcie_rstn.npor
			pcie_rstn_pin_perst                                     => CONNECTED_TO_pcie_rstn_pin_perst,                                     --                                        .pin_perst
			pio_button_external_connection_export                   => CONNECTED_TO_pio_button_external_connection_export,                   --          pio_button_external_connection.export
			pio_led_external_connection_export                      => CONNECTED_TO_pio_led_external_connection_export,                      --             pio_led_external_connection.export
			pll_0_outclk1_100mhz_clk                                => CONNECTED_TO_pll_0_outclk1_100mhz_clk,                                --                    pll_0_outclk1_100mhz.clk
			pll_0_outclk2_20mhz_clk                                 => CONNECTED_TO_pll_0_outclk2_20mhz_clk,                                 --                     pll_0_outclk2_20mhz.clk
			refclk_clk                                              => CONNECTED_TO_refclk_clk,                                              --                                  refclk.clk
			reset_reset_n                                           => CONNECTED_TO_reset_reset_n,                                           --                                   reset.reset_n
			sdram_vfb_wire_addr                                     => CONNECTED_TO_sdram_vfb_wire_addr,                                     --                          sdram_vfb_wire.addr
			sdram_vfb_wire_ba                                       => CONNECTED_TO_sdram_vfb_wire_ba,                                       --                                        .ba
			sdram_vfb_wire_cas_n                                    => CONNECTED_TO_sdram_vfb_wire_cas_n,                                    --                                        .cas_n
			sdram_vfb_wire_cke                                      => CONNECTED_TO_sdram_vfb_wire_cke,                                      --                                        .cke
			sdram_vfb_wire_cs_n                                     => CONNECTED_TO_sdram_vfb_wire_cs_n,                                     --                                        .cs_n
			sdram_vfb_wire_dq                                       => CONNECTED_TO_sdram_vfb_wire_dq,                                       --                                        .dq
			sdram_vfb_wire_dqm                                      => CONNECTED_TO_sdram_vfb_wire_dqm,                                      --                                        .dqm
			sdram_vfb_wire_ras_n                                    => CONNECTED_TO_sdram_vfb_wire_ras_n,                                    --                                        .ras_n
			sdram_vfb_wire_we_n                                     => CONNECTED_TO_sdram_vfb_wire_we_n,                                     --                                        .we_n
			terasic_auto_focus_0_conduit_vcm_i2c_sda                => CONNECTED_TO_terasic_auto_focus_0_conduit_vcm_i2c_sda,                --            terasic_auto_focus_0_conduit.vcm_i2c_sda
			terasic_auto_focus_0_conduit_clk50                      => CONNECTED_TO_terasic_auto_focus_0_conduit_clk50,                      --                                        .clk50
			terasic_auto_focus_0_conduit_vcm_i2c_scl                => CONNECTED_TO_terasic_auto_focus_0_conduit_vcm_i2c_scl,                --                                        .vcm_i2c_scl
			terasic_camera_0_conduit_end_cam_d                      => CONNECTED_TO_terasic_camera_0_conduit_end_cam_d,                      --            terasic_camera_0_conduit_end.cam_d
			terasic_camera_0_conduit_end_cam_fval                   => CONNECTED_TO_terasic_camera_0_conduit_end_cam_fval,                   --                                        .cam_fval
			terasic_camera_0_conduit_end_cam_lval                   => CONNECTED_TO_terasic_camera_0_conduit_end_cam_lval,                   --                                        .cam_lval
			terasic_camera_0_conduit_end_cam_pix                    => CONNECTED_TO_terasic_camera_0_conduit_end_cam_pix                     --                                        .cam_pix
		);

