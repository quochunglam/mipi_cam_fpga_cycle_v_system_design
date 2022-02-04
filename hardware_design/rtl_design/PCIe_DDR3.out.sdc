## Generated SDC file "PCIe_DDR3.out.sdc"

## Copyright (C) 2018  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

## DATE    "Thu Feb 03 15:18:19 2022"

##
## DEVICE  "5CGTFD9D5F27C7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {alt_cal_av_edge_detect_clk} -period 10.000 -waveform { 0.000 5.000 } [get_registers {*alt_cal_av*|*pd*_det|alt_edge_det_ff?}]
create_clock -name {altera_reserved_tck} -period 33.333 -waveform { 0.000 16.666 } [get_ports {altera_reserved_tck}]
create_clock -name {CLOCK_50_B3B} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50_B3B}]
create_clock -name {CLOCK_50_B4A} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50_B4A}]
create_clock -name {CLOCK_50_B5B} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50_B5B}]
create_clock -name {CLOCK_50_B6A} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50_B6A}]
create_clock -name {CLOCK_50_B7A} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50_B7A}]
create_clock -name {CLOCK_50_B8A} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50_B8A}]
create_clock -name {PCIE_REFCLK_p} -period 10.000 -waveform { 0.000 5.000 } [get_ports {PCIE_REFCLK_p}]
create_clock -name {CAMERA1_MIPI_PIXEL_CLK} -period 40.000 -waveform { 0.000 20.000 } [get_ports {CAMERA1_MIPI_PIXEL_CLK}]
create_clock -name {CAMERA1_MIPI_PIXEL_CLK_ext} -period 40.000 -waveform { 0.000 20.000 } 
create_clock -name {DDR3_DQS_p[0]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {DDR3_DQS_p[0]}] -add
create_clock -name {DDR3_DQS_p[1]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {DDR3_DQS_p[1]}] -add
create_clock -name {DDR3_DQS_p[2]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {DDR3_DQS_p[2]}] -add
create_clock -name {DDR3_DQS_p[3]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {DDR3_DQS_p[3]}] -add


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {sv_reconfig_pma_testbus_clk_0} -source [get_pins -compatibility_mode -no_duplicates {u0|alt_xcvr_reconfig_0|basic|a5|reg_init[0]|clk}] -master_clock {CLOCK_50_B3B} [get_registers {u0|alt_xcvr_reconfig_0|basic|a5|*pif[0]*|*grant*}] 
create_generated_clock -name {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk} -source [get_ports {{CLOCK_50_B4A}}] -multiply_by 8000000 -divide_by 1000000 -master_clock {CLOCK_50_B4A} [get_pins {u0|mem_if_ddr3_emif_0|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk} -source [get_ports {{CLOCK_50_B4A}}] -multiply_by 8000000 -divide_by 1000000 -phase 270.000 -master_clock {CLOCK_50_B4A} [get_pins {u0|mem_if_ddr3_emif_0|pll0|pll3~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk} -source [get_ports {{CLOCK_50_B4A}}] -multiply_by 8000000 -divide_by 6000000 -phase 10.000 -master_clock {CLOCK_50_B4A} [get_pins {u0|mem_if_ddr3_emif_0|pll0|pll6~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk} -source [get_ports {{CLOCK_50_B4A}}] -multiply_by 8000000 -divide_by 6000000 -phase 10.000 -master_clock {CLOCK_50_B4A} [get_pins {u0|mem_if_ddr3_emif_0|pll0|pll6_phy~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk} -source [get_ports {{CLOCK_50_B4A}}] -multiply_by 8000000 -divide_by 18000000 -master_clock {CLOCK_50_B4A} [get_pins {u0|mem_if_ddr3_emif_0|pll0|pll7~PLL_OUTPUT_COUNTER|divclk}] 
create_generated_clock -name {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock} -source [get_pins {u0|mem_if_ddr3_emif_0|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk} [get_registers {u0|mem_if_ddr3_emif_0|p0|umemphy|uio_pads|dq_ddio[*].ubidir_dq_dqs|altdq_dqs2_inst|dqs_enable_ctrl~DQSENABLEOUT_DFF}] 
create_generated_clock -name {DDR3_CK_p} -source [get_pins {u0|mem_if_ddr3_emif_0|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk} [get_ports {DDR3_CK_p}] 
create_generated_clock -name {DDR3_CK_n} -source [get_pins {u0|mem_if_ddr3_emif_0|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk} -invert [get_ports {DDR3_CK_n}] 
create_generated_clock -name {DDR3_DQS_p[0]_OUT} -source [get_pins {u0|mem_if_ddr3_emif_0|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk} [get_ports {DDR3_DQS_p[0]}] -add
create_generated_clock -name {DDR3_DQS_p[1]_OUT} -source [get_pins {u0|mem_if_ddr3_emif_0|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk} [get_ports {DDR3_DQS_p[1]}] -add
create_generated_clock -name {DDR3_DQS_p[2]_OUT} -source [get_pins {u0|mem_if_ddr3_emif_0|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk} [get_ports {DDR3_DQS_p[2]}] -add
create_generated_clock -name {DDR3_DQS_p[3]_OUT} -source [get_pins {u0|mem_if_ddr3_emif_0|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk} [get_ports {DDR3_DQS_p[3]}] -add
create_generated_clock -name {DDR3_DQS_n[0]_OUT} -source [get_pins {u0|mem_if_ddr3_emif_0|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk} [get_ports {DDR3_DQS_n[0]}] 
create_generated_clock -name {DDR3_DQS_n[1]_OUT} -source [get_pins {u0|mem_if_ddr3_emif_0|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk} [get_ports {DDR3_DQS_n[1]}] 
create_generated_clock -name {DDR3_DQS_n[2]_OUT} -source [get_pins {u0|mem_if_ddr3_emif_0|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk} [get_ports {DDR3_DQS_n[2]}] 
create_generated_clock -name {DDR3_DQS_n[3]_OUT} -source [get_pins {u0|mem_if_ddr3_emif_0|pll0|pll1~PLL_OUTPUT_COUNTER|divclk}] -master_clock {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk} [get_ports {DDR3_DQS_n[3]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[3]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[3]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[3]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[3]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[2]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[2]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[2]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[2]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[2]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[2]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[2]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[2]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_n[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_n[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_OUT}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_OUT}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_p[3]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_p[3]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_p[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_p[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_CK_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_CK_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_CK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_CK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {sv_reconfig_pma_testbus_clk_0}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {sv_reconfig_pma_testbus_clk_0}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {PCIE_REFCLK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {PCIE_REFCLK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B4A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B4A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {alt_cal_av_edge_detect_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {alt_cal_av_edge_detect_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_p[3]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_p[3]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_p[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_p[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_CK_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_CK_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {DDR3_CK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {DDR3_CK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {sv_reconfig_pma_testbus_clk_0}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {sv_reconfig_pma_testbus_clk_0}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {PCIE_REFCLK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {PCIE_REFCLK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {CLOCK_50_B4A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {CLOCK_50_B4A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -rise_to [get_clocks {alt_cal_av_edge_detect_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[3]_IN}] -fall_to [get_clocks {alt_cal_av_edge_detect_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_CK_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_CK_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_CK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_CK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {sv_reconfig_pma_testbus_clk_0}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {sv_reconfig_pma_testbus_clk_0}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {PCIE_REFCLK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {PCIE_REFCLK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B4A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B4A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {alt_cal_av_edge_detect_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {alt_cal_av_edge_detect_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_CK_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_CK_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {DDR3_CK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {DDR3_CK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {sv_reconfig_pma_testbus_clk_0}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {sv_reconfig_pma_testbus_clk_0}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {PCIE_REFCLK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {PCIE_REFCLK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {CLOCK_50_B4A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {CLOCK_50_B4A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -rise_to [get_clocks {alt_cal_av_edge_detect_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[1]_IN}] -fall_to [get_clocks {alt_cal_av_edge_detect_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_p[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_p[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_CK_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_CK_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_CK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_CK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {sv_reconfig_pma_testbus_clk_0}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {sv_reconfig_pma_testbus_clk_0}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {PCIE_REFCLK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {PCIE_REFCLK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B4A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B4A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {alt_cal_av_edge_detect_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {alt_cal_av_edge_detect_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_p[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_p[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_p[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_CK_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_CK_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {DDR3_CK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {DDR3_CK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {sv_reconfig_pma_testbus_clk_0}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {sv_reconfig_pma_testbus_clk_0}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {PCIE_REFCLK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {PCIE_REFCLK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {CLOCK_50_B4A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {CLOCK_50_B4A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -rise_to [get_clocks {alt_cal_av_edge_detect_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[2]_IN}] -fall_to [get_clocks {alt_cal_av_edge_detect_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_CK_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_CK_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_CK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_CK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {sv_reconfig_pma_testbus_clk_0}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {sv_reconfig_pma_testbus_clk_0}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {PCIE_REFCLK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {PCIE_REFCLK_p}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B4A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B4A}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {alt_cal_av_edge_detect_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {alt_cal_av_edge_detect_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_CK_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_CK_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {DDR3_CK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {DDR3_CK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {sv_reconfig_pma_testbus_clk_0}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {sv_reconfig_pma_testbus_clk_0}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {PCIE_REFCLK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {PCIE_REFCLK_p}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B8A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B7A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {CLOCK_50_B4A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {CLOCK_50_B4A}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -rise_to [get_clocks {alt_cal_av_edge_detect_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_DQS_p[0]_IN}] -fall_to [get_clocks {alt_cal_av_edge_detect_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_n}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {DDR3_CK_p}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {PCIE_REFCLK_p}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B8A}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B7A}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B4A}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_DQS_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_DQS_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_DQS_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_DQS_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_DQS_p[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_DQS_p[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_DQS_p[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_DQS_p[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_CK_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -rise_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {alt_cal_av_edge_detect_clk}] -fall_to [get_clocks {DDR3_CK_p}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_p[3]_IN}]  0.100  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_p[3]_IN}]  0.100  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_p[1]_IN}]  0.100  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_p[1]_IN}]  0.100  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_p[2]_IN}]  0.100  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_p[2]_IN}]  0.100  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.100  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.100  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_p[3]_IN}]  0.100  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_p[3]_IN}]  0.100  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_p[1]_IN}]  0.100  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_p[1]_IN}]  0.100  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_p[2]_IN}]  0.100  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_p[2]_IN}]  0.100  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -rise_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.100  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|top_mem_if_ddr3_emif_0_p0_sampling_clock}] -fall_to [get_clocks {DDR3_DQS_p[0]_IN}]  0.100  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.130  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.130  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_dq_write_clk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.130  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.130  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -hold 0.050  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] -hold 0.050  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -rise_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -fall_to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {sv_reconfig_pma_testbus_clk_0}] -setup 0.290  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {sv_reconfig_pma_testbus_clk_0}] -hold 0.280  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {sv_reconfig_pma_testbus_clk_0}] -setup 0.290  
set_clock_uncertainty -rise_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {sv_reconfig_pma_testbus_clk_0}] -hold 0.280  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {sv_reconfig_pma_testbus_clk_0}] -setup 0.290  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -rise_to [get_clocks {sv_reconfig_pma_testbus_clk_0}] -hold 0.280  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {sv_reconfig_pma_testbus_clk_0}] -setup 0.290  
set_clock_uncertainty -fall_from [get_clocks {sv_reconfig_pma_testbus_clk_0}] -fall_to [get_clocks {sv_reconfig_pma_testbus_clk_0}] -hold 0.280  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.050  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.050  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.050  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.050  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.050  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.050  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -rise_to [get_clocks {CLOCK_50_B6A}]  0.050  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}] -fall_to [get_clocks {CLOCK_50_B6A}]  0.050  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.110  
set_clock_uncertainty -rise_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.110  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.110  
set_clock_uncertainty -fall_from [get_clocks {CAMERA1_MIPI_PIXEL_CLK}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.110  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {CLOCK_50_B6A}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {CLOCK_50_B6A}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {CLOCK_50_B6A}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {CLOCK_50_B6A}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {CLOCK_50_B6A}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -rise_to [get_clocks {CLOCK_50_B6A}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {CLOCK_50_B6A}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B6A}] -fall_to [get_clocks {CLOCK_50_B6A}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {CLOCK_50_B5B}] -setup 0.280  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {CLOCK_50_B5B}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {CLOCK_50_B5B}] -setup 0.280  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {CLOCK_50_B5B}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {CLOCK_50_B5B}] -setup 0.280  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -rise_to [get_clocks {CLOCK_50_B5B}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {CLOCK_50_B5B}] -setup 0.280  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B5B}] -fall_to [get_clocks {CLOCK_50_B5B}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.110  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.110  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.210  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.210  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.110  
set_clock_uncertainty -rise_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.110  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.110  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {CAMERA1_MIPI_PIXEL_CLK}]  0.110  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {CLOCK_50_B5B}]  0.210  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {CLOCK_50_B5B}]  0.210  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -rise_to [get_clocks {CLOCK_50_B3B}]  0.110  
set_clock_uncertainty -fall_from [get_clocks {CLOCK_50_B3B}] -fall_to [get_clocks {CLOCK_50_B3B}]  0.110  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -setup 0.280  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -setup 0.280  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -setup 0.280  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -setup 0.280  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -hold 0.270  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay -max -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  6.100 [get_ports {CAMERA1_MIPI_PIXEL_D[0]}]
set_input_delay -add_delay -min -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.900 [get_ports {CAMERA1_MIPI_PIXEL_D[0]}]
set_input_delay -add_delay -max -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  6.100 [get_ports {CAMERA1_MIPI_PIXEL_D[1]}]
set_input_delay -add_delay -min -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.900 [get_ports {CAMERA1_MIPI_PIXEL_D[1]}]
set_input_delay -add_delay -max -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  6.100 [get_ports {CAMERA1_MIPI_PIXEL_D[2]}]
set_input_delay -add_delay -min -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.900 [get_ports {CAMERA1_MIPI_PIXEL_D[2]}]
set_input_delay -add_delay -max -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  6.100 [get_ports {CAMERA1_MIPI_PIXEL_D[3]}]
set_input_delay -add_delay -min -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.900 [get_ports {CAMERA1_MIPI_PIXEL_D[3]}]
set_input_delay -add_delay -max -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  6.100 [get_ports {CAMERA1_MIPI_PIXEL_D[4]}]
set_input_delay -add_delay -min -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.900 [get_ports {CAMERA1_MIPI_PIXEL_D[4]}]
set_input_delay -add_delay -max -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  6.100 [get_ports {CAMERA1_MIPI_PIXEL_D[5]}]
set_input_delay -add_delay -min -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.900 [get_ports {CAMERA1_MIPI_PIXEL_D[5]}]
set_input_delay -add_delay -max -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  6.100 [get_ports {CAMERA1_MIPI_PIXEL_D[6]}]
set_input_delay -add_delay -min -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.900 [get_ports {CAMERA1_MIPI_PIXEL_D[6]}]
set_input_delay -add_delay -max -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  6.100 [get_ports {CAMERA1_MIPI_PIXEL_D[7]}]
set_input_delay -add_delay -min -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.900 [get_ports {CAMERA1_MIPI_PIXEL_D[7]}]
set_input_delay -add_delay -max -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  6.100 [get_ports {CAMERA1_MIPI_PIXEL_D[8]}]
set_input_delay -add_delay -min -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.900 [get_ports {CAMERA1_MIPI_PIXEL_D[8]}]
set_input_delay -add_delay -max -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  6.100 [get_ports {CAMERA1_MIPI_PIXEL_D[9]}]
set_input_delay -add_delay -min -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.900 [get_ports {CAMERA1_MIPI_PIXEL_D[9]}]
set_input_delay -add_delay -max -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  6.100 [get_ports {CAMERA1_MIPI_PIXEL_HS}]
set_input_delay -add_delay -min -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.900 [get_ports {CAMERA1_MIPI_PIXEL_HS}]
set_input_delay -add_delay -max -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  6.100 [get_ports {CAMERA1_MIPI_PIXEL_VS}]
set_input_delay -add_delay -min -clock [get_clocks {CAMERA1_MIPI_PIXEL_CLK_ext}]  0.900 [get_ports {CAMERA1_MIPI_PIXEL_VS}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[0]_IN}]  0.225 [get_ports {DDR3_DQ[0]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[0]_IN}]  -0.416 [get_ports {DDR3_DQ[0]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[0]_IN}]  0.225 [get_ports {DDR3_DQ[1]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[0]_IN}]  -0.416 [get_ports {DDR3_DQ[1]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[0]_IN}]  0.225 [get_ports {DDR3_DQ[2]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[0]_IN}]  -0.416 [get_ports {DDR3_DQ[2]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[0]_IN}]  0.225 [get_ports {DDR3_DQ[3]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[0]_IN}]  -0.416 [get_ports {DDR3_DQ[3]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[0]_IN}]  0.225 [get_ports {DDR3_DQ[4]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[0]_IN}]  -0.416 [get_ports {DDR3_DQ[4]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[0]_IN}]  0.225 [get_ports {DDR3_DQ[5]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[0]_IN}]  -0.416 [get_ports {DDR3_DQ[5]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[0]_IN}]  0.225 [get_ports {DDR3_DQ[6]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[0]_IN}]  -0.416 [get_ports {DDR3_DQ[6]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[0]_IN}]  0.225 [get_ports {DDR3_DQ[7]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[0]_IN}]  -0.416 [get_ports {DDR3_DQ[7]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[1]_IN}]  0.225 [get_ports {DDR3_DQ[8]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[1]_IN}]  -0.416 [get_ports {DDR3_DQ[8]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[1]_IN}]  0.225 [get_ports {DDR3_DQ[9]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[1]_IN}]  -0.416 [get_ports {DDR3_DQ[9]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[1]_IN}]  0.225 [get_ports {DDR3_DQ[10]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[1]_IN}]  -0.416 [get_ports {DDR3_DQ[10]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[1]_IN}]  0.225 [get_ports {DDR3_DQ[11]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[1]_IN}]  -0.416 [get_ports {DDR3_DQ[11]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[1]_IN}]  0.225 [get_ports {DDR3_DQ[12]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[1]_IN}]  -0.416 [get_ports {DDR3_DQ[12]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[1]_IN}]  0.225 [get_ports {DDR3_DQ[13]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[1]_IN}]  -0.416 [get_ports {DDR3_DQ[13]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[1]_IN}]  0.225 [get_ports {DDR3_DQ[14]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[1]_IN}]  -0.416 [get_ports {DDR3_DQ[14]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[1]_IN}]  0.225 [get_ports {DDR3_DQ[15]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[1]_IN}]  -0.416 [get_ports {DDR3_DQ[15]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[2]_IN}]  0.225 [get_ports {DDR3_DQ[16]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[2]_IN}]  -0.416 [get_ports {DDR3_DQ[16]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[2]_IN}]  0.225 [get_ports {DDR3_DQ[17]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[2]_IN}]  -0.416 [get_ports {DDR3_DQ[17]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[2]_IN}]  0.225 [get_ports {DDR3_DQ[18]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[2]_IN}]  -0.416 [get_ports {DDR3_DQ[18]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[2]_IN}]  0.225 [get_ports {DDR3_DQ[19]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[2]_IN}]  -0.416 [get_ports {DDR3_DQ[19]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[2]_IN}]  0.225 [get_ports {DDR3_DQ[20]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[2]_IN}]  -0.416 [get_ports {DDR3_DQ[20]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[2]_IN}]  0.225 [get_ports {DDR3_DQ[21]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[2]_IN}]  -0.416 [get_ports {DDR3_DQ[21]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[2]_IN}]  0.225 [get_ports {DDR3_DQ[22]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[2]_IN}]  -0.416 [get_ports {DDR3_DQ[22]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[2]_IN}]  0.225 [get_ports {DDR3_DQ[23]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[2]_IN}]  -0.416 [get_ports {DDR3_DQ[23]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[3]_IN}]  0.225 [get_ports {DDR3_DQ[24]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[3]_IN}]  -0.416 [get_ports {DDR3_DQ[24]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[3]_IN}]  0.225 [get_ports {DDR3_DQ[25]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[3]_IN}]  -0.416 [get_ports {DDR3_DQ[25]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[3]_IN}]  0.225 [get_ports {DDR3_DQ[26]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[3]_IN}]  -0.416 [get_ports {DDR3_DQ[26]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[3]_IN}]  0.225 [get_ports {DDR3_DQ[27]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[3]_IN}]  -0.416 [get_ports {DDR3_DQ[27]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[3]_IN}]  0.225 [get_ports {DDR3_DQ[28]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[3]_IN}]  -0.416 [get_ports {DDR3_DQ[28]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[3]_IN}]  0.225 [get_ports {DDR3_DQ[29]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[3]_IN}]  -0.416 [get_ports {DDR3_DQ[29]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[3]_IN}]  0.225 [get_ports {DDR3_DQ[30]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[3]_IN}]  -0.416 [get_ports {DDR3_DQ[30]}]
set_input_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[3]_IN}]  0.225 [get_ports {DDR3_DQ[31]}]
set_input_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[3]_IN}]  -0.416 [get_ports {DDR3_DQ[31]}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_ADDR[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_ADDR[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_ADDR[1]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_ADDR[1]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_ADDR[2]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_ADDR[2]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_ADDR[3]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_ADDR[3]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_ADDR[4]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_ADDR[4]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_ADDR[5]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_ADDR[5]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_ADDR[6]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_ADDR[6]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_ADDR[7]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_ADDR[7]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_ADDR[8]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_ADDR[8]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_ADDR[9]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_ADDR[9]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_ADDR[10]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_ADDR[10]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_ADDR[11]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_ADDR[11]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_ADDR[12]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_ADDR[12]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_ADDR[13]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_ADDR[13]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_ADDR[14]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_ADDR[14]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_BA[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_BA[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_BA[1]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_BA[1]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_BA[2]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_BA[2]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_CAS_n}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_CAS_n}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_CKE}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_CKE}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_CS_n}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_CS_n}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  0.403 [get_ports {DDR3_DM[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  -0.406 [get_ports {DDR3_DM[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  0.403 [get_ports {DDR3_DM[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  -0.406 [get_ports {DDR3_DM[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  0.403 [get_ports {DDR3_DM[1]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  -0.406 [get_ports {DDR3_DM[1]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  0.403 [get_ports {DDR3_DM[1]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  -0.406 [get_ports {DDR3_DM[1]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  0.403 [get_ports {DDR3_DM[2]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  -0.406 [get_ports {DDR3_DM[2]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  0.403 [get_ports {DDR3_DM[2]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  -0.406 [get_ports {DDR3_DM[2]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  0.403 [get_ports {DDR3_DM[3]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  -0.406 [get_ports {DDR3_DM[3]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  0.403 [get_ports {DDR3_DM[3]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  -0.406 [get_ports {DDR3_DM[3]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.771 [get_ports {DDR3_DQS_p[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.465 [get_ports {DDR3_DQS_p[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.771 [get_ports {DDR3_DQS_p[1]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.465 [get_ports {DDR3_DQS_p[1]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.771 [get_ports {DDR3_DQS_p[2]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.465 [get_ports {DDR3_DQS_p[2]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.771 [get_ports {DDR3_DQS_p[3]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.465 [get_ports {DDR3_DQS_p[3]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  0.403 [get_ports {DDR3_DQ[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  -0.406 [get_ports {DDR3_DQ[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  0.403 [get_ports {DDR3_DQ[0]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  -0.406 [get_ports {DDR3_DQ[0]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  0.403 [get_ports {DDR3_DQ[1]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  -0.406 [get_ports {DDR3_DQ[1]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  0.403 [get_ports {DDR3_DQ[1]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  -0.406 [get_ports {DDR3_DQ[1]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  0.403 [get_ports {DDR3_DQ[2]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  -0.406 [get_ports {DDR3_DQ[2]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  0.403 [get_ports {DDR3_DQ[2]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  -0.406 [get_ports {DDR3_DQ[2]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  0.403 [get_ports {DDR3_DQ[3]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  -0.406 [get_ports {DDR3_DQ[3]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  0.403 [get_ports {DDR3_DQ[3]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  -0.406 [get_ports {DDR3_DQ[3]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  0.403 [get_ports {DDR3_DQ[4]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  -0.406 [get_ports {DDR3_DQ[4]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  0.403 [get_ports {DDR3_DQ[4]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  -0.406 [get_ports {DDR3_DQ[4]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  0.403 [get_ports {DDR3_DQ[5]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  -0.406 [get_ports {DDR3_DQ[5]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  0.403 [get_ports {DDR3_DQ[5]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  -0.406 [get_ports {DDR3_DQ[5]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  0.403 [get_ports {DDR3_DQ[6]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  -0.406 [get_ports {DDR3_DQ[6]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  0.403 [get_ports {DDR3_DQ[6]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  -0.406 [get_ports {DDR3_DQ[6]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  0.403 [get_ports {DDR3_DQ[7]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[0]_OUT}]  -0.406 [get_ports {DDR3_DQ[7]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  0.403 [get_ports {DDR3_DQ[7]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[0]_OUT}]  -0.406 [get_ports {DDR3_DQ[7]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  0.403 [get_ports {DDR3_DQ[8]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  -0.406 [get_ports {DDR3_DQ[8]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  0.403 [get_ports {DDR3_DQ[8]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  -0.406 [get_ports {DDR3_DQ[8]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  0.403 [get_ports {DDR3_DQ[9]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  -0.406 [get_ports {DDR3_DQ[9]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  0.403 [get_ports {DDR3_DQ[9]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  -0.406 [get_ports {DDR3_DQ[9]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  0.403 [get_ports {DDR3_DQ[10]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  -0.406 [get_ports {DDR3_DQ[10]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  0.403 [get_ports {DDR3_DQ[10]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  -0.406 [get_ports {DDR3_DQ[10]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  0.403 [get_ports {DDR3_DQ[11]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  -0.406 [get_ports {DDR3_DQ[11]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  0.403 [get_ports {DDR3_DQ[11]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  -0.406 [get_ports {DDR3_DQ[11]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  0.403 [get_ports {DDR3_DQ[12]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  -0.406 [get_ports {DDR3_DQ[12]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  0.403 [get_ports {DDR3_DQ[12]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  -0.406 [get_ports {DDR3_DQ[12]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  0.403 [get_ports {DDR3_DQ[13]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  -0.406 [get_ports {DDR3_DQ[13]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  0.403 [get_ports {DDR3_DQ[13]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  -0.406 [get_ports {DDR3_DQ[13]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  0.403 [get_ports {DDR3_DQ[14]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  -0.406 [get_ports {DDR3_DQ[14]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  0.403 [get_ports {DDR3_DQ[14]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  -0.406 [get_ports {DDR3_DQ[14]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  0.403 [get_ports {DDR3_DQ[15]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[1]_OUT}]  -0.406 [get_ports {DDR3_DQ[15]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  0.403 [get_ports {DDR3_DQ[15]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[1]_OUT}]  -0.406 [get_ports {DDR3_DQ[15]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  0.403 [get_ports {DDR3_DQ[16]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  -0.406 [get_ports {DDR3_DQ[16]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  0.403 [get_ports {DDR3_DQ[16]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  -0.406 [get_ports {DDR3_DQ[16]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  0.403 [get_ports {DDR3_DQ[17]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  -0.406 [get_ports {DDR3_DQ[17]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  0.403 [get_ports {DDR3_DQ[17]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  -0.406 [get_ports {DDR3_DQ[17]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  0.403 [get_ports {DDR3_DQ[18]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  -0.406 [get_ports {DDR3_DQ[18]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  0.403 [get_ports {DDR3_DQ[18]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  -0.406 [get_ports {DDR3_DQ[18]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  0.403 [get_ports {DDR3_DQ[19]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  -0.406 [get_ports {DDR3_DQ[19]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  0.403 [get_ports {DDR3_DQ[19]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  -0.406 [get_ports {DDR3_DQ[19]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  0.403 [get_ports {DDR3_DQ[20]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  -0.406 [get_ports {DDR3_DQ[20]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  0.403 [get_ports {DDR3_DQ[20]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  -0.406 [get_ports {DDR3_DQ[20]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  0.403 [get_ports {DDR3_DQ[21]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  -0.406 [get_ports {DDR3_DQ[21]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  0.403 [get_ports {DDR3_DQ[21]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  -0.406 [get_ports {DDR3_DQ[21]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  0.403 [get_ports {DDR3_DQ[22]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  -0.406 [get_ports {DDR3_DQ[22]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  0.403 [get_ports {DDR3_DQ[22]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  -0.406 [get_ports {DDR3_DQ[22]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  0.403 [get_ports {DDR3_DQ[23]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[2]_OUT}]  -0.406 [get_ports {DDR3_DQ[23]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  0.403 [get_ports {DDR3_DQ[23]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[2]_OUT}]  -0.406 [get_ports {DDR3_DQ[23]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  0.403 [get_ports {DDR3_DQ[24]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  -0.406 [get_ports {DDR3_DQ[24]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  0.403 [get_ports {DDR3_DQ[24]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  -0.406 [get_ports {DDR3_DQ[24]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  0.403 [get_ports {DDR3_DQ[25]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  -0.406 [get_ports {DDR3_DQ[25]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  0.403 [get_ports {DDR3_DQ[25]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  -0.406 [get_ports {DDR3_DQ[25]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  0.403 [get_ports {DDR3_DQ[26]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  -0.406 [get_ports {DDR3_DQ[26]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  0.403 [get_ports {DDR3_DQ[26]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  -0.406 [get_ports {DDR3_DQ[26]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  0.403 [get_ports {DDR3_DQ[27]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  -0.406 [get_ports {DDR3_DQ[27]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  0.403 [get_ports {DDR3_DQ[27]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  -0.406 [get_ports {DDR3_DQ[27]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  0.403 [get_ports {DDR3_DQ[28]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  -0.406 [get_ports {DDR3_DQ[28]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  0.403 [get_ports {DDR3_DQ[28]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  -0.406 [get_ports {DDR3_DQ[28]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  0.403 [get_ports {DDR3_DQ[29]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  -0.406 [get_ports {DDR3_DQ[29]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  0.403 [get_ports {DDR3_DQ[29]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  -0.406 [get_ports {DDR3_DQ[29]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  0.403 [get_ports {DDR3_DQ[30]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  -0.406 [get_ports {DDR3_DQ[30]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  0.403 [get_ports {DDR3_DQ[30]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  -0.406 [get_ports {DDR3_DQ[30]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  0.403 [get_ports {DDR3_DQ[31]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_n[3]_OUT}]  -0.406 [get_ports {DDR3_DQ[31]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  0.403 [get_ports {DDR3_DQ[31]}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_DQS_p[3]_OUT}]  -0.406 [get_ports {DDR3_DQ[31]}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_ODT}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_ODT}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_RAS_n}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_RAS_n}]
set_output_delay -add_delay -max -clock [get_clocks {DDR3_CK_p}]  1.642 [get_ports {DDR3_WE_n}]
set_output_delay -add_delay -min -clock [get_clocks {DDR3_CK_p}]  0.856 [get_ports {DDR3_WE_n}]


#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -exclusive -group [get_clocks {alt_cal_av_edge_detect_clk}] 
set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -asynchronous -group [get_clocks {u0|TERASIC_AUTO_FOCUS:terasic_auto_focus_0|I2C_VCM_Config:vcm_i2c|mI2C_CTRL_CLK}] -group [get_clocks {CLOCK_50_B5B}] 
set_clock_groups -asynchronous -group [get_clocks {u0|TERASIC_AUTO_FOCUS:terasic_auto_focus_0|VCM_CTRL_P:vcm_ctrl|F_VCM:f|V_C}] -group [get_clocks {CLOCK_50_B5B}] 
set_clock_groups -exclusive -group [get_clocks {sv_reconfig_pma_testbus_clk_0}] 
set_clock_groups -physically_exclusive -group [get_clocks {DDR3_DQS_p[0]_IN}] -group [get_clocks {DDR3_DQS_p[0]_OUT DDR3_DQS_n[0]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {DDR3_DQS_p[1]_IN}] -group [get_clocks {DDR3_DQS_p[1]_OUT DDR3_DQS_n[1]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {DDR3_DQS_p[2]_IN}] -group [get_clocks {DDR3_DQS_p[2]_OUT DDR3_DQS_n[2]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {DDR3_DQS_p[3]_IN}] -group [get_clocks {DDR3_DQS_p[3]_OUT DDR3_DQS_n[3]_OUT}] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path  -fall_from  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  -to  [get_clocks {DDR3_CK_p}]
set_false_path  -from  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}]  -to  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]
set_false_path  -from  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  -to  [get_clocks {DDR3_DQS_p[0]_IN}]
set_false_path  -from  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  -to  [get_clocks {DDR3_DQS_p[1]_IN}]
set_false_path  -from  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  -to  [get_clocks {DDR3_DQS_p[2]_IN}]
set_false_path  -from  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  -to  [get_clocks {DDR3_DQS_p[3]_IN}]
set_false_path  -from  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  -to  [get_clocks {*_IN}]
set_false_path  -from  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  -to  [get_clocks {CLOCK_50_B3B}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|jupdate}] -to [get_registers {*|alt_jtag_atlantic:*|jupdate1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rdata[*]}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read}] -to [get_registers {*|alt_jtag_atlantic:*|read1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read_req}] 
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rvalid}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|t_dav}] -to [get_registers {*|alt_jtag_atlantic:*|tck_t_dav}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|user_saw_rvalid}] -to [get_registers {*|alt_jtag_atlantic:*|rvalid0*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|wdata[*]}] -to [get_registers *]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write}] -to [get_registers {*|alt_jtag_atlantic:*|write1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_ena*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_pause*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_valid}] 
set_false_path -to [get_registers {*alt_xcvr_resync*sync_r[0]}]
set_false_path -to [get_keepers {*altera_std_synchronizer:*|din_s1}]
set_false_path -from [get_keepers {*rdptr_g*}] -to [get_keepers {*ws_dgrp|dffpipe_te9:dffpipe15|dffe16a*}]
set_false_path -from [get_keepers {*delayed_wrptr_g*}] -to [get_keepers {*rs_dgwp|dffpipe_se9:dffpipe12|dffe13a*}]
set_false_path -from [get_keepers {altera_reserved_tdi}] -to [get_keepers {pzdyqx*}]
set_false_path -from [get_ports {PCIE_PERST_n}] 
set_false_path -from [get_ports {CPU_RESET_n}] 
set_false_path -from [get_ports {KEY[*]}] 
set_false_path -to [get_ports {LED[*]}]
set_false_path -from [get_keepers {any_rstn_rr}] 
set_false_path -from [get_registers {*altera_jtag_src_crosser:*|sink_data_buffer*}] -to [get_registers {*altera_jtag_src_crosser:*|src_data*}]
set_false_path -to [get_pins -nocase -compatibility_mode {*|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain*|clrn}]
set_false_path -through [get_pins -compatibility_mode {u0|alt_vip_cl_vfb_0|pkt_trans_rd|READ_BLOCK.read_proc_instance|load_msg_queue|*|dffe*|clrn}]  
set_false_path -fall_from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -to [get_ports {{DDR3_ADDR[0]} {DDR3_ADDR[10]} {DDR3_ADDR[11]} {DDR3_ADDR[12]} {DDR3_ADDR[13]} {DDR3_ADDR[14]} {DDR3_ADDR[1]} {DDR3_ADDR[2]} {DDR3_ADDR[3]} {DDR3_ADDR[4]} {DDR3_ADDR[5]} {DDR3_ADDR[6]} {DDR3_ADDR[7]} {DDR3_ADDR[8]} {DDR3_ADDR[9]} {DDR3_BA[0]} {DDR3_BA[1]} {DDR3_BA[2]} DDR3_CAS_n DDR3_CKE DDR3_CS_n DDR3_ODT DDR3_RAS_n DDR3_WE_n}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*c0|hmc_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*ddio_out*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*lfifo~LFIFO_IN_READ_EN_DFF}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*c0|hmc_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*lfifo~LFIFO_IN_READ_EN_DFF}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*vfifo~INC_WR_PTR_DFF}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*c0|hmc_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*altdq_dqs2_inst|vfifo~QVLD_IN_DFF}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*lfifo~LFIFO_OUT_RDATA_VALID_DFF}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*altdq_dqs2_inst|vfifo~QVLD_IN_DFF}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*lfifo~RD_LATENCY_DFF*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*ddio_out*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|*altdq_dqs2_inst|*output_path_gen[*].ddio_out*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|*altdq_dqs2_inst|extra_output_pad_gen[*].ddio_out*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*c0|hmc_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*c0|hmc_inst~FF_*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*phase_align_os~DFF*}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*s0|*}] -to [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]
set_false_path -from [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*s0|*hphy_bridge_s0_translator|av_readdata_pre[*]}]
set_false_path -to [get_ports {DDR3_DQS_n[0]}]
set_false_path -to [get_ports {DDR3_DQS_n[1]}]
set_false_path -to [get_ports {DDR3_DQS_n[2]}]
set_false_path -to [get_ports {DDR3_DQS_n[3]}]
set_false_path -to [get_ports {DDR3_CK_p}]
set_false_path -to [get_ports {DDR3_CK_n}]
set_false_path -to [get_ports {DDR3_RESET_n}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {DDR3_DQS_p[0]_OUT}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {DDR3_DQS_p[1]_OUT}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {DDR3_DQS_p[2]_OUT}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {DDR3_DQS_p[3]_OUT}]
set_false_path -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*altdq_dqs2_inst|dqs_enable_ctrl~*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*altdq_dqs2_inst|dqs_delay_chain~POSTAMBLE_DFF}]
set_false_path -from [get_keepers {*top_nios2_gen2_0_cpu:*|top_nios2_gen2_0_cpu_nios2_oci:the_top_nios2_gen2_0_cpu_nios2_oci|top_nios2_gen2_0_cpu_nios2_oci_break:the_top_nios2_gen2_0_cpu_nios2_oci_break|break_readreg*}] -to [get_keepers {*top_nios2_gen2_0_cpu:*|top_nios2_gen2_0_cpu_nios2_oci:the_top_nios2_gen2_0_cpu_nios2_oci|top_nios2_gen2_0_cpu_debug_slave_wrapper:the_top_nios2_gen2_0_cpu_debug_slave_wrapper|top_nios2_gen2_0_cpu_debug_slave_tck:the_top_nios2_gen2_0_cpu_debug_slave_tck|*sr*}]
set_false_path -from [get_keepers {*top_nios2_gen2_0_cpu:*|top_nios2_gen2_0_cpu_nios2_oci:the_top_nios2_gen2_0_cpu_nios2_oci|top_nios2_gen2_0_cpu_nios2_oci_debug:the_top_nios2_gen2_0_cpu_nios2_oci_debug|*resetlatch}] -to [get_keepers {*top_nios2_gen2_0_cpu:*|top_nios2_gen2_0_cpu_nios2_oci:the_top_nios2_gen2_0_cpu_nios2_oci|top_nios2_gen2_0_cpu_debug_slave_wrapper:the_top_nios2_gen2_0_cpu_debug_slave_wrapper|top_nios2_gen2_0_cpu_debug_slave_tck:the_top_nios2_gen2_0_cpu_debug_slave_tck|*sr[33]}]
set_false_path -from [get_keepers {*top_nios2_gen2_0_cpu:*|top_nios2_gen2_0_cpu_nios2_oci:the_top_nios2_gen2_0_cpu_nios2_oci|top_nios2_gen2_0_cpu_nios2_oci_debug:the_top_nios2_gen2_0_cpu_nios2_oci_debug|monitor_ready}] -to [get_keepers {*top_nios2_gen2_0_cpu:*|top_nios2_gen2_0_cpu_nios2_oci:the_top_nios2_gen2_0_cpu_nios2_oci|top_nios2_gen2_0_cpu_debug_slave_wrapper:the_top_nios2_gen2_0_cpu_debug_slave_wrapper|top_nios2_gen2_0_cpu_debug_slave_tck:the_top_nios2_gen2_0_cpu_debug_slave_tck|*sr[0]}]
set_false_path -from [get_keepers {*top_nios2_gen2_0_cpu:*|top_nios2_gen2_0_cpu_nios2_oci:the_top_nios2_gen2_0_cpu_nios2_oci|top_nios2_gen2_0_cpu_nios2_oci_debug:the_top_nios2_gen2_0_cpu_nios2_oci_debug|monitor_error}] -to [get_keepers {*top_nios2_gen2_0_cpu:*|top_nios2_gen2_0_cpu_nios2_oci:the_top_nios2_gen2_0_cpu_nios2_oci|top_nios2_gen2_0_cpu_debug_slave_wrapper:the_top_nios2_gen2_0_cpu_debug_slave_wrapper|top_nios2_gen2_0_cpu_debug_slave_tck:the_top_nios2_gen2_0_cpu_debug_slave_tck|*sr[34]}]
set_false_path -from [get_keepers {*top_nios2_gen2_0_cpu:*|top_nios2_gen2_0_cpu_nios2_oci:the_top_nios2_gen2_0_cpu_nios2_oci|top_nios2_gen2_0_cpu_nios2_ocimem:the_top_nios2_gen2_0_cpu_nios2_ocimem|*MonDReg*}] -to [get_keepers {*top_nios2_gen2_0_cpu:*|top_nios2_gen2_0_cpu_nios2_oci:the_top_nios2_gen2_0_cpu_nios2_oci|top_nios2_gen2_0_cpu_debug_slave_wrapper:the_top_nios2_gen2_0_cpu_debug_slave_wrapper|top_nios2_gen2_0_cpu_debug_slave_tck:the_top_nios2_gen2_0_cpu_debug_slave_tck|*sr*}]
set_false_path -from [get_keepers {*top_nios2_gen2_0_cpu:*|top_nios2_gen2_0_cpu_nios2_oci:the_top_nios2_gen2_0_cpu_nios2_oci|top_nios2_gen2_0_cpu_debug_slave_wrapper:the_top_nios2_gen2_0_cpu_debug_slave_wrapper|top_nios2_gen2_0_cpu_debug_slave_tck:the_top_nios2_gen2_0_cpu_debug_slave_tck|*sr*}] -to [get_keepers {*top_nios2_gen2_0_cpu:*|top_nios2_gen2_0_cpu_nios2_oci:the_top_nios2_gen2_0_cpu_nios2_oci|top_nios2_gen2_0_cpu_debug_slave_wrapper:the_top_nios2_gen2_0_cpu_debug_slave_wrapper|top_nios2_gen2_0_cpu_debug_slave_sysclk:the_top_nios2_gen2_0_cpu_debug_slave_sysclk|*jdo*}]
set_false_path -from [get_keepers {sld_hub:*|irf_reg*}] -to [get_keepers {*top_nios2_gen2_0_cpu:*|top_nios2_gen2_0_cpu_nios2_oci:the_top_nios2_gen2_0_cpu_nios2_oci|top_nios2_gen2_0_cpu_debug_slave_wrapper:the_top_nios2_gen2_0_cpu_debug_slave_wrapper|top_nios2_gen2_0_cpu_debug_slave_sysclk:the_top_nios2_gen2_0_cpu_debug_slave_sysclk|ir*}]
set_false_path -from [get_keepers {sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1]}] -to [get_keepers {*top_nios2_gen2_0_cpu:*|top_nios2_gen2_0_cpu_nios2_oci:the_top_nios2_gen2_0_cpu_nios2_oci|top_nios2_gen2_0_cpu_nios2_oci_debug:the_top_nios2_gen2_0_cpu_nios2_oci_debug|monitor_go}]


#**************************************************************
# Set Multicycle Path
#**************************************************************

set_multicycle_path -setup -start -from  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  -to  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] 6
set_multicycle_path -hold -start -from  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  -to  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] 5
set_multicycle_path -hold -end -from  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  -to  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] 1
set_multicycle_path -setup -end -from  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  -to  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] 2
set_multicycle_path -hold -end -from  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_afi_clk}]  -to  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_phy_clk}] 1
set_multicycle_path -setup -end -from  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  -to  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] 2
set_multicycle_path -hold -end -from  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_config_clk}]  -to  [get_clocks {u0|mem_if_ddr3_emif_0|pll0|pll_avl_clk}] 1
set_multicycle_path -setup -end -to [get_registers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*clock_gen[*].umem_ck_pad|*}] 4
set_multicycle_path -hold -end -to [get_registers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*clock_gen[*].umem_ck_pad|*}] 4
set_multicycle_path -setup -end -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*lfifo~LFIFO_IN_READ_EN_FULL_DFF}] 2
set_multicycle_path -hold -end -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*lfifo~LFIFO_IN_READ_EN_FULL_DFF}] 1
set_multicycle_path -setup -end -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*altdq_dqs2_inst|*read_fifo~READ_ADDRESS_DFF}] 2
set_multicycle_path -hold -end -from [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:mem_if_ddr3_emif_0|*p0|*altdq_dqs2_inst|*read_fifo~READ_ADDRESS_DFF}] 1


#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [get_keepers {*packet_transfer*write_proc_instance|*mem_ctr_crosser|din_reg*}] -to [get_keepers {*packet_transfer*write_proc_instance|*mem_ctr_crosser|delay_line[*]*}] 100.000
set_max_delay -from [get_keepers {*packet_transfer*write_proc_instance|unload_ack*}] -to [get_keepers {*packet_transfer*write_proc_instance|*unload_ack_crosser|delay_line[*]*}] 100.000
set_max_delay -from [get_keepers {*packet_transfer*write_proc_instance|unload_req*}] -to [get_keepers {*packet_transfer*write_proc_instance|*unload_req_crosser|delay_line[*]*}] 100.000
set_max_delay -from [get_keepers {*packet_transfer*write_proc_instance|unload_done*}] -to [get_keepers {*packet_transfer*write_proc_instance|*unload_done_crosser|delay_line[*]*}] 100.000
set_max_delay -from [get_keepers {*packet_transfer*write_proc_instance|*unload_buffered*}] -to [get_keepers {*packet_transfer*write_proc_instance|*_mm_output*}] 100.000
set_max_delay -from [get_keepers {*packet_transfer*read_proc_instance|read_syn_buf*}] -to [get_keepers {*packet_transfer*read_proc_instance|*read_syn_crosser|delay_line[*]*}] 100.000
set_max_delay -from [get_keepers {*packet_transfer*read_proc_instance|read_ack_buf*}] -to [get_keepers {*packet_transfer*read_proc_instance|*read_ack_crosser|delay_line[*]*}] 100.000
set_max_delay -from [get_keepers {*packet_transfer*read_proc_instance|*current_ctxt_burst_size*
                                   *packet_transfer*read_proc_instance|*ctxt_expecting_valid_ptr*
                                  }] -to [get_keepers {*packet_transfer*read_proc_instance|*mm_msg_queue*scfifo*}] 100.000
set_max_delay -from [get_keepers {*packet_transfer*read_proc_instance|*current_ctxt_burst_size*
                                   *packet_transfer*read_proc_instance|*current_ctxt_id*
                                   *packet_transfer*read_proc_instance|*period_expecting_valid_ptr*
                                   *packet_transfer*read_proc_instance|*context_expecting_valid_ptr*
                                   *packet_transfer*read_proc_instance|*csel_expecting_valid_ptr*
                                   *packet_transfer*read_proc_instance|*ctxt_expecting_valid_ptr*
                                  }] -to [get_keepers {*packet_transfer*read_proc_instance|*mm_msg_din*
                                    *packet_transfer*read_proc_instance|*mm_msg_bypass_reg*
                                    *packet_transfer*read_proc_instance|*mm_msg_queue*scfifo*
                                  }] 100.000
set_max_delay -from [get_keepers {*packet_transfer*read_proc_instance|*csel_target_addr*
                                   *packet_transfer*read_proc_instance|*context_target_addr*
                                   *packet_transfer*read_proc_instance|*ctxt_target_addr*
                                   *packet_transfer*read_proc_instance|*period_targer_addr_start*
                                   *packet_transfer*read_proc_instance|*current_ctxt_id*
                                  }] -to [get_keepers {*read_proc_instance|*mm_target_addr*}] 100.000
set_max_delay -from [get_keepers {*packet_transfer*read_proc_instance|*current_ctxt_burst_size*}] -to [get_keepers {*read_proc_instance|*mm_burst_size*}] 100.000
set_max_delay -from [get_registers {*|in_wr_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:write_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] 100.000
set_max_delay -from [get_registers {*|out_rd_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:read_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] 100.000
set_max_delay -from [get_keepers {u0|alt_vip_cl_vfb_0|pkt_trans_rd|READ_BLOCK.read_proc_instance|load_msg_queue|*rdptr_g[*]*}] -to [get_keepers {u0|alt_vip_cl_vfb_0|pkt_trans_rd|READ_BLOCK.read_proc_instance|load_msg_queue|*|dffpipe*}] 100.000
set_max_delay -from [get_keepers {u0|alt_vip_cl_vfb_0|pkt_trans_rd|READ_BLOCK.read_proc_instance|load_msg_queue|*wrptr_g[*]*}] -to [get_keepers {u0|alt_vip_cl_vfb_0|pkt_trans_rd|READ_BLOCK.read_proc_instance|load_msg_queue|*|dffpipe*}] 100.000
set_max_delay -from [get_ports {DDR3_DQ[0]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[1]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[2]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[3]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[4]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[5]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[6]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[7]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[8]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[9]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[10]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[11]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[12]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[13]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[14]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[15]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[16]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[17]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[18]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[19]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[20]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[21]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[22]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[23]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[24]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[25]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[26]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[27]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[28]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[29]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[30]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {DDR3_DQ[31]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000


#**************************************************************
# Set Minimum Delay
#**************************************************************

set_min_delay -from [get_keepers {*packet_transfer*write_proc_instance|*mem_ctr_crosser|din_reg*}] -to [get_keepers {*packet_transfer*write_proc_instance|*mem_ctr_crosser|delay_line[*]*}] -100.000
set_min_delay -from [get_keepers {*packet_transfer*write_proc_instance|unload_ack*}] -to [get_keepers {*packet_transfer*write_proc_instance|*unload_ack_crosser|delay_line[*]*}] -100.000
set_min_delay -from [get_keepers {*packet_transfer*write_proc_instance|unload_req*}] -to [get_keepers {*packet_transfer*write_proc_instance|*unload_req_crosser|delay_line[*]*}] -100.000
set_min_delay -from [get_keepers {*packet_transfer*write_proc_instance|unload_done*}] -to [get_keepers {*packet_transfer*write_proc_instance|*unload_done_crosser|delay_line[*]*}] -100.000
set_min_delay -from [get_keepers {*packet_transfer*write_proc_instance|*unload_buffered*}] -to [get_keepers {*packet_transfer*write_proc_instance|*_mm_output*}] -100.000
set_min_delay -from [get_keepers {*packet_transfer*read_proc_instance|read_syn_buf*}] -to [get_keepers {*packet_transfer*read_proc_instance|*read_syn_crosser|delay_line[*]*}] -100.000
set_min_delay -from [get_keepers {*packet_transfer*read_proc_instance|read_ack_buf*}] -to [get_keepers {*packet_transfer*read_proc_instance|*read_ack_crosser|delay_line[*]*}] -100.000
set_min_delay -from [get_keepers {*packet_transfer*read_proc_instance|*current_ctxt_burst_size*
                                   *packet_transfer*read_proc_instance|*ctxt_expecting_valid_ptr*
                                  }] -to [get_keepers {*packet_transfer*read_proc_instance|*mm_msg_queue*scfifo*}] -100.000
set_min_delay -from [get_keepers {*packet_transfer*read_proc_instance|*current_ctxt_burst_size*
                                   *packet_transfer*read_proc_instance|*current_ctxt_id*
                                   *packet_transfer*read_proc_instance|*period_expecting_valid_ptr*
                                   *packet_transfer*read_proc_instance|*context_expecting_valid_ptr*
                                   *packet_transfer*read_proc_instance|*csel_expecting_valid_ptr*
                                   *packet_transfer*read_proc_instance|*ctxt_expecting_valid_ptr*
                                  }] -to [get_keepers {*packet_transfer*read_proc_instance|*mm_msg_din*
                                    *packet_transfer*read_proc_instance|*mm_msg_bypass_reg*
                                    *packet_transfer*read_proc_instance|*mm_msg_queue*scfifo*
                                  }] -100.000
set_min_delay -from [get_keepers {*packet_transfer*read_proc_instance|*csel_target_addr*
                                   *packet_transfer*read_proc_instance|*context_target_addr*
                                   *packet_transfer*read_proc_instance|*ctxt_target_addr*
                                   *packet_transfer*read_proc_instance|*period_targer_addr_start*
                                   *packet_transfer*read_proc_instance|*current_ctxt_id*
                                  }] -to [get_keepers {*read_proc_instance|*mm_target_addr*}] -100.000
set_min_delay -from [get_keepers {*packet_transfer*read_proc_instance|*current_ctxt_burst_size*}] -to [get_keepers {*read_proc_instance|*mm_burst_size*}] -100.000
set_min_delay -from [get_registers {*|in_wr_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:write_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] -100.000
set_min_delay -from [get_registers {*|out_rd_ptr_gray[*]}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:read_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}] -100.000
set_min_delay -from [get_keepers {u0|alt_vip_cl_vfb_0|pkt_trans_rd|READ_BLOCK.read_proc_instance|load_msg_queue|*rdptr_g[*]*}] -to [get_keepers {u0|alt_vip_cl_vfb_0|pkt_trans_rd|READ_BLOCK.read_proc_instance|load_msg_queue|*|dffpipe*}] -100.000
set_min_delay -from [get_keepers {u0|alt_vip_cl_vfb_0|pkt_trans_rd|READ_BLOCK.read_proc_instance|load_msg_queue|*wrptr_g[*]*}] -to [get_keepers {u0|alt_vip_cl_vfb_0|pkt_trans_rd|READ_BLOCK.read_proc_instance|load_msg_queue|*|dffpipe*}] -100.000
set_min_delay -from [get_ports {DDR3_DQ[0]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[1]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[2]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[3]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[4]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[5]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[6]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[7]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[8]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[9]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[10]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[11]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[12]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[13]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[14]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[15]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[16]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[17]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[18]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[19]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[20]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[21]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[22]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[23]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[24]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[25]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[26]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[27]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[28]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[29]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[30]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {DDR3_DQ[31]}] -to [get_keepers {{*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:mem_if_ddr3_emif_0|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250


#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Net Delay
#**************************************************************

set_net_delay -max 2.000 -from [get_pins -compatibility_mode {*packet_transfer*write_proc_instance|*mem_ctr_crosser|din_reg*}] -to [get_keepers {*packet_transfer*write_proc_instance|*mem_ctr_crosser|delay_line[*]*}]
set_net_delay -max 2.000 -from [get_pins -compatibility_mode {*packet_transfer*write_proc_instance|unload_ack*}] -to [get_keepers {*packet_transfer*write_proc_instance|*unload_ack_crosser|delay_line[*]*}]
set_net_delay -max 2.000 -from [get_pins -compatibility_mode {*packet_transfer*write_proc_instance|unload_req*}] -to [get_keepers {*packet_transfer*write_proc_instance|*unload_req_crosser|delay_line[*]*}]
set_net_delay -max 2.000 -from [get_pins -compatibility_mode {*packet_transfer*write_proc_instance|unload_done*}] -to [get_keepers {*packet_transfer*write_proc_instance|*unload_done_crosser|delay_line[*]*}]
set_net_delay -max 2.000 -from [get_keepers {*packet_transfer*write_proc_instance|*unload_buffered*}] -to [get_keepers {*packet_transfer*write_proc_instance|*_mm_output*}]
set_net_delay -max 2.000 -from [get_pins -compatibility_mode {*packet_transfer*read_proc_instance|read_syn_buf*}] -to [get_keepers {*packet_transfer*read_proc_instance|*read_syn_crosser|delay_line[*]*}]
set_net_delay -max 2.000 -from [get_pins -compatibility_mode {*packet_transfer*read_proc_instance|read_ack_buf*}] -to [get_keepers {*packet_transfer*read_proc_instance|*read_ack_crosser|delay_line[*]*}]
set_net_delay -max 2.000 -from [get_keepers {*packet_transfer*read_proc_instance|*current_ctxt_burst_size*
                                       *packet_transfer*read_proc_instance|*ctxt_expecting_valid_ptr*
                                      }] -to [get_keepers {*packet_transfer*read_proc_instance|*mm_msg_queue*scfifo*}]
set_net_delay -max 2.000 -from [get_keepers {*packet_transfer*read_proc_instance|*current_ctxt_burst_size*
                                       *packet_transfer*read_proc_instance|*current_ctxt_id*
                                       *packet_transfer*read_proc_instance|*period_expecting_valid_ptr*
                                       *packet_transfer*read_proc_instance|*context_expecting_valid_ptr*
                                       *packet_transfer*read_proc_instance|*csel_expecting_valid_ptr*
                                       *packet_transfer*read_proc_instance|*ctxt_expecting_valid_ptr*
                                      }] -to [get_keepers {*packet_transfer*read_proc_instance|*mm_msg_din*
                                        *packet_transfer*read_proc_instance|*mm_msg_bypass_reg*
                                        *packet_transfer*read_proc_instance|*mm_msg_queue*scfifo*
                                      }]
set_net_delay -max 2.000 -from [get_keepers {*packet_transfer*read_proc_instance|*csel_target_addr*
                                       *packet_transfer*read_proc_instance|*context_target_addr*
                                       *packet_transfer*read_proc_instance|*ctxt_target_addr*
                                       *packet_transfer*read_proc_instance|*period_targer_addr_start*
                                       *packet_transfer*read_proc_instance|*current_ctxt_id*
                                      }] -to [get_keepers {*read_proc_instance|*mm_target_addr*}]
set_net_delay -max 2.000 -from [get_keepers {*packet_transfer*read_proc_instance|*current_ctxt_burst_size*}] -to [get_keepers {*read_proc_instance|*mm_burst_size*}]
set_net_delay -max 2.000 -from [get_pins -compatibility_mode {*|in_wr_ptr_gray[*]*}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:write_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}]
set_net_delay -max 2.000 -from [get_pins -compatibility_mode {*|out_rd_ptr_gray[*]*}] -to [get_registers {*|altera_dcfifo_synchronizer_bundle:read_crosser|altera_std_synchronizer_nocut:sync[*].u|din_s1}]
set_net_delay -max 2.000 -from [get_pins -compatibility_mode {u0|alt_vip_cl_vfb_0|pkt_trans_rd|READ_BLOCK.read_proc_instance|load_msg_queue|*delayed_wrptr_g[*]*}] -to [get_keepers {u0|alt_vip_cl_vfb_0|pkt_trans_rd|READ_BLOCK.read_proc_instance|load_msg_queue|*rs_dgwp|dffpipe*}]


#**************************************************************
# Set Max Skew
#**************************************************************

set_max_skew -from [get_pins -compatibility_mode {*packet_transfer*write_proc_instance|*mem_ctr_crosser|din_reg*}] -to [get_keepers {*packet_transfer*write_proc_instance|*mem_ctr_crosser|delay_line[*]*}] 6.000 
set_max_skew -from [get_pins -compatibility_mode {*packet_transfer*write_proc_instance|unload_ack*}] -to [get_keepers {*packet_transfer*write_proc_instance|*unload_ack_crosser|delay_line[*]*}] 6.000 
set_max_skew -from [get_pins -compatibility_mode {*packet_transfer*write_proc_instance|unload_req*}] -to [get_keepers {*packet_transfer*write_proc_instance|*unload_req_crosser|delay_line[*]*}] 6.000 
set_max_skew -from [get_pins -compatibility_mode {*packet_transfer*write_proc_instance|unload_done*}] -to [get_keepers {*packet_transfer*write_proc_instance|*unload_done_crosser|delay_line[*]*}] 6.000 
set_max_skew -from [get_pins -compatibility_mode {*packet_transfer*write_proc_instance|*unload_buffered*}] -to [get_keepers {*packet_transfer*write_proc_instance|*_mm_output*}] 5.000 
set_max_skew -from [get_pins -compatibility_mode {*packet_transfer*read_proc_instance|read_syn_buf*}] -to [get_keepers {*packet_transfer*read_proc_instance|*read_syn_crosser|delay_line[*]*}] 6.000 
set_max_skew -from [get_pins -compatibility_mode {*packet_transfer*read_proc_instance|read_ack_buf*}] -to [get_keepers {*packet_transfer*read_proc_instance|*read_ack_crosser|delay_line[*]*}] 6.000 
set_max_skew -from [get_pins -compatibility_mode {*packet_transfer*read_proc_instance|*current_ctxt_burst_size*}] -to [get_keepers {*read_proc_instance|*mm_burst_size*}] 5.000 
set_max_skew -from [get_pins -compatibility_mode {u0|alt_vip_cl_vfb_0|pkt_trans_rd|READ_BLOCK.read_proc_instance|load_msg_queue|*delayed_wrptr_g[*]*}] -to [get_keepers {u0|alt_vip_cl_vfb_0|pkt_trans_rd|READ_BLOCK.read_proc_instance|load_msg_queue|*rs_dgwp|dffpipe*}] 6.000 


#**************************************************************
# Set Disable Timing
#**************************************************************

set_disable_timing -from * -to * [get_cells -hierarchical {QXXQ6833_0}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_0}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_1}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_2}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_3}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_4}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_5}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_6}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_7}]
set_disable_timing -from * -to * [get_cells -hierarchical {BITP7563_0}]
set_disable_timing -from * -to q [get_cells -compatibility_mode {*|alt_cal_channel[*]}]
set_disable_timing -from * -to q [get_cells -compatibility_mode {*|alt_cal_busy}]
