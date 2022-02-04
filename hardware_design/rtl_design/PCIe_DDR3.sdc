#**************************************************************
# This .sdc file is created by Terasic Tool.
# Users are recommended to modify this file to match users logic.
#**************************************************************

#**************************************************************
# Create Clock
#**************************************************************
create_clock -period "50.000000 MHz" [get_ports CLOCK_50_B3B]
create_clock -period "50.000000 MHz" [get_ports CLOCK_50_B4A]
create_clock -period "50.000000 MHz" [get_ports CLOCK_50_B5B]
create_clock -period "50.000000 MHz" [get_ports CLOCK_50_B6A]
create_clock -period "50.000000 MHz" [get_ports CLOCK_50_B7A]
create_clock -period "50.000000 MHz" [get_ports CLOCK_50_B8A]
create_clock -period "100.000000 MHz" [get_ports PCIE_REFCLK_p]

#D8M							 
create_clock -period "25.0 MHz" -name CAMERA1_MIPI_PIXEL_CLK [get_ports CAMERA1_MIPI_PIXEL_CLK]
create_clock -period "25.0 MHz" -name CAMERA1_MIPI_PIXEL_CLK_ext

create_clock  -period 10.000 [get_ports {u0|TERASIC_AUTO_FOCUS:terasic_auto_focus_0|I2C_VCM_Config:vcm_i2c|mI2C_CTRL_CLK}] 
create_clock  -period 10.000 [get_ports {u0|TERASIC_AUTO_FOCUS:terasic_auto_focus_0|VCM_CTRL_P:vcm_ctrl|F_VCM:f|V_C}] 
create_clock  -period 10.000 [get_ports {u0|top_alt_vip_cl_vfb_0:alt_vip_cl_vfb_0|alt_vip_video_output_bridge:video_out|alt_vip_common_video_packet_encode:video_output|alt_vip_common_latency_0_to_latency_1:latency_converter|av_st_dout_startofpacket_1}] 

#create_clock -period 10.000 -name {u0|TERASIC_AUTO_FOCUS:terasic_auto_focus_0|I2C_VCM_Config:vcm_i2c|mI2C_CTRL_CLK}							 
#**************************************************************
# Create Generated Clock
#**************************************************************
#derive_pll_clocks
#create_clock  -period 10.000 [get_ports {u0|TERASIC_AUTO_FOCUS:terasic_auto_focus_0|I2C_VCM_Config:vcm_i2c|mI2C_CTRL_CLK}] 
#create_clock  -period 10.000 [get_ports {u0|TERASIC_AUTO_FOCUS:terasic_auto_focus_0|I2C_VCM_Config:vcm_i2c|mI2C_CTRL_CLK}] 
#create_clock  -period 10.000 [get_ports {u0|top_alt_vip_cl_vfb_0:alt_vip_cl_vfb_0|alt_vip_video_output_bridge:video_out|alt_vip_common_video_packet_encode:video_output|alt_vip_common_latency_0_to_latency_1:latency_converter|av_st_dout_startofpacket_1}] 



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************
derive_clock_uncertainty



#**************************************************************
# Set Input Delay
#**************************************************************
# D8M						  
# tpd  min 1ns ,max 6ns
set_input_delay -max 6.1 -clock  CAMERA1_MIPI_PIXEL_CLK_ext  [get_ports {CAMERA1_MIPI_PIXEL_VS CAMERA1_MIPI_PIXEL_HS CAMERA1_MIPI_PIXEL_D[*]}]
set_input_delay -min 0.9 -clock  CAMERA1_MIPI_PIXEL_CLK_ext  [get_ports {CAMERA1_MIPI_PIXEL_VS CAMERA1_MIPI_PIXEL_HS CAMERA1_MIPI_PIXEL_D[*]}]



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************
set_clock_groups -asynchronous -group {[get_clocks {CLOCK_50_B3B}]}
set_clock_groups -asynchronous -group {[get_clocks {CLOCK_50_B4A}]}
set_clock_groups -asynchronous -group {[get_clocks {CLOCK_50_B5B}]}
set_clock_groups -asynchronous -group {[get_clocks {CLOCK_50_B6A}]}
set_clock_groups -asynchronous -group {[get_clocks {PCIE_REFCLK_p}]}

set_clock_groups -asynchronous -group [get_clocks {u0|pll_0|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] \
                                -group [get_clocks {MIPI_PIXEL_CLK}]

set_clock_groups -asynchronous -group [get_clocks {u0|TERASIC_AUTO_FOCUS:terasic_auto_focus_0|I2C_VCM_Config:vcm_i2c|mI2C_CTRL_CLK}] \
                                -group [get_clocks {CLOCK_50_B5B}]

set_clock_groups -asynchronous -group [get_clocks {u0|TERASIC_AUTO_FOCUS:terasic_auto_focus_0|VCM_CTRL_P:vcm_ctrl|F_VCM:f|V_C}] \
                                -group [get_clocks {CLOCK_50_B5B}]
										  
set_clock_groups -asynchronous -group [get_clocks {u0|TERASIC_AUTO_FOCUS:terasic_auto_focus_0|I2C_VCM_Config:vcm_i2c|mI2C_CTRL_CLK}] \
                                -group [get_clocks {u0|pll_0|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]
										  
#**************************************************************
# Set False Path
#**************************************************************
set_false_path -from [get_ports {PCIE_PERST_n}]
set_false_path -from [get_ports {CPU_RESET_n}]
set_false_path -from [get_ports {KEY[*]}]
set_false_path -to   [get_ports {LED[*]}]

set_false_path -from [get_clocks {*arriav_hd_altpe2_hip_top|coreclkout}] -to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}]
set_false_path -from [get_ports {*rs_hip|app_rstn}]
set_false_path -from [get_clocks {*arriav_hd_altpe2_hip_top|coreclkout}] -to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll2_phy~PLL_OUTPUT_COUNTER|divclk}]
set_false_path -from [get_clocks {*arriav_hd_altpe2_hip_top|coreclkout}] -to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}]
set_false_path -from [get_clocks {*arriav_hd_altpe2_hip_top|coreclkout}] -to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}]
set_false_path -from {any_rstn_rr}

set_false_path -from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -to [get_clocks {u0|pll_0|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]
set_false_path -from [get_clocks {u0|pll_0|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -to [get_clocks {CLOCK_50_B5B}]
set_false_path -from [get_clocks {u0|pll_0|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]
set_false_path -from [get_clocks {u0|pll_0|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}] -to [get_clocks {u0|pll_0|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]
set_false_path -from [get_clocks {u0|pcie_256_dma|c5_hip_ast|altpcie_av_hip_ast_hwtcl|altpcie_av_hip_128bit_atom|g_cavhip.arriav_hd_altpe2_hip_top|coreclkout}] -to [get_clocks {u0|pcie_256_dma|c5_hip_ast|altpcie_av_hip_ast_hwtcl|altpcie_av_hip_128bit_atom|g_cavhip.arriav_hd_altpe2_hip_top|coreclkout}]

set_false_path -from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -to [get_clocks {CLOCK_50_B3B}]
#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Load
#**************************************************************



