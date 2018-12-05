// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus II License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II 64-Bit"
// VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

// DATE "07/16/2018 04:10:30"

// 
// Device: Altera 5CGXFC7C7F23C8 Package FBGA484
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module NATIVE_TRANSCEIVER_IP (
	pll_powerdown,
	tx_analogreset,
	tx_digitalreset,
	tx_serial_data,
	ext_pll_clk,
	rx_analogreset,
	rx_digitalreset,
	rx_cdr_refclk,
	rx_pma_clkout,
	rx_serial_data,
	rx_set_locktodata,
	rx_set_locktoref,
	rx_is_lockedtoref,
	rx_is_lockedtodata,
	tx_parallel_data,
	rx_parallel_data,
	tx_std_coreclkin,
	rx_std_coreclkin,
	tx_std_clkout,
	rx_std_clkout,
	tx_std_pcfifo_full,
	tx_std_pcfifo_empty,
	rx_std_pcfifo_full,
	rx_std_pcfifo_empty,
	tx_cal_busy,
	rx_cal_busy,
	reconfig_to_xcvr,
	reconfig_from_xcvr)/* synthesis synthesis_greybox=0 */;
input 	[0:0] pll_powerdown;
input 	[0:0] tx_analogreset;
input 	[0:0] tx_digitalreset;
output 	[0:0] tx_serial_data;
input 	[0:0] ext_pll_clk;
input 	[0:0] rx_analogreset;
input 	[0:0] rx_digitalreset;
input 	[0:0] rx_cdr_refclk;
output 	[0:0] rx_pma_clkout;
input 	[0:0] rx_serial_data;
input 	[0:0] rx_set_locktodata;
input 	[0:0] rx_set_locktoref;
output 	[0:0] rx_is_lockedtoref;
output 	[0:0] rx_is_lockedtodata;
input 	[43:0] tx_parallel_data;
output 	[63:0] rx_parallel_data;
input 	[0:0] tx_std_coreclkin;
input 	[0:0] rx_std_coreclkin;
output 	[0:0] tx_std_clkout;
output 	[0:0] rx_std_clkout;
output 	[0:0] tx_std_pcfifo_full;
output 	[0:0] tx_std_pcfifo_empty;
output 	[0:0] rx_std_pcfifo_full;
output 	[0:0] rx_std_pcfifo_empty;
output 	[0:0] tx_cal_busy;
output 	[0:0] rx_cal_busy;
input 	[69:0] reconfig_to_xcvr;
output 	[45:0] reconfig_from_xcvr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|pld8gemptyrx ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|pld8gfullrx ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|pld8grxclkout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[0] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[1] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[2] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[3] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[4] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[5] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[6] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[7] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[8] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[9] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[10] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[11] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[12] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[13] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[14] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[15] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[16] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[17] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[18] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[19] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[20] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[21] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[22] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[23] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[24] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[25] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[26] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[27] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[28] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[29] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[30] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[31] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[32] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[33] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[34] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[35] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[36] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[37] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[38] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[39] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[40] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[41] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[42] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[43] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[44] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[45] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[46] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[47] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[48] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[49] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[50] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[51] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[52] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[53] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[54] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[55] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[56] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[57] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[58] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[59] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[60] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[61] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[62] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[63] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|dataout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pma|av_rx_pma|clkdivrx[0] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pma|av_rx_pma|rx_is_lockedtoref[0] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pma|av_rx_pma|rx_is_lockedtodata[0] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|pld8gemptytx ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|pld8gfulltx ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|pld8gtxclkout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[0] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[1] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[2] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[3] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[4] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[5] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[6] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[7] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[8] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[9] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[10] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[11] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[12] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[13] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[14] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[15] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[16] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[17] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[18] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[19] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[20] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[21] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[22] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[23] ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|atb_comp_out ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[0]~0_combout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[1]~1_combout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[2]~2_combout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[3]~3_combout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[4]~4_combout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[5]~5_combout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[6]~6_combout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[7]~7_combout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[8]~8_combout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[9]~9_combout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[10]~10_combout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[11]~11_combout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[12]~12_combout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[13]~13_combout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[14]~14_combout ;
wire \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[15]~15_combout ;
wire \pll_powerdown[0]~input_o ;
wire \reconfig_to_xcvr[46]~input_o ;
wire \reconfig_to_xcvr[49]~input_o ;
wire \reconfig_to_xcvr[50]~input_o ;
wire \reconfig_to_xcvr[51]~input_o ;
wire \reconfig_to_xcvr[52]~input_o ;
wire \reconfig_to_xcvr[53]~input_o ;
wire \reconfig_to_xcvr[54]~input_o ;
wire \reconfig_to_xcvr[55]~input_o ;
wire \reconfig_to_xcvr[56]~input_o ;
wire \reconfig_to_xcvr[57]~input_o ;
wire \reconfig_to_xcvr[58]~input_o ;
wire \reconfig_to_xcvr[59]~input_o ;
wire \reconfig_to_xcvr[60]~input_o ;
wire \reconfig_to_xcvr[61]~input_o ;
wire \reconfig_to_xcvr[62]~input_o ;
wire \reconfig_to_xcvr[63]~input_o ;
wire \reconfig_to_xcvr[64]~input_o ;
wire \reconfig_to_xcvr[65]~input_o ;
wire \reconfig_to_xcvr[66]~input_o ;
wire \reconfig_to_xcvr[67]~input_o ;
wire \reconfig_to_xcvr[68]~input_o ;
wire \reconfig_to_xcvr[69]~input_o ;
wire \rx_std_coreclkin[0]~input_o ;
wire \rx_digitalreset[0]~input_o ;
wire \rx_analogreset[0]~input_o ;
wire \rx_set_locktodata[0]~input_o ;
wire \tx_std_coreclkin[0]~input_o ;
wire \tx_digitalreset[0]~input_o ;
wire \tx_parallel_data[0]~input_o ;
wire \tx_parallel_data[1]~input_o ;
wire \tx_parallel_data[2]~input_o ;
wire \tx_parallel_data[3]~input_o ;
wire \tx_parallel_data[4]~input_o ;
wire \tx_parallel_data[5]~input_o ;
wire \tx_parallel_data[6]~input_o ;
wire \tx_parallel_data[7]~input_o ;
wire \tx_parallel_data[8]~input_o ;
wire \tx_parallel_data[9]~input_o ;
wire \tx_parallel_data[10]~input_o ;
wire \tx_parallel_data[11]~input_o ;
wire \tx_parallel_data[12]~input_o ;
wire \tx_parallel_data[13]~input_o ;
wire \tx_parallel_data[14]~input_o ;
wire \tx_parallel_data[15]~input_o ;
wire \tx_parallel_data[16]~input_o ;
wire \tx_parallel_data[17]~input_o ;
wire \tx_parallel_data[18]~input_o ;
wire \tx_parallel_data[19]~input_o ;
wire \tx_parallel_data[20]~input_o ;
wire \tx_parallel_data[21]~input_o ;
wire \tx_parallel_data[22]~input_o ;
wire \tx_parallel_data[23]~input_o ;
wire \tx_parallel_data[24]~input_o ;
wire \tx_parallel_data[25]~input_o ;
wire \tx_parallel_data[26]~input_o ;
wire \tx_parallel_data[27]~input_o ;
wire \tx_parallel_data[28]~input_o ;
wire \tx_parallel_data[29]~input_o ;
wire \tx_parallel_data[30]~input_o ;
wire \tx_parallel_data[31]~input_o ;
wire \tx_parallel_data[32]~input_o ;
wire \tx_parallel_data[33]~input_o ;
wire \tx_parallel_data[34]~input_o ;
wire \tx_parallel_data[35]~input_o ;
wire \tx_parallel_data[36]~input_o ;
wire \tx_parallel_data[37]~input_o ;
wire \tx_parallel_data[38]~input_o ;
wire \tx_parallel_data[39]~input_o ;
wire \tx_parallel_data[40]~input_o ;
wire \tx_parallel_data[41]~input_o ;
wire \tx_parallel_data[42]~input_o ;
wire \tx_parallel_data[43]~input_o ;
wire \reconfig_to_xcvr[31]~input_o ;
wire \reconfig_to_xcvr[0]~input_o ;
wire \reconfig_to_xcvr[1]~input_o ;
wire \reconfig_to_xcvr[22]~input_o ;
wire \reconfig_to_xcvr[20]~input_o ;
wire \reconfig_to_xcvr[19]~input_o ;
wire \reconfig_to_xcvr[21]~input_o ;
wire \reconfig_to_xcvr[23]~input_o ;
wire \reconfig_to_xcvr[18]~input_o ;
wire \reconfig_to_xcvr[45]~input_o ;
wire \reconfig_to_xcvr[44]~input_o ;
wire \reconfig_to_xcvr[24]~input_o ;
wire \reconfig_to_xcvr[25]~input_o ;
wire \reconfig_to_xcvr[26]~input_o ;
wire \reconfig_to_xcvr[27]~input_o ;
wire \reconfig_to_xcvr[28]~input_o ;
wire \reconfig_to_xcvr[29]~input_o ;
wire \reconfig_to_xcvr[30]~input_o ;
wire \reconfig_to_xcvr[2]~input_o ;
wire \reconfig_to_xcvr[3]~input_o ;
wire \reconfig_to_xcvr[4]~input_o ;
wire \reconfig_to_xcvr[5]~input_o ;
wire \reconfig_to_xcvr[6]~input_o ;
wire \reconfig_to_xcvr[7]~input_o ;
wire \reconfig_to_xcvr[8]~input_o ;
wire \reconfig_to_xcvr[9]~input_o ;
wire \reconfig_to_xcvr[10]~input_o ;
wire \reconfig_to_xcvr[11]~input_o ;
wire \reconfig_to_xcvr[12]~input_o ;
wire \reconfig_to_xcvr[13]~input_o ;
wire \reconfig_to_xcvr[14]~input_o ;
wire \reconfig_to_xcvr[15]~input_o ;
wire \reconfig_to_xcvr[16]~input_o ;
wire \reconfig_to_xcvr[17]~input_o ;
wire \reconfig_to_xcvr[32]~input_o ;
wire \reconfig_to_xcvr[33]~input_o ;
wire \reconfig_to_xcvr[34]~input_o ;
wire \reconfig_to_xcvr[35]~input_o ;
wire \reconfig_to_xcvr[36]~input_o ;
wire \reconfig_to_xcvr[37]~input_o ;
wire \reconfig_to_xcvr[38]~input_o ;
wire \reconfig_to_xcvr[39]~input_o ;
wire \reconfig_to_xcvr[40]~input_o ;
wire \reconfig_to_xcvr[41]~input_o ;
wire \reconfig_to_xcvr[42]~input_o ;
wire \reconfig_to_xcvr[43]~input_o ;
wire \rx_set_locktoref[0]~input_o ;
wire \tx_analogreset[0]~input_o ;
wire \rx_serial_data[0]~input_o ;
wire \rx_cdr_refclk[0]~input_o ;
wire \ext_pll_clk[0]~input_o ;
wire \reconfig_to_xcvr[47]~input_o ;
wire \reconfig_to_xcvr[48]~input_o ;


NATIVE_TRANSCEIVER_IP_altera_xcvr_native_av native_transceiver_ip_inst(
	.pld8gemptyrx(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|pld8gemptyrx ),
	.pld8gfullrx(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|pld8gfullrx ),
	.pld8grxclkout(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|pld8grxclkout ),
	.dataouttopld_0(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[0] ),
	.dataouttopld_1(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[1] ),
	.dataouttopld_2(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[2] ),
	.dataouttopld_3(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[3] ),
	.dataouttopld_4(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[4] ),
	.dataouttopld_5(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[5] ),
	.dataouttopld_6(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[6] ),
	.dataouttopld_7(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[7] ),
	.dataouttopld_8(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[8] ),
	.dataouttopld_9(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[9] ),
	.dataouttopld_10(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[10] ),
	.dataouttopld_11(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[11] ),
	.dataouttopld_12(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[12] ),
	.dataouttopld_13(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[13] ),
	.dataouttopld_14(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[14] ),
	.dataouttopld_15(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[15] ),
	.dataouttopld_16(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[16] ),
	.dataouttopld_17(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[17] ),
	.dataouttopld_18(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[18] ),
	.dataouttopld_19(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[19] ),
	.dataouttopld_20(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[20] ),
	.dataouttopld_21(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[21] ),
	.dataouttopld_22(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[22] ),
	.dataouttopld_23(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[23] ),
	.dataouttopld_24(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[24] ),
	.dataouttopld_25(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[25] ),
	.dataouttopld_26(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[26] ),
	.dataouttopld_27(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[27] ),
	.dataouttopld_28(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[28] ),
	.dataouttopld_29(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[29] ),
	.dataouttopld_30(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[30] ),
	.dataouttopld_31(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[31] ),
	.dataouttopld_32(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[32] ),
	.dataouttopld_33(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[33] ),
	.dataouttopld_34(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[34] ),
	.dataouttopld_35(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[35] ),
	.dataouttopld_36(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[36] ),
	.dataouttopld_37(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[37] ),
	.dataouttopld_38(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[38] ),
	.dataouttopld_39(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[39] ),
	.dataouttopld_40(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[40] ),
	.dataouttopld_41(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[41] ),
	.dataouttopld_42(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[42] ),
	.dataouttopld_43(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[43] ),
	.dataouttopld_44(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[44] ),
	.dataouttopld_45(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[45] ),
	.dataouttopld_46(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[46] ),
	.dataouttopld_47(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[47] ),
	.dataouttopld_48(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[48] ),
	.dataouttopld_49(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[49] ),
	.dataouttopld_50(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[50] ),
	.dataouttopld_51(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[51] ),
	.dataouttopld_52(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[52] ),
	.dataouttopld_53(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[53] ),
	.dataouttopld_54(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[54] ),
	.dataouttopld_55(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[55] ),
	.dataouttopld_56(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[56] ),
	.dataouttopld_57(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[57] ),
	.dataouttopld_58(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[58] ),
	.dataouttopld_59(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[59] ),
	.dataouttopld_60(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[60] ),
	.dataouttopld_61(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[61] ),
	.dataouttopld_62(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[62] ),
	.dataouttopld_63(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[63] ),
	.dataout(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|dataout ),
	.clkdivrx_0(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pma|av_rx_pma|clkdivrx[0] ),
	.rx_is_lockedtoref_0(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pma|av_rx_pma|rx_is_lockedtoref[0] ),
	.rx_is_lockedtodata_0(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pma|av_rx_pma|rx_is_lockedtodata[0] ),
	.pld8gemptytx(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|pld8gemptytx ),
	.pld8gfulltx(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|pld8gfulltx ),
	.pld8gtxclkout(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|pld8gtxclkout ),
	.avmm_interface_insts0w_pmatestbus_0(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[0] ),
	.avmm_interface_insts0w_pmatestbus_1(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[1] ),
	.avmm_interface_insts0w_pmatestbus_2(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[2] ),
	.avmm_interface_insts0w_pmatestbus_3(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[3] ),
	.avmm_interface_insts0w_pmatestbus_4(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[4] ),
	.avmm_interface_insts0w_pmatestbus_5(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[5] ),
	.avmm_interface_insts0w_pmatestbus_6(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[6] ),
	.avmm_interface_insts0w_pmatestbus_7(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[7] ),
	.avmm_interface_insts0w_pmatestbus_8(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[8] ),
	.avmm_interface_insts0w_pmatestbus_9(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[9] ),
	.avmm_interface_insts0w_pmatestbus_10(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[10] ),
	.avmm_interface_insts0w_pmatestbus_11(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[11] ),
	.avmm_interface_insts0w_pmatestbus_12(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[12] ),
	.avmm_interface_insts0w_pmatestbus_13(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[13] ),
	.avmm_interface_insts0w_pmatestbus_14(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[14] ),
	.avmm_interface_insts0w_pmatestbus_15(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[15] ),
	.avmm_interface_insts0w_pmatestbus_16(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[16] ),
	.avmm_interface_insts0w_pmatestbus_17(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[17] ),
	.avmm_interface_insts0w_pmatestbus_18(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[18] ),
	.avmm_interface_insts0w_pmatestbus_19(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[19] ),
	.avmm_interface_insts0w_pmatestbus_20(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[20] ),
	.avmm_interface_insts0w_pmatestbus_21(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[21] ),
	.avmm_interface_insts0w_pmatestbus_22(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[22] ),
	.avmm_interface_insts0w_pmatestbus_23(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[23] ),
	.atb_comp_out(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|atb_comp_out ),
	.avmm_interface_insts0pld_avmm_readdata_0(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[0]~0_combout ),
	.avmm_interface_insts0pld_avmm_readdata_1(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[1]~1_combout ),
	.avmm_interface_insts0pld_avmm_readdata_2(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[2]~2_combout ),
	.avmm_interface_insts0pld_avmm_readdata_3(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[3]~3_combout ),
	.avmm_interface_insts0pld_avmm_readdata_4(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[4]~4_combout ),
	.avmm_interface_insts0pld_avmm_readdata_5(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[5]~5_combout ),
	.avmm_interface_insts0pld_avmm_readdata_6(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[6]~6_combout ),
	.avmm_interface_insts0pld_avmm_readdata_7(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[7]~7_combout ),
	.avmm_interface_insts0pld_avmm_readdata_8(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[8]~8_combout ),
	.avmm_interface_insts0pld_avmm_readdata_9(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[9]~9_combout ),
	.avmm_interface_insts0pld_avmm_readdata_10(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[10]~10_combout ),
	.avmm_interface_insts0pld_avmm_readdata_11(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[11]~11_combout ),
	.avmm_interface_insts0pld_avmm_readdata_12(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[12]~12_combout ),
	.avmm_interface_insts0pld_avmm_readdata_13(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[13]~13_combout ),
	.avmm_interface_insts0pld_avmm_readdata_14(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[14]~14_combout ),
	.avmm_interface_insts0pld_avmm_readdata_15(\native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[15]~15_combout ),
	.rx_std_coreclkin_0(\rx_std_coreclkin[0]~input_o ),
	.rx_digitalreset_0(\rx_digitalreset[0]~input_o ),
	.rx_analogreset_0(\rx_analogreset[0]~input_o ),
	.rx_set_locktodata_0(\rx_set_locktodata[0]~input_o ),
	.tx_std_coreclkin_0(\tx_std_coreclkin[0]~input_o ),
	.tx_digitalreset_0(\tx_digitalreset[0]~input_o ),
	.tx_parallel_data_0(\tx_parallel_data[0]~input_o ),
	.tx_parallel_data_1(\tx_parallel_data[1]~input_o ),
	.tx_parallel_data_2(\tx_parallel_data[2]~input_o ),
	.tx_parallel_data_3(\tx_parallel_data[3]~input_o ),
	.tx_parallel_data_4(\tx_parallel_data[4]~input_o ),
	.tx_parallel_data_5(\tx_parallel_data[5]~input_o ),
	.tx_parallel_data_6(\tx_parallel_data[6]~input_o ),
	.tx_parallel_data_7(\tx_parallel_data[7]~input_o ),
	.tx_parallel_data_8(\tx_parallel_data[8]~input_o ),
	.tx_parallel_data_9(\tx_parallel_data[9]~input_o ),
	.tx_parallel_data_10(\tx_parallel_data[10]~input_o ),
	.tx_parallel_data_11(\tx_parallel_data[11]~input_o ),
	.tx_parallel_data_12(\tx_parallel_data[12]~input_o ),
	.tx_parallel_data_13(\tx_parallel_data[13]~input_o ),
	.tx_parallel_data_14(\tx_parallel_data[14]~input_o ),
	.tx_parallel_data_15(\tx_parallel_data[15]~input_o ),
	.tx_parallel_data_16(\tx_parallel_data[16]~input_o ),
	.tx_parallel_data_17(\tx_parallel_data[17]~input_o ),
	.tx_parallel_data_18(\tx_parallel_data[18]~input_o ),
	.tx_parallel_data_19(\tx_parallel_data[19]~input_o ),
	.tx_parallel_data_20(\tx_parallel_data[20]~input_o ),
	.tx_parallel_data_21(\tx_parallel_data[21]~input_o ),
	.tx_parallel_data_22(\tx_parallel_data[22]~input_o ),
	.tx_parallel_data_23(\tx_parallel_data[23]~input_o ),
	.tx_parallel_data_24(\tx_parallel_data[24]~input_o ),
	.tx_parallel_data_25(\tx_parallel_data[25]~input_o ),
	.tx_parallel_data_26(\tx_parallel_data[26]~input_o ),
	.tx_parallel_data_27(\tx_parallel_data[27]~input_o ),
	.tx_parallel_data_28(\tx_parallel_data[28]~input_o ),
	.tx_parallel_data_29(\tx_parallel_data[29]~input_o ),
	.tx_parallel_data_30(\tx_parallel_data[30]~input_o ),
	.tx_parallel_data_31(\tx_parallel_data[31]~input_o ),
	.tx_parallel_data_32(\tx_parallel_data[32]~input_o ),
	.tx_parallel_data_33(\tx_parallel_data[33]~input_o ),
	.tx_parallel_data_34(\tx_parallel_data[34]~input_o ),
	.tx_parallel_data_35(\tx_parallel_data[35]~input_o ),
	.tx_parallel_data_36(\tx_parallel_data[36]~input_o ),
	.tx_parallel_data_37(\tx_parallel_data[37]~input_o ),
	.tx_parallel_data_38(\tx_parallel_data[38]~input_o ),
	.tx_parallel_data_39(\tx_parallel_data[39]~input_o ),
	.tx_parallel_data_40(\tx_parallel_data[40]~input_o ),
	.tx_parallel_data_41(\tx_parallel_data[41]~input_o ),
	.tx_parallel_data_42(\tx_parallel_data[42]~input_o ),
	.tx_parallel_data_43(\tx_parallel_data[43]~input_o ),
	.reconfig_to_xcvr_31(\reconfig_to_xcvr[31]~input_o ),
	.reconfig_to_xcvr_0(\reconfig_to_xcvr[0]~input_o ),
	.reconfig_to_xcvr_1(\reconfig_to_xcvr[1]~input_o ),
	.reconfig_to_xcvr_22(\reconfig_to_xcvr[22]~input_o ),
	.reconfig_to_xcvr_20(\reconfig_to_xcvr[20]~input_o ),
	.reconfig_to_xcvr_19(\reconfig_to_xcvr[19]~input_o ),
	.reconfig_to_xcvr_21(\reconfig_to_xcvr[21]~input_o ),
	.reconfig_to_xcvr_23(\reconfig_to_xcvr[23]~input_o ),
	.reconfig_to_xcvr_18(\reconfig_to_xcvr[18]~input_o ),
	.reconfig_to_xcvr_45(\reconfig_to_xcvr[45]~input_o ),
	.reconfig_to_xcvr_44(\reconfig_to_xcvr[44]~input_o ),
	.reconfig_to_xcvr_24(\reconfig_to_xcvr[24]~input_o ),
	.reconfig_to_xcvr_25(\reconfig_to_xcvr[25]~input_o ),
	.reconfig_to_xcvr_26(\reconfig_to_xcvr[26]~input_o ),
	.reconfig_to_xcvr_27(\reconfig_to_xcvr[27]~input_o ),
	.reconfig_to_xcvr_28(\reconfig_to_xcvr[28]~input_o ),
	.reconfig_to_xcvr_29(\reconfig_to_xcvr[29]~input_o ),
	.reconfig_to_xcvr_30(\reconfig_to_xcvr[30]~input_o ),
	.reconfig_to_xcvr_2(\reconfig_to_xcvr[2]~input_o ),
	.reconfig_to_xcvr_3(\reconfig_to_xcvr[3]~input_o ),
	.reconfig_to_xcvr_4(\reconfig_to_xcvr[4]~input_o ),
	.reconfig_to_xcvr_5(\reconfig_to_xcvr[5]~input_o ),
	.reconfig_to_xcvr_6(\reconfig_to_xcvr[6]~input_o ),
	.reconfig_to_xcvr_7(\reconfig_to_xcvr[7]~input_o ),
	.reconfig_to_xcvr_8(\reconfig_to_xcvr[8]~input_o ),
	.reconfig_to_xcvr_9(\reconfig_to_xcvr[9]~input_o ),
	.reconfig_to_xcvr_10(\reconfig_to_xcvr[10]~input_o ),
	.reconfig_to_xcvr_11(\reconfig_to_xcvr[11]~input_o ),
	.reconfig_to_xcvr_12(\reconfig_to_xcvr[12]~input_o ),
	.reconfig_to_xcvr_13(\reconfig_to_xcvr[13]~input_o ),
	.reconfig_to_xcvr_14(\reconfig_to_xcvr[14]~input_o ),
	.reconfig_to_xcvr_15(\reconfig_to_xcvr[15]~input_o ),
	.reconfig_to_xcvr_16(\reconfig_to_xcvr[16]~input_o ),
	.reconfig_to_xcvr_17(\reconfig_to_xcvr[17]~input_o ),
	.reconfig_to_xcvr_32(\reconfig_to_xcvr[32]~input_o ),
	.reconfig_to_xcvr_33(\reconfig_to_xcvr[33]~input_o ),
	.reconfig_to_xcvr_34(\reconfig_to_xcvr[34]~input_o ),
	.reconfig_to_xcvr_35(\reconfig_to_xcvr[35]~input_o ),
	.reconfig_to_xcvr_36(\reconfig_to_xcvr[36]~input_o ),
	.reconfig_to_xcvr_37(\reconfig_to_xcvr[37]~input_o ),
	.reconfig_to_xcvr_38(\reconfig_to_xcvr[38]~input_o ),
	.reconfig_to_xcvr_39(\reconfig_to_xcvr[39]~input_o ),
	.reconfig_to_xcvr_40(\reconfig_to_xcvr[40]~input_o ),
	.reconfig_to_xcvr_41(\reconfig_to_xcvr[41]~input_o ),
	.reconfig_to_xcvr_42(\reconfig_to_xcvr[42]~input_o ),
	.reconfig_to_xcvr_43(\reconfig_to_xcvr[43]~input_o ),
	.rx_set_locktoref_0(\rx_set_locktoref[0]~input_o ),
	.tx_analogreset_0(\tx_analogreset[0]~input_o ),
	.rx_serial_data_0(\rx_serial_data[0]~input_o ),
	.rx_cdr_refclk_0(\rx_cdr_refclk[0]~input_o ),
	.ext_pll_clk_0(\ext_pll_clk[0]~input_o ));

assign \rx_std_coreclkin[0]~input_o  = rx_std_coreclkin[0];

assign \rx_digitalreset[0]~input_o  = rx_digitalreset[0];

assign \rx_analogreset[0]~input_o  = rx_analogreset[0];

assign \rx_set_locktodata[0]~input_o  = rx_set_locktodata[0];

assign \tx_std_coreclkin[0]~input_o  = tx_std_coreclkin[0];

assign \tx_digitalreset[0]~input_o  = tx_digitalreset[0];

assign \tx_parallel_data[0]~input_o  = tx_parallel_data[0];

assign \tx_parallel_data[1]~input_o  = tx_parallel_data[1];

assign \tx_parallel_data[2]~input_o  = tx_parallel_data[2];

assign \tx_parallel_data[3]~input_o  = tx_parallel_data[3];

assign \tx_parallel_data[4]~input_o  = tx_parallel_data[4];

assign \tx_parallel_data[5]~input_o  = tx_parallel_data[5];

assign \tx_parallel_data[6]~input_o  = tx_parallel_data[6];

assign \tx_parallel_data[7]~input_o  = tx_parallel_data[7];

assign \tx_parallel_data[8]~input_o  = tx_parallel_data[8];

assign \tx_parallel_data[9]~input_o  = tx_parallel_data[9];

assign \tx_parallel_data[10]~input_o  = tx_parallel_data[10];

assign \tx_parallel_data[11]~input_o  = tx_parallel_data[11];

assign \tx_parallel_data[12]~input_o  = tx_parallel_data[12];

assign \tx_parallel_data[13]~input_o  = tx_parallel_data[13];

assign \tx_parallel_data[14]~input_o  = tx_parallel_data[14];

assign \tx_parallel_data[15]~input_o  = tx_parallel_data[15];

assign \tx_parallel_data[16]~input_o  = tx_parallel_data[16];

assign \tx_parallel_data[17]~input_o  = tx_parallel_data[17];

assign \tx_parallel_data[18]~input_o  = tx_parallel_data[18];

assign \tx_parallel_data[19]~input_o  = tx_parallel_data[19];

assign \tx_parallel_data[20]~input_o  = tx_parallel_data[20];

assign \tx_parallel_data[21]~input_o  = tx_parallel_data[21];

assign \tx_parallel_data[22]~input_o  = tx_parallel_data[22];

assign \tx_parallel_data[23]~input_o  = tx_parallel_data[23];

assign \tx_parallel_data[24]~input_o  = tx_parallel_data[24];

assign \tx_parallel_data[25]~input_o  = tx_parallel_data[25];

assign \tx_parallel_data[26]~input_o  = tx_parallel_data[26];

assign \tx_parallel_data[27]~input_o  = tx_parallel_data[27];

assign \tx_parallel_data[28]~input_o  = tx_parallel_data[28];

assign \tx_parallel_data[29]~input_o  = tx_parallel_data[29];

assign \tx_parallel_data[30]~input_o  = tx_parallel_data[30];

assign \tx_parallel_data[31]~input_o  = tx_parallel_data[31];

assign \tx_parallel_data[32]~input_o  = tx_parallel_data[32];

assign \tx_parallel_data[33]~input_o  = tx_parallel_data[33];

assign \tx_parallel_data[34]~input_o  = tx_parallel_data[34];

assign \tx_parallel_data[35]~input_o  = tx_parallel_data[35];

assign \tx_parallel_data[36]~input_o  = tx_parallel_data[36];

assign \tx_parallel_data[37]~input_o  = tx_parallel_data[37];

assign \tx_parallel_data[38]~input_o  = tx_parallel_data[38];

assign \tx_parallel_data[39]~input_o  = tx_parallel_data[39];

assign \tx_parallel_data[40]~input_o  = tx_parallel_data[40];

assign \tx_parallel_data[41]~input_o  = tx_parallel_data[41];

assign \tx_parallel_data[42]~input_o  = tx_parallel_data[42];

assign \tx_parallel_data[43]~input_o  = tx_parallel_data[43];

assign \reconfig_to_xcvr[31]~input_o  = reconfig_to_xcvr[31];

assign \reconfig_to_xcvr[0]~input_o  = reconfig_to_xcvr[0];

assign \reconfig_to_xcvr[1]~input_o  = reconfig_to_xcvr[1];

assign \reconfig_to_xcvr[22]~input_o  = reconfig_to_xcvr[22];

assign \reconfig_to_xcvr[20]~input_o  = reconfig_to_xcvr[20];

assign \reconfig_to_xcvr[19]~input_o  = reconfig_to_xcvr[19];

assign \reconfig_to_xcvr[21]~input_o  = reconfig_to_xcvr[21];

assign \reconfig_to_xcvr[23]~input_o  = reconfig_to_xcvr[23];

assign \reconfig_to_xcvr[18]~input_o  = reconfig_to_xcvr[18];

assign \reconfig_to_xcvr[45]~input_o  = reconfig_to_xcvr[45];

assign \reconfig_to_xcvr[44]~input_o  = reconfig_to_xcvr[44];

assign \reconfig_to_xcvr[24]~input_o  = reconfig_to_xcvr[24];

assign \reconfig_to_xcvr[25]~input_o  = reconfig_to_xcvr[25];

assign \reconfig_to_xcvr[26]~input_o  = reconfig_to_xcvr[26];

assign \reconfig_to_xcvr[27]~input_o  = reconfig_to_xcvr[27];

assign \reconfig_to_xcvr[28]~input_o  = reconfig_to_xcvr[28];

assign \reconfig_to_xcvr[29]~input_o  = reconfig_to_xcvr[29];

assign \reconfig_to_xcvr[30]~input_o  = reconfig_to_xcvr[30];

assign \reconfig_to_xcvr[2]~input_o  = reconfig_to_xcvr[2];

assign \reconfig_to_xcvr[3]~input_o  = reconfig_to_xcvr[3];

assign \reconfig_to_xcvr[4]~input_o  = reconfig_to_xcvr[4];

assign \reconfig_to_xcvr[5]~input_o  = reconfig_to_xcvr[5];

assign \reconfig_to_xcvr[6]~input_o  = reconfig_to_xcvr[6];

assign \reconfig_to_xcvr[7]~input_o  = reconfig_to_xcvr[7];

assign \reconfig_to_xcvr[8]~input_o  = reconfig_to_xcvr[8];

assign \reconfig_to_xcvr[9]~input_o  = reconfig_to_xcvr[9];

assign \reconfig_to_xcvr[10]~input_o  = reconfig_to_xcvr[10];

assign \reconfig_to_xcvr[11]~input_o  = reconfig_to_xcvr[11];

assign \reconfig_to_xcvr[12]~input_o  = reconfig_to_xcvr[12];

assign \reconfig_to_xcvr[13]~input_o  = reconfig_to_xcvr[13];

assign \reconfig_to_xcvr[14]~input_o  = reconfig_to_xcvr[14];

assign \reconfig_to_xcvr[15]~input_o  = reconfig_to_xcvr[15];

assign \reconfig_to_xcvr[16]~input_o  = reconfig_to_xcvr[16];

assign \reconfig_to_xcvr[17]~input_o  = reconfig_to_xcvr[17];

assign \reconfig_to_xcvr[32]~input_o  = reconfig_to_xcvr[32];

assign \reconfig_to_xcvr[33]~input_o  = reconfig_to_xcvr[33];

assign \reconfig_to_xcvr[34]~input_o  = reconfig_to_xcvr[34];

assign \reconfig_to_xcvr[35]~input_o  = reconfig_to_xcvr[35];

assign \reconfig_to_xcvr[36]~input_o  = reconfig_to_xcvr[36];

assign \reconfig_to_xcvr[37]~input_o  = reconfig_to_xcvr[37];

assign \reconfig_to_xcvr[38]~input_o  = reconfig_to_xcvr[38];

assign \reconfig_to_xcvr[39]~input_o  = reconfig_to_xcvr[39];

assign \reconfig_to_xcvr[40]~input_o  = reconfig_to_xcvr[40];

assign \reconfig_to_xcvr[41]~input_o  = reconfig_to_xcvr[41];

assign \reconfig_to_xcvr[42]~input_o  = reconfig_to_xcvr[42];

assign \reconfig_to_xcvr[43]~input_o  = reconfig_to_xcvr[43];

assign \rx_set_locktoref[0]~input_o  = rx_set_locktoref[0];

assign \tx_analogreset[0]~input_o  = tx_analogreset[0];

assign \rx_serial_data[0]~input_o  = rx_serial_data[0];

assign \rx_cdr_refclk[0]~input_o  = rx_cdr_refclk[0];

assign \ext_pll_clk[0]~input_o  = ext_pll_clk[0];

assign tx_serial_data[0] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|dataout ;

assign rx_pma_clkout[0] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pma|av_rx_pma|clkdivrx[0] ;

assign rx_is_lockedtoref[0] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pma|av_rx_pma|rx_is_lockedtoref[0] ;

assign rx_is_lockedtodata[0] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pma|av_rx_pma|rx_is_lockedtodata[0] ;

assign rx_parallel_data[0] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[0] ;

assign rx_parallel_data[1] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[1] ;

assign rx_parallel_data[2] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[2] ;

assign rx_parallel_data[3] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[3] ;

assign rx_parallel_data[4] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[4] ;

assign rx_parallel_data[5] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[5] ;

assign rx_parallel_data[6] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[6] ;

assign rx_parallel_data[7] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[7] ;

assign rx_parallel_data[8] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[8] ;

assign rx_parallel_data[9] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[9] ;

assign rx_parallel_data[10] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[10] ;

assign rx_parallel_data[11] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[11] ;

assign rx_parallel_data[12] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[12] ;

assign rx_parallel_data[13] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[13] ;

assign rx_parallel_data[14] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[14] ;

assign rx_parallel_data[15] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[15] ;

assign rx_parallel_data[16] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[16] ;

assign rx_parallel_data[17] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[17] ;

assign rx_parallel_data[18] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[18] ;

assign rx_parallel_data[19] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[19] ;

assign rx_parallel_data[20] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[20] ;

assign rx_parallel_data[21] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[21] ;

assign rx_parallel_data[22] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[22] ;

assign rx_parallel_data[23] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[23] ;

assign rx_parallel_data[24] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[24] ;

assign rx_parallel_data[25] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[25] ;

assign rx_parallel_data[26] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[26] ;

assign rx_parallel_data[27] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[27] ;

assign rx_parallel_data[28] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[28] ;

assign rx_parallel_data[29] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[29] ;

assign rx_parallel_data[30] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[30] ;

assign rx_parallel_data[31] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[31] ;

assign rx_parallel_data[32] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[32] ;

assign rx_parallel_data[33] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[33] ;

assign rx_parallel_data[34] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[34] ;

assign rx_parallel_data[35] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[35] ;

assign rx_parallel_data[36] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[36] ;

assign rx_parallel_data[37] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[37] ;

assign rx_parallel_data[38] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[38] ;

assign rx_parallel_data[39] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[39] ;

assign rx_parallel_data[40] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[40] ;

assign rx_parallel_data[41] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[41] ;

assign rx_parallel_data[42] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[42] ;

assign rx_parallel_data[43] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[43] ;

assign rx_parallel_data[44] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[44] ;

assign rx_parallel_data[45] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[45] ;

assign rx_parallel_data[46] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[46] ;

assign rx_parallel_data[47] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[47] ;

assign rx_parallel_data[48] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[48] ;

assign rx_parallel_data[49] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[49] ;

assign rx_parallel_data[50] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[50] ;

assign rx_parallel_data[51] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[51] ;

assign rx_parallel_data[52] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[52] ;

assign rx_parallel_data[53] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[53] ;

assign rx_parallel_data[54] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[54] ;

assign rx_parallel_data[55] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[55] ;

assign rx_parallel_data[56] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[56] ;

assign rx_parallel_data[57] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[57] ;

assign rx_parallel_data[58] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[58] ;

assign rx_parallel_data[59] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[59] ;

assign rx_parallel_data[60] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[60] ;

assign rx_parallel_data[61] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[61] ;

assign rx_parallel_data[62] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[62] ;

assign rx_parallel_data[63] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|dataouttopld[63] ;

assign tx_std_clkout[0] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|pld8gtxclkout ;

assign rx_std_clkout[0] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|pld8grxclkout ;

assign tx_std_pcfifo_full[0] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|pld8gfulltx ;

assign tx_std_pcfifo_empty[0] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|pld8gemptytx ;

assign rx_std_pcfifo_full[0] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|pld8gfullrx ;

assign rx_std_pcfifo_empty[0] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|pld8gemptyrx ;

assign tx_cal_busy[0] = \reconfig_to_xcvr[47]~input_o ;

assign rx_cal_busy[0] = \reconfig_to_xcvr[48]~input_o ;

assign reconfig_from_xcvr[0] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[0]~0_combout ;

assign reconfig_from_xcvr[1] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[1]~1_combout ;

assign reconfig_from_xcvr[2] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[2]~2_combout ;

assign reconfig_from_xcvr[3] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[3]~3_combout ;

assign reconfig_from_xcvr[4] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[4]~4_combout ;

assign reconfig_from_xcvr[5] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[5]~5_combout ;

assign reconfig_from_xcvr[6] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[6]~6_combout ;

assign reconfig_from_xcvr[7] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[7]~7_combout ;

assign reconfig_from_xcvr[8] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[8]~8_combout ;

assign reconfig_from_xcvr[9] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[9]~9_combout ;

assign reconfig_from_xcvr[10] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[10]~10_combout ;

assign reconfig_from_xcvr[11] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[11]~11_combout ;

assign reconfig_from_xcvr[12] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[12]~12_combout ;

assign reconfig_from_xcvr[13] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[13]~13_combout ;

assign reconfig_from_xcvr[14] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[14]~14_combout ;

assign reconfig_from_xcvr[15] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].pld_avmm_readdata[15]~15_combout ;

assign reconfig_from_xcvr[16] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[0] ;

assign reconfig_from_xcvr[17] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[1] ;

assign reconfig_from_xcvr[18] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[2] ;

assign reconfig_from_xcvr[19] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[3] ;

assign reconfig_from_xcvr[20] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[4] ;

assign reconfig_from_xcvr[21] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[5] ;

assign reconfig_from_xcvr[22] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[6] ;

assign reconfig_from_xcvr[23] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[7] ;

assign reconfig_from_xcvr[24] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[8] ;

assign reconfig_from_xcvr[25] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[9] ;

assign reconfig_from_xcvr[26] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[10] ;

assign reconfig_from_xcvr[27] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[11] ;

assign reconfig_from_xcvr[28] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[12] ;

assign reconfig_from_xcvr[29] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[13] ;

assign reconfig_from_xcvr[30] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[14] ;

assign reconfig_from_xcvr[31] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[15] ;

assign reconfig_from_xcvr[32] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[16] ;

assign reconfig_from_xcvr[33] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[17] ;

assign reconfig_from_xcvr[34] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[18] ;

assign reconfig_from_xcvr[35] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[19] ;

assign reconfig_from_xcvr[36] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[20] ;

assign reconfig_from_xcvr[37] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[21] ;

assign reconfig_from_xcvr[38] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[22] ;

assign reconfig_from_xcvr[39] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_xcvr_avmm|avmm_interface_insts[0].w_pmatestbus[23] ;

assign reconfig_from_xcvr[40] = \native_transceiver_ip_inst|gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst|inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|atb_comp_out ;

assign reconfig_from_xcvr[41] = gnd;

assign reconfig_from_xcvr[42] = gnd;

assign reconfig_from_xcvr[43] = gnd;

assign reconfig_from_xcvr[44] = gnd;

assign reconfig_from_xcvr[45] = gnd;

assign \reconfig_to_xcvr[47]~input_o  = reconfig_to_xcvr[47];

assign \reconfig_to_xcvr[48]~input_o  = reconfig_to_xcvr[48];

assign \pll_powerdown[0]~input_o  = pll_powerdown[0];

assign \reconfig_to_xcvr[46]~input_o  = reconfig_to_xcvr[46];

assign \reconfig_to_xcvr[49]~input_o  = reconfig_to_xcvr[49];

assign \reconfig_to_xcvr[50]~input_o  = reconfig_to_xcvr[50];

assign \reconfig_to_xcvr[51]~input_o  = reconfig_to_xcvr[51];

assign \reconfig_to_xcvr[52]~input_o  = reconfig_to_xcvr[52];

assign \reconfig_to_xcvr[53]~input_o  = reconfig_to_xcvr[53];

assign \reconfig_to_xcvr[54]~input_o  = reconfig_to_xcvr[54];

assign \reconfig_to_xcvr[55]~input_o  = reconfig_to_xcvr[55];

assign \reconfig_to_xcvr[56]~input_o  = reconfig_to_xcvr[56];

assign \reconfig_to_xcvr[57]~input_o  = reconfig_to_xcvr[57];

assign \reconfig_to_xcvr[58]~input_o  = reconfig_to_xcvr[58];

assign \reconfig_to_xcvr[59]~input_o  = reconfig_to_xcvr[59];

assign \reconfig_to_xcvr[60]~input_o  = reconfig_to_xcvr[60];

assign \reconfig_to_xcvr[61]~input_o  = reconfig_to_xcvr[61];

assign \reconfig_to_xcvr[62]~input_o  = reconfig_to_xcvr[62];

assign \reconfig_to_xcvr[63]~input_o  = reconfig_to_xcvr[63];

assign \reconfig_to_xcvr[64]~input_o  = reconfig_to_xcvr[64];

assign \reconfig_to_xcvr[65]~input_o  = reconfig_to_xcvr[65];

assign \reconfig_to_xcvr[66]~input_o  = reconfig_to_xcvr[66];

assign \reconfig_to_xcvr[67]~input_o  = reconfig_to_xcvr[67];

assign \reconfig_to_xcvr[68]~input_o  = reconfig_to_xcvr[68];

assign \reconfig_to_xcvr[69]~input_o  = reconfig_to_xcvr[69];

endmodule

module NATIVE_TRANSCEIVER_IP_altera_xcvr_native_av (
	pld8gemptyrx,
	pld8gfullrx,
	pld8grxclkout,
	dataouttopld_0,
	dataouttopld_1,
	dataouttopld_2,
	dataouttopld_3,
	dataouttopld_4,
	dataouttopld_5,
	dataouttopld_6,
	dataouttopld_7,
	dataouttopld_8,
	dataouttopld_9,
	dataouttopld_10,
	dataouttopld_11,
	dataouttopld_12,
	dataouttopld_13,
	dataouttopld_14,
	dataouttopld_15,
	dataouttopld_16,
	dataouttopld_17,
	dataouttopld_18,
	dataouttopld_19,
	dataouttopld_20,
	dataouttopld_21,
	dataouttopld_22,
	dataouttopld_23,
	dataouttopld_24,
	dataouttopld_25,
	dataouttopld_26,
	dataouttopld_27,
	dataouttopld_28,
	dataouttopld_29,
	dataouttopld_30,
	dataouttopld_31,
	dataouttopld_32,
	dataouttopld_33,
	dataouttopld_34,
	dataouttopld_35,
	dataouttopld_36,
	dataouttopld_37,
	dataouttopld_38,
	dataouttopld_39,
	dataouttopld_40,
	dataouttopld_41,
	dataouttopld_42,
	dataouttopld_43,
	dataouttopld_44,
	dataouttopld_45,
	dataouttopld_46,
	dataouttopld_47,
	dataouttopld_48,
	dataouttopld_49,
	dataouttopld_50,
	dataouttopld_51,
	dataouttopld_52,
	dataouttopld_53,
	dataouttopld_54,
	dataouttopld_55,
	dataouttopld_56,
	dataouttopld_57,
	dataouttopld_58,
	dataouttopld_59,
	dataouttopld_60,
	dataouttopld_61,
	dataouttopld_62,
	dataouttopld_63,
	dataout,
	clkdivrx_0,
	rx_is_lockedtoref_0,
	rx_is_lockedtodata_0,
	pld8gemptytx,
	pld8gfulltx,
	pld8gtxclkout,
	avmm_interface_insts0w_pmatestbus_0,
	avmm_interface_insts0w_pmatestbus_1,
	avmm_interface_insts0w_pmatestbus_2,
	avmm_interface_insts0w_pmatestbus_3,
	avmm_interface_insts0w_pmatestbus_4,
	avmm_interface_insts0w_pmatestbus_5,
	avmm_interface_insts0w_pmatestbus_6,
	avmm_interface_insts0w_pmatestbus_7,
	avmm_interface_insts0w_pmatestbus_8,
	avmm_interface_insts0w_pmatestbus_9,
	avmm_interface_insts0w_pmatestbus_10,
	avmm_interface_insts0w_pmatestbus_11,
	avmm_interface_insts0w_pmatestbus_12,
	avmm_interface_insts0w_pmatestbus_13,
	avmm_interface_insts0w_pmatestbus_14,
	avmm_interface_insts0w_pmatestbus_15,
	avmm_interface_insts0w_pmatestbus_16,
	avmm_interface_insts0w_pmatestbus_17,
	avmm_interface_insts0w_pmatestbus_18,
	avmm_interface_insts0w_pmatestbus_19,
	avmm_interface_insts0w_pmatestbus_20,
	avmm_interface_insts0w_pmatestbus_21,
	avmm_interface_insts0w_pmatestbus_22,
	avmm_interface_insts0w_pmatestbus_23,
	atb_comp_out,
	avmm_interface_insts0pld_avmm_readdata_0,
	avmm_interface_insts0pld_avmm_readdata_1,
	avmm_interface_insts0pld_avmm_readdata_2,
	avmm_interface_insts0pld_avmm_readdata_3,
	avmm_interface_insts0pld_avmm_readdata_4,
	avmm_interface_insts0pld_avmm_readdata_5,
	avmm_interface_insts0pld_avmm_readdata_6,
	avmm_interface_insts0pld_avmm_readdata_7,
	avmm_interface_insts0pld_avmm_readdata_8,
	avmm_interface_insts0pld_avmm_readdata_9,
	avmm_interface_insts0pld_avmm_readdata_10,
	avmm_interface_insts0pld_avmm_readdata_11,
	avmm_interface_insts0pld_avmm_readdata_12,
	avmm_interface_insts0pld_avmm_readdata_13,
	avmm_interface_insts0pld_avmm_readdata_14,
	avmm_interface_insts0pld_avmm_readdata_15,
	rx_std_coreclkin_0,
	rx_digitalreset_0,
	rx_analogreset_0,
	rx_set_locktodata_0,
	tx_std_coreclkin_0,
	tx_digitalreset_0,
	tx_parallel_data_0,
	tx_parallel_data_1,
	tx_parallel_data_2,
	tx_parallel_data_3,
	tx_parallel_data_4,
	tx_parallel_data_5,
	tx_parallel_data_6,
	tx_parallel_data_7,
	tx_parallel_data_8,
	tx_parallel_data_9,
	tx_parallel_data_10,
	tx_parallel_data_11,
	tx_parallel_data_12,
	tx_parallel_data_13,
	tx_parallel_data_14,
	tx_parallel_data_15,
	tx_parallel_data_16,
	tx_parallel_data_17,
	tx_parallel_data_18,
	tx_parallel_data_19,
	tx_parallel_data_20,
	tx_parallel_data_21,
	tx_parallel_data_22,
	tx_parallel_data_23,
	tx_parallel_data_24,
	tx_parallel_data_25,
	tx_parallel_data_26,
	tx_parallel_data_27,
	tx_parallel_data_28,
	tx_parallel_data_29,
	tx_parallel_data_30,
	tx_parallel_data_31,
	tx_parallel_data_32,
	tx_parallel_data_33,
	tx_parallel_data_34,
	tx_parallel_data_35,
	tx_parallel_data_36,
	tx_parallel_data_37,
	tx_parallel_data_38,
	tx_parallel_data_39,
	tx_parallel_data_40,
	tx_parallel_data_41,
	tx_parallel_data_42,
	tx_parallel_data_43,
	reconfig_to_xcvr_31,
	reconfig_to_xcvr_0,
	reconfig_to_xcvr_1,
	reconfig_to_xcvr_22,
	reconfig_to_xcvr_20,
	reconfig_to_xcvr_19,
	reconfig_to_xcvr_21,
	reconfig_to_xcvr_23,
	reconfig_to_xcvr_18,
	reconfig_to_xcvr_45,
	reconfig_to_xcvr_44,
	reconfig_to_xcvr_24,
	reconfig_to_xcvr_25,
	reconfig_to_xcvr_26,
	reconfig_to_xcvr_27,
	reconfig_to_xcvr_28,
	reconfig_to_xcvr_29,
	reconfig_to_xcvr_30,
	reconfig_to_xcvr_2,
	reconfig_to_xcvr_3,
	reconfig_to_xcvr_4,
	reconfig_to_xcvr_5,
	reconfig_to_xcvr_6,
	reconfig_to_xcvr_7,
	reconfig_to_xcvr_8,
	reconfig_to_xcvr_9,
	reconfig_to_xcvr_10,
	reconfig_to_xcvr_11,
	reconfig_to_xcvr_12,
	reconfig_to_xcvr_13,
	reconfig_to_xcvr_14,
	reconfig_to_xcvr_15,
	reconfig_to_xcvr_16,
	reconfig_to_xcvr_17,
	reconfig_to_xcvr_32,
	reconfig_to_xcvr_33,
	reconfig_to_xcvr_34,
	reconfig_to_xcvr_35,
	reconfig_to_xcvr_36,
	reconfig_to_xcvr_37,
	reconfig_to_xcvr_38,
	reconfig_to_xcvr_39,
	reconfig_to_xcvr_40,
	reconfig_to_xcvr_41,
	reconfig_to_xcvr_42,
	reconfig_to_xcvr_43,
	rx_set_locktoref_0,
	tx_analogreset_0,
	rx_serial_data_0,
	rx_cdr_refclk_0,
	ext_pll_clk_0)/* synthesis synthesis_greybox=0 */;
output 	pld8gemptyrx;
output 	pld8gfullrx;
output 	pld8grxclkout;
output 	dataouttopld_0;
output 	dataouttopld_1;
output 	dataouttopld_2;
output 	dataouttopld_3;
output 	dataouttopld_4;
output 	dataouttopld_5;
output 	dataouttopld_6;
output 	dataouttopld_7;
output 	dataouttopld_8;
output 	dataouttopld_9;
output 	dataouttopld_10;
output 	dataouttopld_11;
output 	dataouttopld_12;
output 	dataouttopld_13;
output 	dataouttopld_14;
output 	dataouttopld_15;
output 	dataouttopld_16;
output 	dataouttopld_17;
output 	dataouttopld_18;
output 	dataouttopld_19;
output 	dataouttopld_20;
output 	dataouttopld_21;
output 	dataouttopld_22;
output 	dataouttopld_23;
output 	dataouttopld_24;
output 	dataouttopld_25;
output 	dataouttopld_26;
output 	dataouttopld_27;
output 	dataouttopld_28;
output 	dataouttopld_29;
output 	dataouttopld_30;
output 	dataouttopld_31;
output 	dataouttopld_32;
output 	dataouttopld_33;
output 	dataouttopld_34;
output 	dataouttopld_35;
output 	dataouttopld_36;
output 	dataouttopld_37;
output 	dataouttopld_38;
output 	dataouttopld_39;
output 	dataouttopld_40;
output 	dataouttopld_41;
output 	dataouttopld_42;
output 	dataouttopld_43;
output 	dataouttopld_44;
output 	dataouttopld_45;
output 	dataouttopld_46;
output 	dataouttopld_47;
output 	dataouttopld_48;
output 	dataouttopld_49;
output 	dataouttopld_50;
output 	dataouttopld_51;
output 	dataouttopld_52;
output 	dataouttopld_53;
output 	dataouttopld_54;
output 	dataouttopld_55;
output 	dataouttopld_56;
output 	dataouttopld_57;
output 	dataouttopld_58;
output 	dataouttopld_59;
output 	dataouttopld_60;
output 	dataouttopld_61;
output 	dataouttopld_62;
output 	dataouttopld_63;
output 	dataout;
output 	clkdivrx_0;
output 	rx_is_lockedtoref_0;
output 	rx_is_lockedtodata_0;
output 	pld8gemptytx;
output 	pld8gfulltx;
output 	pld8gtxclkout;
output 	avmm_interface_insts0w_pmatestbus_0;
output 	avmm_interface_insts0w_pmatestbus_1;
output 	avmm_interface_insts0w_pmatestbus_2;
output 	avmm_interface_insts0w_pmatestbus_3;
output 	avmm_interface_insts0w_pmatestbus_4;
output 	avmm_interface_insts0w_pmatestbus_5;
output 	avmm_interface_insts0w_pmatestbus_6;
output 	avmm_interface_insts0w_pmatestbus_7;
output 	avmm_interface_insts0w_pmatestbus_8;
output 	avmm_interface_insts0w_pmatestbus_9;
output 	avmm_interface_insts0w_pmatestbus_10;
output 	avmm_interface_insts0w_pmatestbus_11;
output 	avmm_interface_insts0w_pmatestbus_12;
output 	avmm_interface_insts0w_pmatestbus_13;
output 	avmm_interface_insts0w_pmatestbus_14;
output 	avmm_interface_insts0w_pmatestbus_15;
output 	avmm_interface_insts0w_pmatestbus_16;
output 	avmm_interface_insts0w_pmatestbus_17;
output 	avmm_interface_insts0w_pmatestbus_18;
output 	avmm_interface_insts0w_pmatestbus_19;
output 	avmm_interface_insts0w_pmatestbus_20;
output 	avmm_interface_insts0w_pmatestbus_21;
output 	avmm_interface_insts0w_pmatestbus_22;
output 	avmm_interface_insts0w_pmatestbus_23;
output 	atb_comp_out;
output 	avmm_interface_insts0pld_avmm_readdata_0;
output 	avmm_interface_insts0pld_avmm_readdata_1;
output 	avmm_interface_insts0pld_avmm_readdata_2;
output 	avmm_interface_insts0pld_avmm_readdata_3;
output 	avmm_interface_insts0pld_avmm_readdata_4;
output 	avmm_interface_insts0pld_avmm_readdata_5;
output 	avmm_interface_insts0pld_avmm_readdata_6;
output 	avmm_interface_insts0pld_avmm_readdata_7;
output 	avmm_interface_insts0pld_avmm_readdata_8;
output 	avmm_interface_insts0pld_avmm_readdata_9;
output 	avmm_interface_insts0pld_avmm_readdata_10;
output 	avmm_interface_insts0pld_avmm_readdata_11;
output 	avmm_interface_insts0pld_avmm_readdata_12;
output 	avmm_interface_insts0pld_avmm_readdata_13;
output 	avmm_interface_insts0pld_avmm_readdata_14;
output 	avmm_interface_insts0pld_avmm_readdata_15;
input 	rx_std_coreclkin_0;
input 	rx_digitalreset_0;
input 	rx_analogreset_0;
input 	rx_set_locktodata_0;
input 	tx_std_coreclkin_0;
input 	tx_digitalreset_0;
input 	tx_parallel_data_0;
input 	tx_parallel_data_1;
input 	tx_parallel_data_2;
input 	tx_parallel_data_3;
input 	tx_parallel_data_4;
input 	tx_parallel_data_5;
input 	tx_parallel_data_6;
input 	tx_parallel_data_7;
input 	tx_parallel_data_8;
input 	tx_parallel_data_9;
input 	tx_parallel_data_10;
input 	tx_parallel_data_11;
input 	tx_parallel_data_12;
input 	tx_parallel_data_13;
input 	tx_parallel_data_14;
input 	tx_parallel_data_15;
input 	tx_parallel_data_16;
input 	tx_parallel_data_17;
input 	tx_parallel_data_18;
input 	tx_parallel_data_19;
input 	tx_parallel_data_20;
input 	tx_parallel_data_21;
input 	tx_parallel_data_22;
input 	tx_parallel_data_23;
input 	tx_parallel_data_24;
input 	tx_parallel_data_25;
input 	tx_parallel_data_26;
input 	tx_parallel_data_27;
input 	tx_parallel_data_28;
input 	tx_parallel_data_29;
input 	tx_parallel_data_30;
input 	tx_parallel_data_31;
input 	tx_parallel_data_32;
input 	tx_parallel_data_33;
input 	tx_parallel_data_34;
input 	tx_parallel_data_35;
input 	tx_parallel_data_36;
input 	tx_parallel_data_37;
input 	tx_parallel_data_38;
input 	tx_parallel_data_39;
input 	tx_parallel_data_40;
input 	tx_parallel_data_41;
input 	tx_parallel_data_42;
input 	tx_parallel_data_43;
input 	reconfig_to_xcvr_31;
input 	reconfig_to_xcvr_0;
input 	reconfig_to_xcvr_1;
input 	reconfig_to_xcvr_22;
input 	reconfig_to_xcvr_20;
input 	reconfig_to_xcvr_19;
input 	reconfig_to_xcvr_21;
input 	reconfig_to_xcvr_23;
input 	reconfig_to_xcvr_18;
input 	reconfig_to_xcvr_45;
input 	reconfig_to_xcvr_44;
input 	reconfig_to_xcvr_24;
input 	reconfig_to_xcvr_25;
input 	reconfig_to_xcvr_26;
input 	reconfig_to_xcvr_27;
input 	reconfig_to_xcvr_28;
input 	reconfig_to_xcvr_29;
input 	reconfig_to_xcvr_30;
input 	reconfig_to_xcvr_2;
input 	reconfig_to_xcvr_3;
input 	reconfig_to_xcvr_4;
input 	reconfig_to_xcvr_5;
input 	reconfig_to_xcvr_6;
input 	reconfig_to_xcvr_7;
input 	reconfig_to_xcvr_8;
input 	reconfig_to_xcvr_9;
input 	reconfig_to_xcvr_10;
input 	reconfig_to_xcvr_11;
input 	reconfig_to_xcvr_12;
input 	reconfig_to_xcvr_13;
input 	reconfig_to_xcvr_14;
input 	reconfig_to_xcvr_15;
input 	reconfig_to_xcvr_16;
input 	reconfig_to_xcvr_17;
input 	reconfig_to_xcvr_32;
input 	reconfig_to_xcvr_33;
input 	reconfig_to_xcvr_34;
input 	reconfig_to_xcvr_35;
input 	reconfig_to_xcvr_36;
input 	reconfig_to_xcvr_37;
input 	reconfig_to_xcvr_38;
input 	reconfig_to_xcvr_39;
input 	reconfig_to_xcvr_40;
input 	reconfig_to_xcvr_41;
input 	reconfig_to_xcvr_42;
input 	reconfig_to_xcvr_43;
input 	rx_set_locktoref_0;
input 	tx_analogreset_0;
input 	rx_serial_data_0;
input 	rx_cdr_refclk_0;
input 	ext_pll_clk_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



NATIVE_TRANSCEIVER_IP_av_xcvr_native \gen_native_inst.av_xcvr_native_insts[0].gen_bonded_group_native.av_xcvr_native_inst (
	.pld8gemptyrx(pld8gemptyrx),
	.pld8gfullrx(pld8gfullrx),
	.pld8grxclkout(pld8grxclkout),
	.dataouttopld_0(dataouttopld_0),
	.dataouttopld_1(dataouttopld_1),
	.dataouttopld_2(dataouttopld_2),
	.dataouttopld_3(dataouttopld_3),
	.dataouttopld_4(dataouttopld_4),
	.dataouttopld_5(dataouttopld_5),
	.dataouttopld_6(dataouttopld_6),
	.dataouttopld_7(dataouttopld_7),
	.dataouttopld_8(dataouttopld_8),
	.dataouttopld_9(dataouttopld_9),
	.dataouttopld_10(dataouttopld_10),
	.dataouttopld_11(dataouttopld_11),
	.dataouttopld_12(dataouttopld_12),
	.dataouttopld_13(dataouttopld_13),
	.dataouttopld_14(dataouttopld_14),
	.dataouttopld_15(dataouttopld_15),
	.dataouttopld_16(dataouttopld_16),
	.dataouttopld_17(dataouttopld_17),
	.dataouttopld_18(dataouttopld_18),
	.dataouttopld_19(dataouttopld_19),
	.dataouttopld_20(dataouttopld_20),
	.dataouttopld_21(dataouttopld_21),
	.dataouttopld_22(dataouttopld_22),
	.dataouttopld_23(dataouttopld_23),
	.dataouttopld_24(dataouttopld_24),
	.dataouttopld_25(dataouttopld_25),
	.dataouttopld_26(dataouttopld_26),
	.dataouttopld_27(dataouttopld_27),
	.dataouttopld_28(dataouttopld_28),
	.dataouttopld_29(dataouttopld_29),
	.dataouttopld_30(dataouttopld_30),
	.dataouttopld_31(dataouttopld_31),
	.dataouttopld_32(dataouttopld_32),
	.dataouttopld_33(dataouttopld_33),
	.dataouttopld_34(dataouttopld_34),
	.dataouttopld_35(dataouttopld_35),
	.dataouttopld_36(dataouttopld_36),
	.dataouttopld_37(dataouttopld_37),
	.dataouttopld_38(dataouttopld_38),
	.dataouttopld_39(dataouttopld_39),
	.dataouttopld_40(dataouttopld_40),
	.dataouttopld_41(dataouttopld_41),
	.dataouttopld_42(dataouttopld_42),
	.dataouttopld_43(dataouttopld_43),
	.dataouttopld_44(dataouttopld_44),
	.dataouttopld_45(dataouttopld_45),
	.dataouttopld_46(dataouttopld_46),
	.dataouttopld_47(dataouttopld_47),
	.dataouttopld_48(dataouttopld_48),
	.dataouttopld_49(dataouttopld_49),
	.dataouttopld_50(dataouttopld_50),
	.dataouttopld_51(dataouttopld_51),
	.dataouttopld_52(dataouttopld_52),
	.dataouttopld_53(dataouttopld_53),
	.dataouttopld_54(dataouttopld_54),
	.dataouttopld_55(dataouttopld_55),
	.dataouttopld_56(dataouttopld_56),
	.dataouttopld_57(dataouttopld_57),
	.dataouttopld_58(dataouttopld_58),
	.dataouttopld_59(dataouttopld_59),
	.dataouttopld_60(dataouttopld_60),
	.dataouttopld_61(dataouttopld_61),
	.dataouttopld_62(dataouttopld_62),
	.dataouttopld_63(dataouttopld_63),
	.dataout(dataout),
	.clkdivrx_0(clkdivrx_0),
	.rx_is_lockedtoref_0(rx_is_lockedtoref_0),
	.rx_is_lockedtodata_0(rx_is_lockedtodata_0),
	.pld8gemptytx(pld8gemptytx),
	.pld8gfulltx(pld8gfulltx),
	.pld8gtxclkout(pld8gtxclkout),
	.avmm_interface_insts0w_pmatestbus_0(avmm_interface_insts0w_pmatestbus_0),
	.avmm_interface_insts0w_pmatestbus_1(avmm_interface_insts0w_pmatestbus_1),
	.avmm_interface_insts0w_pmatestbus_2(avmm_interface_insts0w_pmatestbus_2),
	.avmm_interface_insts0w_pmatestbus_3(avmm_interface_insts0w_pmatestbus_3),
	.avmm_interface_insts0w_pmatestbus_4(avmm_interface_insts0w_pmatestbus_4),
	.avmm_interface_insts0w_pmatestbus_5(avmm_interface_insts0w_pmatestbus_5),
	.avmm_interface_insts0w_pmatestbus_6(avmm_interface_insts0w_pmatestbus_6),
	.avmm_interface_insts0w_pmatestbus_7(avmm_interface_insts0w_pmatestbus_7),
	.avmm_interface_insts0w_pmatestbus_8(avmm_interface_insts0w_pmatestbus_8),
	.avmm_interface_insts0w_pmatestbus_9(avmm_interface_insts0w_pmatestbus_9),
	.avmm_interface_insts0w_pmatestbus_10(avmm_interface_insts0w_pmatestbus_10),
	.avmm_interface_insts0w_pmatestbus_11(avmm_interface_insts0w_pmatestbus_11),
	.avmm_interface_insts0w_pmatestbus_12(avmm_interface_insts0w_pmatestbus_12),
	.avmm_interface_insts0w_pmatestbus_13(avmm_interface_insts0w_pmatestbus_13),
	.avmm_interface_insts0w_pmatestbus_14(avmm_interface_insts0w_pmatestbus_14),
	.avmm_interface_insts0w_pmatestbus_15(avmm_interface_insts0w_pmatestbus_15),
	.avmm_interface_insts0w_pmatestbus_16(avmm_interface_insts0w_pmatestbus_16),
	.avmm_interface_insts0w_pmatestbus_17(avmm_interface_insts0w_pmatestbus_17),
	.avmm_interface_insts0w_pmatestbus_18(avmm_interface_insts0w_pmatestbus_18),
	.avmm_interface_insts0w_pmatestbus_19(avmm_interface_insts0w_pmatestbus_19),
	.avmm_interface_insts0w_pmatestbus_20(avmm_interface_insts0w_pmatestbus_20),
	.avmm_interface_insts0w_pmatestbus_21(avmm_interface_insts0w_pmatestbus_21),
	.avmm_interface_insts0w_pmatestbus_22(avmm_interface_insts0w_pmatestbus_22),
	.avmm_interface_insts0w_pmatestbus_23(avmm_interface_insts0w_pmatestbus_23),
	.atb_comp_out(atb_comp_out),
	.avmm_interface_insts0pld_avmm_readdata_0(avmm_interface_insts0pld_avmm_readdata_0),
	.avmm_interface_insts0pld_avmm_readdata_1(avmm_interface_insts0pld_avmm_readdata_1),
	.avmm_interface_insts0pld_avmm_readdata_2(avmm_interface_insts0pld_avmm_readdata_2),
	.avmm_interface_insts0pld_avmm_readdata_3(avmm_interface_insts0pld_avmm_readdata_3),
	.avmm_interface_insts0pld_avmm_readdata_4(avmm_interface_insts0pld_avmm_readdata_4),
	.avmm_interface_insts0pld_avmm_readdata_5(avmm_interface_insts0pld_avmm_readdata_5),
	.avmm_interface_insts0pld_avmm_readdata_6(avmm_interface_insts0pld_avmm_readdata_6),
	.avmm_interface_insts0pld_avmm_readdata_7(avmm_interface_insts0pld_avmm_readdata_7),
	.avmm_interface_insts0pld_avmm_readdata_8(avmm_interface_insts0pld_avmm_readdata_8),
	.avmm_interface_insts0pld_avmm_readdata_9(avmm_interface_insts0pld_avmm_readdata_9),
	.avmm_interface_insts0pld_avmm_readdata_10(avmm_interface_insts0pld_avmm_readdata_10),
	.avmm_interface_insts0pld_avmm_readdata_11(avmm_interface_insts0pld_avmm_readdata_11),
	.avmm_interface_insts0pld_avmm_readdata_12(avmm_interface_insts0pld_avmm_readdata_12),
	.avmm_interface_insts0pld_avmm_readdata_13(avmm_interface_insts0pld_avmm_readdata_13),
	.avmm_interface_insts0pld_avmm_readdata_14(avmm_interface_insts0pld_avmm_readdata_14),
	.avmm_interface_insts0pld_avmm_readdata_15(avmm_interface_insts0pld_avmm_readdata_15),
	.rx_std_coreclkin_0(rx_std_coreclkin_0),
	.rx_digitalreset_0(rx_digitalreset_0),
	.rx_analogreset_0(rx_analogreset_0),
	.rx_set_locktodata_0(rx_set_locktodata_0),
	.tx_std_coreclkin_0(tx_std_coreclkin_0),
	.tx_digitalreset_0(tx_digitalreset_0),
	.tx_parallel_data_0(tx_parallel_data_0),
	.tx_parallel_data_1(tx_parallel_data_1),
	.tx_parallel_data_2(tx_parallel_data_2),
	.tx_parallel_data_3(tx_parallel_data_3),
	.tx_parallel_data_4(tx_parallel_data_4),
	.tx_parallel_data_5(tx_parallel_data_5),
	.tx_parallel_data_6(tx_parallel_data_6),
	.tx_parallel_data_7(tx_parallel_data_7),
	.tx_parallel_data_8(tx_parallel_data_8),
	.tx_parallel_data_9(tx_parallel_data_9),
	.tx_parallel_data_10(tx_parallel_data_10),
	.tx_parallel_data_11(tx_parallel_data_11),
	.tx_parallel_data_12(tx_parallel_data_12),
	.tx_parallel_data_13(tx_parallel_data_13),
	.tx_parallel_data_14(tx_parallel_data_14),
	.tx_parallel_data_15(tx_parallel_data_15),
	.tx_parallel_data_16(tx_parallel_data_16),
	.tx_parallel_data_17(tx_parallel_data_17),
	.tx_parallel_data_18(tx_parallel_data_18),
	.tx_parallel_data_19(tx_parallel_data_19),
	.tx_parallel_data_20(tx_parallel_data_20),
	.tx_parallel_data_21(tx_parallel_data_21),
	.tx_parallel_data_22(tx_parallel_data_22),
	.tx_parallel_data_23(tx_parallel_data_23),
	.tx_parallel_data_24(tx_parallel_data_24),
	.tx_parallel_data_25(tx_parallel_data_25),
	.tx_parallel_data_26(tx_parallel_data_26),
	.tx_parallel_data_27(tx_parallel_data_27),
	.tx_parallel_data_28(tx_parallel_data_28),
	.tx_parallel_data_29(tx_parallel_data_29),
	.tx_parallel_data_30(tx_parallel_data_30),
	.tx_parallel_data_31(tx_parallel_data_31),
	.tx_parallel_data_32(tx_parallel_data_32),
	.tx_parallel_data_33(tx_parallel_data_33),
	.tx_parallel_data_34(tx_parallel_data_34),
	.tx_parallel_data_35(tx_parallel_data_35),
	.tx_parallel_data_36(tx_parallel_data_36),
	.tx_parallel_data_37(tx_parallel_data_37),
	.tx_parallel_data_38(tx_parallel_data_38),
	.tx_parallel_data_39(tx_parallel_data_39),
	.tx_parallel_data_40(tx_parallel_data_40),
	.tx_parallel_data_41(tx_parallel_data_41),
	.tx_parallel_data_42(tx_parallel_data_42),
	.tx_parallel_data_43(tx_parallel_data_43),
	.reconfig_to_xcvr_31(reconfig_to_xcvr_31),
	.reconfig_to_xcvr_0(reconfig_to_xcvr_0),
	.reconfig_to_xcvr_1(reconfig_to_xcvr_1),
	.reconfig_to_xcvr_22(reconfig_to_xcvr_22),
	.reconfig_to_xcvr_20(reconfig_to_xcvr_20),
	.reconfig_to_xcvr_19(reconfig_to_xcvr_19),
	.reconfig_to_xcvr_21(reconfig_to_xcvr_21),
	.reconfig_to_xcvr_23(reconfig_to_xcvr_23),
	.reconfig_to_xcvr_18(reconfig_to_xcvr_18),
	.reconfig_to_xcvr_45(reconfig_to_xcvr_45),
	.reconfig_to_xcvr_44(reconfig_to_xcvr_44),
	.reconfig_to_xcvr_24(reconfig_to_xcvr_24),
	.reconfig_to_xcvr_25(reconfig_to_xcvr_25),
	.reconfig_to_xcvr_26(reconfig_to_xcvr_26),
	.reconfig_to_xcvr_27(reconfig_to_xcvr_27),
	.reconfig_to_xcvr_28(reconfig_to_xcvr_28),
	.reconfig_to_xcvr_29(reconfig_to_xcvr_29),
	.reconfig_to_xcvr_30(reconfig_to_xcvr_30),
	.reconfig_to_xcvr_2(reconfig_to_xcvr_2),
	.reconfig_to_xcvr_3(reconfig_to_xcvr_3),
	.reconfig_to_xcvr_4(reconfig_to_xcvr_4),
	.reconfig_to_xcvr_5(reconfig_to_xcvr_5),
	.reconfig_to_xcvr_6(reconfig_to_xcvr_6),
	.reconfig_to_xcvr_7(reconfig_to_xcvr_7),
	.reconfig_to_xcvr_8(reconfig_to_xcvr_8),
	.reconfig_to_xcvr_9(reconfig_to_xcvr_9),
	.reconfig_to_xcvr_10(reconfig_to_xcvr_10),
	.reconfig_to_xcvr_11(reconfig_to_xcvr_11),
	.reconfig_to_xcvr_12(reconfig_to_xcvr_12),
	.reconfig_to_xcvr_13(reconfig_to_xcvr_13),
	.reconfig_to_xcvr_14(reconfig_to_xcvr_14),
	.reconfig_to_xcvr_15(reconfig_to_xcvr_15),
	.reconfig_to_xcvr_16(reconfig_to_xcvr_16),
	.reconfig_to_xcvr_17(reconfig_to_xcvr_17),
	.reconfig_to_xcvr_32(reconfig_to_xcvr_32),
	.reconfig_to_xcvr_33(reconfig_to_xcvr_33),
	.reconfig_to_xcvr_34(reconfig_to_xcvr_34),
	.reconfig_to_xcvr_35(reconfig_to_xcvr_35),
	.reconfig_to_xcvr_36(reconfig_to_xcvr_36),
	.reconfig_to_xcvr_37(reconfig_to_xcvr_37),
	.reconfig_to_xcvr_38(reconfig_to_xcvr_38),
	.reconfig_to_xcvr_39(reconfig_to_xcvr_39),
	.reconfig_to_xcvr_40(reconfig_to_xcvr_40),
	.reconfig_to_xcvr_41(reconfig_to_xcvr_41),
	.reconfig_to_xcvr_42(reconfig_to_xcvr_42),
	.reconfig_to_xcvr_43(reconfig_to_xcvr_43),
	.rx_set_locktoref_0(rx_set_locktoref_0),
	.tx_analogreset_0(tx_analogreset_0),
	.rx_serial_data_0(rx_serial_data_0),
	.rx_cdr_refclk_0(rx_cdr_refclk_0),
	.ext_pll_clk_0(ext_pll_clk_0));

endmodule

module NATIVE_TRANSCEIVER_IP_av_xcvr_native (
	pld8gemptyrx,
	pld8gfullrx,
	pld8grxclkout,
	dataouttopld_0,
	dataouttopld_1,
	dataouttopld_2,
	dataouttopld_3,
	dataouttopld_4,
	dataouttopld_5,
	dataouttopld_6,
	dataouttopld_7,
	dataouttopld_8,
	dataouttopld_9,
	dataouttopld_10,
	dataouttopld_11,
	dataouttopld_12,
	dataouttopld_13,
	dataouttopld_14,
	dataouttopld_15,
	dataouttopld_16,
	dataouttopld_17,
	dataouttopld_18,
	dataouttopld_19,
	dataouttopld_20,
	dataouttopld_21,
	dataouttopld_22,
	dataouttopld_23,
	dataouttopld_24,
	dataouttopld_25,
	dataouttopld_26,
	dataouttopld_27,
	dataouttopld_28,
	dataouttopld_29,
	dataouttopld_30,
	dataouttopld_31,
	dataouttopld_32,
	dataouttopld_33,
	dataouttopld_34,
	dataouttopld_35,
	dataouttopld_36,
	dataouttopld_37,
	dataouttopld_38,
	dataouttopld_39,
	dataouttopld_40,
	dataouttopld_41,
	dataouttopld_42,
	dataouttopld_43,
	dataouttopld_44,
	dataouttopld_45,
	dataouttopld_46,
	dataouttopld_47,
	dataouttopld_48,
	dataouttopld_49,
	dataouttopld_50,
	dataouttopld_51,
	dataouttopld_52,
	dataouttopld_53,
	dataouttopld_54,
	dataouttopld_55,
	dataouttopld_56,
	dataouttopld_57,
	dataouttopld_58,
	dataouttopld_59,
	dataouttopld_60,
	dataouttopld_61,
	dataouttopld_62,
	dataouttopld_63,
	dataout,
	clkdivrx_0,
	rx_is_lockedtoref_0,
	rx_is_lockedtodata_0,
	pld8gemptytx,
	pld8gfulltx,
	pld8gtxclkout,
	avmm_interface_insts0w_pmatestbus_0,
	avmm_interface_insts0w_pmatestbus_1,
	avmm_interface_insts0w_pmatestbus_2,
	avmm_interface_insts0w_pmatestbus_3,
	avmm_interface_insts0w_pmatestbus_4,
	avmm_interface_insts0w_pmatestbus_5,
	avmm_interface_insts0w_pmatestbus_6,
	avmm_interface_insts0w_pmatestbus_7,
	avmm_interface_insts0w_pmatestbus_8,
	avmm_interface_insts0w_pmatestbus_9,
	avmm_interface_insts0w_pmatestbus_10,
	avmm_interface_insts0w_pmatestbus_11,
	avmm_interface_insts0w_pmatestbus_12,
	avmm_interface_insts0w_pmatestbus_13,
	avmm_interface_insts0w_pmatestbus_14,
	avmm_interface_insts0w_pmatestbus_15,
	avmm_interface_insts0w_pmatestbus_16,
	avmm_interface_insts0w_pmatestbus_17,
	avmm_interface_insts0w_pmatestbus_18,
	avmm_interface_insts0w_pmatestbus_19,
	avmm_interface_insts0w_pmatestbus_20,
	avmm_interface_insts0w_pmatestbus_21,
	avmm_interface_insts0w_pmatestbus_22,
	avmm_interface_insts0w_pmatestbus_23,
	atb_comp_out,
	avmm_interface_insts0pld_avmm_readdata_0,
	avmm_interface_insts0pld_avmm_readdata_1,
	avmm_interface_insts0pld_avmm_readdata_2,
	avmm_interface_insts0pld_avmm_readdata_3,
	avmm_interface_insts0pld_avmm_readdata_4,
	avmm_interface_insts0pld_avmm_readdata_5,
	avmm_interface_insts0pld_avmm_readdata_6,
	avmm_interface_insts0pld_avmm_readdata_7,
	avmm_interface_insts0pld_avmm_readdata_8,
	avmm_interface_insts0pld_avmm_readdata_9,
	avmm_interface_insts0pld_avmm_readdata_10,
	avmm_interface_insts0pld_avmm_readdata_11,
	avmm_interface_insts0pld_avmm_readdata_12,
	avmm_interface_insts0pld_avmm_readdata_13,
	avmm_interface_insts0pld_avmm_readdata_14,
	avmm_interface_insts0pld_avmm_readdata_15,
	rx_std_coreclkin_0,
	rx_digitalreset_0,
	rx_analogreset_0,
	rx_set_locktodata_0,
	tx_std_coreclkin_0,
	tx_digitalreset_0,
	tx_parallel_data_0,
	tx_parallel_data_1,
	tx_parallel_data_2,
	tx_parallel_data_3,
	tx_parallel_data_4,
	tx_parallel_data_5,
	tx_parallel_data_6,
	tx_parallel_data_7,
	tx_parallel_data_8,
	tx_parallel_data_9,
	tx_parallel_data_10,
	tx_parallel_data_11,
	tx_parallel_data_12,
	tx_parallel_data_13,
	tx_parallel_data_14,
	tx_parallel_data_15,
	tx_parallel_data_16,
	tx_parallel_data_17,
	tx_parallel_data_18,
	tx_parallel_data_19,
	tx_parallel_data_20,
	tx_parallel_data_21,
	tx_parallel_data_22,
	tx_parallel_data_23,
	tx_parallel_data_24,
	tx_parallel_data_25,
	tx_parallel_data_26,
	tx_parallel_data_27,
	tx_parallel_data_28,
	tx_parallel_data_29,
	tx_parallel_data_30,
	tx_parallel_data_31,
	tx_parallel_data_32,
	tx_parallel_data_33,
	tx_parallel_data_34,
	tx_parallel_data_35,
	tx_parallel_data_36,
	tx_parallel_data_37,
	tx_parallel_data_38,
	tx_parallel_data_39,
	tx_parallel_data_40,
	tx_parallel_data_41,
	tx_parallel_data_42,
	tx_parallel_data_43,
	reconfig_to_xcvr_31,
	reconfig_to_xcvr_0,
	reconfig_to_xcvr_1,
	reconfig_to_xcvr_22,
	reconfig_to_xcvr_20,
	reconfig_to_xcvr_19,
	reconfig_to_xcvr_21,
	reconfig_to_xcvr_23,
	reconfig_to_xcvr_18,
	reconfig_to_xcvr_45,
	reconfig_to_xcvr_44,
	reconfig_to_xcvr_24,
	reconfig_to_xcvr_25,
	reconfig_to_xcvr_26,
	reconfig_to_xcvr_27,
	reconfig_to_xcvr_28,
	reconfig_to_xcvr_29,
	reconfig_to_xcvr_30,
	reconfig_to_xcvr_2,
	reconfig_to_xcvr_3,
	reconfig_to_xcvr_4,
	reconfig_to_xcvr_5,
	reconfig_to_xcvr_6,
	reconfig_to_xcvr_7,
	reconfig_to_xcvr_8,
	reconfig_to_xcvr_9,
	reconfig_to_xcvr_10,
	reconfig_to_xcvr_11,
	reconfig_to_xcvr_12,
	reconfig_to_xcvr_13,
	reconfig_to_xcvr_14,
	reconfig_to_xcvr_15,
	reconfig_to_xcvr_16,
	reconfig_to_xcvr_17,
	reconfig_to_xcvr_32,
	reconfig_to_xcvr_33,
	reconfig_to_xcvr_34,
	reconfig_to_xcvr_35,
	reconfig_to_xcvr_36,
	reconfig_to_xcvr_37,
	reconfig_to_xcvr_38,
	reconfig_to_xcvr_39,
	reconfig_to_xcvr_40,
	reconfig_to_xcvr_41,
	reconfig_to_xcvr_42,
	reconfig_to_xcvr_43,
	rx_set_locktoref_0,
	tx_analogreset_0,
	rx_serial_data_0,
	rx_cdr_refclk_0,
	ext_pll_clk_0)/* synthesis synthesis_greybox=0 */;
output 	pld8gemptyrx;
output 	pld8gfullrx;
output 	pld8grxclkout;
output 	dataouttopld_0;
output 	dataouttopld_1;
output 	dataouttopld_2;
output 	dataouttopld_3;
output 	dataouttopld_4;
output 	dataouttopld_5;
output 	dataouttopld_6;
output 	dataouttopld_7;
output 	dataouttopld_8;
output 	dataouttopld_9;
output 	dataouttopld_10;
output 	dataouttopld_11;
output 	dataouttopld_12;
output 	dataouttopld_13;
output 	dataouttopld_14;
output 	dataouttopld_15;
output 	dataouttopld_16;
output 	dataouttopld_17;
output 	dataouttopld_18;
output 	dataouttopld_19;
output 	dataouttopld_20;
output 	dataouttopld_21;
output 	dataouttopld_22;
output 	dataouttopld_23;
output 	dataouttopld_24;
output 	dataouttopld_25;
output 	dataouttopld_26;
output 	dataouttopld_27;
output 	dataouttopld_28;
output 	dataouttopld_29;
output 	dataouttopld_30;
output 	dataouttopld_31;
output 	dataouttopld_32;
output 	dataouttopld_33;
output 	dataouttopld_34;
output 	dataouttopld_35;
output 	dataouttopld_36;
output 	dataouttopld_37;
output 	dataouttopld_38;
output 	dataouttopld_39;
output 	dataouttopld_40;
output 	dataouttopld_41;
output 	dataouttopld_42;
output 	dataouttopld_43;
output 	dataouttopld_44;
output 	dataouttopld_45;
output 	dataouttopld_46;
output 	dataouttopld_47;
output 	dataouttopld_48;
output 	dataouttopld_49;
output 	dataouttopld_50;
output 	dataouttopld_51;
output 	dataouttopld_52;
output 	dataouttopld_53;
output 	dataouttopld_54;
output 	dataouttopld_55;
output 	dataouttopld_56;
output 	dataouttopld_57;
output 	dataouttopld_58;
output 	dataouttopld_59;
output 	dataouttopld_60;
output 	dataouttopld_61;
output 	dataouttopld_62;
output 	dataouttopld_63;
output 	dataout;
output 	clkdivrx_0;
output 	rx_is_lockedtoref_0;
output 	rx_is_lockedtodata_0;
output 	pld8gemptytx;
output 	pld8gfulltx;
output 	pld8gtxclkout;
output 	avmm_interface_insts0w_pmatestbus_0;
output 	avmm_interface_insts0w_pmatestbus_1;
output 	avmm_interface_insts0w_pmatestbus_2;
output 	avmm_interface_insts0w_pmatestbus_3;
output 	avmm_interface_insts0w_pmatestbus_4;
output 	avmm_interface_insts0w_pmatestbus_5;
output 	avmm_interface_insts0w_pmatestbus_6;
output 	avmm_interface_insts0w_pmatestbus_7;
output 	avmm_interface_insts0w_pmatestbus_8;
output 	avmm_interface_insts0w_pmatestbus_9;
output 	avmm_interface_insts0w_pmatestbus_10;
output 	avmm_interface_insts0w_pmatestbus_11;
output 	avmm_interface_insts0w_pmatestbus_12;
output 	avmm_interface_insts0w_pmatestbus_13;
output 	avmm_interface_insts0w_pmatestbus_14;
output 	avmm_interface_insts0w_pmatestbus_15;
output 	avmm_interface_insts0w_pmatestbus_16;
output 	avmm_interface_insts0w_pmatestbus_17;
output 	avmm_interface_insts0w_pmatestbus_18;
output 	avmm_interface_insts0w_pmatestbus_19;
output 	avmm_interface_insts0w_pmatestbus_20;
output 	avmm_interface_insts0w_pmatestbus_21;
output 	avmm_interface_insts0w_pmatestbus_22;
output 	avmm_interface_insts0w_pmatestbus_23;
output 	atb_comp_out;
output 	avmm_interface_insts0pld_avmm_readdata_0;
output 	avmm_interface_insts0pld_avmm_readdata_1;
output 	avmm_interface_insts0pld_avmm_readdata_2;
output 	avmm_interface_insts0pld_avmm_readdata_3;
output 	avmm_interface_insts0pld_avmm_readdata_4;
output 	avmm_interface_insts0pld_avmm_readdata_5;
output 	avmm_interface_insts0pld_avmm_readdata_6;
output 	avmm_interface_insts0pld_avmm_readdata_7;
output 	avmm_interface_insts0pld_avmm_readdata_8;
output 	avmm_interface_insts0pld_avmm_readdata_9;
output 	avmm_interface_insts0pld_avmm_readdata_10;
output 	avmm_interface_insts0pld_avmm_readdata_11;
output 	avmm_interface_insts0pld_avmm_readdata_12;
output 	avmm_interface_insts0pld_avmm_readdata_13;
output 	avmm_interface_insts0pld_avmm_readdata_14;
output 	avmm_interface_insts0pld_avmm_readdata_15;
input 	rx_std_coreclkin_0;
input 	rx_digitalreset_0;
input 	rx_analogreset_0;
input 	rx_set_locktodata_0;
input 	tx_std_coreclkin_0;
input 	tx_digitalreset_0;
input 	tx_parallel_data_0;
input 	tx_parallel_data_1;
input 	tx_parallel_data_2;
input 	tx_parallel_data_3;
input 	tx_parallel_data_4;
input 	tx_parallel_data_5;
input 	tx_parallel_data_6;
input 	tx_parallel_data_7;
input 	tx_parallel_data_8;
input 	tx_parallel_data_9;
input 	tx_parallel_data_10;
input 	tx_parallel_data_11;
input 	tx_parallel_data_12;
input 	tx_parallel_data_13;
input 	tx_parallel_data_14;
input 	tx_parallel_data_15;
input 	tx_parallel_data_16;
input 	tx_parallel_data_17;
input 	tx_parallel_data_18;
input 	tx_parallel_data_19;
input 	tx_parallel_data_20;
input 	tx_parallel_data_21;
input 	tx_parallel_data_22;
input 	tx_parallel_data_23;
input 	tx_parallel_data_24;
input 	tx_parallel_data_25;
input 	tx_parallel_data_26;
input 	tx_parallel_data_27;
input 	tx_parallel_data_28;
input 	tx_parallel_data_29;
input 	tx_parallel_data_30;
input 	tx_parallel_data_31;
input 	tx_parallel_data_32;
input 	tx_parallel_data_33;
input 	tx_parallel_data_34;
input 	tx_parallel_data_35;
input 	tx_parallel_data_36;
input 	tx_parallel_data_37;
input 	tx_parallel_data_38;
input 	tx_parallel_data_39;
input 	tx_parallel_data_40;
input 	tx_parallel_data_41;
input 	tx_parallel_data_42;
input 	tx_parallel_data_43;
input 	reconfig_to_xcvr_31;
input 	reconfig_to_xcvr_0;
input 	reconfig_to_xcvr_1;
input 	reconfig_to_xcvr_22;
input 	reconfig_to_xcvr_20;
input 	reconfig_to_xcvr_19;
input 	reconfig_to_xcvr_21;
input 	reconfig_to_xcvr_23;
input 	reconfig_to_xcvr_18;
input 	reconfig_to_xcvr_45;
input 	reconfig_to_xcvr_44;
input 	reconfig_to_xcvr_24;
input 	reconfig_to_xcvr_25;
input 	reconfig_to_xcvr_26;
input 	reconfig_to_xcvr_27;
input 	reconfig_to_xcvr_28;
input 	reconfig_to_xcvr_29;
input 	reconfig_to_xcvr_30;
input 	reconfig_to_xcvr_2;
input 	reconfig_to_xcvr_3;
input 	reconfig_to_xcvr_4;
input 	reconfig_to_xcvr_5;
input 	reconfig_to_xcvr_6;
input 	reconfig_to_xcvr_7;
input 	reconfig_to_xcvr_8;
input 	reconfig_to_xcvr_9;
input 	reconfig_to_xcvr_10;
input 	reconfig_to_xcvr_11;
input 	reconfig_to_xcvr_12;
input 	reconfig_to_xcvr_13;
input 	reconfig_to_xcvr_14;
input 	reconfig_to_xcvr_15;
input 	reconfig_to_xcvr_16;
input 	reconfig_to_xcvr_17;
input 	reconfig_to_xcvr_32;
input 	reconfig_to_xcvr_33;
input 	reconfig_to_xcvr_34;
input 	reconfig_to_xcvr_35;
input 	reconfig_to_xcvr_36;
input 	reconfig_to_xcvr_37;
input 	reconfig_to_xcvr_38;
input 	reconfig_to_xcvr_39;
input 	reconfig_to_xcvr_40;
input 	reconfig_to_xcvr_41;
input 	reconfig_to_xcvr_42;
input 	reconfig_to_xcvr_43;
input 	rx_set_locktoref_0;
input 	tx_analogreset_0;
input 	rx_serial_data_0;
input 	rx_cdr_refclk_0;
input 	ext_pll_clk_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|blockselect ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[0] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[1] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[2] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[3] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[4] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[5] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[6] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[7] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[8] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[9] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[10] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[11] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[12] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[13] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[14] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[15] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|blockselect_buf ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|rxdetectvalid ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|rxfound ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[0] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[1] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[2] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[3] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[4] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[5] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[6] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[7] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[8] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[9] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[10] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[11] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[12] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[13] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[14] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[15] ;
wire \inst_av_pma|av_rx_pma|blockselect_ser[0] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_ser[0] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_ser[1] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_ser[2] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_ser[3] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_ser[4] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_ser[5] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_ser[6] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_ser[7] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_ser[8] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_ser[9] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_ser[10] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_ser[11] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_ser[12] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_ser[13] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_ser[14] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_ser[15] ;
wire \inst_av_pma|av_rx_pma|dout[0] ;
wire \inst_av_pma|av_rx_pma|dout[1] ;
wire \inst_av_pma|av_rx_pma|dout[2] ;
wire \inst_av_pma|av_rx_pma|dout[3] ;
wire \inst_av_pma|av_rx_pma|dout[4] ;
wire \inst_av_pma|av_rx_pma|dout[5] ;
wire \inst_av_pma|av_rx_pma|dout[6] ;
wire \inst_av_pma|av_rx_pma|dout[7] ;
wire \inst_av_pma|av_rx_pma|dout[8] ;
wire \inst_av_pma|av_rx_pma|dout[9] ;
wire \inst_av_pma|av_rx_pma|dout[10] ;
wire \inst_av_pma|av_rx_pma|dout[11] ;
wire \inst_av_pma|av_rx_pma|dout[12] ;
wire \inst_av_pma|av_rx_pma|dout[13] ;
wire \inst_av_pma|av_rx_pma|dout[14] ;
wire \inst_av_pma|av_rx_pma|dout[15] ;
wire \inst_av_pma|av_rx_pma|dout[16] ;
wire \inst_av_pma|av_rx_pma|dout[17] ;
wire \inst_av_pma|av_rx_pma|dout[18] ;
wire \inst_av_pma|av_rx_pma|dout[19] ;
wire \inst_av_pma|av_rx_pma|blockselect_cdr[0] ;
wire \inst_av_pma|av_rx_pma|clklow[0] ;
wire \inst_av_pma|av_rx_pma|fref[0] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_cdr[0] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_cdr[1] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_cdr[2] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_cdr[3] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_cdr[4] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_cdr[5] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_cdr[6] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_cdr[7] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_cdr[8] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_cdr[9] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_cdr[10] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_cdr[11] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_cdr[12] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_cdr[13] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_cdr[14] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_cdr[15] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|blockselect ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[0] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[1] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[2] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[3] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[4] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[5] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[6] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[7] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[8] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[9] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[10] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[11] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[12] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[13] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[14] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[15] ;
wire \inst_av_xcvr_avmm|chnl_avmm_write[0] ;
wire \inst_av_xcvr_avmm|chnl_avmm_read[0] ;
wire \inst_av_xcvr_avmm|chnl_avmm_clk[0] ;
wire \inst_av_xcvr_avmm|chnl_avmm_rstn[0] ;
wire \inst_av_xcvr_avmm|chnl_avmm_writedata[0] ;
wire \inst_av_xcvr_avmm|chnl_avmm_writedata[1] ;
wire \inst_av_xcvr_avmm|chnl_avmm_writedata[2] ;
wire \inst_av_xcvr_avmm|chnl_avmm_writedata[3] ;
wire \inst_av_xcvr_avmm|chnl_avmm_writedata[4] ;
wire \inst_av_xcvr_avmm|chnl_avmm_writedata[5] ;
wire \inst_av_xcvr_avmm|chnl_avmm_writedata[6] ;
wire \inst_av_xcvr_avmm|chnl_avmm_writedata[7] ;
wire \inst_av_xcvr_avmm|chnl_avmm_writedata[8] ;
wire \inst_av_xcvr_avmm|chnl_avmm_writedata[9] ;
wire \inst_av_xcvr_avmm|chnl_avmm_writedata[10] ;
wire \inst_av_xcvr_avmm|chnl_avmm_writedata[11] ;
wire \inst_av_xcvr_avmm|chnl_avmm_writedata[12] ;
wire \inst_av_xcvr_avmm|chnl_avmm_writedata[13] ;
wire \inst_av_xcvr_avmm|chnl_avmm_writedata[14] ;
wire \inst_av_xcvr_avmm|chnl_avmm_writedata[15] ;
wire \inst_av_xcvr_avmm|chnl_avmm_address[0] ;
wire \inst_av_xcvr_avmm|chnl_avmm_address[1] ;
wire \inst_av_xcvr_avmm|chnl_avmm_address[2] ;
wire \inst_av_xcvr_avmm|chnl_avmm_address[3] ;
wire \inst_av_xcvr_avmm|chnl_avmm_address[4] ;
wire \inst_av_xcvr_avmm|chnl_avmm_address[5] ;
wire \inst_av_xcvr_avmm|chnl_avmm_address[6] ;
wire \inst_av_xcvr_avmm|chnl_avmm_address[7] ;
wire \inst_av_xcvr_avmm|chnl_avmm_address[8] ;
wire \inst_av_xcvr_avmm|chnl_avmm_address[9] ;
wire \inst_av_xcvr_avmm|chnl_avmm_address[10] ;
wire \inst_av_xcvr_avmm|chnl_avmm_byteen[0] ;
wire \inst_av_xcvr_avmm|chnl_avmm_byteen[1] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|blockselect ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[0] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[1] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[2] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[3] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[4] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[5] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[6] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[7] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[8] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[9] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[10] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[11] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[12] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[13] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[14] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[15] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|blockselect ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[0] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[1] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[2] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[3] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[4] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[5] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[6] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[7] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[8] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[9] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[10] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[11] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[12] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[13] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[14] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[15] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|blockselect ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|pmarxclkslip ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|pmarxpmarstb ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[0] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[1] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[2] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[3] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[4] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[5] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[6] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[7] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[8] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[9] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[10] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[11] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[12] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[13] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[14] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[15] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|blockselect_ser ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|clkdivtx ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[0] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[1] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[2] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[3] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[4] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[5] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[6] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[7] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[8] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[9] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[10] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[11] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[12] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[13] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[14] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[15] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|blockselect ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|freqlock ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|pmaearlyeios ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|pmaltr ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|pmatxdetectrx ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|pmatxelecidle ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[0] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[1] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[2] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[3] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[4] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[5] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[6] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[7] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[8] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[9] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[10] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[11] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[12] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[13] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[14] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[15] ;
wire \inst_av_pma|av_rx_pma|blockselect_buf[0] ;
wire \inst_av_pma|av_rx_pma|sd[0] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_buf[0] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_buf[1] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_buf[2] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_buf[3] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_buf[4] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_buf[5] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_buf[6] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_buf[7] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_buf[8] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_buf[9] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_buf[10] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_buf[11] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_buf[12] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_buf[13] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_buf[14] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_buf[15] ;
wire \inst_av_pma|av_rx_pma|blockselect_mux[0] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_mux[0] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_mux[1] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_mux[2] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_mux[3] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_mux[4] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_mux[5] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_mux[6] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_mux[7] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_mux[8] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_mux[9] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_mux[10] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_mux[11] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_mux[12] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_mux[13] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_mux[14] ;
wire \inst_av_pma|av_rx_pma|avmmreaddata_mux[15] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|blockselect ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[0] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[1] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[2] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[3] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[4] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[5] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[6] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[7] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[8] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[9] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[10] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[11] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[12] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[13] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[14] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[15] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|blockselect ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[0] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[1] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[2] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[3] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[4] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[5] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[6] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[7] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[8] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[9] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[10] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[11] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[12] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[13] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[14] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[15] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[0] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[1] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[2] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[3] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[4] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[5] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[6] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[7] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[8] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[9] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[10] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[11] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[12] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[13] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[14] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[15] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[16] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[17] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[18] ;
wire \inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[19] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|blockselect_cgb ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[0] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[1] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[2] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[3] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[4] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[5] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[6] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[7] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[8] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[9] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[10] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[11] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[12] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[13] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[14] ;
wire \inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[15] ;
wire \inst_av_xcvr_avmm|out_pld_8g_rxurstpcs_n[0]~0_combout ;
wire \inst_av_xcvr_avmm|out_pld_rxpma_rstb_in[0]~0_combout ;
wire \inst_av_xcvr_avmm|out_pld_8g_txurstpcs_n[0]~0_combout ;
wire \inst_av_xcvr_avmm|avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_oc_reg.r_hardoccalen~q ;
wire \inst_av_xcvr_avmm|avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_slpbk_reg.r_seriallpbken~q ;


NATIVE_TRANSCEIVER_IP_av_pcs inst_av_pcs(
	.out_blockselect_rx_pld_pcs_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|blockselect }),
	.out_pld_8g_empty_rx({pld8gemptyrx}),
	.out_pld_8g_full_rx({pld8gfullrx}),
	.out_pld_8g_rx_clk_out({pld8grxclkout}),
	.avmmreaddata_0(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[0] ),
	.avmmreaddata_1(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[1] ),
	.avmmreaddata_2(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[2] ),
	.avmmreaddata_3(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[3] ),
	.avmmreaddata_4(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[4] ),
	.avmmreaddata_5(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[5] ),
	.avmmreaddata_6(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[6] ),
	.avmmreaddata_7(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[7] ),
	.avmmreaddata_8(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[8] ),
	.avmmreaddata_9(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[9] ),
	.avmmreaddata_10(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[10] ),
	.avmmreaddata_11(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[11] ),
	.avmmreaddata_12(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[12] ),
	.avmmreaddata_13(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[13] ),
	.avmmreaddata_14(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[14] ),
	.avmmreaddata_15(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[15] ),
	.dataouttopld_0(dataouttopld_0),
	.dataouttopld_1(dataouttopld_1),
	.dataouttopld_2(dataouttopld_2),
	.dataouttopld_3(dataouttopld_3),
	.dataouttopld_4(dataouttopld_4),
	.dataouttopld_5(dataouttopld_5),
	.dataouttopld_6(dataouttopld_6),
	.dataouttopld_7(dataouttopld_7),
	.dataouttopld_8(dataouttopld_8),
	.dataouttopld_9(dataouttopld_9),
	.dataouttopld_10(dataouttopld_10),
	.dataouttopld_11(dataouttopld_11),
	.dataouttopld_12(dataouttopld_12),
	.dataouttopld_13(dataouttopld_13),
	.dataouttopld_14(dataouttopld_14),
	.dataouttopld_15(dataouttopld_15),
	.dataouttopld_16(dataouttopld_16),
	.dataouttopld_17(dataouttopld_17),
	.dataouttopld_18(dataouttopld_18),
	.dataouttopld_19(dataouttopld_19),
	.dataouttopld_20(dataouttopld_20),
	.dataouttopld_21(dataouttopld_21),
	.dataouttopld_22(dataouttopld_22),
	.dataouttopld_23(dataouttopld_23),
	.dataouttopld_24(dataouttopld_24),
	.dataouttopld_25(dataouttopld_25),
	.dataouttopld_26(dataouttopld_26),
	.dataouttopld_27(dataouttopld_27),
	.dataouttopld_28(dataouttopld_28),
	.dataouttopld_29(dataouttopld_29),
	.dataouttopld_30(dataouttopld_30),
	.dataouttopld_31(dataouttopld_31),
	.dataouttopld_32(dataouttopld_32),
	.dataouttopld_33(dataouttopld_33),
	.dataouttopld_34(dataouttopld_34),
	.dataouttopld_35(dataouttopld_35),
	.dataouttopld_36(dataouttopld_36),
	.dataouttopld_37(dataouttopld_37),
	.dataouttopld_38(dataouttopld_38),
	.dataouttopld_39(dataouttopld_39),
	.dataouttopld_40(dataouttopld_40),
	.dataouttopld_41(dataouttopld_41),
	.dataouttopld_42(dataouttopld_42),
	.dataouttopld_43(dataouttopld_43),
	.dataouttopld_44(dataouttopld_44),
	.dataouttopld_45(dataouttopld_45),
	.dataouttopld_46(dataouttopld_46),
	.dataouttopld_47(dataouttopld_47),
	.dataouttopld_48(dataouttopld_48),
	.dataouttopld_49(dataouttopld_49),
	.dataouttopld_50(dataouttopld_50),
	.dataouttopld_51(dataouttopld_51),
	.dataouttopld_52(dataouttopld_52),
	.dataouttopld_53(dataouttopld_53),
	.dataouttopld_54(dataouttopld_54),
	.dataouttopld_55(dataouttopld_55),
	.dataouttopld_56(dataouttopld_56),
	.dataouttopld_57(dataouttopld_57),
	.dataouttopld_58(dataouttopld_58),
	.dataouttopld_59(dataouttopld_59),
	.dataouttopld_60(dataouttopld_60),
	.dataouttopld_61(dataouttopld_61),
	.dataouttopld_62(dataouttopld_62),
	.dataouttopld_63(dataouttopld_63),
	.rxdetectvalid(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|rxdetectvalid ),
	.rxfound(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|rxfound ),
	.clkdivrx_0(clkdivrx_0),
	.dout_0(\inst_av_pma|av_rx_pma|dout[0] ),
	.dout_1(\inst_av_pma|av_rx_pma|dout[1] ),
	.dout_2(\inst_av_pma|av_rx_pma|dout[2] ),
	.dout_3(\inst_av_pma|av_rx_pma|dout[3] ),
	.dout_4(\inst_av_pma|av_rx_pma|dout[4] ),
	.dout_5(\inst_av_pma|av_rx_pma|dout[5] ),
	.dout_6(\inst_av_pma|av_rx_pma|dout[6] ),
	.dout_7(\inst_av_pma|av_rx_pma|dout[7] ),
	.dout_8(\inst_av_pma|av_rx_pma|dout[8] ),
	.dout_9(\inst_av_pma|av_rx_pma|dout[9] ),
	.dout_10(\inst_av_pma|av_rx_pma|dout[10] ),
	.dout_11(\inst_av_pma|av_rx_pma|dout[11] ),
	.dout_12(\inst_av_pma|av_rx_pma|dout[12] ),
	.dout_13(\inst_av_pma|av_rx_pma|dout[13] ),
	.dout_14(\inst_av_pma|av_rx_pma|dout[14] ),
	.dout_15(\inst_av_pma|av_rx_pma|dout[15] ),
	.dout_16(\inst_av_pma|av_rx_pma|dout[16] ),
	.dout_17(\inst_av_pma|av_rx_pma|dout[17] ),
	.dout_18(\inst_av_pma|av_rx_pma|dout[18] ),
	.dout_19(\inst_av_pma|av_rx_pma|dout[19] ),
	.clklow_0(\inst_av_pma|av_rx_pma|clklow[0] ),
	.fref_0(\inst_av_pma|av_rx_pma|fref[0] ),
	.rx_is_lockedtodata_0(rx_is_lockedtodata_0),
	.out_blockselect_tx_pld_pcs_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|blockselect }),
	.out_pld_8g_empty_tx({pld8gemptytx}),
	.out_pld_8g_full_tx({pld8gfulltx}),
	.out_pld_8g_tx_clk_out({pld8gtxclkout}),
	.avmmreaddata_01(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[0] ),
	.avmmreaddata_16(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[1] ),
	.avmmreaddata_21(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[2] ),
	.avmmreaddata_31(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[3] ),
	.avmmreaddata_41(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[4] ),
	.avmmreaddata_51(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[5] ),
	.avmmreaddata_61(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[6] ),
	.avmmreaddata_71(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[7] ),
	.avmmreaddata_81(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[8] ),
	.avmmreaddata_91(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[9] ),
	.avmmreaddata_101(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[10] ),
	.avmmreaddata_111(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[11] ),
	.avmmreaddata_121(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[12] ),
	.avmmreaddata_131(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[13] ),
	.avmmreaddata_141(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[14] ),
	.avmmreaddata_151(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[15] ),
	.chnl_avmm_write_0(\inst_av_xcvr_avmm|chnl_avmm_write[0] ),
	.chnl_avmm_read_0(\inst_av_xcvr_avmm|chnl_avmm_read[0] ),
	.chnl_avmm_clk_0(\inst_av_xcvr_avmm|chnl_avmm_clk[0] ),
	.chnl_avmm_rstn_0(\inst_av_xcvr_avmm|chnl_avmm_rstn[0] ),
	.chnl_avmm_writedata_0(\inst_av_xcvr_avmm|chnl_avmm_writedata[0] ),
	.chnl_avmm_writedata_1(\inst_av_xcvr_avmm|chnl_avmm_writedata[1] ),
	.chnl_avmm_writedata_2(\inst_av_xcvr_avmm|chnl_avmm_writedata[2] ),
	.chnl_avmm_writedata_3(\inst_av_xcvr_avmm|chnl_avmm_writedata[3] ),
	.chnl_avmm_writedata_4(\inst_av_xcvr_avmm|chnl_avmm_writedata[4] ),
	.chnl_avmm_writedata_5(\inst_av_xcvr_avmm|chnl_avmm_writedata[5] ),
	.chnl_avmm_writedata_6(\inst_av_xcvr_avmm|chnl_avmm_writedata[6] ),
	.chnl_avmm_writedata_7(\inst_av_xcvr_avmm|chnl_avmm_writedata[7] ),
	.chnl_avmm_writedata_8(\inst_av_xcvr_avmm|chnl_avmm_writedata[8] ),
	.chnl_avmm_writedata_9(\inst_av_xcvr_avmm|chnl_avmm_writedata[9] ),
	.chnl_avmm_writedata_10(\inst_av_xcvr_avmm|chnl_avmm_writedata[10] ),
	.chnl_avmm_writedata_11(\inst_av_xcvr_avmm|chnl_avmm_writedata[11] ),
	.chnl_avmm_writedata_12(\inst_av_xcvr_avmm|chnl_avmm_writedata[12] ),
	.chnl_avmm_writedata_13(\inst_av_xcvr_avmm|chnl_avmm_writedata[13] ),
	.chnl_avmm_writedata_14(\inst_av_xcvr_avmm|chnl_avmm_writedata[14] ),
	.chnl_avmm_writedata_15(\inst_av_xcvr_avmm|chnl_avmm_writedata[15] ),
	.chnl_avmm_address_0(\inst_av_xcvr_avmm|chnl_avmm_address[0] ),
	.chnl_avmm_address_1(\inst_av_xcvr_avmm|chnl_avmm_address[1] ),
	.chnl_avmm_address_2(\inst_av_xcvr_avmm|chnl_avmm_address[2] ),
	.chnl_avmm_address_3(\inst_av_xcvr_avmm|chnl_avmm_address[3] ),
	.chnl_avmm_address_4(\inst_av_xcvr_avmm|chnl_avmm_address[4] ),
	.chnl_avmm_address_5(\inst_av_xcvr_avmm|chnl_avmm_address[5] ),
	.chnl_avmm_address_6(\inst_av_xcvr_avmm|chnl_avmm_address[6] ),
	.chnl_avmm_address_7(\inst_av_xcvr_avmm|chnl_avmm_address[7] ),
	.chnl_avmm_address_8(\inst_av_xcvr_avmm|chnl_avmm_address[8] ),
	.chnl_avmm_address_9(\inst_av_xcvr_avmm|chnl_avmm_address[9] ),
	.chnl_avmm_address_10(\inst_av_xcvr_avmm|chnl_avmm_address[10] ),
	.chnl_avmm_byteen_0(\inst_av_xcvr_avmm|chnl_avmm_byteen[0] ),
	.chnl_avmm_byteen_1(\inst_av_xcvr_avmm|chnl_avmm_byteen[1] ),
	.out_blockselect_pcs8g_rx({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|blockselect }),
	.avmmreaddata_02(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[0] ),
	.avmmreaddata_17(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[1] ),
	.avmmreaddata_22(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[2] ),
	.avmmreaddata_32(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[3] ),
	.avmmreaddata_42(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[4] ),
	.avmmreaddata_52(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[5] ),
	.avmmreaddata_62(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[6] ),
	.avmmreaddata_72(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[7] ),
	.avmmreaddata_82(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[8] ),
	.avmmreaddata_92(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[9] ),
	.avmmreaddata_102(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[10] ),
	.avmmreaddata_112(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[11] ),
	.avmmreaddata_122(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[12] ),
	.avmmreaddata_132(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[13] ),
	.avmmreaddata_142(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[14] ),
	.avmmreaddata_152(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[15] ),
	.out_blockselect_com_pld_pcs_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|blockselect }),
	.avmmreaddata_03(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[0] ),
	.avmmreaddata_18(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[1] ),
	.avmmreaddata_23(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[2] ),
	.avmmreaddata_33(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[3] ),
	.avmmreaddata_43(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[4] ),
	.avmmreaddata_53(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[5] ),
	.avmmreaddata_63(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[6] ),
	.avmmreaddata_73(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[7] ),
	.avmmreaddata_83(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[8] ),
	.avmmreaddata_93(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[9] ),
	.avmmreaddata_103(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[10] ),
	.avmmreaddata_113(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[11] ),
	.avmmreaddata_123(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[12] ),
	.avmmreaddata_133(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[13] ),
	.avmmreaddata_143(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[14] ),
	.avmmreaddata_153(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[15] ),
	.out_blockselect_rx_pcs_pma_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|blockselect }),
	.out_pma_rxclkslip({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|pmarxclkslip }),
	.pmarxpmarstb(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|pmarxpmarstb ),
	.avmmreaddata_04(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[0] ),
	.avmmreaddata_19(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[1] ),
	.avmmreaddata_24(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[2] ),
	.avmmreaddata_34(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[3] ),
	.avmmreaddata_44(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[4] ),
	.avmmreaddata_54(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[5] ),
	.avmmreaddata_64(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[6] ),
	.avmmreaddata_74(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[7] ),
	.avmmreaddata_84(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[8] ),
	.avmmreaddata_94(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[9] ),
	.avmmreaddata_104(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[10] ),
	.avmmreaddata_114(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[11] ),
	.avmmreaddata_124(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[12] ),
	.avmmreaddata_134(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[13] ),
	.avmmreaddata_144(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[14] ),
	.avmmreaddata_154(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[15] ),
	.clkdivtx(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|clkdivtx ),
	.out_blockselect_com_pcs_pma_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|blockselect }),
	.out_pma_ppm_lock({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|freqlock }),
	.out_pma_early_eios({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|pmaearlyeios }),
	.out_pma_ltr({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|pmaltr }),
	.out_pma_txdetectrx({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|pmatxdetectrx }),
	.out_pma_tx_elec_idle({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|pmatxelecidle }),
	.avmmreaddata_05(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[0] ),
	.avmmreaddata_110(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[1] ),
	.avmmreaddata_25(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[2] ),
	.avmmreaddata_35(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[3] ),
	.avmmreaddata_45(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[4] ),
	.avmmreaddata_55(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[5] ),
	.avmmreaddata_65(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[6] ),
	.avmmreaddata_75(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[7] ),
	.avmmreaddata_85(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[8] ),
	.avmmreaddata_95(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[9] ),
	.avmmreaddata_105(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[10] ),
	.avmmreaddata_115(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[11] ),
	.avmmreaddata_125(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[12] ),
	.avmmreaddata_135(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[13] ),
	.avmmreaddata_145(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[14] ),
	.avmmreaddata_155(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[15] ),
	.sd_0(\inst_av_pma|av_rx_pma|sd[0] ),
	.out_blockselect_pcs8g_tx({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|blockselect }),
	.avmmreaddata_06(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[0] ),
	.avmmreaddata_116(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[1] ),
	.avmmreaddata_26(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[2] ),
	.avmmreaddata_36(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[3] ),
	.avmmreaddata_46(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[4] ),
	.avmmreaddata_56(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[5] ),
	.avmmreaddata_66(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[6] ),
	.avmmreaddata_76(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[7] ),
	.avmmreaddata_86(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[8] ),
	.avmmreaddata_96(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[9] ),
	.avmmreaddata_106(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[10] ),
	.avmmreaddata_117(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[11] ),
	.avmmreaddata_126(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[12] ),
	.avmmreaddata_136(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[13] ),
	.avmmreaddata_146(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[14] ),
	.avmmreaddata_156(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[15] ),
	.out_blockselect_tx_pcs_pma_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|blockselect }),
	.avmmreaddata_07(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[0] ),
	.avmmreaddata_118(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[1] ),
	.avmmreaddata_27(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[2] ),
	.avmmreaddata_37(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[3] ),
	.avmmreaddata_47(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[4] ),
	.avmmreaddata_57(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[5] ),
	.avmmreaddata_67(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[6] ),
	.avmmreaddata_77(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[7] ),
	.avmmreaddata_87(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[8] ),
	.avmmreaddata_97(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[9] ),
	.avmmreaddata_107(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[10] ),
	.avmmreaddata_119(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[11] ),
	.avmmreaddata_127(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[12] ),
	.avmmreaddata_137(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[13] ),
	.avmmreaddata_147(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[14] ),
	.avmmreaddata_157(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[15] ),
	.dataouttopma_0(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[0] ),
	.dataouttopma_1(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[1] ),
	.dataouttopma_2(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[2] ),
	.dataouttopma_3(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[3] ),
	.dataouttopma_4(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[4] ),
	.dataouttopma_5(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[5] ),
	.dataouttopma_6(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[6] ),
	.dataouttopma_7(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[7] ),
	.dataouttopma_8(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[8] ),
	.dataouttopma_9(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[9] ),
	.dataouttopma_10(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[10] ),
	.dataouttopma_11(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[11] ),
	.dataouttopma_12(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[12] ),
	.dataouttopma_13(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[13] ),
	.dataouttopma_14(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[14] ),
	.dataouttopma_15(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[15] ),
	.dataouttopma_16(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[16] ),
	.dataouttopma_17(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[17] ),
	.dataouttopma_18(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[18] ),
	.dataouttopma_19(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[19] ),
	.out_pld_8g_rxurstpcs_n_0(\inst_av_xcvr_avmm|out_pld_8g_rxurstpcs_n[0]~0_combout ),
	.out_pld_rxpma_rstb_in_0(\inst_av_xcvr_avmm|out_pld_rxpma_rstb_in[0]~0_combout ),
	.out_pld_8g_txurstpcs_n_0(\inst_av_xcvr_avmm|out_pld_8g_txurstpcs_n[0]~0_combout ),
	.rx_std_coreclkin_0(rx_std_coreclkin_0),
	.tx_std_coreclkin_0(tx_std_coreclkin_0),
	.tx_parallel_data_0(tx_parallel_data_0),
	.tx_parallel_data_1(tx_parallel_data_1),
	.tx_parallel_data_2(tx_parallel_data_2),
	.tx_parallel_data_3(tx_parallel_data_3),
	.tx_parallel_data_4(tx_parallel_data_4),
	.tx_parallel_data_5(tx_parallel_data_5),
	.tx_parallel_data_6(tx_parallel_data_6),
	.tx_parallel_data_7(tx_parallel_data_7),
	.tx_parallel_data_8(tx_parallel_data_8),
	.tx_parallel_data_9(tx_parallel_data_9),
	.tx_parallel_data_10(tx_parallel_data_10),
	.tx_parallel_data_11(tx_parallel_data_11),
	.tx_parallel_data_12(tx_parallel_data_12),
	.tx_parallel_data_13(tx_parallel_data_13),
	.tx_parallel_data_14(tx_parallel_data_14),
	.tx_parallel_data_15(tx_parallel_data_15),
	.tx_parallel_data_16(tx_parallel_data_16),
	.tx_parallel_data_17(tx_parallel_data_17),
	.tx_parallel_data_18(tx_parallel_data_18),
	.tx_parallel_data_19(tx_parallel_data_19),
	.tx_parallel_data_20(tx_parallel_data_20),
	.tx_parallel_data_21(tx_parallel_data_21),
	.tx_parallel_data_22(tx_parallel_data_22),
	.tx_parallel_data_23(tx_parallel_data_23),
	.tx_parallel_data_24(tx_parallel_data_24),
	.tx_parallel_data_25(tx_parallel_data_25),
	.tx_parallel_data_26(tx_parallel_data_26),
	.tx_parallel_data_27(tx_parallel_data_27),
	.tx_parallel_data_28(tx_parallel_data_28),
	.tx_parallel_data_29(tx_parallel_data_29),
	.tx_parallel_data_30(tx_parallel_data_30),
	.tx_parallel_data_31(tx_parallel_data_31),
	.tx_parallel_data_32(tx_parallel_data_32),
	.tx_parallel_data_33(tx_parallel_data_33),
	.tx_parallel_data_34(tx_parallel_data_34),
	.tx_parallel_data_35(tx_parallel_data_35),
	.tx_parallel_data_36(tx_parallel_data_36),
	.tx_parallel_data_37(tx_parallel_data_37),
	.tx_parallel_data_38(tx_parallel_data_38),
	.tx_parallel_data_39(tx_parallel_data_39),
	.tx_parallel_data_40(tx_parallel_data_40),
	.tx_parallel_data_41(tx_parallel_data_41),
	.tx_parallel_data_42(tx_parallel_data_42),
	.tx_parallel_data_43(tx_parallel_data_43),
	.rx_set_locktoref_0(rx_set_locktoref_0));

NATIVE_TRANSCEIVER_IP_av_pma inst_av_pma(
	.blockselect_buf(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|blockselect_buf ),
	.dataout(dataout),
	.rxdetectvalid(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|rxdetectvalid ),
	.rxfound(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|rxfound ),
	.avmmreaddata_buf_0(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[0] ),
	.avmmreaddata_buf_1(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[1] ),
	.avmmreaddata_buf_2(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[2] ),
	.avmmreaddata_buf_3(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[3] ),
	.avmmreaddata_buf_4(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[4] ),
	.avmmreaddata_buf_5(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[5] ),
	.avmmreaddata_buf_6(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[6] ),
	.avmmreaddata_buf_7(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[7] ),
	.avmmreaddata_buf_8(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[8] ),
	.avmmreaddata_buf_9(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[9] ),
	.avmmreaddata_buf_10(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[10] ),
	.avmmreaddata_buf_11(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[11] ),
	.avmmreaddata_buf_12(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[12] ),
	.avmmreaddata_buf_13(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[13] ),
	.avmmreaddata_buf_14(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[14] ),
	.avmmreaddata_buf_15(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[15] ),
	.blockselect_ser_0(\inst_av_pma|av_rx_pma|blockselect_ser[0] ),
	.clkdivrx_0(clkdivrx_0),
	.avmmreaddata_ser_0(\inst_av_pma|av_rx_pma|avmmreaddata_ser[0] ),
	.avmmreaddata_ser_1(\inst_av_pma|av_rx_pma|avmmreaddata_ser[1] ),
	.avmmreaddata_ser_2(\inst_av_pma|av_rx_pma|avmmreaddata_ser[2] ),
	.avmmreaddata_ser_3(\inst_av_pma|av_rx_pma|avmmreaddata_ser[3] ),
	.avmmreaddata_ser_4(\inst_av_pma|av_rx_pma|avmmreaddata_ser[4] ),
	.avmmreaddata_ser_5(\inst_av_pma|av_rx_pma|avmmreaddata_ser[5] ),
	.avmmreaddata_ser_6(\inst_av_pma|av_rx_pma|avmmreaddata_ser[6] ),
	.avmmreaddata_ser_7(\inst_av_pma|av_rx_pma|avmmreaddata_ser[7] ),
	.avmmreaddata_ser_8(\inst_av_pma|av_rx_pma|avmmreaddata_ser[8] ),
	.avmmreaddata_ser_9(\inst_av_pma|av_rx_pma|avmmreaddata_ser[9] ),
	.avmmreaddata_ser_10(\inst_av_pma|av_rx_pma|avmmreaddata_ser[10] ),
	.avmmreaddata_ser_11(\inst_av_pma|av_rx_pma|avmmreaddata_ser[11] ),
	.avmmreaddata_ser_12(\inst_av_pma|av_rx_pma|avmmreaddata_ser[12] ),
	.avmmreaddata_ser_13(\inst_av_pma|av_rx_pma|avmmreaddata_ser[13] ),
	.avmmreaddata_ser_14(\inst_av_pma|av_rx_pma|avmmreaddata_ser[14] ),
	.avmmreaddata_ser_15(\inst_av_pma|av_rx_pma|avmmreaddata_ser[15] ),
	.dout_0(\inst_av_pma|av_rx_pma|dout[0] ),
	.dout_1(\inst_av_pma|av_rx_pma|dout[1] ),
	.dout_2(\inst_av_pma|av_rx_pma|dout[2] ),
	.dout_3(\inst_av_pma|av_rx_pma|dout[3] ),
	.dout_4(\inst_av_pma|av_rx_pma|dout[4] ),
	.dout_5(\inst_av_pma|av_rx_pma|dout[5] ),
	.dout_6(\inst_av_pma|av_rx_pma|dout[6] ),
	.dout_7(\inst_av_pma|av_rx_pma|dout[7] ),
	.dout_8(\inst_av_pma|av_rx_pma|dout[8] ),
	.dout_9(\inst_av_pma|av_rx_pma|dout[9] ),
	.dout_10(\inst_av_pma|av_rx_pma|dout[10] ),
	.dout_11(\inst_av_pma|av_rx_pma|dout[11] ),
	.dout_12(\inst_av_pma|av_rx_pma|dout[12] ),
	.dout_13(\inst_av_pma|av_rx_pma|dout[13] ),
	.dout_14(\inst_av_pma|av_rx_pma|dout[14] ),
	.dout_15(\inst_av_pma|av_rx_pma|dout[15] ),
	.dout_16(\inst_av_pma|av_rx_pma|dout[16] ),
	.dout_17(\inst_av_pma|av_rx_pma|dout[17] ),
	.dout_18(\inst_av_pma|av_rx_pma|dout[18] ),
	.dout_19(\inst_av_pma|av_rx_pma|dout[19] ),
	.blockselect_cdr_0(\inst_av_pma|av_rx_pma|blockselect_cdr[0] ),
	.clklow_0(\inst_av_pma|av_rx_pma|clklow[0] ),
	.fref_0(\inst_av_pma|av_rx_pma|fref[0] ),
	.rx_is_lockedtoref_0(rx_is_lockedtoref_0),
	.rx_is_lockedtodata_0(rx_is_lockedtodata_0),
	.avmmreaddata_cdr_0(\inst_av_pma|av_rx_pma|avmmreaddata_cdr[0] ),
	.avmmreaddata_cdr_1(\inst_av_pma|av_rx_pma|avmmreaddata_cdr[1] ),
	.avmmreaddata_cdr_2(\inst_av_pma|av_rx_pma|avmmreaddata_cdr[2] ),
	.avmmreaddata_cdr_3(\inst_av_pma|av_rx_pma|avmmreaddata_cdr[3] ),
	.avmmreaddata_cdr_4(\inst_av_pma|av_rx_pma|avmmreaddata_cdr[4] ),
	.avmmreaddata_cdr_5(\inst_av_pma|av_rx_pma|avmmreaddata_cdr[5] ),
	.avmmreaddata_cdr_6(\inst_av_pma|av_rx_pma|avmmreaddata_cdr[6] ),
	.avmmreaddata_cdr_7(\inst_av_pma|av_rx_pma|avmmreaddata_cdr[7] ),
	.avmmreaddata_cdr_8(\inst_av_pma|av_rx_pma|avmmreaddata_cdr[8] ),
	.avmmreaddata_cdr_9(\inst_av_pma|av_rx_pma|avmmreaddata_cdr[9] ),
	.avmmreaddata_cdr_10(\inst_av_pma|av_rx_pma|avmmreaddata_cdr[10] ),
	.avmmreaddata_cdr_11(\inst_av_pma|av_rx_pma|avmmreaddata_cdr[11] ),
	.avmmreaddata_cdr_12(\inst_av_pma|av_rx_pma|avmmreaddata_cdr[12] ),
	.avmmreaddata_cdr_13(\inst_av_pma|av_rx_pma|avmmreaddata_cdr[13] ),
	.avmmreaddata_cdr_14(\inst_av_pma|av_rx_pma|avmmreaddata_cdr[14] ),
	.avmmreaddata_cdr_15(\inst_av_pma|av_rx_pma|avmmreaddata_cdr[15] ),
	.chnl_avmm_write_0(\inst_av_xcvr_avmm|chnl_avmm_write[0] ),
	.chnl_avmm_read_0(\inst_av_xcvr_avmm|chnl_avmm_read[0] ),
	.chnl_avmm_clk_0(\inst_av_xcvr_avmm|chnl_avmm_clk[0] ),
	.chnl_avmm_rstn_0(\inst_av_xcvr_avmm|chnl_avmm_rstn[0] ),
	.chnl_avmm_writedata_0(\inst_av_xcvr_avmm|chnl_avmm_writedata[0] ),
	.chnl_avmm_writedata_1(\inst_av_xcvr_avmm|chnl_avmm_writedata[1] ),
	.chnl_avmm_writedata_2(\inst_av_xcvr_avmm|chnl_avmm_writedata[2] ),
	.chnl_avmm_writedata_3(\inst_av_xcvr_avmm|chnl_avmm_writedata[3] ),
	.chnl_avmm_writedata_4(\inst_av_xcvr_avmm|chnl_avmm_writedata[4] ),
	.chnl_avmm_writedata_5(\inst_av_xcvr_avmm|chnl_avmm_writedata[5] ),
	.chnl_avmm_writedata_6(\inst_av_xcvr_avmm|chnl_avmm_writedata[6] ),
	.chnl_avmm_writedata_7(\inst_av_xcvr_avmm|chnl_avmm_writedata[7] ),
	.chnl_avmm_writedata_8(\inst_av_xcvr_avmm|chnl_avmm_writedata[8] ),
	.chnl_avmm_writedata_9(\inst_av_xcvr_avmm|chnl_avmm_writedata[9] ),
	.chnl_avmm_writedata_10(\inst_av_xcvr_avmm|chnl_avmm_writedata[10] ),
	.chnl_avmm_writedata_11(\inst_av_xcvr_avmm|chnl_avmm_writedata[11] ),
	.chnl_avmm_writedata_12(\inst_av_xcvr_avmm|chnl_avmm_writedata[12] ),
	.chnl_avmm_writedata_13(\inst_av_xcvr_avmm|chnl_avmm_writedata[13] ),
	.chnl_avmm_writedata_14(\inst_av_xcvr_avmm|chnl_avmm_writedata[14] ),
	.chnl_avmm_writedata_15(\inst_av_xcvr_avmm|chnl_avmm_writedata[15] ),
	.chnl_avmm_address_0(\inst_av_xcvr_avmm|chnl_avmm_address[0] ),
	.chnl_avmm_address_1(\inst_av_xcvr_avmm|chnl_avmm_address[1] ),
	.chnl_avmm_address_2(\inst_av_xcvr_avmm|chnl_avmm_address[2] ),
	.chnl_avmm_address_3(\inst_av_xcvr_avmm|chnl_avmm_address[3] ),
	.chnl_avmm_address_4(\inst_av_xcvr_avmm|chnl_avmm_address[4] ),
	.chnl_avmm_address_5(\inst_av_xcvr_avmm|chnl_avmm_address[5] ),
	.chnl_avmm_address_6(\inst_av_xcvr_avmm|chnl_avmm_address[6] ),
	.chnl_avmm_address_7(\inst_av_xcvr_avmm|chnl_avmm_address[7] ),
	.chnl_avmm_address_8(\inst_av_xcvr_avmm|chnl_avmm_address[8] ),
	.chnl_avmm_address_9(\inst_av_xcvr_avmm|chnl_avmm_address[9] ),
	.chnl_avmm_address_10(\inst_av_xcvr_avmm|chnl_avmm_address[10] ),
	.chnl_avmm_byteen_0(\inst_av_xcvr_avmm|chnl_avmm_byteen[0] ),
	.chnl_avmm_byteen_1(\inst_av_xcvr_avmm|chnl_avmm_byteen[1] ),
	.atb_comp_out(atb_comp_out),
	.pmarxclkslip(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|pmarxclkslip ),
	.pmarxpmarstb(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|pmarxpmarstb ),
	.blockselect_ser(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|blockselect_ser ),
	.clkdivtx(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|clkdivtx ),
	.avmmreaddata_ser_01(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[0] ),
	.avmmreaddata_ser_16(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[1] ),
	.avmmreaddata_ser_21(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[2] ),
	.avmmreaddata_ser_31(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[3] ),
	.avmmreaddata_ser_41(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[4] ),
	.avmmreaddata_ser_51(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[5] ),
	.avmmreaddata_ser_61(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[6] ),
	.avmmreaddata_ser_71(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[7] ),
	.avmmreaddata_ser_81(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[8] ),
	.avmmreaddata_ser_91(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[9] ),
	.avmmreaddata_ser_101(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[10] ),
	.avmmreaddata_ser_111(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[11] ),
	.avmmreaddata_ser_121(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[12] ),
	.avmmreaddata_ser_131(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[13] ),
	.avmmreaddata_ser_141(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[14] ),
	.avmmreaddata_ser_151(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[15] ),
	.freqlock(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|freqlock ),
	.pmaearlyeios(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|pmaearlyeios ),
	.pmaltr(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|pmaltr ),
	.pmatxdetectrx(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|pmatxdetectrx ),
	.pmatxelecidle(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|pmatxelecidle ),
	.blockselect_buf_0(\inst_av_pma|av_rx_pma|blockselect_buf[0] ),
	.sd_0(\inst_av_pma|av_rx_pma|sd[0] ),
	.avmmreaddata_buf_01(\inst_av_pma|av_rx_pma|avmmreaddata_buf[0] ),
	.avmmreaddata_buf_16(\inst_av_pma|av_rx_pma|avmmreaddata_buf[1] ),
	.avmmreaddata_buf_21(\inst_av_pma|av_rx_pma|avmmreaddata_buf[2] ),
	.avmmreaddata_buf_31(\inst_av_pma|av_rx_pma|avmmreaddata_buf[3] ),
	.avmmreaddata_buf_41(\inst_av_pma|av_rx_pma|avmmreaddata_buf[4] ),
	.avmmreaddata_buf_51(\inst_av_pma|av_rx_pma|avmmreaddata_buf[5] ),
	.avmmreaddata_buf_61(\inst_av_pma|av_rx_pma|avmmreaddata_buf[6] ),
	.avmmreaddata_buf_71(\inst_av_pma|av_rx_pma|avmmreaddata_buf[7] ),
	.avmmreaddata_buf_81(\inst_av_pma|av_rx_pma|avmmreaddata_buf[8] ),
	.avmmreaddata_buf_91(\inst_av_pma|av_rx_pma|avmmreaddata_buf[9] ),
	.avmmreaddata_buf_101(\inst_av_pma|av_rx_pma|avmmreaddata_buf[10] ),
	.avmmreaddata_buf_111(\inst_av_pma|av_rx_pma|avmmreaddata_buf[11] ),
	.avmmreaddata_buf_121(\inst_av_pma|av_rx_pma|avmmreaddata_buf[12] ),
	.avmmreaddata_buf_131(\inst_av_pma|av_rx_pma|avmmreaddata_buf[13] ),
	.avmmreaddata_buf_141(\inst_av_pma|av_rx_pma|avmmreaddata_buf[14] ),
	.avmmreaddata_buf_151(\inst_av_pma|av_rx_pma|avmmreaddata_buf[15] ),
	.blockselect_mux_0(\inst_av_pma|av_rx_pma|blockselect_mux[0] ),
	.avmmreaddata_mux_0(\inst_av_pma|av_rx_pma|avmmreaddata_mux[0] ),
	.avmmreaddata_mux_1(\inst_av_pma|av_rx_pma|avmmreaddata_mux[1] ),
	.avmmreaddata_mux_2(\inst_av_pma|av_rx_pma|avmmreaddata_mux[2] ),
	.avmmreaddata_mux_3(\inst_av_pma|av_rx_pma|avmmreaddata_mux[3] ),
	.avmmreaddata_mux_4(\inst_av_pma|av_rx_pma|avmmreaddata_mux[4] ),
	.avmmreaddata_mux_5(\inst_av_pma|av_rx_pma|avmmreaddata_mux[5] ),
	.avmmreaddata_mux_6(\inst_av_pma|av_rx_pma|avmmreaddata_mux[6] ),
	.avmmreaddata_mux_7(\inst_av_pma|av_rx_pma|avmmreaddata_mux[7] ),
	.avmmreaddata_mux_8(\inst_av_pma|av_rx_pma|avmmreaddata_mux[8] ),
	.avmmreaddata_mux_9(\inst_av_pma|av_rx_pma|avmmreaddata_mux[9] ),
	.avmmreaddata_mux_10(\inst_av_pma|av_rx_pma|avmmreaddata_mux[10] ),
	.avmmreaddata_mux_11(\inst_av_pma|av_rx_pma|avmmreaddata_mux[11] ),
	.avmmreaddata_mux_12(\inst_av_pma|av_rx_pma|avmmreaddata_mux[12] ),
	.avmmreaddata_mux_13(\inst_av_pma|av_rx_pma|avmmreaddata_mux[13] ),
	.avmmreaddata_mux_14(\inst_av_pma|av_rx_pma|avmmreaddata_mux[14] ),
	.avmmreaddata_mux_15(\inst_av_pma|av_rx_pma|avmmreaddata_mux[15] ),
	.dataouttopma_0(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[0] ),
	.dataouttopma_1(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[1] ),
	.dataouttopma_2(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[2] ),
	.dataouttopma_3(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[3] ),
	.dataouttopma_4(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[4] ),
	.dataouttopma_5(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[5] ),
	.dataouttopma_6(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[6] ),
	.dataouttopma_7(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[7] ),
	.dataouttopma_8(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[8] ),
	.dataouttopma_9(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[9] ),
	.dataouttopma_10(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[10] ),
	.dataouttopma_11(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[11] ),
	.dataouttopma_12(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[12] ),
	.dataouttopma_13(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[13] ),
	.dataouttopma_14(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[14] ),
	.dataouttopma_15(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[15] ),
	.dataouttopma_16(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[16] ),
	.dataouttopma_17(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[17] ),
	.dataouttopma_18(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[18] ),
	.dataouttopma_19(\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|dataouttopma[19] ),
	.blockselect_cgb(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|blockselect_cgb ),
	.avmmreaddata_cgb_0(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[0] ),
	.avmmreaddata_cgb_1(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[1] ),
	.avmmreaddata_cgb_2(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[2] ),
	.avmmreaddata_cgb_3(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[3] ),
	.avmmreaddata_cgb_4(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[4] ),
	.avmmreaddata_cgb_5(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[5] ),
	.avmmreaddata_cgb_6(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[6] ),
	.avmmreaddata_cgb_7(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[7] ),
	.avmmreaddata_cgb_8(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[8] ),
	.avmmreaddata_cgb_9(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[9] ),
	.avmmreaddata_cgb_10(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[10] ),
	.avmmreaddata_cgb_11(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[11] ),
	.avmmreaddata_cgb_12(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[12] ),
	.avmmreaddata_cgb_13(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[13] ),
	.avmmreaddata_cgb_14(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[14] ),
	.avmmreaddata_cgb_15(\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[15] ),
	.out_pld_rxpma_rstb_in_0(\inst_av_xcvr_avmm|out_pld_rxpma_rstb_in[0]~0_combout ),
	.gen_oc_regr_hardoccalen(\inst_av_xcvr_avmm|avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_oc_reg.r_hardoccalen~q ),
	.gen_slpbk_regr_seriallpbken(\inst_av_xcvr_avmm|avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_slpbk_reg.r_seriallpbken~q ),
	.rx_set_locktodata_0(rx_set_locktodata_0),
	.reconfig_to_xcvr_0(reconfig_to_xcvr_0),
	.tx_analogreset_0(tx_analogreset_0),
	.rx_serial_data_0(rx_serial_data_0),
	.rx_cdr_refclk_0(rx_cdr_refclk_0),
	.ext_pll_clk_0(ext_pll_clk_0));

NATIVE_TRANSCEIVER_IP_av_xcvr_avmm inst_av_xcvr_avmm(
	.blockselect_rx_pld_pcs_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|blockselect }),
	.avmmreaddata_rx_pld_pcs_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[15] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[14] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[13] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[12] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[11] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[10] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[9] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[8] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[7] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[6] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[5] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[4] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[3] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[2] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[1] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pld_pcs_interface|avmmreaddata[0] }),
	.pma_blockselect_tx_buf({\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|blockselect_buf }),
	.pma_avmmreaddata_tx_buf({\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[15] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[14] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[13] ,
\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[12] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[11] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[10] ,
\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[9] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[8] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[7] ,
\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[6] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[5] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[4] ,
\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[3] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[2] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[1] ,
\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_buf[0] }),
	.pma_blockselect_rx_ser({\inst_av_pma|av_rx_pma|blockselect_ser[0] }),
	.pma_avmmreaddata_rx_ser({\inst_av_pma|av_rx_pma|avmmreaddata_ser[15] ,\inst_av_pma|av_rx_pma|avmmreaddata_ser[14] ,\inst_av_pma|av_rx_pma|avmmreaddata_ser[13] ,\inst_av_pma|av_rx_pma|avmmreaddata_ser[12] ,\inst_av_pma|av_rx_pma|avmmreaddata_ser[11] ,
\inst_av_pma|av_rx_pma|avmmreaddata_ser[10] ,\inst_av_pma|av_rx_pma|avmmreaddata_ser[9] ,\inst_av_pma|av_rx_pma|avmmreaddata_ser[8] ,\inst_av_pma|av_rx_pma|avmmreaddata_ser[7] ,\inst_av_pma|av_rx_pma|avmmreaddata_ser[6] ,
\inst_av_pma|av_rx_pma|avmmreaddata_ser[5] ,\inst_av_pma|av_rx_pma|avmmreaddata_ser[4] ,\inst_av_pma|av_rx_pma|avmmreaddata_ser[3] ,\inst_av_pma|av_rx_pma|avmmreaddata_ser[2] ,\inst_av_pma|av_rx_pma|avmmreaddata_ser[1] ,
\inst_av_pma|av_rx_pma|avmmreaddata_ser[0] }),
	.pma_blockselect_rx_cdr({\inst_av_pma|av_rx_pma|blockselect_cdr[0] }),
	.pma_avmmreaddata_rx_cdr({\inst_av_pma|av_rx_pma|avmmreaddata_cdr[15] ,\inst_av_pma|av_rx_pma|avmmreaddata_cdr[14] ,\inst_av_pma|av_rx_pma|avmmreaddata_cdr[13] ,\inst_av_pma|av_rx_pma|avmmreaddata_cdr[12] ,\inst_av_pma|av_rx_pma|avmmreaddata_cdr[11] ,
\inst_av_pma|av_rx_pma|avmmreaddata_cdr[10] ,\inst_av_pma|av_rx_pma|avmmreaddata_cdr[9] ,\inst_av_pma|av_rx_pma|avmmreaddata_cdr[8] ,\inst_av_pma|av_rx_pma|avmmreaddata_cdr[7] ,\inst_av_pma|av_rx_pma|avmmreaddata_cdr[6] ,
\inst_av_pma|av_rx_pma|avmmreaddata_cdr[5] ,\inst_av_pma|av_rx_pma|avmmreaddata_cdr[4] ,\inst_av_pma|av_rx_pma|avmmreaddata_cdr[3] ,\inst_av_pma|av_rx_pma|avmmreaddata_cdr[2] ,\inst_av_pma|av_rx_pma|avmmreaddata_cdr[1] ,
\inst_av_pma|av_rx_pma|avmmreaddata_cdr[0] }),
	.blockselect_tx_pld_pcs_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|blockselect }),
	.avmmreaddata_tx_pld_pcs_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[15] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[14] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[13] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[12] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[11] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[10] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[9] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[8] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[7] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[6] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[5] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[4] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[3] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[2] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[1] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pld_pcs_interface|avmmreaddata[0] }),
	.chnl_avmm_write({\inst_av_xcvr_avmm|chnl_avmm_write[0] }),
	.chnl_avmm_read({\inst_av_xcvr_avmm|chnl_avmm_read[0] }),
	.chnl_avmm_clk({\inst_av_xcvr_avmm|chnl_avmm_clk[0] }),
	.chnl_avmm_rstn({\inst_av_xcvr_avmm|chnl_avmm_rstn[0] }),
	.chnl_avmm_writedata({\inst_av_xcvr_avmm|chnl_avmm_writedata[15] ,\inst_av_xcvr_avmm|chnl_avmm_writedata[14] ,\inst_av_xcvr_avmm|chnl_avmm_writedata[13] ,\inst_av_xcvr_avmm|chnl_avmm_writedata[12] ,\inst_av_xcvr_avmm|chnl_avmm_writedata[11] ,
\inst_av_xcvr_avmm|chnl_avmm_writedata[10] ,\inst_av_xcvr_avmm|chnl_avmm_writedata[9] ,\inst_av_xcvr_avmm|chnl_avmm_writedata[8] ,\inst_av_xcvr_avmm|chnl_avmm_writedata[7] ,\inst_av_xcvr_avmm|chnl_avmm_writedata[6] ,\inst_av_xcvr_avmm|chnl_avmm_writedata[5] ,
\inst_av_xcvr_avmm|chnl_avmm_writedata[4] ,\inst_av_xcvr_avmm|chnl_avmm_writedata[3] ,\inst_av_xcvr_avmm|chnl_avmm_writedata[2] ,\inst_av_xcvr_avmm|chnl_avmm_writedata[1] ,\inst_av_xcvr_avmm|chnl_avmm_writedata[0] }),
	.chnl_avmm_address({\inst_av_xcvr_avmm|chnl_avmm_address[10] ,\inst_av_xcvr_avmm|chnl_avmm_address[9] ,\inst_av_xcvr_avmm|chnl_avmm_address[8] ,\inst_av_xcvr_avmm|chnl_avmm_address[7] ,\inst_av_xcvr_avmm|chnl_avmm_address[6] ,\inst_av_xcvr_avmm|chnl_avmm_address[5] ,
\inst_av_xcvr_avmm|chnl_avmm_address[4] ,\inst_av_xcvr_avmm|chnl_avmm_address[3] ,\inst_av_xcvr_avmm|chnl_avmm_address[2] ,\inst_av_xcvr_avmm|chnl_avmm_address[1] ,\inst_av_xcvr_avmm|chnl_avmm_address[0] }),
	.chnl_avmm_byteen({\inst_av_xcvr_avmm|chnl_avmm_byteen[1] ,\inst_av_xcvr_avmm|chnl_avmm_byteen[0] }),
	.avmm_interface_insts0w_pmatestbus_0(avmm_interface_insts0w_pmatestbus_0),
	.avmm_interface_insts0w_pmatestbus_1(avmm_interface_insts0w_pmatestbus_1),
	.avmm_interface_insts0w_pmatestbus_2(avmm_interface_insts0w_pmatestbus_2),
	.avmm_interface_insts0w_pmatestbus_3(avmm_interface_insts0w_pmatestbus_3),
	.avmm_interface_insts0w_pmatestbus_4(avmm_interface_insts0w_pmatestbus_4),
	.avmm_interface_insts0w_pmatestbus_5(avmm_interface_insts0w_pmatestbus_5),
	.avmm_interface_insts0w_pmatestbus_6(avmm_interface_insts0w_pmatestbus_6),
	.avmm_interface_insts0w_pmatestbus_7(avmm_interface_insts0w_pmatestbus_7),
	.avmm_interface_insts0w_pmatestbus_8(avmm_interface_insts0w_pmatestbus_8),
	.avmm_interface_insts0w_pmatestbus_9(avmm_interface_insts0w_pmatestbus_9),
	.avmm_interface_insts0w_pmatestbus_10(avmm_interface_insts0w_pmatestbus_10),
	.avmm_interface_insts0w_pmatestbus_11(avmm_interface_insts0w_pmatestbus_11),
	.avmm_interface_insts0w_pmatestbus_12(avmm_interface_insts0w_pmatestbus_12),
	.avmm_interface_insts0w_pmatestbus_13(avmm_interface_insts0w_pmatestbus_13),
	.avmm_interface_insts0w_pmatestbus_14(avmm_interface_insts0w_pmatestbus_14),
	.avmm_interface_insts0w_pmatestbus_15(avmm_interface_insts0w_pmatestbus_15),
	.avmm_interface_insts0w_pmatestbus_16(avmm_interface_insts0w_pmatestbus_16),
	.avmm_interface_insts0w_pmatestbus_17(avmm_interface_insts0w_pmatestbus_17),
	.avmm_interface_insts0w_pmatestbus_18(avmm_interface_insts0w_pmatestbus_18),
	.avmm_interface_insts0w_pmatestbus_19(avmm_interface_insts0w_pmatestbus_19),
	.avmm_interface_insts0w_pmatestbus_20(avmm_interface_insts0w_pmatestbus_20),
	.avmm_interface_insts0w_pmatestbus_21(avmm_interface_insts0w_pmatestbus_21),
	.avmm_interface_insts0w_pmatestbus_22(avmm_interface_insts0w_pmatestbus_22),
	.avmm_interface_insts0w_pmatestbus_23(avmm_interface_insts0w_pmatestbus_23),
	.blockselect_pcs8g_rx({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|blockselect }),
	.avmmreaddata_pcs8g_rx({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[15] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[14] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[13] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[12] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[11] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[10] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[9] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[8] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[7] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[6] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[5] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[4] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[3] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[2] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[1] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_rx_pcs|avmmreaddata[0] }),
	.blockselect_com_pld_pcs_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|blockselect }),
	.avmmreaddata_com_pld_pcs_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[15] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[14] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[13] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[12] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[11] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[10] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[9] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[8] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[7] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[6] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[5] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[4] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[3] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[2] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[1] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pld_pcs_interface|avmmreaddata[0] }),
	.blockselect_rx_pcs_pma_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|blockselect }),
	.avmmreaddata_rx_pcs_pma_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[15] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[14] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[13] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[12] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[11] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[10] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[9] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[8] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[7] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[6] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[5] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[4] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[3] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[2] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[1] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_rx_pcs_pma_interface|avmmreaddata[0] }),
	.pma_blockselect_tx_ser({\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|blockselect_ser }),
	.pma_avmmreaddata_tx_ser({\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[15] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[14] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[13] ,
\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[12] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[11] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[10] ,
\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[9] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[8] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[7] ,
\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[6] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[5] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[4] ,
\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[3] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[2] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[1] ,
\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_ser[0] }),
	.blockselect_com_pcs_pma_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|blockselect }),
	.avmmreaddata_com_pcs_pma_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[15] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[14] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[13] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[12] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[11] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[10] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[9] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[8] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[7] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[6] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[5] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[4] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[3] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[2] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[1] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_common_pcs_pma_interface|avmmreaddata[0] }),
	.pma_blockselect_rx_buf({\inst_av_pma|av_rx_pma|blockselect_buf[0] }),
	.pma_avmmreaddata_rx_buf({\inst_av_pma|av_rx_pma|avmmreaddata_buf[15] ,\inst_av_pma|av_rx_pma|avmmreaddata_buf[14] ,\inst_av_pma|av_rx_pma|avmmreaddata_buf[13] ,\inst_av_pma|av_rx_pma|avmmreaddata_buf[12] ,\inst_av_pma|av_rx_pma|avmmreaddata_buf[11] ,
\inst_av_pma|av_rx_pma|avmmreaddata_buf[10] ,\inst_av_pma|av_rx_pma|avmmreaddata_buf[9] ,\inst_av_pma|av_rx_pma|avmmreaddata_buf[8] ,\inst_av_pma|av_rx_pma|avmmreaddata_buf[7] ,\inst_av_pma|av_rx_pma|avmmreaddata_buf[6] ,
\inst_av_pma|av_rx_pma|avmmreaddata_buf[5] ,\inst_av_pma|av_rx_pma|avmmreaddata_buf[4] ,\inst_av_pma|av_rx_pma|avmmreaddata_buf[3] ,\inst_av_pma|av_rx_pma|avmmreaddata_buf[2] ,\inst_av_pma|av_rx_pma|avmmreaddata_buf[1] ,
\inst_av_pma|av_rx_pma|avmmreaddata_buf[0] }),
	.pma_blockselect_rx_mux({\inst_av_pma|av_rx_pma|blockselect_mux[0] }),
	.pma_avmmreaddata_rx_mux({\inst_av_pma|av_rx_pma|avmmreaddata_mux[15] ,\inst_av_pma|av_rx_pma|avmmreaddata_mux[14] ,\inst_av_pma|av_rx_pma|avmmreaddata_mux[13] ,\inst_av_pma|av_rx_pma|avmmreaddata_mux[12] ,\inst_av_pma|av_rx_pma|avmmreaddata_mux[11] ,
\inst_av_pma|av_rx_pma|avmmreaddata_mux[10] ,\inst_av_pma|av_rx_pma|avmmreaddata_mux[9] ,\inst_av_pma|av_rx_pma|avmmreaddata_mux[8] ,\inst_av_pma|av_rx_pma|avmmreaddata_mux[7] ,\inst_av_pma|av_rx_pma|avmmreaddata_mux[6] ,
\inst_av_pma|av_rx_pma|avmmreaddata_mux[5] ,\inst_av_pma|av_rx_pma|avmmreaddata_mux[4] ,\inst_av_pma|av_rx_pma|avmmreaddata_mux[3] ,\inst_av_pma|av_rx_pma|avmmreaddata_mux[2] ,\inst_av_pma|av_rx_pma|avmmreaddata_mux[1] ,
\inst_av_pma|av_rx_pma|avmmreaddata_mux[0] }),
	.blockselect_pcs8g_tx({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|blockselect }),
	.avmmreaddata_pcs8g_tx({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[15] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[14] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[13] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[12] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[11] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[10] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[9] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[8] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[7] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[6] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[5] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[4] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[3] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[2] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[1] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_8g_tx_pcs|avmmreaddata[0] }),
	.blockselect_tx_pcs_pma_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|blockselect }),
	.avmmreaddata_tx_pcs_pma_if({\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[15] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[14] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[13] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[12] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[11] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[10] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[9] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[8] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[7] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[6] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[5] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[4] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[3] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[2] ,\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[1] ,
\inst_av_pcs|ch[0].inst_av_pcs_ch|inst_av_hssi_tx_pcs_pma_interface|avmmreaddata[0] }),
	.pma_blockselect_tx_cgb({\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|blockselect_cgb }),
	.pma_avmmreaddata_tx_cgb({\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[15] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[14] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[13] ,
\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[12] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[11] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[10] ,
\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[9] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[8] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[7] ,
\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[6] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[5] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[4] ,
\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[3] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[2] ,\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[1] ,
\inst_av_pma|av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|avmmreaddata_cgb[0] }),
	.avmm_interface_insts0pld_avmm_readdata_0(avmm_interface_insts0pld_avmm_readdata_0),
	.avmm_interface_insts0pld_avmm_readdata_1(avmm_interface_insts0pld_avmm_readdata_1),
	.avmm_interface_insts0pld_avmm_readdata_2(avmm_interface_insts0pld_avmm_readdata_2),
	.avmm_interface_insts0pld_avmm_readdata_3(avmm_interface_insts0pld_avmm_readdata_3),
	.avmm_interface_insts0pld_avmm_readdata_4(avmm_interface_insts0pld_avmm_readdata_4),
	.avmm_interface_insts0pld_avmm_readdata_5(avmm_interface_insts0pld_avmm_readdata_5),
	.avmm_interface_insts0pld_avmm_readdata_6(avmm_interface_insts0pld_avmm_readdata_6),
	.avmm_interface_insts0pld_avmm_readdata_7(avmm_interface_insts0pld_avmm_readdata_7),
	.avmm_interface_insts0pld_avmm_readdata_8(avmm_interface_insts0pld_avmm_readdata_8),
	.avmm_interface_insts0pld_avmm_readdata_9(avmm_interface_insts0pld_avmm_readdata_9),
	.avmm_interface_insts0pld_avmm_readdata_10(avmm_interface_insts0pld_avmm_readdata_10),
	.avmm_interface_insts0pld_avmm_readdata_11(avmm_interface_insts0pld_avmm_readdata_11),
	.avmm_interface_insts0pld_avmm_readdata_12(avmm_interface_insts0pld_avmm_readdata_12),
	.avmm_interface_insts0pld_avmm_readdata_13(avmm_interface_insts0pld_avmm_readdata_13),
	.avmm_interface_insts0pld_avmm_readdata_14(avmm_interface_insts0pld_avmm_readdata_14),
	.avmm_interface_insts0pld_avmm_readdata_15(avmm_interface_insts0pld_avmm_readdata_15),
	.out_pld_8g_rxurstpcs_n_0(\inst_av_xcvr_avmm|out_pld_8g_rxurstpcs_n[0]~0_combout ),
	.out_pld_rxpma_rstb_in_0(\inst_av_xcvr_avmm|out_pld_rxpma_rstb_in[0]~0_combout ),
	.out_pld_8g_txurstpcs_n_0(\inst_av_xcvr_avmm|out_pld_8g_txurstpcs_n[0]~0_combout ),
	.gen_oc_regr_hardoccalen(\inst_av_xcvr_avmm|avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_oc_reg.r_hardoccalen~q ),
	.gen_slpbk_regr_seriallpbken(\inst_av_xcvr_avmm|avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_slpbk_reg.r_seriallpbken~q ),
	.rx_digitalreset_0(rx_digitalreset_0),
	.rx_analogreset_0(rx_analogreset_0),
	.tx_digitalreset_0(tx_digitalreset_0),
	.reconfig_to_xcvr_31(reconfig_to_xcvr_31),
	.reconfig_to_xcvr_0(reconfig_to_xcvr_0),
	.reconfig_to_xcvr_1(reconfig_to_xcvr_1),
	.reconfig_to_xcvr_22(reconfig_to_xcvr_22),
	.reconfig_to_xcvr_20(reconfig_to_xcvr_20),
	.reconfig_to_xcvr_19(reconfig_to_xcvr_19),
	.reconfig_to_xcvr_21(reconfig_to_xcvr_21),
	.reconfig_to_xcvr_23(reconfig_to_xcvr_23),
	.reconfig_to_xcvr_18(reconfig_to_xcvr_18),
	.reconfig_to_xcvr_45(reconfig_to_xcvr_45),
	.reconfig_to_xcvr_44(reconfig_to_xcvr_44),
	.reconfig_to_xcvr_24(reconfig_to_xcvr_24),
	.reconfig_to_xcvr_25(reconfig_to_xcvr_25),
	.reconfig_to_xcvr_26(reconfig_to_xcvr_26),
	.reconfig_to_xcvr_27(reconfig_to_xcvr_27),
	.reconfig_to_xcvr_28(reconfig_to_xcvr_28),
	.reconfig_to_xcvr_29(reconfig_to_xcvr_29),
	.reconfig_to_xcvr_30(reconfig_to_xcvr_30),
	.reconfig_to_xcvr_2(reconfig_to_xcvr_2),
	.reconfig_to_xcvr_3(reconfig_to_xcvr_3),
	.reconfig_to_xcvr_4(reconfig_to_xcvr_4),
	.reconfig_to_xcvr_5(reconfig_to_xcvr_5),
	.reconfig_to_xcvr_6(reconfig_to_xcvr_6),
	.reconfig_to_xcvr_7(reconfig_to_xcvr_7),
	.reconfig_to_xcvr_8(reconfig_to_xcvr_8),
	.reconfig_to_xcvr_9(reconfig_to_xcvr_9),
	.reconfig_to_xcvr_10(reconfig_to_xcvr_10),
	.reconfig_to_xcvr_11(reconfig_to_xcvr_11),
	.reconfig_to_xcvr_12(reconfig_to_xcvr_12),
	.reconfig_to_xcvr_13(reconfig_to_xcvr_13),
	.reconfig_to_xcvr_14(reconfig_to_xcvr_14),
	.reconfig_to_xcvr_15(reconfig_to_xcvr_15),
	.reconfig_to_xcvr_16(reconfig_to_xcvr_16),
	.reconfig_to_xcvr_17(reconfig_to_xcvr_17),
	.reconfig_to_xcvr_32(reconfig_to_xcvr_32),
	.reconfig_to_xcvr_33(reconfig_to_xcvr_33),
	.reconfig_to_xcvr_34(reconfig_to_xcvr_34),
	.reconfig_to_xcvr_35(reconfig_to_xcvr_35),
	.reconfig_to_xcvr_36(reconfig_to_xcvr_36),
	.reconfig_to_xcvr_37(reconfig_to_xcvr_37),
	.reconfig_to_xcvr_38(reconfig_to_xcvr_38),
	.reconfig_to_xcvr_39(reconfig_to_xcvr_39),
	.reconfig_to_xcvr_40(reconfig_to_xcvr_40),
	.reconfig_to_xcvr_41(reconfig_to_xcvr_41),
	.reconfig_to_xcvr_42(reconfig_to_xcvr_42),
	.reconfig_to_xcvr_43(reconfig_to_xcvr_43));

endmodule

module NATIVE_TRANSCEIVER_IP_av_pcs (
	out_blockselect_rx_pld_pcs_if,
	out_pld_8g_empty_rx,
	out_pld_8g_full_rx,
	out_pld_8g_rx_clk_out,
	avmmreaddata_0,
	avmmreaddata_1,
	avmmreaddata_2,
	avmmreaddata_3,
	avmmreaddata_4,
	avmmreaddata_5,
	avmmreaddata_6,
	avmmreaddata_7,
	avmmreaddata_8,
	avmmreaddata_9,
	avmmreaddata_10,
	avmmreaddata_11,
	avmmreaddata_12,
	avmmreaddata_13,
	avmmreaddata_14,
	avmmreaddata_15,
	dataouttopld_0,
	dataouttopld_1,
	dataouttopld_2,
	dataouttopld_3,
	dataouttopld_4,
	dataouttopld_5,
	dataouttopld_6,
	dataouttopld_7,
	dataouttopld_8,
	dataouttopld_9,
	dataouttopld_10,
	dataouttopld_11,
	dataouttopld_12,
	dataouttopld_13,
	dataouttopld_14,
	dataouttopld_15,
	dataouttopld_16,
	dataouttopld_17,
	dataouttopld_18,
	dataouttopld_19,
	dataouttopld_20,
	dataouttopld_21,
	dataouttopld_22,
	dataouttopld_23,
	dataouttopld_24,
	dataouttopld_25,
	dataouttopld_26,
	dataouttopld_27,
	dataouttopld_28,
	dataouttopld_29,
	dataouttopld_30,
	dataouttopld_31,
	dataouttopld_32,
	dataouttopld_33,
	dataouttopld_34,
	dataouttopld_35,
	dataouttopld_36,
	dataouttopld_37,
	dataouttopld_38,
	dataouttopld_39,
	dataouttopld_40,
	dataouttopld_41,
	dataouttopld_42,
	dataouttopld_43,
	dataouttopld_44,
	dataouttopld_45,
	dataouttopld_46,
	dataouttopld_47,
	dataouttopld_48,
	dataouttopld_49,
	dataouttopld_50,
	dataouttopld_51,
	dataouttopld_52,
	dataouttopld_53,
	dataouttopld_54,
	dataouttopld_55,
	dataouttopld_56,
	dataouttopld_57,
	dataouttopld_58,
	dataouttopld_59,
	dataouttopld_60,
	dataouttopld_61,
	dataouttopld_62,
	dataouttopld_63,
	rxdetectvalid,
	rxfound,
	clkdivrx_0,
	dout_0,
	dout_1,
	dout_2,
	dout_3,
	dout_4,
	dout_5,
	dout_6,
	dout_7,
	dout_8,
	dout_9,
	dout_10,
	dout_11,
	dout_12,
	dout_13,
	dout_14,
	dout_15,
	dout_16,
	dout_17,
	dout_18,
	dout_19,
	clklow_0,
	fref_0,
	rx_is_lockedtodata_0,
	out_blockselect_tx_pld_pcs_if,
	out_pld_8g_empty_tx,
	out_pld_8g_full_tx,
	out_pld_8g_tx_clk_out,
	avmmreaddata_01,
	avmmreaddata_16,
	avmmreaddata_21,
	avmmreaddata_31,
	avmmreaddata_41,
	avmmreaddata_51,
	avmmreaddata_61,
	avmmreaddata_71,
	avmmreaddata_81,
	avmmreaddata_91,
	avmmreaddata_101,
	avmmreaddata_111,
	avmmreaddata_121,
	avmmreaddata_131,
	avmmreaddata_141,
	avmmreaddata_151,
	chnl_avmm_write_0,
	chnl_avmm_read_0,
	chnl_avmm_clk_0,
	chnl_avmm_rstn_0,
	chnl_avmm_writedata_0,
	chnl_avmm_writedata_1,
	chnl_avmm_writedata_2,
	chnl_avmm_writedata_3,
	chnl_avmm_writedata_4,
	chnl_avmm_writedata_5,
	chnl_avmm_writedata_6,
	chnl_avmm_writedata_7,
	chnl_avmm_writedata_8,
	chnl_avmm_writedata_9,
	chnl_avmm_writedata_10,
	chnl_avmm_writedata_11,
	chnl_avmm_writedata_12,
	chnl_avmm_writedata_13,
	chnl_avmm_writedata_14,
	chnl_avmm_writedata_15,
	chnl_avmm_address_0,
	chnl_avmm_address_1,
	chnl_avmm_address_2,
	chnl_avmm_address_3,
	chnl_avmm_address_4,
	chnl_avmm_address_5,
	chnl_avmm_address_6,
	chnl_avmm_address_7,
	chnl_avmm_address_8,
	chnl_avmm_address_9,
	chnl_avmm_address_10,
	chnl_avmm_byteen_0,
	chnl_avmm_byteen_1,
	out_blockselect_pcs8g_rx,
	avmmreaddata_02,
	avmmreaddata_17,
	avmmreaddata_22,
	avmmreaddata_32,
	avmmreaddata_42,
	avmmreaddata_52,
	avmmreaddata_62,
	avmmreaddata_72,
	avmmreaddata_82,
	avmmreaddata_92,
	avmmreaddata_102,
	avmmreaddata_112,
	avmmreaddata_122,
	avmmreaddata_132,
	avmmreaddata_142,
	avmmreaddata_152,
	out_blockselect_com_pld_pcs_if,
	avmmreaddata_03,
	avmmreaddata_18,
	avmmreaddata_23,
	avmmreaddata_33,
	avmmreaddata_43,
	avmmreaddata_53,
	avmmreaddata_63,
	avmmreaddata_73,
	avmmreaddata_83,
	avmmreaddata_93,
	avmmreaddata_103,
	avmmreaddata_113,
	avmmreaddata_123,
	avmmreaddata_133,
	avmmreaddata_143,
	avmmreaddata_153,
	out_blockselect_rx_pcs_pma_if,
	out_pma_rxclkslip,
	pmarxpmarstb,
	avmmreaddata_04,
	avmmreaddata_19,
	avmmreaddata_24,
	avmmreaddata_34,
	avmmreaddata_44,
	avmmreaddata_54,
	avmmreaddata_64,
	avmmreaddata_74,
	avmmreaddata_84,
	avmmreaddata_94,
	avmmreaddata_104,
	avmmreaddata_114,
	avmmreaddata_124,
	avmmreaddata_134,
	avmmreaddata_144,
	avmmreaddata_154,
	clkdivtx,
	out_blockselect_com_pcs_pma_if,
	out_pma_ppm_lock,
	out_pma_early_eios,
	out_pma_ltr,
	out_pma_txdetectrx,
	out_pma_tx_elec_idle,
	avmmreaddata_05,
	avmmreaddata_110,
	avmmreaddata_25,
	avmmreaddata_35,
	avmmreaddata_45,
	avmmreaddata_55,
	avmmreaddata_65,
	avmmreaddata_75,
	avmmreaddata_85,
	avmmreaddata_95,
	avmmreaddata_105,
	avmmreaddata_115,
	avmmreaddata_125,
	avmmreaddata_135,
	avmmreaddata_145,
	avmmreaddata_155,
	sd_0,
	out_blockselect_pcs8g_tx,
	avmmreaddata_06,
	avmmreaddata_116,
	avmmreaddata_26,
	avmmreaddata_36,
	avmmreaddata_46,
	avmmreaddata_56,
	avmmreaddata_66,
	avmmreaddata_76,
	avmmreaddata_86,
	avmmreaddata_96,
	avmmreaddata_106,
	avmmreaddata_117,
	avmmreaddata_126,
	avmmreaddata_136,
	avmmreaddata_146,
	avmmreaddata_156,
	out_blockselect_tx_pcs_pma_if,
	avmmreaddata_07,
	avmmreaddata_118,
	avmmreaddata_27,
	avmmreaddata_37,
	avmmreaddata_47,
	avmmreaddata_57,
	avmmreaddata_67,
	avmmreaddata_77,
	avmmreaddata_87,
	avmmreaddata_97,
	avmmreaddata_107,
	avmmreaddata_119,
	avmmreaddata_127,
	avmmreaddata_137,
	avmmreaddata_147,
	avmmreaddata_157,
	dataouttopma_0,
	dataouttopma_1,
	dataouttopma_2,
	dataouttopma_3,
	dataouttopma_4,
	dataouttopma_5,
	dataouttopma_6,
	dataouttopma_7,
	dataouttopma_8,
	dataouttopma_9,
	dataouttopma_10,
	dataouttopma_11,
	dataouttopma_12,
	dataouttopma_13,
	dataouttopma_14,
	dataouttopma_15,
	dataouttopma_16,
	dataouttopma_17,
	dataouttopma_18,
	dataouttopma_19,
	out_pld_8g_rxurstpcs_n_0,
	out_pld_rxpma_rstb_in_0,
	out_pld_8g_txurstpcs_n_0,
	rx_std_coreclkin_0,
	tx_std_coreclkin_0,
	tx_parallel_data_0,
	tx_parallel_data_1,
	tx_parallel_data_2,
	tx_parallel_data_3,
	tx_parallel_data_4,
	tx_parallel_data_5,
	tx_parallel_data_6,
	tx_parallel_data_7,
	tx_parallel_data_8,
	tx_parallel_data_9,
	tx_parallel_data_10,
	tx_parallel_data_11,
	tx_parallel_data_12,
	tx_parallel_data_13,
	tx_parallel_data_14,
	tx_parallel_data_15,
	tx_parallel_data_16,
	tx_parallel_data_17,
	tx_parallel_data_18,
	tx_parallel_data_19,
	tx_parallel_data_20,
	tx_parallel_data_21,
	tx_parallel_data_22,
	tx_parallel_data_23,
	tx_parallel_data_24,
	tx_parallel_data_25,
	tx_parallel_data_26,
	tx_parallel_data_27,
	tx_parallel_data_28,
	tx_parallel_data_29,
	tx_parallel_data_30,
	tx_parallel_data_31,
	tx_parallel_data_32,
	tx_parallel_data_33,
	tx_parallel_data_34,
	tx_parallel_data_35,
	tx_parallel_data_36,
	tx_parallel_data_37,
	tx_parallel_data_38,
	tx_parallel_data_39,
	tx_parallel_data_40,
	tx_parallel_data_41,
	tx_parallel_data_42,
	tx_parallel_data_43,
	rx_set_locktoref_0)/* synthesis synthesis_greybox=0 */;
output 	[0:0] out_blockselect_rx_pld_pcs_if;
output 	[0:0] out_pld_8g_empty_rx;
output 	[0:0] out_pld_8g_full_rx;
output 	[0:0] out_pld_8g_rx_clk_out;
output 	avmmreaddata_0;
output 	avmmreaddata_1;
output 	avmmreaddata_2;
output 	avmmreaddata_3;
output 	avmmreaddata_4;
output 	avmmreaddata_5;
output 	avmmreaddata_6;
output 	avmmreaddata_7;
output 	avmmreaddata_8;
output 	avmmreaddata_9;
output 	avmmreaddata_10;
output 	avmmreaddata_11;
output 	avmmreaddata_12;
output 	avmmreaddata_13;
output 	avmmreaddata_14;
output 	avmmreaddata_15;
output 	dataouttopld_0;
output 	dataouttopld_1;
output 	dataouttopld_2;
output 	dataouttopld_3;
output 	dataouttopld_4;
output 	dataouttopld_5;
output 	dataouttopld_6;
output 	dataouttopld_7;
output 	dataouttopld_8;
output 	dataouttopld_9;
output 	dataouttopld_10;
output 	dataouttopld_11;
output 	dataouttopld_12;
output 	dataouttopld_13;
output 	dataouttopld_14;
output 	dataouttopld_15;
output 	dataouttopld_16;
output 	dataouttopld_17;
output 	dataouttopld_18;
output 	dataouttopld_19;
output 	dataouttopld_20;
output 	dataouttopld_21;
output 	dataouttopld_22;
output 	dataouttopld_23;
output 	dataouttopld_24;
output 	dataouttopld_25;
output 	dataouttopld_26;
output 	dataouttopld_27;
output 	dataouttopld_28;
output 	dataouttopld_29;
output 	dataouttopld_30;
output 	dataouttopld_31;
output 	dataouttopld_32;
output 	dataouttopld_33;
output 	dataouttopld_34;
output 	dataouttopld_35;
output 	dataouttopld_36;
output 	dataouttopld_37;
output 	dataouttopld_38;
output 	dataouttopld_39;
output 	dataouttopld_40;
output 	dataouttopld_41;
output 	dataouttopld_42;
output 	dataouttopld_43;
output 	dataouttopld_44;
output 	dataouttopld_45;
output 	dataouttopld_46;
output 	dataouttopld_47;
output 	dataouttopld_48;
output 	dataouttopld_49;
output 	dataouttopld_50;
output 	dataouttopld_51;
output 	dataouttopld_52;
output 	dataouttopld_53;
output 	dataouttopld_54;
output 	dataouttopld_55;
output 	dataouttopld_56;
output 	dataouttopld_57;
output 	dataouttopld_58;
output 	dataouttopld_59;
output 	dataouttopld_60;
output 	dataouttopld_61;
output 	dataouttopld_62;
output 	dataouttopld_63;
input 	rxdetectvalid;
input 	rxfound;
input 	clkdivrx_0;
input 	dout_0;
input 	dout_1;
input 	dout_2;
input 	dout_3;
input 	dout_4;
input 	dout_5;
input 	dout_6;
input 	dout_7;
input 	dout_8;
input 	dout_9;
input 	dout_10;
input 	dout_11;
input 	dout_12;
input 	dout_13;
input 	dout_14;
input 	dout_15;
input 	dout_16;
input 	dout_17;
input 	dout_18;
input 	dout_19;
input 	clklow_0;
input 	fref_0;
input 	rx_is_lockedtodata_0;
output 	[0:0] out_blockselect_tx_pld_pcs_if;
output 	[0:0] out_pld_8g_empty_tx;
output 	[0:0] out_pld_8g_full_tx;
output 	[0:0] out_pld_8g_tx_clk_out;
output 	avmmreaddata_01;
output 	avmmreaddata_16;
output 	avmmreaddata_21;
output 	avmmreaddata_31;
output 	avmmreaddata_41;
output 	avmmreaddata_51;
output 	avmmreaddata_61;
output 	avmmreaddata_71;
output 	avmmreaddata_81;
output 	avmmreaddata_91;
output 	avmmreaddata_101;
output 	avmmreaddata_111;
output 	avmmreaddata_121;
output 	avmmreaddata_131;
output 	avmmreaddata_141;
output 	avmmreaddata_151;
input 	chnl_avmm_write_0;
input 	chnl_avmm_read_0;
input 	chnl_avmm_clk_0;
input 	chnl_avmm_rstn_0;
input 	chnl_avmm_writedata_0;
input 	chnl_avmm_writedata_1;
input 	chnl_avmm_writedata_2;
input 	chnl_avmm_writedata_3;
input 	chnl_avmm_writedata_4;
input 	chnl_avmm_writedata_5;
input 	chnl_avmm_writedata_6;
input 	chnl_avmm_writedata_7;
input 	chnl_avmm_writedata_8;
input 	chnl_avmm_writedata_9;
input 	chnl_avmm_writedata_10;
input 	chnl_avmm_writedata_11;
input 	chnl_avmm_writedata_12;
input 	chnl_avmm_writedata_13;
input 	chnl_avmm_writedata_14;
input 	chnl_avmm_writedata_15;
input 	chnl_avmm_address_0;
input 	chnl_avmm_address_1;
input 	chnl_avmm_address_2;
input 	chnl_avmm_address_3;
input 	chnl_avmm_address_4;
input 	chnl_avmm_address_5;
input 	chnl_avmm_address_6;
input 	chnl_avmm_address_7;
input 	chnl_avmm_address_8;
input 	chnl_avmm_address_9;
input 	chnl_avmm_address_10;
input 	chnl_avmm_byteen_0;
input 	chnl_avmm_byteen_1;
output 	[0:0] out_blockselect_pcs8g_rx;
output 	avmmreaddata_02;
output 	avmmreaddata_17;
output 	avmmreaddata_22;
output 	avmmreaddata_32;
output 	avmmreaddata_42;
output 	avmmreaddata_52;
output 	avmmreaddata_62;
output 	avmmreaddata_72;
output 	avmmreaddata_82;
output 	avmmreaddata_92;
output 	avmmreaddata_102;
output 	avmmreaddata_112;
output 	avmmreaddata_122;
output 	avmmreaddata_132;
output 	avmmreaddata_142;
output 	avmmreaddata_152;
output 	[0:0] out_blockselect_com_pld_pcs_if;
output 	avmmreaddata_03;
output 	avmmreaddata_18;
output 	avmmreaddata_23;
output 	avmmreaddata_33;
output 	avmmreaddata_43;
output 	avmmreaddata_53;
output 	avmmreaddata_63;
output 	avmmreaddata_73;
output 	avmmreaddata_83;
output 	avmmreaddata_93;
output 	avmmreaddata_103;
output 	avmmreaddata_113;
output 	avmmreaddata_123;
output 	avmmreaddata_133;
output 	avmmreaddata_143;
output 	avmmreaddata_153;
output 	[0:0] out_blockselect_rx_pcs_pma_if;
output 	[0:0] out_pma_rxclkslip;
output 	pmarxpmarstb;
output 	avmmreaddata_04;
output 	avmmreaddata_19;
output 	avmmreaddata_24;
output 	avmmreaddata_34;
output 	avmmreaddata_44;
output 	avmmreaddata_54;
output 	avmmreaddata_64;
output 	avmmreaddata_74;
output 	avmmreaddata_84;
output 	avmmreaddata_94;
output 	avmmreaddata_104;
output 	avmmreaddata_114;
output 	avmmreaddata_124;
output 	avmmreaddata_134;
output 	avmmreaddata_144;
output 	avmmreaddata_154;
input 	clkdivtx;
output 	[0:0] out_blockselect_com_pcs_pma_if;
output 	[0:0] out_pma_ppm_lock;
output 	[0:0] out_pma_early_eios;
output 	[0:0] out_pma_ltr;
output 	[0:0] out_pma_txdetectrx;
output 	[0:0] out_pma_tx_elec_idle;
output 	avmmreaddata_05;
output 	avmmreaddata_110;
output 	avmmreaddata_25;
output 	avmmreaddata_35;
output 	avmmreaddata_45;
output 	avmmreaddata_55;
output 	avmmreaddata_65;
output 	avmmreaddata_75;
output 	avmmreaddata_85;
output 	avmmreaddata_95;
output 	avmmreaddata_105;
output 	avmmreaddata_115;
output 	avmmreaddata_125;
output 	avmmreaddata_135;
output 	avmmreaddata_145;
output 	avmmreaddata_155;
input 	sd_0;
output 	[0:0] out_blockselect_pcs8g_tx;
output 	avmmreaddata_06;
output 	avmmreaddata_116;
output 	avmmreaddata_26;
output 	avmmreaddata_36;
output 	avmmreaddata_46;
output 	avmmreaddata_56;
output 	avmmreaddata_66;
output 	avmmreaddata_76;
output 	avmmreaddata_86;
output 	avmmreaddata_96;
output 	avmmreaddata_106;
output 	avmmreaddata_117;
output 	avmmreaddata_126;
output 	avmmreaddata_136;
output 	avmmreaddata_146;
output 	avmmreaddata_156;
output 	[0:0] out_blockselect_tx_pcs_pma_if;
output 	avmmreaddata_07;
output 	avmmreaddata_118;
output 	avmmreaddata_27;
output 	avmmreaddata_37;
output 	avmmreaddata_47;
output 	avmmreaddata_57;
output 	avmmreaddata_67;
output 	avmmreaddata_77;
output 	avmmreaddata_87;
output 	avmmreaddata_97;
output 	avmmreaddata_107;
output 	avmmreaddata_119;
output 	avmmreaddata_127;
output 	avmmreaddata_137;
output 	avmmreaddata_147;
output 	avmmreaddata_157;
output 	dataouttopma_0;
output 	dataouttopma_1;
output 	dataouttopma_2;
output 	dataouttopma_3;
output 	dataouttopma_4;
output 	dataouttopma_5;
output 	dataouttopma_6;
output 	dataouttopma_7;
output 	dataouttopma_8;
output 	dataouttopma_9;
output 	dataouttopma_10;
output 	dataouttopma_11;
output 	dataouttopma_12;
output 	dataouttopma_13;
output 	dataouttopma_14;
output 	dataouttopma_15;
output 	dataouttopma_16;
output 	dataouttopma_17;
output 	dataouttopma_18;
output 	dataouttopma_19;
input 	out_pld_8g_rxurstpcs_n_0;
input 	out_pld_rxpma_rstb_in_0;
input 	out_pld_8g_txurstpcs_n_0;
input 	rx_std_coreclkin_0;
input 	tx_std_coreclkin_0;
input 	tx_parallel_data_0;
input 	tx_parallel_data_1;
input 	tx_parallel_data_2;
input 	tx_parallel_data_3;
input 	tx_parallel_data_4;
input 	tx_parallel_data_5;
input 	tx_parallel_data_6;
input 	tx_parallel_data_7;
input 	tx_parallel_data_8;
input 	tx_parallel_data_9;
input 	tx_parallel_data_10;
input 	tx_parallel_data_11;
input 	tx_parallel_data_12;
input 	tx_parallel_data_13;
input 	tx_parallel_data_14;
input 	tx_parallel_data_15;
input 	tx_parallel_data_16;
input 	tx_parallel_data_17;
input 	tx_parallel_data_18;
input 	tx_parallel_data_19;
input 	tx_parallel_data_20;
input 	tx_parallel_data_21;
input 	tx_parallel_data_22;
input 	tx_parallel_data_23;
input 	tx_parallel_data_24;
input 	tx_parallel_data_25;
input 	tx_parallel_data_26;
input 	tx_parallel_data_27;
input 	tx_parallel_data_28;
input 	tx_parallel_data_29;
input 	tx_parallel_data_30;
input 	tx_parallel_data_31;
input 	tx_parallel_data_32;
input 	tx_parallel_data_33;
input 	tx_parallel_data_34;
input 	tx_parallel_data_35;
input 	tx_parallel_data_36;
input 	tx_parallel_data_37;
input 	tx_parallel_data_38;
input 	tx_parallel_data_39;
input 	tx_parallel_data_40;
input 	tx_parallel_data_41;
input 	tx_parallel_data_42;
input 	tx_parallel_data_43;
input 	rx_set_locktoref_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



NATIVE_TRANSCEIVER_IP_av_pcs_ch \ch[0].inst_av_pcs_ch (
	.out_blockselect_rx_pld_pcs_if(out_blockselect_rx_pld_pcs_if[0]),
	.out_pld_8g_empty_rx(out_pld_8g_empty_rx[0]),
	.out_pld_8g_full_rx(out_pld_8g_full_rx[0]),
	.out_pld_8g_rx_clk_out(out_pld_8g_rx_clk_out[0]),
	.avmmreaddata_0(avmmreaddata_0),
	.avmmreaddata_1(avmmreaddata_1),
	.avmmreaddata_2(avmmreaddata_2),
	.avmmreaddata_3(avmmreaddata_3),
	.avmmreaddata_4(avmmreaddata_4),
	.avmmreaddata_5(avmmreaddata_5),
	.avmmreaddata_6(avmmreaddata_6),
	.avmmreaddata_7(avmmreaddata_7),
	.avmmreaddata_8(avmmreaddata_8),
	.avmmreaddata_9(avmmreaddata_9),
	.avmmreaddata_10(avmmreaddata_10),
	.avmmreaddata_11(avmmreaddata_11),
	.avmmreaddata_12(avmmreaddata_12),
	.avmmreaddata_13(avmmreaddata_13),
	.avmmreaddata_14(avmmreaddata_14),
	.avmmreaddata_15(avmmreaddata_15),
	.dataouttopld_0(dataouttopld_0),
	.dataouttopld_1(dataouttopld_1),
	.dataouttopld_2(dataouttopld_2),
	.dataouttopld_3(dataouttopld_3),
	.dataouttopld_4(dataouttopld_4),
	.dataouttopld_5(dataouttopld_5),
	.dataouttopld_6(dataouttopld_6),
	.dataouttopld_7(dataouttopld_7),
	.dataouttopld_8(dataouttopld_8),
	.dataouttopld_9(dataouttopld_9),
	.dataouttopld_10(dataouttopld_10),
	.dataouttopld_11(dataouttopld_11),
	.dataouttopld_12(dataouttopld_12),
	.dataouttopld_13(dataouttopld_13),
	.dataouttopld_14(dataouttopld_14),
	.dataouttopld_15(dataouttopld_15),
	.dataouttopld_16(dataouttopld_16),
	.dataouttopld_17(dataouttopld_17),
	.dataouttopld_18(dataouttopld_18),
	.dataouttopld_19(dataouttopld_19),
	.dataouttopld_20(dataouttopld_20),
	.dataouttopld_21(dataouttopld_21),
	.dataouttopld_22(dataouttopld_22),
	.dataouttopld_23(dataouttopld_23),
	.dataouttopld_24(dataouttopld_24),
	.dataouttopld_25(dataouttopld_25),
	.dataouttopld_26(dataouttopld_26),
	.dataouttopld_27(dataouttopld_27),
	.dataouttopld_28(dataouttopld_28),
	.dataouttopld_29(dataouttopld_29),
	.dataouttopld_30(dataouttopld_30),
	.dataouttopld_31(dataouttopld_31),
	.dataouttopld_32(dataouttopld_32),
	.dataouttopld_33(dataouttopld_33),
	.dataouttopld_34(dataouttopld_34),
	.dataouttopld_35(dataouttopld_35),
	.dataouttopld_36(dataouttopld_36),
	.dataouttopld_37(dataouttopld_37),
	.dataouttopld_38(dataouttopld_38),
	.dataouttopld_39(dataouttopld_39),
	.dataouttopld_40(dataouttopld_40),
	.dataouttopld_41(dataouttopld_41),
	.dataouttopld_42(dataouttopld_42),
	.dataouttopld_43(dataouttopld_43),
	.dataouttopld_44(dataouttopld_44),
	.dataouttopld_45(dataouttopld_45),
	.dataouttopld_46(dataouttopld_46),
	.dataouttopld_47(dataouttopld_47),
	.dataouttopld_48(dataouttopld_48),
	.dataouttopld_49(dataouttopld_49),
	.dataouttopld_50(dataouttopld_50),
	.dataouttopld_51(dataouttopld_51),
	.dataouttopld_52(dataouttopld_52),
	.dataouttopld_53(dataouttopld_53),
	.dataouttopld_54(dataouttopld_54),
	.dataouttopld_55(dataouttopld_55),
	.dataouttopld_56(dataouttopld_56),
	.dataouttopld_57(dataouttopld_57),
	.dataouttopld_58(dataouttopld_58),
	.dataouttopld_59(dataouttopld_59),
	.dataouttopld_60(dataouttopld_60),
	.dataouttopld_61(dataouttopld_61),
	.dataouttopld_62(dataouttopld_62),
	.dataouttopld_63(dataouttopld_63),
	.rxdetectvalid(rxdetectvalid),
	.rxfound(rxfound),
	.clkdivrx_0(clkdivrx_0),
	.dout_0(dout_0),
	.dout_1(dout_1),
	.dout_2(dout_2),
	.dout_3(dout_3),
	.dout_4(dout_4),
	.dout_5(dout_5),
	.dout_6(dout_6),
	.dout_7(dout_7),
	.dout_8(dout_8),
	.dout_9(dout_9),
	.dout_10(dout_10),
	.dout_11(dout_11),
	.dout_12(dout_12),
	.dout_13(dout_13),
	.dout_14(dout_14),
	.dout_15(dout_15),
	.dout_16(dout_16),
	.dout_17(dout_17),
	.dout_18(dout_18),
	.dout_19(dout_19),
	.clklow_0(clklow_0),
	.fref_0(fref_0),
	.rx_is_lockedtodata_0(rx_is_lockedtodata_0),
	.out_blockselect_tx_pld_pcs_if(out_blockselect_tx_pld_pcs_if[0]),
	.out_pld_8g_empty_tx(out_pld_8g_empty_tx[0]),
	.out_pld_8g_full_tx(out_pld_8g_full_tx[0]),
	.out_pld_8g_tx_clk_out(out_pld_8g_tx_clk_out[0]),
	.avmmreaddata_01(avmmreaddata_01),
	.avmmreaddata_16(avmmreaddata_16),
	.avmmreaddata_21(avmmreaddata_21),
	.avmmreaddata_31(avmmreaddata_31),
	.avmmreaddata_41(avmmreaddata_41),
	.avmmreaddata_51(avmmreaddata_51),
	.avmmreaddata_61(avmmreaddata_61),
	.avmmreaddata_71(avmmreaddata_71),
	.avmmreaddata_81(avmmreaddata_81),
	.avmmreaddata_91(avmmreaddata_91),
	.avmmreaddata_101(avmmreaddata_101),
	.avmmreaddata_111(avmmreaddata_111),
	.avmmreaddata_121(avmmreaddata_121),
	.avmmreaddata_131(avmmreaddata_131),
	.avmmreaddata_141(avmmreaddata_141),
	.avmmreaddata_151(avmmreaddata_151),
	.chnl_avmm_write_0(chnl_avmm_write_0),
	.chnl_avmm_read_0(chnl_avmm_read_0),
	.chnl_avmm_clk_0(chnl_avmm_clk_0),
	.chnl_avmm_rstn_0(chnl_avmm_rstn_0),
	.chnl_avmm_writedata_0(chnl_avmm_writedata_0),
	.chnl_avmm_writedata_1(chnl_avmm_writedata_1),
	.chnl_avmm_writedata_2(chnl_avmm_writedata_2),
	.chnl_avmm_writedata_3(chnl_avmm_writedata_3),
	.chnl_avmm_writedata_4(chnl_avmm_writedata_4),
	.chnl_avmm_writedata_5(chnl_avmm_writedata_5),
	.chnl_avmm_writedata_6(chnl_avmm_writedata_6),
	.chnl_avmm_writedata_7(chnl_avmm_writedata_7),
	.chnl_avmm_writedata_8(chnl_avmm_writedata_8),
	.chnl_avmm_writedata_9(chnl_avmm_writedata_9),
	.chnl_avmm_writedata_10(chnl_avmm_writedata_10),
	.chnl_avmm_writedata_11(chnl_avmm_writedata_11),
	.chnl_avmm_writedata_12(chnl_avmm_writedata_12),
	.chnl_avmm_writedata_13(chnl_avmm_writedata_13),
	.chnl_avmm_writedata_14(chnl_avmm_writedata_14),
	.chnl_avmm_writedata_15(chnl_avmm_writedata_15),
	.chnl_avmm_address_0(chnl_avmm_address_0),
	.chnl_avmm_address_1(chnl_avmm_address_1),
	.chnl_avmm_address_2(chnl_avmm_address_2),
	.chnl_avmm_address_3(chnl_avmm_address_3),
	.chnl_avmm_address_4(chnl_avmm_address_4),
	.chnl_avmm_address_5(chnl_avmm_address_5),
	.chnl_avmm_address_6(chnl_avmm_address_6),
	.chnl_avmm_address_7(chnl_avmm_address_7),
	.chnl_avmm_address_8(chnl_avmm_address_8),
	.chnl_avmm_address_9(chnl_avmm_address_9),
	.chnl_avmm_address_10(chnl_avmm_address_10),
	.chnl_avmm_byteen_0(chnl_avmm_byteen_0),
	.chnl_avmm_byteen_1(chnl_avmm_byteen_1),
	.out_blockselect_pcs8g_rx(out_blockselect_pcs8g_rx[0]),
	.avmmreaddata_02(avmmreaddata_02),
	.avmmreaddata_17(avmmreaddata_17),
	.avmmreaddata_22(avmmreaddata_22),
	.avmmreaddata_32(avmmreaddata_32),
	.avmmreaddata_42(avmmreaddata_42),
	.avmmreaddata_52(avmmreaddata_52),
	.avmmreaddata_62(avmmreaddata_62),
	.avmmreaddata_72(avmmreaddata_72),
	.avmmreaddata_82(avmmreaddata_82),
	.avmmreaddata_92(avmmreaddata_92),
	.avmmreaddata_102(avmmreaddata_102),
	.avmmreaddata_112(avmmreaddata_112),
	.avmmreaddata_122(avmmreaddata_122),
	.avmmreaddata_132(avmmreaddata_132),
	.avmmreaddata_142(avmmreaddata_142),
	.avmmreaddata_152(avmmreaddata_152),
	.out_blockselect_com_pld_pcs_if(out_blockselect_com_pld_pcs_if[0]),
	.avmmreaddata_03(avmmreaddata_03),
	.avmmreaddata_18(avmmreaddata_18),
	.avmmreaddata_23(avmmreaddata_23),
	.avmmreaddata_33(avmmreaddata_33),
	.avmmreaddata_43(avmmreaddata_43),
	.avmmreaddata_53(avmmreaddata_53),
	.avmmreaddata_63(avmmreaddata_63),
	.avmmreaddata_73(avmmreaddata_73),
	.avmmreaddata_83(avmmreaddata_83),
	.avmmreaddata_93(avmmreaddata_93),
	.avmmreaddata_103(avmmreaddata_103),
	.avmmreaddata_113(avmmreaddata_113),
	.avmmreaddata_123(avmmreaddata_123),
	.avmmreaddata_133(avmmreaddata_133),
	.avmmreaddata_143(avmmreaddata_143),
	.avmmreaddata_153(avmmreaddata_153),
	.out_blockselect_rx_pcs_pma_if(out_blockselect_rx_pcs_pma_if[0]),
	.out_pma_rxclkslip(out_pma_rxclkslip[0]),
	.pmarxpmarstb(pmarxpmarstb),
	.avmmreaddata_04(avmmreaddata_04),
	.avmmreaddata_19(avmmreaddata_19),
	.avmmreaddata_24(avmmreaddata_24),
	.avmmreaddata_34(avmmreaddata_34),
	.avmmreaddata_44(avmmreaddata_44),
	.avmmreaddata_54(avmmreaddata_54),
	.avmmreaddata_64(avmmreaddata_64),
	.avmmreaddata_74(avmmreaddata_74),
	.avmmreaddata_84(avmmreaddata_84),
	.avmmreaddata_94(avmmreaddata_94),
	.avmmreaddata_104(avmmreaddata_104),
	.avmmreaddata_114(avmmreaddata_114),
	.avmmreaddata_124(avmmreaddata_124),
	.avmmreaddata_134(avmmreaddata_134),
	.avmmreaddata_144(avmmreaddata_144),
	.avmmreaddata_154(avmmreaddata_154),
	.clkdivtx(clkdivtx),
	.out_blockselect_com_pcs_pma_if(out_blockselect_com_pcs_pma_if[0]),
	.out_pma_ppm_lock(out_pma_ppm_lock[0]),
	.out_pma_early_eios(out_pma_early_eios[0]),
	.out_pma_ltr(out_pma_ltr[0]),
	.out_pma_txdetectrx(out_pma_txdetectrx[0]),
	.out_pma_tx_elec_idle(out_pma_tx_elec_idle[0]),
	.avmmreaddata_05(avmmreaddata_05),
	.avmmreaddata_110(avmmreaddata_110),
	.avmmreaddata_25(avmmreaddata_25),
	.avmmreaddata_35(avmmreaddata_35),
	.avmmreaddata_45(avmmreaddata_45),
	.avmmreaddata_55(avmmreaddata_55),
	.avmmreaddata_65(avmmreaddata_65),
	.avmmreaddata_75(avmmreaddata_75),
	.avmmreaddata_85(avmmreaddata_85),
	.avmmreaddata_95(avmmreaddata_95),
	.avmmreaddata_105(avmmreaddata_105),
	.avmmreaddata_115(avmmreaddata_115),
	.avmmreaddata_125(avmmreaddata_125),
	.avmmreaddata_135(avmmreaddata_135),
	.avmmreaddata_145(avmmreaddata_145),
	.avmmreaddata_155(avmmreaddata_155),
	.sd_0(sd_0),
	.out_blockselect_pcs8g_tx(out_blockselect_pcs8g_tx[0]),
	.avmmreaddata_06(avmmreaddata_06),
	.avmmreaddata_116(avmmreaddata_116),
	.avmmreaddata_26(avmmreaddata_26),
	.avmmreaddata_36(avmmreaddata_36),
	.avmmreaddata_46(avmmreaddata_46),
	.avmmreaddata_56(avmmreaddata_56),
	.avmmreaddata_66(avmmreaddata_66),
	.avmmreaddata_76(avmmreaddata_76),
	.avmmreaddata_86(avmmreaddata_86),
	.avmmreaddata_96(avmmreaddata_96),
	.avmmreaddata_106(avmmreaddata_106),
	.avmmreaddata_117(avmmreaddata_117),
	.avmmreaddata_126(avmmreaddata_126),
	.avmmreaddata_136(avmmreaddata_136),
	.avmmreaddata_146(avmmreaddata_146),
	.avmmreaddata_156(avmmreaddata_156),
	.out_blockselect_tx_pcs_pma_if(out_blockselect_tx_pcs_pma_if[0]),
	.avmmreaddata_07(avmmreaddata_07),
	.avmmreaddata_118(avmmreaddata_118),
	.avmmreaddata_27(avmmreaddata_27),
	.avmmreaddata_37(avmmreaddata_37),
	.avmmreaddata_47(avmmreaddata_47),
	.avmmreaddata_57(avmmreaddata_57),
	.avmmreaddata_67(avmmreaddata_67),
	.avmmreaddata_77(avmmreaddata_77),
	.avmmreaddata_87(avmmreaddata_87),
	.avmmreaddata_97(avmmreaddata_97),
	.avmmreaddata_107(avmmreaddata_107),
	.avmmreaddata_119(avmmreaddata_119),
	.avmmreaddata_127(avmmreaddata_127),
	.avmmreaddata_137(avmmreaddata_137),
	.avmmreaddata_147(avmmreaddata_147),
	.avmmreaddata_157(avmmreaddata_157),
	.dataouttopma_0(dataouttopma_0),
	.dataouttopma_1(dataouttopma_1),
	.dataouttopma_2(dataouttopma_2),
	.dataouttopma_3(dataouttopma_3),
	.dataouttopma_4(dataouttopma_4),
	.dataouttopma_5(dataouttopma_5),
	.dataouttopma_6(dataouttopma_6),
	.dataouttopma_7(dataouttopma_7),
	.dataouttopma_8(dataouttopma_8),
	.dataouttopma_9(dataouttopma_9),
	.dataouttopma_10(dataouttopma_10),
	.dataouttopma_11(dataouttopma_11),
	.dataouttopma_12(dataouttopma_12),
	.dataouttopma_13(dataouttopma_13),
	.dataouttopma_14(dataouttopma_14),
	.dataouttopma_15(dataouttopma_15),
	.dataouttopma_16(dataouttopma_16),
	.dataouttopma_17(dataouttopma_17),
	.dataouttopma_18(dataouttopma_18),
	.dataouttopma_19(dataouttopma_19),
	.out_pld_8g_rxurstpcs_n_0(out_pld_8g_rxurstpcs_n_0),
	.out_pld_rxpma_rstb_in_0(out_pld_rxpma_rstb_in_0),
	.out_pld_8g_txurstpcs_n_0(out_pld_8g_txurstpcs_n_0),
	.rx_std_coreclkin_0(rx_std_coreclkin_0),
	.tx_std_coreclkin_0(tx_std_coreclkin_0),
	.tx_parallel_data_0(tx_parallel_data_0),
	.tx_parallel_data_1(tx_parallel_data_1),
	.tx_parallel_data_2(tx_parallel_data_2),
	.tx_parallel_data_3(tx_parallel_data_3),
	.tx_parallel_data_4(tx_parallel_data_4),
	.tx_parallel_data_5(tx_parallel_data_5),
	.tx_parallel_data_6(tx_parallel_data_6),
	.tx_parallel_data_7(tx_parallel_data_7),
	.tx_parallel_data_8(tx_parallel_data_8),
	.tx_parallel_data_9(tx_parallel_data_9),
	.tx_parallel_data_10(tx_parallel_data_10),
	.tx_parallel_data_11(tx_parallel_data_11),
	.tx_parallel_data_12(tx_parallel_data_12),
	.tx_parallel_data_13(tx_parallel_data_13),
	.tx_parallel_data_14(tx_parallel_data_14),
	.tx_parallel_data_15(tx_parallel_data_15),
	.tx_parallel_data_16(tx_parallel_data_16),
	.tx_parallel_data_17(tx_parallel_data_17),
	.tx_parallel_data_18(tx_parallel_data_18),
	.tx_parallel_data_19(tx_parallel_data_19),
	.tx_parallel_data_20(tx_parallel_data_20),
	.tx_parallel_data_21(tx_parallel_data_21),
	.tx_parallel_data_22(tx_parallel_data_22),
	.tx_parallel_data_23(tx_parallel_data_23),
	.tx_parallel_data_24(tx_parallel_data_24),
	.tx_parallel_data_25(tx_parallel_data_25),
	.tx_parallel_data_26(tx_parallel_data_26),
	.tx_parallel_data_27(tx_parallel_data_27),
	.tx_parallel_data_28(tx_parallel_data_28),
	.tx_parallel_data_29(tx_parallel_data_29),
	.tx_parallel_data_30(tx_parallel_data_30),
	.tx_parallel_data_31(tx_parallel_data_31),
	.tx_parallel_data_32(tx_parallel_data_32),
	.tx_parallel_data_33(tx_parallel_data_33),
	.tx_parallel_data_34(tx_parallel_data_34),
	.tx_parallel_data_35(tx_parallel_data_35),
	.tx_parallel_data_36(tx_parallel_data_36),
	.tx_parallel_data_37(tx_parallel_data_37),
	.tx_parallel_data_38(tx_parallel_data_38),
	.tx_parallel_data_39(tx_parallel_data_39),
	.tx_parallel_data_40(tx_parallel_data_40),
	.tx_parallel_data_41(tx_parallel_data_41),
	.tx_parallel_data_42(tx_parallel_data_42),
	.tx_parallel_data_43(tx_parallel_data_43),
	.rx_set_locktoref_0(rx_set_locktoref_0));

endmodule

module NATIVE_TRANSCEIVER_IP_av_pcs_ch (
	out_blockselect_rx_pld_pcs_if,
	out_pld_8g_empty_rx,
	out_pld_8g_full_rx,
	out_pld_8g_rx_clk_out,
	avmmreaddata_0,
	avmmreaddata_1,
	avmmreaddata_2,
	avmmreaddata_3,
	avmmreaddata_4,
	avmmreaddata_5,
	avmmreaddata_6,
	avmmreaddata_7,
	avmmreaddata_8,
	avmmreaddata_9,
	avmmreaddata_10,
	avmmreaddata_11,
	avmmreaddata_12,
	avmmreaddata_13,
	avmmreaddata_14,
	avmmreaddata_15,
	dataouttopld_0,
	dataouttopld_1,
	dataouttopld_2,
	dataouttopld_3,
	dataouttopld_4,
	dataouttopld_5,
	dataouttopld_6,
	dataouttopld_7,
	dataouttopld_8,
	dataouttopld_9,
	dataouttopld_10,
	dataouttopld_11,
	dataouttopld_12,
	dataouttopld_13,
	dataouttopld_14,
	dataouttopld_15,
	dataouttopld_16,
	dataouttopld_17,
	dataouttopld_18,
	dataouttopld_19,
	dataouttopld_20,
	dataouttopld_21,
	dataouttopld_22,
	dataouttopld_23,
	dataouttopld_24,
	dataouttopld_25,
	dataouttopld_26,
	dataouttopld_27,
	dataouttopld_28,
	dataouttopld_29,
	dataouttopld_30,
	dataouttopld_31,
	dataouttopld_32,
	dataouttopld_33,
	dataouttopld_34,
	dataouttopld_35,
	dataouttopld_36,
	dataouttopld_37,
	dataouttopld_38,
	dataouttopld_39,
	dataouttopld_40,
	dataouttopld_41,
	dataouttopld_42,
	dataouttopld_43,
	dataouttopld_44,
	dataouttopld_45,
	dataouttopld_46,
	dataouttopld_47,
	dataouttopld_48,
	dataouttopld_49,
	dataouttopld_50,
	dataouttopld_51,
	dataouttopld_52,
	dataouttopld_53,
	dataouttopld_54,
	dataouttopld_55,
	dataouttopld_56,
	dataouttopld_57,
	dataouttopld_58,
	dataouttopld_59,
	dataouttopld_60,
	dataouttopld_61,
	dataouttopld_62,
	dataouttopld_63,
	rxdetectvalid,
	rxfound,
	clkdivrx_0,
	dout_0,
	dout_1,
	dout_2,
	dout_3,
	dout_4,
	dout_5,
	dout_6,
	dout_7,
	dout_8,
	dout_9,
	dout_10,
	dout_11,
	dout_12,
	dout_13,
	dout_14,
	dout_15,
	dout_16,
	dout_17,
	dout_18,
	dout_19,
	clklow_0,
	fref_0,
	rx_is_lockedtodata_0,
	out_blockselect_tx_pld_pcs_if,
	out_pld_8g_empty_tx,
	out_pld_8g_full_tx,
	out_pld_8g_tx_clk_out,
	avmmreaddata_01,
	avmmreaddata_16,
	avmmreaddata_21,
	avmmreaddata_31,
	avmmreaddata_41,
	avmmreaddata_51,
	avmmreaddata_61,
	avmmreaddata_71,
	avmmreaddata_81,
	avmmreaddata_91,
	avmmreaddata_101,
	avmmreaddata_111,
	avmmreaddata_121,
	avmmreaddata_131,
	avmmreaddata_141,
	avmmreaddata_151,
	chnl_avmm_write_0,
	chnl_avmm_read_0,
	chnl_avmm_clk_0,
	chnl_avmm_rstn_0,
	chnl_avmm_writedata_0,
	chnl_avmm_writedata_1,
	chnl_avmm_writedata_2,
	chnl_avmm_writedata_3,
	chnl_avmm_writedata_4,
	chnl_avmm_writedata_5,
	chnl_avmm_writedata_6,
	chnl_avmm_writedata_7,
	chnl_avmm_writedata_8,
	chnl_avmm_writedata_9,
	chnl_avmm_writedata_10,
	chnl_avmm_writedata_11,
	chnl_avmm_writedata_12,
	chnl_avmm_writedata_13,
	chnl_avmm_writedata_14,
	chnl_avmm_writedata_15,
	chnl_avmm_address_0,
	chnl_avmm_address_1,
	chnl_avmm_address_2,
	chnl_avmm_address_3,
	chnl_avmm_address_4,
	chnl_avmm_address_5,
	chnl_avmm_address_6,
	chnl_avmm_address_7,
	chnl_avmm_address_8,
	chnl_avmm_address_9,
	chnl_avmm_address_10,
	chnl_avmm_byteen_0,
	chnl_avmm_byteen_1,
	out_blockselect_pcs8g_rx,
	avmmreaddata_02,
	avmmreaddata_17,
	avmmreaddata_22,
	avmmreaddata_32,
	avmmreaddata_42,
	avmmreaddata_52,
	avmmreaddata_62,
	avmmreaddata_72,
	avmmreaddata_82,
	avmmreaddata_92,
	avmmreaddata_102,
	avmmreaddata_112,
	avmmreaddata_122,
	avmmreaddata_132,
	avmmreaddata_142,
	avmmreaddata_152,
	out_blockselect_com_pld_pcs_if,
	avmmreaddata_03,
	avmmreaddata_18,
	avmmreaddata_23,
	avmmreaddata_33,
	avmmreaddata_43,
	avmmreaddata_53,
	avmmreaddata_63,
	avmmreaddata_73,
	avmmreaddata_83,
	avmmreaddata_93,
	avmmreaddata_103,
	avmmreaddata_113,
	avmmreaddata_123,
	avmmreaddata_133,
	avmmreaddata_143,
	avmmreaddata_153,
	out_blockselect_rx_pcs_pma_if,
	out_pma_rxclkslip,
	pmarxpmarstb,
	avmmreaddata_04,
	avmmreaddata_19,
	avmmreaddata_24,
	avmmreaddata_34,
	avmmreaddata_44,
	avmmreaddata_54,
	avmmreaddata_64,
	avmmreaddata_74,
	avmmreaddata_84,
	avmmreaddata_94,
	avmmreaddata_104,
	avmmreaddata_114,
	avmmreaddata_124,
	avmmreaddata_134,
	avmmreaddata_144,
	avmmreaddata_154,
	clkdivtx,
	out_blockselect_com_pcs_pma_if,
	out_pma_ppm_lock,
	out_pma_early_eios,
	out_pma_ltr,
	out_pma_txdetectrx,
	out_pma_tx_elec_idle,
	avmmreaddata_05,
	avmmreaddata_110,
	avmmreaddata_25,
	avmmreaddata_35,
	avmmreaddata_45,
	avmmreaddata_55,
	avmmreaddata_65,
	avmmreaddata_75,
	avmmreaddata_85,
	avmmreaddata_95,
	avmmreaddata_105,
	avmmreaddata_115,
	avmmreaddata_125,
	avmmreaddata_135,
	avmmreaddata_145,
	avmmreaddata_155,
	sd_0,
	out_blockselect_pcs8g_tx,
	avmmreaddata_06,
	avmmreaddata_116,
	avmmreaddata_26,
	avmmreaddata_36,
	avmmreaddata_46,
	avmmreaddata_56,
	avmmreaddata_66,
	avmmreaddata_76,
	avmmreaddata_86,
	avmmreaddata_96,
	avmmreaddata_106,
	avmmreaddata_117,
	avmmreaddata_126,
	avmmreaddata_136,
	avmmreaddata_146,
	avmmreaddata_156,
	out_blockselect_tx_pcs_pma_if,
	avmmreaddata_07,
	avmmreaddata_118,
	avmmreaddata_27,
	avmmreaddata_37,
	avmmreaddata_47,
	avmmreaddata_57,
	avmmreaddata_67,
	avmmreaddata_77,
	avmmreaddata_87,
	avmmreaddata_97,
	avmmreaddata_107,
	avmmreaddata_119,
	avmmreaddata_127,
	avmmreaddata_137,
	avmmreaddata_147,
	avmmreaddata_157,
	dataouttopma_0,
	dataouttopma_1,
	dataouttopma_2,
	dataouttopma_3,
	dataouttopma_4,
	dataouttopma_5,
	dataouttopma_6,
	dataouttopma_7,
	dataouttopma_8,
	dataouttopma_9,
	dataouttopma_10,
	dataouttopma_11,
	dataouttopma_12,
	dataouttopma_13,
	dataouttopma_14,
	dataouttopma_15,
	dataouttopma_16,
	dataouttopma_17,
	dataouttopma_18,
	dataouttopma_19,
	out_pld_8g_rxurstpcs_n_0,
	out_pld_rxpma_rstb_in_0,
	out_pld_8g_txurstpcs_n_0,
	rx_std_coreclkin_0,
	tx_std_coreclkin_0,
	tx_parallel_data_0,
	tx_parallel_data_1,
	tx_parallel_data_2,
	tx_parallel_data_3,
	tx_parallel_data_4,
	tx_parallel_data_5,
	tx_parallel_data_6,
	tx_parallel_data_7,
	tx_parallel_data_8,
	tx_parallel_data_9,
	tx_parallel_data_10,
	tx_parallel_data_11,
	tx_parallel_data_12,
	tx_parallel_data_13,
	tx_parallel_data_14,
	tx_parallel_data_15,
	tx_parallel_data_16,
	tx_parallel_data_17,
	tx_parallel_data_18,
	tx_parallel_data_19,
	tx_parallel_data_20,
	tx_parallel_data_21,
	tx_parallel_data_22,
	tx_parallel_data_23,
	tx_parallel_data_24,
	tx_parallel_data_25,
	tx_parallel_data_26,
	tx_parallel_data_27,
	tx_parallel_data_28,
	tx_parallel_data_29,
	tx_parallel_data_30,
	tx_parallel_data_31,
	tx_parallel_data_32,
	tx_parallel_data_33,
	tx_parallel_data_34,
	tx_parallel_data_35,
	tx_parallel_data_36,
	tx_parallel_data_37,
	tx_parallel_data_38,
	tx_parallel_data_39,
	tx_parallel_data_40,
	tx_parallel_data_41,
	tx_parallel_data_42,
	tx_parallel_data_43,
	rx_set_locktoref_0)/* synthesis synthesis_greybox=0 */;
output 	out_blockselect_rx_pld_pcs_if;
output 	out_pld_8g_empty_rx;
output 	out_pld_8g_full_rx;
output 	out_pld_8g_rx_clk_out;
output 	avmmreaddata_0;
output 	avmmreaddata_1;
output 	avmmreaddata_2;
output 	avmmreaddata_3;
output 	avmmreaddata_4;
output 	avmmreaddata_5;
output 	avmmreaddata_6;
output 	avmmreaddata_7;
output 	avmmreaddata_8;
output 	avmmreaddata_9;
output 	avmmreaddata_10;
output 	avmmreaddata_11;
output 	avmmreaddata_12;
output 	avmmreaddata_13;
output 	avmmreaddata_14;
output 	avmmreaddata_15;
output 	dataouttopld_0;
output 	dataouttopld_1;
output 	dataouttopld_2;
output 	dataouttopld_3;
output 	dataouttopld_4;
output 	dataouttopld_5;
output 	dataouttopld_6;
output 	dataouttopld_7;
output 	dataouttopld_8;
output 	dataouttopld_9;
output 	dataouttopld_10;
output 	dataouttopld_11;
output 	dataouttopld_12;
output 	dataouttopld_13;
output 	dataouttopld_14;
output 	dataouttopld_15;
output 	dataouttopld_16;
output 	dataouttopld_17;
output 	dataouttopld_18;
output 	dataouttopld_19;
output 	dataouttopld_20;
output 	dataouttopld_21;
output 	dataouttopld_22;
output 	dataouttopld_23;
output 	dataouttopld_24;
output 	dataouttopld_25;
output 	dataouttopld_26;
output 	dataouttopld_27;
output 	dataouttopld_28;
output 	dataouttopld_29;
output 	dataouttopld_30;
output 	dataouttopld_31;
output 	dataouttopld_32;
output 	dataouttopld_33;
output 	dataouttopld_34;
output 	dataouttopld_35;
output 	dataouttopld_36;
output 	dataouttopld_37;
output 	dataouttopld_38;
output 	dataouttopld_39;
output 	dataouttopld_40;
output 	dataouttopld_41;
output 	dataouttopld_42;
output 	dataouttopld_43;
output 	dataouttopld_44;
output 	dataouttopld_45;
output 	dataouttopld_46;
output 	dataouttopld_47;
output 	dataouttopld_48;
output 	dataouttopld_49;
output 	dataouttopld_50;
output 	dataouttopld_51;
output 	dataouttopld_52;
output 	dataouttopld_53;
output 	dataouttopld_54;
output 	dataouttopld_55;
output 	dataouttopld_56;
output 	dataouttopld_57;
output 	dataouttopld_58;
output 	dataouttopld_59;
output 	dataouttopld_60;
output 	dataouttopld_61;
output 	dataouttopld_62;
output 	dataouttopld_63;
input 	rxdetectvalid;
input 	rxfound;
input 	clkdivrx_0;
input 	dout_0;
input 	dout_1;
input 	dout_2;
input 	dout_3;
input 	dout_4;
input 	dout_5;
input 	dout_6;
input 	dout_7;
input 	dout_8;
input 	dout_9;
input 	dout_10;
input 	dout_11;
input 	dout_12;
input 	dout_13;
input 	dout_14;
input 	dout_15;
input 	dout_16;
input 	dout_17;
input 	dout_18;
input 	dout_19;
input 	clklow_0;
input 	fref_0;
input 	rx_is_lockedtodata_0;
output 	out_blockselect_tx_pld_pcs_if;
output 	out_pld_8g_empty_tx;
output 	out_pld_8g_full_tx;
output 	out_pld_8g_tx_clk_out;
output 	avmmreaddata_01;
output 	avmmreaddata_16;
output 	avmmreaddata_21;
output 	avmmreaddata_31;
output 	avmmreaddata_41;
output 	avmmreaddata_51;
output 	avmmreaddata_61;
output 	avmmreaddata_71;
output 	avmmreaddata_81;
output 	avmmreaddata_91;
output 	avmmreaddata_101;
output 	avmmreaddata_111;
output 	avmmreaddata_121;
output 	avmmreaddata_131;
output 	avmmreaddata_141;
output 	avmmreaddata_151;
input 	chnl_avmm_write_0;
input 	chnl_avmm_read_0;
input 	chnl_avmm_clk_0;
input 	chnl_avmm_rstn_0;
input 	chnl_avmm_writedata_0;
input 	chnl_avmm_writedata_1;
input 	chnl_avmm_writedata_2;
input 	chnl_avmm_writedata_3;
input 	chnl_avmm_writedata_4;
input 	chnl_avmm_writedata_5;
input 	chnl_avmm_writedata_6;
input 	chnl_avmm_writedata_7;
input 	chnl_avmm_writedata_8;
input 	chnl_avmm_writedata_9;
input 	chnl_avmm_writedata_10;
input 	chnl_avmm_writedata_11;
input 	chnl_avmm_writedata_12;
input 	chnl_avmm_writedata_13;
input 	chnl_avmm_writedata_14;
input 	chnl_avmm_writedata_15;
input 	chnl_avmm_address_0;
input 	chnl_avmm_address_1;
input 	chnl_avmm_address_2;
input 	chnl_avmm_address_3;
input 	chnl_avmm_address_4;
input 	chnl_avmm_address_5;
input 	chnl_avmm_address_6;
input 	chnl_avmm_address_7;
input 	chnl_avmm_address_8;
input 	chnl_avmm_address_9;
input 	chnl_avmm_address_10;
input 	chnl_avmm_byteen_0;
input 	chnl_avmm_byteen_1;
output 	out_blockselect_pcs8g_rx;
output 	avmmreaddata_02;
output 	avmmreaddata_17;
output 	avmmreaddata_22;
output 	avmmreaddata_32;
output 	avmmreaddata_42;
output 	avmmreaddata_52;
output 	avmmreaddata_62;
output 	avmmreaddata_72;
output 	avmmreaddata_82;
output 	avmmreaddata_92;
output 	avmmreaddata_102;
output 	avmmreaddata_112;
output 	avmmreaddata_122;
output 	avmmreaddata_132;
output 	avmmreaddata_142;
output 	avmmreaddata_152;
output 	out_blockselect_com_pld_pcs_if;
output 	avmmreaddata_03;
output 	avmmreaddata_18;
output 	avmmreaddata_23;
output 	avmmreaddata_33;
output 	avmmreaddata_43;
output 	avmmreaddata_53;
output 	avmmreaddata_63;
output 	avmmreaddata_73;
output 	avmmreaddata_83;
output 	avmmreaddata_93;
output 	avmmreaddata_103;
output 	avmmreaddata_113;
output 	avmmreaddata_123;
output 	avmmreaddata_133;
output 	avmmreaddata_143;
output 	avmmreaddata_153;
output 	out_blockselect_rx_pcs_pma_if;
output 	out_pma_rxclkslip;
output 	pmarxpmarstb;
output 	avmmreaddata_04;
output 	avmmreaddata_19;
output 	avmmreaddata_24;
output 	avmmreaddata_34;
output 	avmmreaddata_44;
output 	avmmreaddata_54;
output 	avmmreaddata_64;
output 	avmmreaddata_74;
output 	avmmreaddata_84;
output 	avmmreaddata_94;
output 	avmmreaddata_104;
output 	avmmreaddata_114;
output 	avmmreaddata_124;
output 	avmmreaddata_134;
output 	avmmreaddata_144;
output 	avmmreaddata_154;
input 	clkdivtx;
output 	out_blockselect_com_pcs_pma_if;
output 	out_pma_ppm_lock;
output 	out_pma_early_eios;
output 	out_pma_ltr;
output 	out_pma_txdetectrx;
output 	out_pma_tx_elec_idle;
output 	avmmreaddata_05;
output 	avmmreaddata_110;
output 	avmmreaddata_25;
output 	avmmreaddata_35;
output 	avmmreaddata_45;
output 	avmmreaddata_55;
output 	avmmreaddata_65;
output 	avmmreaddata_75;
output 	avmmreaddata_85;
output 	avmmreaddata_95;
output 	avmmreaddata_105;
output 	avmmreaddata_115;
output 	avmmreaddata_125;
output 	avmmreaddata_135;
output 	avmmreaddata_145;
output 	avmmreaddata_155;
input 	sd_0;
output 	out_blockselect_pcs8g_tx;
output 	avmmreaddata_06;
output 	avmmreaddata_116;
output 	avmmreaddata_26;
output 	avmmreaddata_36;
output 	avmmreaddata_46;
output 	avmmreaddata_56;
output 	avmmreaddata_66;
output 	avmmreaddata_76;
output 	avmmreaddata_86;
output 	avmmreaddata_96;
output 	avmmreaddata_106;
output 	avmmreaddata_117;
output 	avmmreaddata_126;
output 	avmmreaddata_136;
output 	avmmreaddata_146;
output 	avmmreaddata_156;
output 	out_blockselect_tx_pcs_pma_if;
output 	avmmreaddata_07;
output 	avmmreaddata_118;
output 	avmmreaddata_27;
output 	avmmreaddata_37;
output 	avmmreaddata_47;
output 	avmmreaddata_57;
output 	avmmreaddata_67;
output 	avmmreaddata_77;
output 	avmmreaddata_87;
output 	avmmreaddata_97;
output 	avmmreaddata_107;
output 	avmmreaddata_119;
output 	avmmreaddata_127;
output 	avmmreaddata_137;
output 	avmmreaddata_147;
output 	avmmreaddata_157;
output 	dataouttopma_0;
output 	dataouttopma_1;
output 	dataouttopma_2;
output 	dataouttopma_3;
output 	dataouttopma_4;
output 	dataouttopma_5;
output 	dataouttopma_6;
output 	dataouttopma_7;
output 	dataouttopma_8;
output 	dataouttopma_9;
output 	dataouttopma_10;
output 	dataouttopma_11;
output 	dataouttopma_12;
output 	dataouttopma_13;
output 	dataouttopma_14;
output 	dataouttopma_15;
output 	dataouttopma_16;
output 	dataouttopma_17;
output 	dataouttopma_18;
output 	dataouttopma_19;
input 	out_pld_8g_rxurstpcs_n_0;
input 	out_pld_rxpma_rstb_in_0;
input 	out_pld_8g_txurstpcs_n_0;
input 	rx_std_coreclkin_0;
input 	tx_std_coreclkin_0;
input 	tx_parallel_data_0;
input 	tx_parallel_data_1;
input 	tx_parallel_data_2;
input 	tx_parallel_data_3;
input 	tx_parallel_data_4;
input 	tx_parallel_data_5;
input 	tx_parallel_data_6;
input 	tx_parallel_data_7;
input 	tx_parallel_data_8;
input 	tx_parallel_data_9;
input 	tx_parallel_data_10;
input 	tx_parallel_data_11;
input 	tx_parallel_data_12;
input 	tx_parallel_data_13;
input 	tx_parallel_data_14;
input 	tx_parallel_data_15;
input 	tx_parallel_data_16;
input 	tx_parallel_data_17;
input 	tx_parallel_data_18;
input 	tx_parallel_data_19;
input 	tx_parallel_data_20;
input 	tx_parallel_data_21;
input 	tx_parallel_data_22;
input 	tx_parallel_data_23;
input 	tx_parallel_data_24;
input 	tx_parallel_data_25;
input 	tx_parallel_data_26;
input 	tx_parallel_data_27;
input 	tx_parallel_data_28;
input 	tx_parallel_data_29;
input 	tx_parallel_data_30;
input 	tx_parallel_data_31;
input 	tx_parallel_data_32;
input 	tx_parallel_data_33;
input 	tx_parallel_data_34;
input 	tx_parallel_data_35;
input 	tx_parallel_data_36;
input 	tx_parallel_data_37;
input 	tx_parallel_data_38;
input 	tx_parallel_data_39;
input 	tx_parallel_data_40;
input 	tx_parallel_data_41;
input 	tx_parallel_data_42;
input 	tx_parallel_data_43;
input 	rx_set_locktoref_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \inst_av_hssi_rx_pld_pcs_interface|pcs8ga1a2size ;
wire \inst_av_hssi_rx_pld_pcs_interface|pcs8gbitlocreven ;
wire \inst_av_hssi_rx_pld_pcs_interface|pcs8gbitslip ;
wire \inst_av_hssi_rx_pld_pcs_interface|pcs8gbytereven ;
wire \inst_av_hssi_rx_pld_pcs_interface|pcs8gbytordpld ;
wire \inst_av_hssi_rx_pld_pcs_interface|pcs8gcmpfifourst ;
wire \inst_av_hssi_rx_pld_pcs_interface|pcs8gencdt ;
wire \inst_av_hssi_rx_pld_pcs_interface|pcs8gphfifourstrx ;
wire \inst_av_hssi_rx_pld_pcs_interface|pcs8gpldrxclk ;
wire \inst_av_hssi_rx_pld_pcs_interface|pcs8gpolinvrx ;
wire \inst_av_hssi_rx_pld_pcs_interface|pcs8grdenablerx ;
wire \inst_av_hssi_rx_pld_pcs_interface|pcs8grxurstpcs ;
wire \inst_av_hssi_rx_pld_pcs_interface|pcs8gsyncsmenoutput ;
wire \inst_av_hssi_rx_pld_pcs_interface|pcs8gwrdisablerx ;
wire \inst_av_hssi_rx_pld_pcs_interface|pldrxclkslipout ;
wire \inst_av_hssi_rx_pld_pcs_interface|pldrxpmarstbout ;
wire \inst_av_hssi_tx_pld_pcs_interface|pcs8gphfifoursttx ;
wire \inst_av_hssi_tx_pld_pcs_interface|pcs8gpldtxclk ;
wire \inst_av_hssi_tx_pld_pcs_interface|pcs8gpolinvtx ;
wire \inst_av_hssi_tx_pld_pcs_interface|pcs8grddisabletx ;
wire \inst_av_hssi_tx_pld_pcs_interface|pcs8grevloopbk ;
wire \inst_av_hssi_tx_pld_pcs_interface|pcs8gtxurstpcs ;
wire \inst_av_hssi_tx_pld_pcs_interface|pcs8gwrenabletx ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[0] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[1] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[2] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[3] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[4] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[5] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[6] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[7] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[8] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[9] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[10] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[11] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[12] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[13] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[14] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[15] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[16] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[17] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[18] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[19] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[20] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[21] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[22] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[23] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[24] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[25] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[26] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[27] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[28] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[29] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[30] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[31] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[32] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[33] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[34] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[35] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[36] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[37] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[38] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[39] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[40] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[41] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[42] ;
wire \inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[43] ;
wire \inst_av_hssi_tx_pld_pcs_interface|pcs8gtxboundarysel[0] ;
wire \inst_av_hssi_tx_pld_pcs_interface|pcs8gtxboundarysel[1] ;
wire \inst_av_hssi_tx_pld_pcs_interface|pcs8gtxboundarysel[2] ;
wire \inst_av_hssi_tx_pld_pcs_interface|pcs8gtxboundarysel[3] ;
wire \inst_av_hssi_tx_pld_pcs_interface|pcs8gtxboundarysel[4] ;
wire \inst_av_hssi_tx_pld_pcs_interface|pcs8gtxdatavalid[0] ;
wire \inst_av_hssi_tx_pld_pcs_interface|pcs8gtxdatavalid[1] ;
wire \inst_av_hssi_tx_pld_pcs_interface|pcs8gtxdatavalid[2] ;
wire \inst_av_hssi_tx_pld_pcs_interface|pcs8gtxdatavalid[3] ;
wire \inst_av_hssi_8g_rx_pcs|aggrxpcsrst ;
wire \inst_av_hssi_8g_rx_pcs|alignstatuspld ;
wire \inst_av_hssi_8g_rx_pcs|alignstatussync ;
wire \inst_av_hssi_8g_rx_pcs|bistdone ;
wire \inst_av_hssi_8g_rx_pcs|bisterr ;
wire \inst_av_hssi_8g_rx_pcs|byteordflag ;
wire \inst_av_hssi_8g_rx_pcs|clocktopld ;
wire \inst_av_hssi_8g_rx_pcs|decoderctrl ;
wire \inst_av_hssi_8g_rx_pcs|decoderdatavalid ;
wire \inst_av_hssi_8g_rx_pcs|delcondmetout ;
wire \inst_av_hssi_8g_rx_pcs|disablepcfifobyteserdes ;
wire \inst_av_hssi_8g_rx_pcs|earlyeios ;
wire \inst_av_hssi_8g_rx_pcs|eidleexit ;
wire \inst_av_hssi_8g_rx_pcs|fifoovrout ;
wire \inst_av_hssi_8g_rx_pcs|fifordoutcomp ;
wire \inst_av_hssi_8g_rx_pcs|insertincompleteout ;
wire \inst_av_hssi_8g_rx_pcs|latencycompout ;
wire \inst_av_hssi_8g_rx_pcs|ltr ;
wire \inst_av_hssi_8g_rx_pcs|pcfifoempty ;
wire \inst_av_hssi_8g_rx_pcs|pcfifofull ;
wire \inst_av_hssi_8g_rx_pcs|pcieswitch ;
wire \inst_av_hssi_8g_rx_pcs|phystatus ;
wire \inst_av_hssi_8g_rx_pcs|resetpcptrs ;
wire \inst_av_hssi_8g_rx_pcs|resetpcptrsinchnldownpipe ;
wire \inst_av_hssi_8g_rx_pcs|resetpcptrsinchnluppipe ;
wire \inst_av_hssi_8g_rx_pcs|resetppmcntrspcspma ;
wire \inst_av_hssi_8g_rx_pcs|rlvlt ;
wire \inst_av_hssi_8g_rx_pcs|rmfifoempty ;
wire \inst_av_hssi_8g_rx_pcs|rmfifofull ;
wire \inst_av_hssi_8g_rx_pcs|rxclkslip ;
wire \inst_av_hssi_8g_rx_pcs|rxvalid ;
wire \inst_av_hssi_8g_rx_pcs|signaldetectout ;
wire \inst_av_hssi_8g_rx_pcs|syncstatus ;
wire \inst_av_hssi_8g_rx_pcs|a1a2k1k2flag[0] ;
wire \inst_av_hssi_8g_rx_pcs|a1a2k1k2flag[1] ;
wire \inst_av_hssi_8g_rx_pcs|a1a2k1k2flag[2] ;
wire \inst_av_hssi_8g_rx_pcs|a1a2k1k2flag[3] ;
wire \inst_av_hssi_8g_rx_pcs|aligndetsync[0] ;
wire \inst_av_hssi_8g_rx_pcs|aligndetsync[1] ;
wire \inst_av_hssi_8g_rx_pcs|cgcomprddout[0] ;
wire \inst_av_hssi_8g_rx_pcs|cgcomprddout[1] ;
wire \inst_av_hssi_8g_rx_pcs|cgcompwrout[0] ;
wire \inst_av_hssi_8g_rx_pcs|cgcompwrout[1] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[0] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[1] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[2] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[3] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[4] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[5] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[6] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[7] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[8] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[9] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[10] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[11] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[12] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[13] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[14] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[15] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[16] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[17] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[18] ;
wire \inst_av_hssi_8g_rx_pcs|channeltestbusout[19] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[0] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[1] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[2] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[3] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[4] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[5] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[6] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[7] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[8] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[9] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[10] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[11] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[12] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[13] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[14] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[15] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[16] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[17] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[18] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[19] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[20] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[21] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[22] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[23] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[24] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[25] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[26] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[27] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[28] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[29] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[30] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[31] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[32] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[33] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[34] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[35] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[36] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[37] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[38] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[39] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[40] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[41] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[42] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[43] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[44] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[45] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[46] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[47] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[48] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[49] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[50] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[51] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[52] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[53] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[54] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[55] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[56] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[57] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[58] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[59] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[60] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[61] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[62] ;
wire \inst_av_hssi_8g_rx_pcs|dataout[63] ;
wire \inst_av_hssi_8g_rx_pcs|decoderdata[0] ;
wire \inst_av_hssi_8g_rx_pcs|decoderdata[1] ;
wire \inst_av_hssi_8g_rx_pcs|decoderdata[2] ;
wire \inst_av_hssi_8g_rx_pcs|decoderdata[3] ;
wire \inst_av_hssi_8g_rx_pcs|decoderdata[4] ;
wire \inst_av_hssi_8g_rx_pcs|decoderdata[5] ;
wire \inst_av_hssi_8g_rx_pcs|decoderdata[6] ;
wire \inst_av_hssi_8g_rx_pcs|decoderdata[7] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[0] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[1] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[2] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[3] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[4] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[5] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[6] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[7] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[8] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[9] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[10] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[11] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[12] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[13] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[14] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[15] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[16] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[17] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[18] ;
wire \inst_av_hssi_8g_rx_pcs|parallelrevloopback[19] ;
wire \inst_av_hssi_8g_rx_pcs|rdalign[0] ;
wire \inst_av_hssi_8g_rx_pcs|rdalign[1] ;
wire \inst_av_hssi_8g_rx_pcs|runningdisparity[0] ;
wire \inst_av_hssi_8g_rx_pcs|runningdisparity[1] ;
wire \inst_av_hssi_8g_rx_pcs|rxdatavalid[0] ;
wire \inst_av_hssi_8g_rx_pcs|rxdatavalid[1] ;
wire \inst_av_hssi_8g_rx_pcs|rxdatavalid[2] ;
wire \inst_av_hssi_8g_rx_pcs|rxdatavalid[3] ;
wire \inst_av_hssi_8g_rx_pcs|rxstatus[0] ;
wire \inst_av_hssi_8g_rx_pcs|rxstatus[1] ;
wire \inst_av_hssi_8g_rx_pcs|rxstatus[2] ;
wire \inst_av_hssi_8g_rx_pcs|wordalignboundary[0] ;
wire \inst_av_hssi_8g_rx_pcs|wordalignboundary[1] ;
wire \inst_av_hssi_8g_rx_pcs|wordalignboundary[2] ;
wire \inst_av_hssi_8g_rx_pcs|wordalignboundary[3] ;
wire \inst_av_hssi_8g_rx_pcs|wordalignboundary[4] ;
wire \inst_av_hssi_common_pld_pcs_interface|emsipenablediocsrrdydly ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8ghardreset ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8gltr ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8gprbsciden ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8grate ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8grefclkdig ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8grefclkdig2 ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8grxpolarity ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8gscanmoden ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8gtxdeemph ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8gtxdetectrxloopback ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8gtxelecidle ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8gtxswing ;
wire \inst_av_hssi_common_pld_pcs_interface|pcsaggrefclkdig ;
wire \inst_av_hssi_common_pld_pcs_interface|pcsaggscanmoden ;
wire \inst_av_hssi_common_pld_pcs_interface|pcsaggscanshift ;
wire \inst_av_hssi_common_pld_pcs_interface|pcsaggtestsi ;
wire \inst_av_hssi_common_pld_pcs_interface|pcspcspmaifrefclkdig ;
wire \inst_av_hssi_common_pld_pcs_interface|pcspcspmaifscanmoden ;
wire \inst_av_hssi_common_pld_pcs_interface|pcspcspmaifscanshiftn ;
wire \inst_av_hssi_common_pld_pcs_interface|pcspmaifhardreset ;
wire \inst_av_hssi_common_pld_pcs_interface|pldnfrzdrv ;
wire \inst_av_hssi_common_pld_pcs_interface|pldpartialreconfigout ;
wire \inst_av_hssi_common_pld_pcs_interface|rstsel ;
wire \inst_av_hssi_common_pld_pcs_interface|usrrstsel ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8geidleinfersel[0] ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8geidleinfersel[1] ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8geidleinfersel[2] ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8gpowerdown[0] ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8gpowerdown[1] ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8gtxmargin[0] ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8gtxmargin[1] ;
wire \inst_av_hssi_common_pld_pcs_interface|pcs8gtxmargin[2] ;
wire \inst_av_hssi_rx_pcs_pma_interface|clockoutto8gpcs ;
wire \inst_av_hssi_rx_pcs_pma_interface|pcs8gsigdetni ;
wire \inst_av_hssi_rx_pcs_pma_interface|pmarxpllphaselockout ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[0] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[1] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[2] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[3] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[4] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[5] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[6] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[7] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[8] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[9] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[10] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[11] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[12] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[13] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[14] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[15] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[16] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[17] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[18] ;
wire \inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[19] ;
wire \inst_av_hssi_common_pcs_pma_interface|aggtestsotopldout ;
wire \inst_av_hssi_common_pcs_pma_interface|pcs8ggen2ngen1 ;
wire \inst_av_hssi_common_pcs_pma_interface|pcs8gpmarxfound ;
wire \inst_av_hssi_common_pcs_pma_interface|pcs8grxdetectvalid ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggalignstatus ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggalignstatussync0 ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggalignstatussync0toporbot ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggalignstatustoporbot ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggcgcomprddall ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggcgcomprddalltoporbot ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggcgcompwrall ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggcgcompwralltoporbot ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggdelcondmet0 ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggdelcondmet0toporbot ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggendskwqd ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggendskwqdtoporbot ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggendskwrdptrs ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggendskwrdptrstoporbot ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggfifoovr0 ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggfifoovr0toporbot ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggfifordincomp0 ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggfifordincomp0toporbot ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggfiforstrdqd ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggfiforstrdqdtoporbot ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsagginsertincomplete0 ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsagginsertincomplete0toporbot ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsagglatencycomp0 ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsagglatencycomp0toporbot ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrcvdclkagg ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrcvdclkaggtoporbot ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxcontrolrs ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxcontrolrstoporbot ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxctlts ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxctltstoporbot ;
wire \inst_av_hssi_common_pcs_pma_interface|pldhclkout ;
wire \inst_av_hssi_common_pcs_pma_interface|pmaclklowout ;
wire \inst_av_hssi_common_pcs_pma_interface|pmafrefout ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[0] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[1] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[2] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[3] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[4] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[5] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[6] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[7] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[0] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[1] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[2] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[3] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[4] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[5] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[6] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[7] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[0] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[1] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[2] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[3] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[4] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[5] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[6] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[7] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[8] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[9] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[10] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[11] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[12] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[13] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[14] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[15] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[0] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[1] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[2] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[3] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[4] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[5] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[6] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[7] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[0] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[1] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[2] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[3] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[4] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[5] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[6] ;
wire \inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[7] ;
wire \inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[0] ;
wire \inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[1] ;
wire \inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[2] ;
wire \inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[3] ;
wire \inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[4] ;
wire \inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[5] ;
wire \inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[6] ;
wire \inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[7] ;
wire \inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[8] ;
wire \inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[9] ;
wire \inst_av_hssi_8g_tx_pcs|aggtxpcsrst ;
wire \inst_av_hssi_8g_tx_pcs|clkout ;
wire \inst_av_hssi_8g_tx_pcs|dynclkswitchn ;
wire \inst_av_hssi_8g_tx_pcs|phfifooverflow ;
wire \inst_av_hssi_8g_tx_pcs|phfifounderflow ;
wire \inst_av_hssi_8g_tx_pcs|pipeenrevparallellpbkout ;
wire \inst_av_hssi_8g_tx_pcs|polinvrxout ;
wire \inst_av_hssi_8g_tx_pcs|rdenablesync ;
wire \inst_av_hssi_8g_tx_pcs|xgmctrlenable ;
wire \inst_av_hssi_8g_tx_pcs|dataout[0] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[1] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[2] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[3] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[4] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[5] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[6] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[7] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[8] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[9] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[10] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[11] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[12] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[13] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[14] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[15] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[16] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[17] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[18] ;
wire \inst_av_hssi_8g_tx_pcs|dataout[19] ;
wire \inst_av_hssi_8g_tx_pcs|grayelecidleinferselout[0] ;
wire \inst_av_hssi_8g_tx_pcs|grayelecidleinferselout[1] ;
wire \inst_av_hssi_8g_tx_pcs|grayelecidleinferselout[2] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[0] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[1] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[2] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[3] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[4] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[5] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[6] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[7] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[8] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[9] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[10] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[11] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[12] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[13] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[14] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[15] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[16] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[17] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[18] ;
wire \inst_av_hssi_8g_tx_pcs|parallelfdbkout[19] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[0] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[1] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[2] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[3] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[4] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[5] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[6] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[7] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[8] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[9] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[10] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[11] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[12] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[13] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[14] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[15] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[16] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[17] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[18] ;
wire \inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[19] ;
wire \inst_av_hssi_8g_tx_pcs|txdivsync[0] ;
wire \inst_av_hssi_8g_tx_pcs|txdivsync[1] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[0] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[1] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[2] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[3] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[4] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[5] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[6] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[7] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[8] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[9] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[10] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[11] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[12] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[13] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[14] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[15] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[16] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[17] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[18] ;
wire \inst_av_hssi_8g_tx_pcs|txtestbus[19] ;
wire \inst_av_hssi_8g_tx_pcs|xgmdataout[0] ;
wire \inst_av_hssi_8g_tx_pcs|xgmdataout[1] ;
wire \inst_av_hssi_8g_tx_pcs|xgmdataout[2] ;
wire \inst_av_hssi_8g_tx_pcs|xgmdataout[3] ;
wire \inst_av_hssi_8g_tx_pcs|xgmdataout[4] ;
wire \inst_av_hssi_8g_tx_pcs|xgmdataout[5] ;
wire \inst_av_hssi_8g_tx_pcs|xgmdataout[6] ;
wire \inst_av_hssi_8g_tx_pcs|xgmdataout[7] ;
wire \inst_av_hssi_tx_pcs_pma_interface|clockoutto8gpcs ;
wire \inst_av_hssi_tx_pcs_pma_interface|pmarxfreqtxcmuplllockout ;


NATIVE_TRANSCEIVER_IP_av_hssi_common_pcs_pma_interface_rbc inst_av_hssi_common_pcs_pma_interface(
	.pmarxdetectvalid(rxdetectvalid),
	.pmarxfound(rxfound),
	.clklow(clklow_0),
	.fref(fref_0),
	.avmmwrite(chnl_avmm_write_0),
	.avmmread(chnl_avmm_read_0),
	.avmmclk(chnl_avmm_clk_0),
	.avmmrstn(chnl_avmm_rstn_0),
	.avmmwritedata({chnl_avmm_writedata_15,chnl_avmm_writedata_14,chnl_avmm_writedata_13,chnl_avmm_writedata_12,chnl_avmm_writedata_11,chnl_avmm_writedata_10,chnl_avmm_writedata_9,chnl_avmm_writedata_8,chnl_avmm_writedata_7,chnl_avmm_writedata_6,chnl_avmm_writedata_5,
chnl_avmm_writedata_4,chnl_avmm_writedata_3,chnl_avmm_writedata_2,chnl_avmm_writedata_1,chnl_avmm_writedata_0}),
	.avmmaddress({chnl_avmm_address_10,chnl_avmm_address_9,chnl_avmm_address_8,chnl_avmm_address_7,chnl_avmm_address_6,chnl_avmm_address_5,chnl_avmm_address_4,chnl_avmm_address_3,chnl_avmm_address_2,chnl_avmm_address_1,chnl_avmm_address_0}),
	.avmmbyteen({chnl_avmm_byteen_1,chnl_avmm_byteen_0}),
	.pcsaggrxpcsrst(\inst_av_hssi_8g_rx_pcs|aggrxpcsrst ),
	.pcsaggalignstatussync(\inst_av_hssi_8g_rx_pcs|alignstatussync ),
	.pcsaggdecctl(\inst_av_hssi_8g_rx_pcs|decoderctrl ),
	.pcsaggdecdatavalid(\inst_av_hssi_8g_rx_pcs|decoderdatavalid ),
	.pcsaggdelcondmetout(\inst_av_hssi_8g_rx_pcs|delcondmetout ),
	.pcs8gearlyeios(\inst_av_hssi_8g_rx_pcs|earlyeios ),
	.pcs8geidleexit(\inst_av_hssi_8g_rx_pcs|eidleexit ),
	.pcsaggfifoovrout(\inst_av_hssi_8g_rx_pcs|fifoovrout ),
	.pcsaggfifordoutcomp(\inst_av_hssi_8g_rx_pcs|fifordoutcomp ),
	.pcsagginsertincompleteout(\inst_av_hssi_8g_rx_pcs|insertincompleteout ),
	.pcsagglatencycompout(\inst_av_hssi_8g_rx_pcs|latencycompout ),
	.pcs8gltrpma(\inst_av_hssi_8g_rx_pcs|ltr ),
	.pcs8gpcieswitch(\inst_av_hssi_8g_rx_pcs|pcieswitch ),
	.resetppmcntrs(\inst_av_hssi_8g_rx_pcs|resetppmcntrspcspma ),
	.pcsaggsyncstatus(\inst_av_hssi_8g_rx_pcs|syncstatus ),
	.pcsaggaligndetsync({\inst_av_hssi_8g_rx_pcs|aligndetsync[1] ,\inst_av_hssi_8g_rx_pcs|aligndetsync[0] }),
	.pcsaggcgcomprddout({\inst_av_hssi_8g_rx_pcs|cgcomprddout[1] ,\inst_av_hssi_8g_rx_pcs|cgcomprddout[0] }),
	.pcsaggcgcompwrout({\inst_av_hssi_8g_rx_pcs|cgcompwrout[1] ,\inst_av_hssi_8g_rx_pcs|cgcompwrout[0] }),
	.pcsaggdecdata({\inst_av_hssi_8g_rx_pcs|decoderdata[7] ,\inst_av_hssi_8g_rx_pcs|decoderdata[6] ,\inst_av_hssi_8g_rx_pcs|decoderdata[5] ,\inst_av_hssi_8g_rx_pcs|decoderdata[4] ,\inst_av_hssi_8g_rx_pcs|decoderdata[3] ,\inst_av_hssi_8g_rx_pcs|decoderdata[2] ,
\inst_av_hssi_8g_rx_pcs|decoderdata[1] ,\inst_av_hssi_8g_rx_pcs|decoderdata[0] }),
	.pcsaggrdalign({\inst_av_hssi_8g_rx_pcs|rdalign[1] ,\inst_av_hssi_8g_rx_pcs|rdalign[0] }),
	.pcsaggrunningdisp({\inst_av_hssi_8g_rx_pcs|runningdisparity[1] ,\inst_av_hssi_8g_rx_pcs|runningdisparity[0] }),
	.pcs8gtxelecidle(\inst_av_hssi_common_pld_pcs_interface|pcs8gtxelecidle ),
	.pcsaggrefclkdig(\inst_av_hssi_common_pld_pcs_interface|pcsaggrefclkdig ),
	.pcsaggscanmoden(\inst_av_hssi_common_pld_pcs_interface|pcsaggscanmoden ),
	.pcsaggscanshiftn(\inst_av_hssi_common_pld_pcs_interface|pcsaggscanshift ),
	.pldtestsitoaggin(\inst_av_hssi_common_pld_pcs_interface|pcsaggtestsi ),
	.pcsrefclkdig(\inst_av_hssi_common_pld_pcs_interface|pcspcspmaifrefclkdig ),
	.pcsscanmoden(\inst_av_hssi_common_pld_pcs_interface|pcspcspmaifscanmoden ),
	.pcsscanshiftn(\inst_av_hssi_common_pld_pcs_interface|pcspcspmaifscanshiftn ),
	.hardreset(\inst_av_hssi_common_pld_pcs_interface|pcspmaifhardreset ),
	.pldnfrzdrv(\inst_av_hssi_common_pld_pcs_interface|pldnfrzdrv ),
	.pldpartialreconfig(\inst_av_hssi_common_pld_pcs_interface|pldpartialreconfigout ),
	.pmarxpmarstb(pmarxpmarstb),
	.aggtestsotopldout(\inst_av_hssi_common_pcs_pma_interface|aggtestsotopldout ),
	.blockselect(out_blockselect_com_pcs_pma_if),
	.freqlock(out_pma_ppm_lock),
	.pcs8ggen2ngen1(\inst_av_hssi_common_pcs_pma_interface|pcs8ggen2ngen1 ),
	.pcs8gpmarxfound(\inst_av_hssi_common_pcs_pma_interface|pcs8gpmarxfound ),
	.pcs8grxdetectvalid(\inst_av_hssi_common_pcs_pma_interface|pcs8grxdetectvalid ),
	.pcsaggalignstatus(\inst_av_hssi_common_pcs_pma_interface|pcsaggalignstatus ),
	.pcsaggalignstatussync0(\inst_av_hssi_common_pcs_pma_interface|pcsaggalignstatussync0 ),
	.pcsaggalignstatussync0toporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggalignstatussync0toporbot ),
	.pcsaggalignstatustoporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggalignstatustoporbot ),
	.pcsaggcgcomprddall(\inst_av_hssi_common_pcs_pma_interface|pcsaggcgcomprddall ),
	.pcsaggcgcomprddalltoporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggcgcomprddalltoporbot ),
	.pcsaggcgcompwrall(\inst_av_hssi_common_pcs_pma_interface|pcsaggcgcompwrall ),
	.pcsaggcgcompwralltoporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggcgcompwralltoporbot ),
	.pcsaggdelcondmet0(\inst_av_hssi_common_pcs_pma_interface|pcsaggdelcondmet0 ),
	.pcsaggdelcondmet0toporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggdelcondmet0toporbot ),
	.pcsaggendskwqd(\inst_av_hssi_common_pcs_pma_interface|pcsaggendskwqd ),
	.pcsaggendskwqdtoporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggendskwqdtoporbot ),
	.pcsaggendskwrdptrs(\inst_av_hssi_common_pcs_pma_interface|pcsaggendskwrdptrs ),
	.pcsaggendskwrdptrstoporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggendskwrdptrstoporbot ),
	.pcsaggfifoovr0(\inst_av_hssi_common_pcs_pma_interface|pcsaggfifoovr0 ),
	.pcsaggfifoovr0toporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggfifoovr0toporbot ),
	.pcsaggfifordincomp0(\inst_av_hssi_common_pcs_pma_interface|pcsaggfifordincomp0 ),
	.pcsaggfifordincomp0toporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggfifordincomp0toporbot ),
	.pcsaggfiforstrdqd(\inst_av_hssi_common_pcs_pma_interface|pcsaggfiforstrdqd ),
	.pcsaggfiforstrdqdtoporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggfiforstrdqdtoporbot ),
	.pcsagginsertincomplete0(\inst_av_hssi_common_pcs_pma_interface|pcsagginsertincomplete0 ),
	.pcsagginsertincomplete0toporbot(\inst_av_hssi_common_pcs_pma_interface|pcsagginsertincomplete0toporbot ),
	.pcsagglatencycomp0(\inst_av_hssi_common_pcs_pma_interface|pcsagglatencycomp0 ),
	.pcsagglatencycomp0toporbot(\inst_av_hssi_common_pcs_pma_interface|pcsagglatencycomp0toporbot ),
	.pcsaggrcvdclkagg(\inst_av_hssi_common_pcs_pma_interface|pcsaggrcvdclkagg ),
	.pcsaggrcvdclkaggtoporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggrcvdclkaggtoporbot ),
	.pcsaggrxcontrolrs(\inst_av_hssi_common_pcs_pma_interface|pcsaggrxcontrolrs ),
	.pcsaggrxcontrolrstoporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggrxcontrolrstoporbot ),
	.pcsaggtxctlts(\inst_av_hssi_common_pcs_pma_interface|pcsaggtxctlts ),
	.pcsaggtxctltstoporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggtxctltstoporbot ),
	.pldhclkout(\inst_av_hssi_common_pcs_pma_interface|pldhclkout ),
	.pmaclklowout(\inst_av_hssi_common_pcs_pma_interface|pmaclklowout ),
	.pmaearlyeios(out_pma_early_eios),
	.pmafrefout(\inst_av_hssi_common_pcs_pma_interface|pmafrefout ),
	.pmaltr(out_pma_ltr),
	.pmatxdetectrx(out_pma_txdetectrx),
	.pmatxelecidle(out_pma_tx_elec_idle),
	.avmmreaddata({avmmreaddata_155,avmmreaddata_145,avmmreaddata_135,avmmreaddata_125,avmmreaddata_115,avmmreaddata_105,avmmreaddata_95,avmmreaddata_85,avmmreaddata_75,avmmreaddata_65,avmmreaddata_55,avmmreaddata_45,avmmreaddata_35,avmmreaddata_25,avmmreaddata_110,avmmreaddata_05}),
	.pcsaggrxdatars({\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[7] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[6] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[5] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[4] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[3] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[2] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[1] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[0] }),
	.pcsaggrxdatarstoporbot({\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[7] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[6] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[5] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[4] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[3] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[2] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[1] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[0] }),
	.pcsaggtestbus({\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[15] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[14] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[13] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[12] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[11] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[10] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[9] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[8] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[7] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[6] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[5] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[4] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[3] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[2] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[1] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[0] }),
	.pcsaggtxdatats({\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[7] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[6] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[5] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[4] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[3] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[2] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[1] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[0] }),
	.pcsaggtxdatatstoporbot({\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[7] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[6] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[5] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[4] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[3] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[2] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[1] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[0] }),
	.pmaiftestbus({\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[9] ,\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[8] ,\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[7] ,\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[6] ,
\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[5] ,\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[4] ,\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[3] ,\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[2] ,
\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[1] ,\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[0] }),
	.pcsaggtxpcsrst(\inst_av_hssi_8g_tx_pcs|aggtxpcsrst ),
	.pcsaggrdenablesync(\inst_av_hssi_8g_tx_pcs|rdenablesync ),
	.pcsaggtxctltc(\inst_av_hssi_8g_tx_pcs|xgmctrlenable ),
	.pcsaggtxdatatc({\inst_av_hssi_8g_tx_pcs|xgmdataout[7] ,\inst_av_hssi_8g_tx_pcs|xgmdataout[6] ,\inst_av_hssi_8g_tx_pcs|xgmdataout[5] ,\inst_av_hssi_8g_tx_pcs|xgmdataout[4] ,\inst_av_hssi_8g_tx_pcs|xgmdataout[3] ,\inst_av_hssi_8g_tx_pcs|xgmdataout[2] ,
\inst_av_hssi_8g_tx_pcs|xgmdataout[1] ,\inst_av_hssi_8g_tx_pcs|xgmdataout[0] }));

NATIVE_TRANSCEIVER_IP_av_hssi_rx_pld_pcs_interface_rbc inst_av_hssi_rx_pld_pcs_interface(
	.blockselect(out_blockselect_rx_pld_pcs_if),
	.pcs8ga1a2size(\inst_av_hssi_rx_pld_pcs_interface|pcs8ga1a2size ),
	.pcs8gbitlocreven(\inst_av_hssi_rx_pld_pcs_interface|pcs8gbitlocreven ),
	.pcs8gbitslip(\inst_av_hssi_rx_pld_pcs_interface|pcs8gbitslip ),
	.pcs8gbytereven(\inst_av_hssi_rx_pld_pcs_interface|pcs8gbytereven ),
	.pcs8gbytordpld(\inst_av_hssi_rx_pld_pcs_interface|pcs8gbytordpld ),
	.pcs8gcmpfifourst(\inst_av_hssi_rx_pld_pcs_interface|pcs8gcmpfifourst ),
	.pcs8gencdt(\inst_av_hssi_rx_pld_pcs_interface|pcs8gencdt ),
	.pcs8gphfifourstrx(\inst_av_hssi_rx_pld_pcs_interface|pcs8gphfifourstrx ),
	.pcs8gpldrxclk(\inst_av_hssi_rx_pld_pcs_interface|pcs8gpldrxclk ),
	.pcs8gpolinvrx(\inst_av_hssi_rx_pld_pcs_interface|pcs8gpolinvrx ),
	.pcs8grdenablerx(\inst_av_hssi_rx_pld_pcs_interface|pcs8grdenablerx ),
	.pcs8grxurstpcs(\inst_av_hssi_rx_pld_pcs_interface|pcs8grxurstpcs ),
	.pcs8gsyncsmenoutput(\inst_av_hssi_rx_pld_pcs_interface|pcs8gsyncsmenoutput ),
	.pcs8gwrdisablerx(\inst_av_hssi_rx_pld_pcs_interface|pcs8gwrdisablerx ),
	.pld8gemptyrx(out_pld_8g_empty_rx),
	.pld8gfullrx(out_pld_8g_full_rx),
	.pld8grxclkout(out_pld_8g_rx_clk_out),
	.pldrxclkslipout(\inst_av_hssi_rx_pld_pcs_interface|pldrxclkslipout ),
	.pldrxpmarstbout(\inst_av_hssi_rx_pld_pcs_interface|pldrxpmarstbout ),
	.avmmreaddata({avmmreaddata_15,avmmreaddata_14,avmmreaddata_13,avmmreaddata_12,avmmreaddata_11,avmmreaddata_10,avmmreaddata_9,avmmreaddata_8,avmmreaddata_7,avmmreaddata_6,avmmreaddata_5,avmmreaddata_4,avmmreaddata_3,avmmreaddata_2,avmmreaddata_1,avmmreaddata_0}),
	.dataouttopld({dataouttopld_63,dataouttopld_62,dataouttopld_61,dataouttopld_60,dataouttopld_59,dataouttopld_58,dataouttopld_57,dataouttopld_56,dataouttopld_55,dataouttopld_54,dataouttopld_53,dataouttopld_52,dataouttopld_51,dataouttopld_50,dataouttopld_49,dataouttopld_48,dataouttopld_47,
dataouttopld_46,dataouttopld_45,dataouttopld_44,dataouttopld_43,dataouttopld_42,dataouttopld_41,dataouttopld_40,dataouttopld_39,dataouttopld_38,dataouttopld_37,dataouttopld_36,dataouttopld_35,dataouttopld_34,dataouttopld_33,dataouttopld_32,dataouttopld_31,dataouttopld_30,
dataouttopld_29,dataouttopld_28,dataouttopld_27,dataouttopld_26,dataouttopld_25,dataouttopld_24,dataouttopld_23,dataouttopld_22,dataouttopld_21,dataouttopld_20,dataouttopld_19,dataouttopld_18,dataouttopld_17,dataouttopld_16,dataouttopld_15,dataouttopld_14,dataouttopld_13,
dataouttopld_12,dataouttopld_11,dataouttopld_10,dataouttopld_9,dataouttopld_8,dataouttopld_7,dataouttopld_6,dataouttopld_5,dataouttopld_4,dataouttopld_3,dataouttopld_2,dataouttopld_1,dataouttopld_0}),
	.avmmwrite(chnl_avmm_write_0),
	.avmmread(chnl_avmm_read_0),
	.avmmclk(chnl_avmm_clk_0),
	.avmmrstn(chnl_avmm_rstn_0),
	.avmmwritedata({chnl_avmm_writedata_15,chnl_avmm_writedata_14,chnl_avmm_writedata_13,chnl_avmm_writedata_12,chnl_avmm_writedata_11,chnl_avmm_writedata_10,chnl_avmm_writedata_9,chnl_avmm_writedata_8,chnl_avmm_writedata_7,chnl_avmm_writedata_6,chnl_avmm_writedata_5,
chnl_avmm_writedata_4,chnl_avmm_writedata_3,chnl_avmm_writedata_2,chnl_avmm_writedata_1,chnl_avmm_writedata_0}),
	.avmmaddress({chnl_avmm_address_10,chnl_avmm_address_9,chnl_avmm_address_8,chnl_avmm_address_7,chnl_avmm_address_6,chnl_avmm_address_5,chnl_avmm_address_4,chnl_avmm_address_3,chnl_avmm_address_2,chnl_avmm_address_1,chnl_avmm_address_0}),
	.avmmbyteen({chnl_avmm_byteen_1,chnl_avmm_byteen_0}),
	.pcs8galignstatus(\inst_av_hssi_8g_rx_pcs|alignstatuspld ),
	.pcs8gbistdone(\inst_av_hssi_8g_rx_pcs|bistdone ),
	.pcs8gbisterr(\inst_av_hssi_8g_rx_pcs|bisterr ),
	.pcs8gbyteordflag(\inst_av_hssi_8g_rx_pcs|byteordflag ),
	.clockinfrom8gpcs(\inst_av_hssi_8g_rx_pcs|clocktopld ),
	.pcs8gemptyrx(\inst_av_hssi_8g_rx_pcs|pcfifoempty ),
	.pcs8gfullrx(\inst_av_hssi_8g_rx_pcs|pcfifofull ),
	.pcs8grlvlt(\inst_av_hssi_8g_rx_pcs|rlvlt ),
	.pcs8gemptyrmf(\inst_av_hssi_8g_rx_pcs|rmfifoempty ),
	.pcs8gfullrmf(\inst_av_hssi_8g_rx_pcs|rmfifofull ),
	.pcs8gsignaldetectout(\inst_av_hssi_8g_rx_pcs|signaldetectout ),
	.pcs8ga1a2k1k2flag({\inst_av_hssi_8g_rx_pcs|a1a2k1k2flag[3] ,\inst_av_hssi_8g_rx_pcs|a1a2k1k2flag[2] ,\inst_av_hssi_8g_rx_pcs|a1a2k1k2flag[1] ,\inst_av_hssi_8g_rx_pcs|a1a2k1k2flag[0] }),
	.datainfrom8gpcs({\inst_av_hssi_8g_rx_pcs|dataout[63] ,\inst_av_hssi_8g_rx_pcs|dataout[62] ,\inst_av_hssi_8g_rx_pcs|dataout[61] ,\inst_av_hssi_8g_rx_pcs|dataout[60] ,\inst_av_hssi_8g_rx_pcs|dataout[59] ,\inst_av_hssi_8g_rx_pcs|dataout[58] ,\inst_av_hssi_8g_rx_pcs|dataout[57] ,
\inst_av_hssi_8g_rx_pcs|dataout[56] ,\inst_av_hssi_8g_rx_pcs|dataout[55] ,\inst_av_hssi_8g_rx_pcs|dataout[54] ,\inst_av_hssi_8g_rx_pcs|dataout[53] ,\inst_av_hssi_8g_rx_pcs|dataout[52] ,\inst_av_hssi_8g_rx_pcs|dataout[51] ,\inst_av_hssi_8g_rx_pcs|dataout[50] ,
\inst_av_hssi_8g_rx_pcs|dataout[49] ,\inst_av_hssi_8g_rx_pcs|dataout[48] ,\inst_av_hssi_8g_rx_pcs|dataout[47] ,\inst_av_hssi_8g_rx_pcs|dataout[46] ,\inst_av_hssi_8g_rx_pcs|dataout[45] ,\inst_av_hssi_8g_rx_pcs|dataout[44] ,\inst_av_hssi_8g_rx_pcs|dataout[43] ,
\inst_av_hssi_8g_rx_pcs|dataout[42] ,\inst_av_hssi_8g_rx_pcs|dataout[41] ,\inst_av_hssi_8g_rx_pcs|dataout[40] ,\inst_av_hssi_8g_rx_pcs|dataout[39] ,\inst_av_hssi_8g_rx_pcs|dataout[38] ,\inst_av_hssi_8g_rx_pcs|dataout[37] ,\inst_av_hssi_8g_rx_pcs|dataout[36] ,
\inst_av_hssi_8g_rx_pcs|dataout[35] ,\inst_av_hssi_8g_rx_pcs|dataout[34] ,\inst_av_hssi_8g_rx_pcs|dataout[33] ,\inst_av_hssi_8g_rx_pcs|dataout[32] ,\inst_av_hssi_8g_rx_pcs|dataout[31] ,\inst_av_hssi_8g_rx_pcs|dataout[30] ,\inst_av_hssi_8g_rx_pcs|dataout[29] ,
\inst_av_hssi_8g_rx_pcs|dataout[28] ,\inst_av_hssi_8g_rx_pcs|dataout[27] ,\inst_av_hssi_8g_rx_pcs|dataout[26] ,\inst_av_hssi_8g_rx_pcs|dataout[25] ,\inst_av_hssi_8g_rx_pcs|dataout[24] ,\inst_av_hssi_8g_rx_pcs|dataout[23] ,\inst_av_hssi_8g_rx_pcs|dataout[22] ,
\inst_av_hssi_8g_rx_pcs|dataout[21] ,\inst_av_hssi_8g_rx_pcs|dataout[20] ,\inst_av_hssi_8g_rx_pcs|dataout[19] ,\inst_av_hssi_8g_rx_pcs|dataout[18] ,\inst_av_hssi_8g_rx_pcs|dataout[17] ,\inst_av_hssi_8g_rx_pcs|dataout[16] ,\inst_av_hssi_8g_rx_pcs|dataout[15] ,
\inst_av_hssi_8g_rx_pcs|dataout[14] ,\inst_av_hssi_8g_rx_pcs|dataout[13] ,\inst_av_hssi_8g_rx_pcs|dataout[12] ,\inst_av_hssi_8g_rx_pcs|dataout[11] ,\inst_av_hssi_8g_rx_pcs|dataout[10] ,\inst_av_hssi_8g_rx_pcs|dataout[9] ,\inst_av_hssi_8g_rx_pcs|dataout[8] ,
\inst_av_hssi_8g_rx_pcs|dataout[7] ,\inst_av_hssi_8g_rx_pcs|dataout[6] ,\inst_av_hssi_8g_rx_pcs|dataout[5] ,\inst_av_hssi_8g_rx_pcs|dataout[4] ,\inst_av_hssi_8g_rx_pcs|dataout[3] ,\inst_av_hssi_8g_rx_pcs|dataout[2] ,\inst_av_hssi_8g_rx_pcs|dataout[1] ,
\inst_av_hssi_8g_rx_pcs|dataout[0] }),
	.pcs8grxdatavalid({\inst_av_hssi_8g_rx_pcs|rxdatavalid[3] ,\inst_av_hssi_8g_rx_pcs|rxdatavalid[2] ,\inst_av_hssi_8g_rx_pcs|rxdatavalid[1] ,\inst_av_hssi_8g_rx_pcs|rxdatavalid[0] }),
	.pcs8gwaboundary({\inst_av_hssi_8g_rx_pcs|wordalignboundary[4] ,\inst_av_hssi_8g_rx_pcs|wordalignboundary[3] ,\inst_av_hssi_8g_rx_pcs|wordalignboundary[2] ,\inst_av_hssi_8g_rx_pcs|wordalignboundary[1] ,\inst_av_hssi_8g_rx_pcs|wordalignboundary[0] }),
	.emsipenablediocsrrdydly(\inst_av_hssi_common_pld_pcs_interface|emsipenablediocsrrdydly ),
	.rstsel(\inst_av_hssi_common_pld_pcs_interface|rstsel ),
	.usrrstsel(\inst_av_hssi_common_pld_pcs_interface|usrrstsel ),
	.pmarxplllock(\inst_av_hssi_rx_pcs_pma_interface|pmarxpllphaselockout ),
	.pld8grxurstpcsn(out_pld_8g_rxurstpcs_n_0),
	.pldrxpmarstbin(out_pld_rxpma_rstb_in_0),
	.pld8gpldrxclk(rx_std_coreclkin_0));

NATIVE_TRANSCEIVER_IP_av_hssi_tx_pld_pcs_interface_rbc inst_av_hssi_tx_pld_pcs_interface(
	.blockselect(out_blockselect_tx_pld_pcs_if),
	.pcs8gphfifoursttx(\inst_av_hssi_tx_pld_pcs_interface|pcs8gphfifoursttx ),
	.pcs8gpldtxclk(\inst_av_hssi_tx_pld_pcs_interface|pcs8gpldtxclk ),
	.pcs8gpolinvtx(\inst_av_hssi_tx_pld_pcs_interface|pcs8gpolinvtx ),
	.pcs8grddisabletx(\inst_av_hssi_tx_pld_pcs_interface|pcs8grddisabletx ),
	.pcs8grevloopbk(\inst_av_hssi_tx_pld_pcs_interface|pcs8grevloopbk ),
	.pcs8gtxurstpcs(\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxurstpcs ),
	.pcs8gwrenabletx(\inst_av_hssi_tx_pld_pcs_interface|pcs8gwrenabletx ),
	.pld8gemptytx(out_pld_8g_empty_tx),
	.pld8gfulltx(out_pld_8g_full_tx),
	.pld8gtxclkout(out_pld_8g_tx_clk_out),
	.avmmreaddata({avmmreaddata_151,avmmreaddata_141,avmmreaddata_131,avmmreaddata_121,avmmreaddata_111,avmmreaddata_101,avmmreaddata_91,avmmreaddata_81,avmmreaddata_71,avmmreaddata_61,avmmreaddata_51,avmmreaddata_41,avmmreaddata_31,avmmreaddata_21,avmmreaddata_16,avmmreaddata_01}),
	.dataoutto8gpcs({\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[43] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[42] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[41] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[40] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[39] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[38] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[37] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[36] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[35] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[34] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[33] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[32] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[31] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[30] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[29] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[28] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[27] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[26] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[25] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[24] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[23] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[22] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[21] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[20] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[19] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[18] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[17] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[16] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[15] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[14] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[13] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[12] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[11] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[10] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[9] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[8] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[7] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[6] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[5] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[4] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[3] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[2] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[1] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[0] }),
	.pcs8gtxboundarysel({\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxboundarysel[4] ,\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxboundarysel[3] ,\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxboundarysel[2] ,\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxboundarysel[1] ,
\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxboundarysel[0] }),
	.pcs8gtxdatavalid({\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxdatavalid[3] ,\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxdatavalid[2] ,\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxdatavalid[1] ,\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxdatavalid[0] }),
	.avmmwrite(chnl_avmm_write_0),
	.avmmread(chnl_avmm_read_0),
	.avmmclk(chnl_avmm_clk_0),
	.avmmrstn(chnl_avmm_rstn_0),
	.avmmwritedata({chnl_avmm_writedata_15,chnl_avmm_writedata_14,chnl_avmm_writedata_13,chnl_avmm_writedata_12,chnl_avmm_writedata_11,chnl_avmm_writedata_10,chnl_avmm_writedata_9,chnl_avmm_writedata_8,chnl_avmm_writedata_7,chnl_avmm_writedata_6,chnl_avmm_writedata_5,
chnl_avmm_writedata_4,chnl_avmm_writedata_3,chnl_avmm_writedata_2,chnl_avmm_writedata_1,chnl_avmm_writedata_0}),
	.avmmaddress({chnl_avmm_address_10,chnl_avmm_address_9,chnl_avmm_address_8,chnl_avmm_address_7,chnl_avmm_address_6,chnl_avmm_address_5,chnl_avmm_address_4,chnl_avmm_address_3,chnl_avmm_address_2,chnl_avmm_address_1,chnl_avmm_address_0}),
	.avmmbyteen({chnl_avmm_byteen_1,chnl_avmm_byteen_0}),
	.emsipenablediocsrrdydly(\inst_av_hssi_common_pld_pcs_interface|emsipenablediocsrrdydly ),
	.rstsel(\inst_av_hssi_common_pld_pcs_interface|rstsel ),
	.usrrstsel(\inst_av_hssi_common_pld_pcs_interface|usrrstsel ),
	.clockinfrom8gpcs(\inst_av_hssi_8g_tx_pcs|clkout ),
	.pcs8gfulltx(\inst_av_hssi_8g_tx_pcs|phfifooverflow ),
	.pcs8gemptytx(\inst_av_hssi_8g_tx_pcs|phfifounderflow ),
	.pmatxcmuplllock(\inst_av_hssi_tx_pcs_pma_interface|pmarxfreqtxcmuplllockout ),
	.pld8gtxurstpcsn(out_pld_8g_txurstpcs_n_0),
	.pld8gpldtxclk(tx_std_coreclkin_0),
	.datainfrompld({tx_parallel_data_43,tx_parallel_data_42,tx_parallel_data_41,tx_parallel_data_40,tx_parallel_data_39,tx_parallel_data_38,tx_parallel_data_37,tx_parallel_data_36,tx_parallel_data_35,tx_parallel_data_34,tx_parallel_data_33,tx_parallel_data_32,tx_parallel_data_31,
tx_parallel_data_30,tx_parallel_data_29,tx_parallel_data_28,tx_parallel_data_27,tx_parallel_data_26,tx_parallel_data_25,tx_parallel_data_24,tx_parallel_data_23,tx_parallel_data_22,tx_parallel_data_21,tx_parallel_data_20,tx_parallel_data_19,tx_parallel_data_18,
tx_parallel_data_17,tx_parallel_data_16,tx_parallel_data_15,tx_parallel_data_14,tx_parallel_data_13,tx_parallel_data_12,tx_parallel_data_11,tx_parallel_data_10,tx_parallel_data_9,tx_parallel_data_8,tx_parallel_data_7,tx_parallel_data_6,tx_parallel_data_5,
tx_parallel_data_4,tx_parallel_data_3,tx_parallel_data_2,tx_parallel_data_1,tx_parallel_data_0}));

NATIVE_TRANSCEIVER_IP_av_hssi_common_pld_pcs_interface_rbc inst_av_hssi_common_pld_pcs_interface(
	.avmmwrite(chnl_avmm_write_0),
	.avmmread(chnl_avmm_read_0),
	.avmmclk(chnl_avmm_clk_0),
	.avmmrstn(chnl_avmm_rstn_0),
	.avmmwritedata({chnl_avmm_writedata_15,chnl_avmm_writedata_14,chnl_avmm_writedata_13,chnl_avmm_writedata_12,chnl_avmm_writedata_11,chnl_avmm_writedata_10,chnl_avmm_writedata_9,chnl_avmm_writedata_8,chnl_avmm_writedata_7,chnl_avmm_writedata_6,chnl_avmm_writedata_5,
chnl_avmm_writedata_4,chnl_avmm_writedata_3,chnl_avmm_writedata_2,chnl_avmm_writedata_1,chnl_avmm_writedata_0}),
	.avmmaddress({chnl_avmm_address_10,chnl_avmm_address_9,chnl_avmm_address_8,chnl_avmm_address_7,chnl_avmm_address_6,chnl_avmm_address_5,chnl_avmm_address_4,chnl_avmm_address_3,chnl_avmm_address_2,chnl_avmm_address_1,chnl_avmm_address_0}),
	.avmmbyteen({chnl_avmm_byteen_1,chnl_avmm_byteen_0}),
	.pcs8gphystatus(\inst_av_hssi_8g_rx_pcs|phystatus ),
	.pcs8grxvalid(\inst_av_hssi_8g_rx_pcs|rxvalid ),
	.pcs8gchnltestbusout({\inst_av_hssi_8g_rx_pcs|channeltestbusout[19] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[18] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[17] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[16] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[15] ,
\inst_av_hssi_8g_rx_pcs|channeltestbusout[14] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[13] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[12] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[11] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[10] ,
\inst_av_hssi_8g_rx_pcs|channeltestbusout[9] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[8] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[7] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[6] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[5] ,
\inst_av_hssi_8g_rx_pcs|channeltestbusout[4] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[3] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[2] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[1] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[0] }),
	.pcs8grxstatus({\inst_av_hssi_8g_rx_pcs|rxstatus[2] ,\inst_av_hssi_8g_rx_pcs|rxstatus[1] ,\inst_av_hssi_8g_rx_pcs|rxstatus[0] }),
	.blockselect(out_blockselect_com_pld_pcs_if),
	.emsipenablediocsrrdydly(\inst_av_hssi_common_pld_pcs_interface|emsipenablediocsrrdydly ),
	.pcs8ghardreset(\inst_av_hssi_common_pld_pcs_interface|pcs8ghardreset ),
	.pcs8gltr(\inst_av_hssi_common_pld_pcs_interface|pcs8gltr ),
	.pcs8gprbsciden(\inst_av_hssi_common_pld_pcs_interface|pcs8gprbsciden ),
	.pcs8grate(\inst_av_hssi_common_pld_pcs_interface|pcs8grate ),
	.pcs8grefclkdig(\inst_av_hssi_common_pld_pcs_interface|pcs8grefclkdig ),
	.pcs8grefclkdig2(\inst_av_hssi_common_pld_pcs_interface|pcs8grefclkdig2 ),
	.pcs8grxpolarity(\inst_av_hssi_common_pld_pcs_interface|pcs8grxpolarity ),
	.pcs8gscanmoden(\inst_av_hssi_common_pld_pcs_interface|pcs8gscanmoden ),
	.pcs8gtxdeemph(\inst_av_hssi_common_pld_pcs_interface|pcs8gtxdeemph ),
	.pcs8gtxdetectrxloopback(\inst_av_hssi_common_pld_pcs_interface|pcs8gtxdetectrxloopback ),
	.pcs8gtxelecidle(\inst_av_hssi_common_pld_pcs_interface|pcs8gtxelecidle ),
	.pcs8gtxswing(\inst_av_hssi_common_pld_pcs_interface|pcs8gtxswing ),
	.pcsaggrefclkdig(\inst_av_hssi_common_pld_pcs_interface|pcsaggrefclkdig ),
	.pcsaggscanmoden(\inst_av_hssi_common_pld_pcs_interface|pcsaggscanmoden ),
	.pcsaggscanshift(\inst_av_hssi_common_pld_pcs_interface|pcsaggscanshift ),
	.pcsaggtestsi(\inst_av_hssi_common_pld_pcs_interface|pcsaggtestsi ),
	.pcspcspmaifrefclkdig(\inst_av_hssi_common_pld_pcs_interface|pcspcspmaifrefclkdig ),
	.pcspcspmaifscanmoden(\inst_av_hssi_common_pld_pcs_interface|pcspcspmaifscanmoden ),
	.pcspcspmaifscanshiftn(\inst_av_hssi_common_pld_pcs_interface|pcspcspmaifscanshiftn ),
	.pcspmaifhardreset(\inst_av_hssi_common_pld_pcs_interface|pcspmaifhardreset ),
	.pldnfrzdrv(\inst_av_hssi_common_pld_pcs_interface|pldnfrzdrv ),
	.pldpartialreconfigout(\inst_av_hssi_common_pld_pcs_interface|pldpartialreconfigout ),
	.rstsel(\inst_av_hssi_common_pld_pcs_interface|rstsel ),
	.usrrstsel(\inst_av_hssi_common_pld_pcs_interface|usrrstsel ),
	.avmmreaddata({avmmreaddata_153,avmmreaddata_143,avmmreaddata_133,avmmreaddata_123,avmmreaddata_113,avmmreaddata_103,avmmreaddata_93,avmmreaddata_83,avmmreaddata_73,avmmreaddata_63,avmmreaddata_53,avmmreaddata_43,avmmreaddata_33,avmmreaddata_23,avmmreaddata_18,avmmreaddata_03}),
	.pcs8geidleinfersel({\inst_av_hssi_common_pld_pcs_interface|pcs8geidleinfersel[2] ,\inst_av_hssi_common_pld_pcs_interface|pcs8geidleinfersel[1] ,\inst_av_hssi_common_pld_pcs_interface|pcs8geidleinfersel[0] }),
	.pcs8gpowerdown({\inst_av_hssi_common_pld_pcs_interface|pcs8gpowerdown[1] ,\inst_av_hssi_common_pld_pcs_interface|pcs8gpowerdown[0] }),
	.pcs8gtxmargin({\inst_av_hssi_common_pld_pcs_interface|pcs8gtxmargin[2] ,\inst_av_hssi_common_pld_pcs_interface|pcs8gtxmargin[1] ,\inst_av_hssi_common_pld_pcs_interface|pcs8gtxmargin[0] }),
	.pcs8grxelecidle(\inst_av_hssi_rx_pcs_pma_interface|pcs8gsigdetni ),
	.pcsaggtestso(\inst_av_hssi_common_pcs_pma_interface|aggtestsotopldout ),
	.pldhclkin(\inst_av_hssi_common_pcs_pma_interface|pldhclkout ),
	.pmaclklow(\inst_av_hssi_common_pcs_pma_interface|pmaclklowout ),
	.pmafref(\inst_av_hssi_common_pcs_pma_interface|pmafrefout ),
	.pcspmaiftestbusout({\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[9] ,\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[8] ,\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[7] ,\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[6] ,
\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[5] ,\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[4] ,\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[3] ,\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[2] ,
\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[1] ,\inst_av_hssi_common_pcs_pma_interface|pmaiftestbus[0] }),
	.pldltr(rx_set_locktoref_0));

NATIVE_TRANSCEIVER_IP_av_hssi_8g_tx_pcs_rbc inst_av_hssi_8g_tx_pcs(
	.polinvrxin(\inst_av_hssi_rx_pld_pcs_interface|pcs8gpolinvrx ),
	.phfiforeset(\inst_av_hssi_tx_pld_pcs_interface|pcs8gphfifoursttx ),
	.coreclk(\inst_av_hssi_tx_pld_pcs_interface|pcs8gpldtxclk ),
	.invpol(\inst_av_hssi_tx_pld_pcs_interface|pcs8gpolinvtx ),
	.phfiforddisable(\inst_av_hssi_tx_pld_pcs_interface|pcs8grddisabletx ),
	.pipeenrevparallellpbkin(\inst_av_hssi_tx_pld_pcs_interface|pcs8grevloopbk ),
	.txpcsreset(\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxurstpcs ),
	.phfifowrenable(\inst_av_hssi_tx_pld_pcs_interface|pcs8gwrenabletx ),
	.datain({\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[43] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[42] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[41] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[40] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[39] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[38] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[37] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[36] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[35] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[34] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[33] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[32] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[31] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[30] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[29] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[28] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[27] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[26] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[25] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[24] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[23] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[22] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[21] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[20] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[19] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[18] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[17] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[16] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[15] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[14] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[13] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[12] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[11] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[10] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[9] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[8] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[7] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[6] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[5] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[4] ,
\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[3] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[2] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[1] ,\inst_av_hssi_tx_pld_pcs_interface|dataoutto8gpcs[0] }),
	.bitslipboundaryselect({\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxboundarysel[4] ,\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxboundarysel[3] ,\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxboundarysel[2] ,\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxboundarysel[1] ,
\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxboundarysel[0] }),
	.txdatavalid({\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxdatavalid[3] ,\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxdatavalid[2] ,\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxdatavalid[1] ,\inst_av_hssi_tx_pld_pcs_interface|pcs8gtxdatavalid[0] }),
	.avmmwrite(chnl_avmm_write_0),
	.avmmread(chnl_avmm_read_0),
	.avmmclk(chnl_avmm_clk_0),
	.avmmrstn(chnl_avmm_rstn_0),
	.avmmwritedata({chnl_avmm_writedata_15,chnl_avmm_writedata_14,chnl_avmm_writedata_13,chnl_avmm_writedata_12,chnl_avmm_writedata_11,chnl_avmm_writedata_10,chnl_avmm_writedata_9,chnl_avmm_writedata_8,chnl_avmm_writedata_7,chnl_avmm_writedata_6,chnl_avmm_writedata_5,
chnl_avmm_writedata_4,chnl_avmm_writedata_3,chnl_avmm_writedata_2,chnl_avmm_writedata_1,chnl_avmm_writedata_0}),
	.avmmaddress({chnl_avmm_address_10,chnl_avmm_address_9,chnl_avmm_address_8,chnl_avmm_address_7,chnl_avmm_address_6,chnl_avmm_address_5,chnl_avmm_address_4,chnl_avmm_address_3,chnl_avmm_address_2,chnl_avmm_address_1,chnl_avmm_address_0}),
	.avmmbyteen({chnl_avmm_byteen_1,chnl_avmm_byteen_0}),
	.dispcbyte(\inst_av_hssi_8g_rx_pcs|disablepcfifobyteserdes ),
	.resetpcptrs(\inst_av_hssi_8g_rx_pcs|resetpcptrs ),
	.resetpcptrsinchnldown(\inst_av_hssi_8g_rx_pcs|resetpcptrsinchnldownpipe ),
	.resetpcptrsinchnlup(\inst_av_hssi_8g_rx_pcs|resetpcptrsinchnluppipe ),
	.revparallellpbkdata({\inst_av_hssi_8g_rx_pcs|parallelrevloopback[19] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[18] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[17] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[16] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[15] ,
\inst_av_hssi_8g_rx_pcs|parallelrevloopback[14] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[13] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[12] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[11] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[10] ,
\inst_av_hssi_8g_rx_pcs|parallelrevloopback[9] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[8] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[7] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[6] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[5] ,
\inst_av_hssi_8g_rx_pcs|parallelrevloopback[4] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[3] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[2] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[1] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[0] }),
	.hrdrst(\inst_av_hssi_common_pld_pcs_interface|pcs8ghardreset ),
	.prbscidenable(\inst_av_hssi_common_pld_pcs_interface|pcs8gprbsciden ),
	.refclkdig(\inst_av_hssi_common_pld_pcs_interface|pcs8grefclkdig ),
	.rxpolarityin(\inst_av_hssi_common_pld_pcs_interface|pcs8grxpolarity ),
	.scanmode(\inst_av_hssi_common_pld_pcs_interface|pcs8gscanmoden ),
	.pipetxdeemph(\inst_av_hssi_common_pld_pcs_interface|pcs8gtxdeemph ),
	.detectrxloopin(\inst_av_hssi_common_pld_pcs_interface|pcs8gtxdetectrxloopback ),
	.pipetxswing(\inst_av_hssi_common_pld_pcs_interface|pcs8gtxswing ),
	.elecidleinfersel({\inst_av_hssi_common_pld_pcs_interface|pcs8geidleinfersel[2] ,\inst_av_hssi_common_pld_pcs_interface|pcs8geidleinfersel[1] ,\inst_av_hssi_common_pld_pcs_interface|pcs8geidleinfersel[0] }),
	.powerdn({\inst_av_hssi_common_pld_pcs_interface|pcs8gpowerdown[1] ,\inst_av_hssi_common_pld_pcs_interface|pcs8gpowerdown[0] }),
	.pipetxmargin({\inst_av_hssi_common_pld_pcs_interface|pcs8gtxmargin[2] ,\inst_av_hssi_common_pld_pcs_interface|pcs8gtxmargin[1] ,\inst_av_hssi_common_pld_pcs_interface|pcs8gtxmargin[0] }),
	.rateswitch(\inst_av_hssi_common_pcs_pma_interface|pcs8ggen2ngen1 ),
	.xgmctrl(\inst_av_hssi_common_pcs_pma_interface|pcsaggtxctlts ),
	.xgmctrltoporbottom(\inst_av_hssi_common_pcs_pma_interface|pcsaggtxctltstoporbot ),
	.xgmdatain({\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[7] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[6] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[5] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[4] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[3] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[2] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[1] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatats[0] }),
	.xgmdataintoporbottom({\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[7] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[6] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[5] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[4] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[3] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[2] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[1] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtxdatatstoporbot[0] }),
	.aggtxpcsrst(\inst_av_hssi_8g_tx_pcs|aggtxpcsrst ),
	.blockselect(out_blockselect_pcs8g_tx),
	.clkout(\inst_av_hssi_8g_tx_pcs|clkout ),
	.dynclkswitchn(\inst_av_hssi_8g_tx_pcs|dynclkswitchn ),
	.phfifooverflow(\inst_av_hssi_8g_tx_pcs|phfifooverflow ),
	.phfifounderflow(\inst_av_hssi_8g_tx_pcs|phfifounderflow ),
	.pipeenrevparallellpbkout(\inst_av_hssi_8g_tx_pcs|pipeenrevparallellpbkout ),
	.polinvrxout(\inst_av_hssi_8g_tx_pcs|polinvrxout ),
	.rdenablesync(\inst_av_hssi_8g_tx_pcs|rdenablesync ),
	.xgmctrlenable(\inst_av_hssi_8g_tx_pcs|xgmctrlenable ),
	.avmmreaddata({avmmreaddata_156,avmmreaddata_146,avmmreaddata_136,avmmreaddata_126,avmmreaddata_117,avmmreaddata_106,avmmreaddata_96,avmmreaddata_86,avmmreaddata_76,avmmreaddata_66,avmmreaddata_56,avmmreaddata_46,avmmreaddata_36,avmmreaddata_26,avmmreaddata_116,avmmreaddata_06}),
	.dataout({\inst_av_hssi_8g_tx_pcs|dataout[19] ,\inst_av_hssi_8g_tx_pcs|dataout[18] ,\inst_av_hssi_8g_tx_pcs|dataout[17] ,\inst_av_hssi_8g_tx_pcs|dataout[16] ,\inst_av_hssi_8g_tx_pcs|dataout[15] ,\inst_av_hssi_8g_tx_pcs|dataout[14] ,\inst_av_hssi_8g_tx_pcs|dataout[13] ,
\inst_av_hssi_8g_tx_pcs|dataout[12] ,\inst_av_hssi_8g_tx_pcs|dataout[11] ,\inst_av_hssi_8g_tx_pcs|dataout[10] ,\inst_av_hssi_8g_tx_pcs|dataout[9] ,\inst_av_hssi_8g_tx_pcs|dataout[8] ,\inst_av_hssi_8g_tx_pcs|dataout[7] ,\inst_av_hssi_8g_tx_pcs|dataout[6] ,
\inst_av_hssi_8g_tx_pcs|dataout[5] ,\inst_av_hssi_8g_tx_pcs|dataout[4] ,\inst_av_hssi_8g_tx_pcs|dataout[3] ,\inst_av_hssi_8g_tx_pcs|dataout[2] ,\inst_av_hssi_8g_tx_pcs|dataout[1] ,\inst_av_hssi_8g_tx_pcs|dataout[0] }),
	.grayelecidleinferselout({\inst_av_hssi_8g_tx_pcs|grayelecidleinferselout[2] ,\inst_av_hssi_8g_tx_pcs|grayelecidleinferselout[1] ,\inst_av_hssi_8g_tx_pcs|grayelecidleinferselout[0] }),
	.parallelfdbkout({\inst_av_hssi_8g_tx_pcs|parallelfdbkout[19] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[18] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[17] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[16] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[15] ,
\inst_av_hssi_8g_tx_pcs|parallelfdbkout[14] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[13] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[12] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[11] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[10] ,
\inst_av_hssi_8g_tx_pcs|parallelfdbkout[9] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[8] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[7] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[6] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[5] ,
\inst_av_hssi_8g_tx_pcs|parallelfdbkout[4] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[3] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[2] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[1] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[0] }),
	.txctrlplanetestbus({\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[19] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[18] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[17] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[16] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[15] ,
\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[14] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[13] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[12] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[11] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[10] ,
\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[9] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[8] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[7] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[6] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[5] ,
\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[4] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[3] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[2] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[1] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[0] }),
	.txdivsync({\inst_av_hssi_8g_tx_pcs|txdivsync[1] ,\inst_av_hssi_8g_tx_pcs|txdivsync[0] }),
	.txtestbus({\inst_av_hssi_8g_tx_pcs|txtestbus[19] ,\inst_av_hssi_8g_tx_pcs|txtestbus[18] ,\inst_av_hssi_8g_tx_pcs|txtestbus[17] ,\inst_av_hssi_8g_tx_pcs|txtestbus[16] ,\inst_av_hssi_8g_tx_pcs|txtestbus[15] ,\inst_av_hssi_8g_tx_pcs|txtestbus[14] ,
\inst_av_hssi_8g_tx_pcs|txtestbus[13] ,\inst_av_hssi_8g_tx_pcs|txtestbus[12] ,\inst_av_hssi_8g_tx_pcs|txtestbus[11] ,\inst_av_hssi_8g_tx_pcs|txtestbus[10] ,\inst_av_hssi_8g_tx_pcs|txtestbus[9] ,\inst_av_hssi_8g_tx_pcs|txtestbus[8] ,
\inst_av_hssi_8g_tx_pcs|txtestbus[7] ,\inst_av_hssi_8g_tx_pcs|txtestbus[6] ,\inst_av_hssi_8g_tx_pcs|txtestbus[5] ,\inst_av_hssi_8g_tx_pcs|txtestbus[4] ,\inst_av_hssi_8g_tx_pcs|txtestbus[3] ,\inst_av_hssi_8g_tx_pcs|txtestbus[2] ,
\inst_av_hssi_8g_tx_pcs|txtestbus[1] ,\inst_av_hssi_8g_tx_pcs|txtestbus[0] }),
	.xgmdataout({\inst_av_hssi_8g_tx_pcs|xgmdataout[7] ,\inst_av_hssi_8g_tx_pcs|xgmdataout[6] ,\inst_av_hssi_8g_tx_pcs|xgmdataout[5] ,\inst_av_hssi_8g_tx_pcs|xgmdataout[4] ,\inst_av_hssi_8g_tx_pcs|xgmdataout[3] ,\inst_av_hssi_8g_tx_pcs|xgmdataout[2] ,
\inst_av_hssi_8g_tx_pcs|xgmdataout[1] ,\inst_av_hssi_8g_tx_pcs|xgmdataout[0] }),
	.txpmalocalclk(\inst_av_hssi_tx_pcs_pma_interface|clockoutto8gpcs ));

NATIVE_TRANSCEIVER_IP_av_hssi_rx_pcs_pma_interface_rbc inst_av_hssi_rx_pcs_pma_interface(
	.pldrxclkslip(\inst_av_hssi_rx_pld_pcs_interface|pldrxclkslipout ),
	.pldrxpmarstb(\inst_av_hssi_rx_pld_pcs_interface|pldrxpmarstbout ),
	.clockinfrompma(clkdivrx_0),
	.datainfrompma({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,dout_19,dout_18,dout_17,dout_16,dout_15,dout_14,dout_13,dout_12,dout_11,dout_10,dout_9,
dout_8,dout_7,dout_6,dout_5,dout_4,dout_3,dout_2,dout_1,dout_0}),
	.pmarxpllphaselockin(rx_is_lockedtodata_0),
	.avmmwrite(chnl_avmm_write_0),
	.avmmread(chnl_avmm_read_0),
	.avmmclk(chnl_avmm_clk_0),
	.avmmrstn(chnl_avmm_rstn_0),
	.avmmwritedata({chnl_avmm_writedata_15,chnl_avmm_writedata_14,chnl_avmm_writedata_13,chnl_avmm_writedata_12,chnl_avmm_writedata_11,chnl_avmm_writedata_10,chnl_avmm_writedata_9,chnl_avmm_writedata_8,chnl_avmm_writedata_7,chnl_avmm_writedata_6,chnl_avmm_writedata_5,
chnl_avmm_writedata_4,chnl_avmm_writedata_3,chnl_avmm_writedata_2,chnl_avmm_writedata_1,chnl_avmm_writedata_0}),
	.avmmaddress({chnl_avmm_address_10,chnl_avmm_address_9,chnl_avmm_address_8,chnl_avmm_address_7,chnl_avmm_address_6,chnl_avmm_address_5,chnl_avmm_address_4,chnl_avmm_address_3,chnl_avmm_address_2,chnl_avmm_address_1,chnl_avmm_address_0}),
	.avmmbyteen({chnl_avmm_byteen_1,chnl_avmm_byteen_0}),
	.pcs8grxclkiqout(\inst_av_hssi_8g_rx_pcs|clocktopld ),
	.pcs8grxclkslip(\inst_av_hssi_8g_rx_pcs|rxclkslip ),
	.blockselect(out_blockselect_rx_pcs_pma_if),
	.clockoutto8gpcs(\inst_av_hssi_rx_pcs_pma_interface|clockoutto8gpcs ),
	.pcs8gsigdetni(\inst_av_hssi_rx_pcs_pma_interface|pcs8gsigdetni ),
	.pmarxclkslip(out_pma_rxclkslip),
	.pmarxpllphaselockout(\inst_av_hssi_rx_pcs_pma_interface|pmarxpllphaselockout ),
	.pmarxpmarstb(pmarxpmarstb),
	.avmmreaddata({avmmreaddata_154,avmmreaddata_144,avmmreaddata_134,avmmreaddata_124,avmmreaddata_114,avmmreaddata_104,avmmreaddata_94,avmmreaddata_84,avmmreaddata_74,avmmreaddata_64,avmmreaddata_54,avmmreaddata_44,avmmreaddata_34,avmmreaddata_24,avmmreaddata_19,avmmreaddata_04}),
	.dataoutto8gpcs({\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[19] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[18] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[17] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[16] ,
\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[15] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[14] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[13] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[12] ,
\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[11] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[10] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[9] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[8] ,
\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[7] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[6] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[5] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[4] ,
\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[3] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[2] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[1] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[0] }),
	.pmasigdet(sd_0));

NATIVE_TRANSCEIVER_IP_av_hssi_tx_pcs_pma_interface_rbc inst_av_hssi_tx_pcs_pma_interface(
	.avmmwrite(chnl_avmm_write_0),
	.avmmread(chnl_avmm_read_0),
	.avmmclk(chnl_avmm_clk_0),
	.avmmrstn(chnl_avmm_rstn_0),
	.avmmwritedata({chnl_avmm_writedata_15,chnl_avmm_writedata_14,chnl_avmm_writedata_13,chnl_avmm_writedata_12,chnl_avmm_writedata_11,chnl_avmm_writedata_10,chnl_avmm_writedata_9,chnl_avmm_writedata_8,chnl_avmm_writedata_7,chnl_avmm_writedata_6,chnl_avmm_writedata_5,
chnl_avmm_writedata_4,chnl_avmm_writedata_3,chnl_avmm_writedata_2,chnl_avmm_writedata_1,chnl_avmm_writedata_0}),
	.avmmaddress({chnl_avmm_address_10,chnl_avmm_address_9,chnl_avmm_address_8,chnl_avmm_address_7,chnl_avmm_address_6,chnl_avmm_address_5,chnl_avmm_address_4,chnl_avmm_address_3,chnl_avmm_address_2,chnl_avmm_address_1,chnl_avmm_address_0}),
	.avmmbyteen({chnl_avmm_byteen_1,chnl_avmm_byteen_0}),
	.clockinfrompma(clkdivtx),
	.pcs8gtxclkiqout(\inst_av_hssi_8g_tx_pcs|clkout ),
	.datainfrom8gpcs({\inst_av_hssi_8g_tx_pcs|dataout[19] ,\inst_av_hssi_8g_tx_pcs|dataout[18] ,\inst_av_hssi_8g_tx_pcs|dataout[17] ,\inst_av_hssi_8g_tx_pcs|dataout[16] ,\inst_av_hssi_8g_tx_pcs|dataout[15] ,\inst_av_hssi_8g_tx_pcs|dataout[14] ,\inst_av_hssi_8g_tx_pcs|dataout[13] ,
\inst_av_hssi_8g_tx_pcs|dataout[12] ,\inst_av_hssi_8g_tx_pcs|dataout[11] ,\inst_av_hssi_8g_tx_pcs|dataout[10] ,\inst_av_hssi_8g_tx_pcs|dataout[9] ,\inst_av_hssi_8g_tx_pcs|dataout[8] ,\inst_av_hssi_8g_tx_pcs|dataout[7] ,\inst_av_hssi_8g_tx_pcs|dataout[6] ,
\inst_av_hssi_8g_tx_pcs|dataout[5] ,\inst_av_hssi_8g_tx_pcs|dataout[4] ,\inst_av_hssi_8g_tx_pcs|dataout[3] ,\inst_av_hssi_8g_tx_pcs|dataout[2] ,\inst_av_hssi_8g_tx_pcs|dataout[1] ,\inst_av_hssi_8g_tx_pcs|dataout[0] }),
	.blockselect(out_blockselect_tx_pcs_pma_if),
	.clockoutto8gpcs(\inst_av_hssi_tx_pcs_pma_interface|clockoutto8gpcs ),
	.pmarxfreqtxcmuplllockout(\inst_av_hssi_tx_pcs_pma_interface|pmarxfreqtxcmuplllockout ),
	.avmmreaddata({avmmreaddata_157,avmmreaddata_147,avmmreaddata_137,avmmreaddata_127,avmmreaddata_119,avmmreaddata_107,avmmreaddata_97,avmmreaddata_87,avmmreaddata_77,avmmreaddata_67,avmmreaddata_57,avmmreaddata_47,avmmreaddata_37,avmmreaddata_27,avmmreaddata_118,avmmreaddata_07}),
	.dataouttopma({dataouttopma_unconnected_wire_79,dataouttopma_unconnected_wire_78,dataouttopma_unconnected_wire_77,dataouttopma_unconnected_wire_76,dataouttopma_unconnected_wire_75,dataouttopma_unconnected_wire_74,dataouttopma_unconnected_wire_73,dataouttopma_unconnected_wire_72,
dataouttopma_unconnected_wire_71,dataouttopma_unconnected_wire_70,dataouttopma_unconnected_wire_69,dataouttopma_unconnected_wire_68,dataouttopma_unconnected_wire_67,dataouttopma_unconnected_wire_66,dataouttopma_unconnected_wire_65,dataouttopma_unconnected_wire_64,
dataouttopma_unconnected_wire_63,dataouttopma_unconnected_wire_62,dataouttopma_unconnected_wire_61,dataouttopma_unconnected_wire_60,dataouttopma_unconnected_wire_59,dataouttopma_unconnected_wire_58,dataouttopma_unconnected_wire_57,dataouttopma_unconnected_wire_56,
dataouttopma_unconnected_wire_55,dataouttopma_unconnected_wire_54,dataouttopma_unconnected_wire_53,dataouttopma_unconnected_wire_52,dataouttopma_unconnected_wire_51,dataouttopma_unconnected_wire_50,dataouttopma_unconnected_wire_49,dataouttopma_unconnected_wire_48,
dataouttopma_unconnected_wire_47,dataouttopma_unconnected_wire_46,dataouttopma_unconnected_wire_45,dataouttopma_unconnected_wire_44,dataouttopma_unconnected_wire_43,dataouttopma_unconnected_wire_42,dataouttopma_unconnected_wire_41,dataouttopma_unconnected_wire_40,
dataouttopma_unconnected_wire_39,dataouttopma_unconnected_wire_38,dataouttopma_unconnected_wire_37,dataouttopma_unconnected_wire_36,dataouttopma_unconnected_wire_35,dataouttopma_unconnected_wire_34,dataouttopma_unconnected_wire_33,dataouttopma_unconnected_wire_32,
dataouttopma_unconnected_wire_31,dataouttopma_unconnected_wire_30,dataouttopma_unconnected_wire_29,dataouttopma_unconnected_wire_28,dataouttopma_unconnected_wire_27,dataouttopma_unconnected_wire_26,dataouttopma_unconnected_wire_25,dataouttopma_unconnected_wire_24,
dataouttopma_unconnected_wire_23,dataouttopma_unconnected_wire_22,dataouttopma_unconnected_wire_21,dataouttopma_unconnected_wire_20,dataouttopma_19,dataouttopma_18,dataouttopma_17,dataouttopma_16,dataouttopma_15,dataouttopma_14,dataouttopma_13,dataouttopma_12,
dataouttopma_11,dataouttopma_10,dataouttopma_9,dataouttopma_8,dataouttopma_7,dataouttopma_6,dataouttopma_5,dataouttopma_4,dataouttopma_3,dataouttopma_2,dataouttopma_1,dataouttopma_0}));

NATIVE_TRANSCEIVER_IP_av_hssi_8g_rx_pcs_rbc inst_av_hssi_8g_rx_pcs(
	.a1a2size(\inst_av_hssi_rx_pld_pcs_interface|pcs8ga1a2size ),
	.bitreversalenable(\inst_av_hssi_rx_pld_pcs_interface|pcs8gbitlocreven ),
	.bitslip(\inst_av_hssi_rx_pld_pcs_interface|pcs8gbitslip ),
	.bytereversalenable(\inst_av_hssi_rx_pld_pcs_interface|pcs8gbytereven ),
	.byteorder(\inst_av_hssi_rx_pld_pcs_interface|pcs8gbytordpld ),
	.rmfifouserrst(\inst_av_hssi_rx_pld_pcs_interface|pcs8gcmpfifourst ),
	.enablecommadetect(\inst_av_hssi_rx_pld_pcs_interface|pcs8gencdt ),
	.phfifouserrst(\inst_av_hssi_rx_pld_pcs_interface|pcs8gphfifourstrx ),
	.pldrxclk(\inst_av_hssi_rx_pld_pcs_interface|pcs8gpldrxclk ),
	.pcfifordenable(\inst_av_hssi_rx_pld_pcs_interface|pcs8grdenablerx ),
	.rxpcsrst(\inst_av_hssi_rx_pld_pcs_interface|pcs8grxurstpcs ),
	.syncsmen(\inst_av_hssi_rx_pld_pcs_interface|pcs8gsyncsmenoutput ),
	.pxfifowrdisable(\inst_av_hssi_rx_pld_pcs_interface|pcs8gwrdisablerx ),
	.avmmwrite(chnl_avmm_write_0),
	.avmmread(chnl_avmm_read_0),
	.avmmclk(chnl_avmm_clk_0),
	.avmmrstn(chnl_avmm_rstn_0),
	.avmmwritedata({chnl_avmm_writedata_15,chnl_avmm_writedata_14,chnl_avmm_writedata_13,chnl_avmm_writedata_12,chnl_avmm_writedata_11,chnl_avmm_writedata_10,chnl_avmm_writedata_9,chnl_avmm_writedata_8,chnl_avmm_writedata_7,chnl_avmm_writedata_6,chnl_avmm_writedata_5,
chnl_avmm_writedata_4,chnl_avmm_writedata_3,chnl_avmm_writedata_2,chnl_avmm_writedata_1,chnl_avmm_writedata_0}),
	.avmmaddress({chnl_avmm_address_10,chnl_avmm_address_9,chnl_avmm_address_8,chnl_avmm_address_7,chnl_avmm_address_6,chnl_avmm_address_5,chnl_avmm_address_4,chnl_avmm_address_3,chnl_avmm_address_2,chnl_avmm_address_1,chnl_avmm_address_0}),
	.avmmbyteen({chnl_avmm_byteen_1,chnl_avmm_byteen_0}),
	.aggrxpcsrst(\inst_av_hssi_8g_rx_pcs|aggrxpcsrst ),
	.alignstatuspld(\inst_av_hssi_8g_rx_pcs|alignstatuspld ),
	.alignstatussync(\inst_av_hssi_8g_rx_pcs|alignstatussync ),
	.bistdone(\inst_av_hssi_8g_rx_pcs|bistdone ),
	.bisterr(\inst_av_hssi_8g_rx_pcs|bisterr ),
	.blockselect(out_blockselect_pcs8g_rx),
	.byteordflag(\inst_av_hssi_8g_rx_pcs|byteordflag ),
	.clocktopld(\inst_av_hssi_8g_rx_pcs|clocktopld ),
	.decoderctrl(\inst_av_hssi_8g_rx_pcs|decoderctrl ),
	.decoderdatavalid(\inst_av_hssi_8g_rx_pcs|decoderdatavalid ),
	.delcondmetout(\inst_av_hssi_8g_rx_pcs|delcondmetout ),
	.disablepcfifobyteserdes(\inst_av_hssi_8g_rx_pcs|disablepcfifobyteserdes ),
	.earlyeios(\inst_av_hssi_8g_rx_pcs|earlyeios ),
	.eidleexit(\inst_av_hssi_8g_rx_pcs|eidleexit ),
	.fifoovrout(\inst_av_hssi_8g_rx_pcs|fifoovrout ),
	.fifordoutcomp(\inst_av_hssi_8g_rx_pcs|fifordoutcomp ),
	.insertincompleteout(\inst_av_hssi_8g_rx_pcs|insertincompleteout ),
	.latencycompout(\inst_av_hssi_8g_rx_pcs|latencycompout ),
	.ltr(\inst_av_hssi_8g_rx_pcs|ltr ),
	.pcfifoempty(\inst_av_hssi_8g_rx_pcs|pcfifoempty ),
	.pcfifofull(\inst_av_hssi_8g_rx_pcs|pcfifofull ),
	.pcieswitch(\inst_av_hssi_8g_rx_pcs|pcieswitch ),
	.phystatus(\inst_av_hssi_8g_rx_pcs|phystatus ),
	.resetpcptrs(\inst_av_hssi_8g_rx_pcs|resetpcptrs ),
	.resetpcptrsinchnldownpipe(\inst_av_hssi_8g_rx_pcs|resetpcptrsinchnldownpipe ),
	.resetpcptrsinchnluppipe(\inst_av_hssi_8g_rx_pcs|resetpcptrsinchnluppipe ),
	.resetppmcntrspcspma(\inst_av_hssi_8g_rx_pcs|resetppmcntrspcspma ),
	.rlvlt(\inst_av_hssi_8g_rx_pcs|rlvlt ),
	.rmfifoempty(\inst_av_hssi_8g_rx_pcs|rmfifoempty ),
	.rmfifofull(\inst_av_hssi_8g_rx_pcs|rmfifofull ),
	.rxclkslip(\inst_av_hssi_8g_rx_pcs|rxclkslip ),
	.rxvalid(\inst_av_hssi_8g_rx_pcs|rxvalid ),
	.signaldetectout(\inst_av_hssi_8g_rx_pcs|signaldetectout ),
	.syncstatus(\inst_av_hssi_8g_rx_pcs|syncstatus ),
	.a1a2k1k2flag({\inst_av_hssi_8g_rx_pcs|a1a2k1k2flag[3] ,\inst_av_hssi_8g_rx_pcs|a1a2k1k2flag[2] ,\inst_av_hssi_8g_rx_pcs|a1a2k1k2flag[1] ,\inst_av_hssi_8g_rx_pcs|a1a2k1k2flag[0] }),
	.aligndetsync({\inst_av_hssi_8g_rx_pcs|aligndetsync[1] ,\inst_av_hssi_8g_rx_pcs|aligndetsync[0] }),
	.avmmreaddata({avmmreaddata_152,avmmreaddata_142,avmmreaddata_132,avmmreaddata_122,avmmreaddata_112,avmmreaddata_102,avmmreaddata_92,avmmreaddata_82,avmmreaddata_72,avmmreaddata_62,avmmreaddata_52,avmmreaddata_42,avmmreaddata_32,avmmreaddata_22,avmmreaddata_17,avmmreaddata_02}),
	.cgcomprddout({\inst_av_hssi_8g_rx_pcs|cgcomprddout[1] ,\inst_av_hssi_8g_rx_pcs|cgcomprddout[0] }),
	.cgcompwrout({\inst_av_hssi_8g_rx_pcs|cgcompwrout[1] ,\inst_av_hssi_8g_rx_pcs|cgcompwrout[0] }),
	.channeltestbusout({\inst_av_hssi_8g_rx_pcs|channeltestbusout[19] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[18] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[17] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[16] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[15] ,
\inst_av_hssi_8g_rx_pcs|channeltestbusout[14] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[13] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[12] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[11] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[10] ,
\inst_av_hssi_8g_rx_pcs|channeltestbusout[9] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[8] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[7] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[6] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[5] ,
\inst_av_hssi_8g_rx_pcs|channeltestbusout[4] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[3] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[2] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[1] ,\inst_av_hssi_8g_rx_pcs|channeltestbusout[0] }),
	.dataout({\inst_av_hssi_8g_rx_pcs|dataout[63] ,\inst_av_hssi_8g_rx_pcs|dataout[62] ,\inst_av_hssi_8g_rx_pcs|dataout[61] ,\inst_av_hssi_8g_rx_pcs|dataout[60] ,\inst_av_hssi_8g_rx_pcs|dataout[59] ,\inst_av_hssi_8g_rx_pcs|dataout[58] ,\inst_av_hssi_8g_rx_pcs|dataout[57] ,
\inst_av_hssi_8g_rx_pcs|dataout[56] ,\inst_av_hssi_8g_rx_pcs|dataout[55] ,\inst_av_hssi_8g_rx_pcs|dataout[54] ,\inst_av_hssi_8g_rx_pcs|dataout[53] ,\inst_av_hssi_8g_rx_pcs|dataout[52] ,\inst_av_hssi_8g_rx_pcs|dataout[51] ,\inst_av_hssi_8g_rx_pcs|dataout[50] ,
\inst_av_hssi_8g_rx_pcs|dataout[49] ,\inst_av_hssi_8g_rx_pcs|dataout[48] ,\inst_av_hssi_8g_rx_pcs|dataout[47] ,\inst_av_hssi_8g_rx_pcs|dataout[46] ,\inst_av_hssi_8g_rx_pcs|dataout[45] ,\inst_av_hssi_8g_rx_pcs|dataout[44] ,\inst_av_hssi_8g_rx_pcs|dataout[43] ,
\inst_av_hssi_8g_rx_pcs|dataout[42] ,\inst_av_hssi_8g_rx_pcs|dataout[41] ,\inst_av_hssi_8g_rx_pcs|dataout[40] ,\inst_av_hssi_8g_rx_pcs|dataout[39] ,\inst_av_hssi_8g_rx_pcs|dataout[38] ,\inst_av_hssi_8g_rx_pcs|dataout[37] ,\inst_av_hssi_8g_rx_pcs|dataout[36] ,
\inst_av_hssi_8g_rx_pcs|dataout[35] ,\inst_av_hssi_8g_rx_pcs|dataout[34] ,\inst_av_hssi_8g_rx_pcs|dataout[33] ,\inst_av_hssi_8g_rx_pcs|dataout[32] ,\inst_av_hssi_8g_rx_pcs|dataout[31] ,\inst_av_hssi_8g_rx_pcs|dataout[30] ,\inst_av_hssi_8g_rx_pcs|dataout[29] ,
\inst_av_hssi_8g_rx_pcs|dataout[28] ,\inst_av_hssi_8g_rx_pcs|dataout[27] ,\inst_av_hssi_8g_rx_pcs|dataout[26] ,\inst_av_hssi_8g_rx_pcs|dataout[25] ,\inst_av_hssi_8g_rx_pcs|dataout[24] ,\inst_av_hssi_8g_rx_pcs|dataout[23] ,\inst_av_hssi_8g_rx_pcs|dataout[22] ,
\inst_av_hssi_8g_rx_pcs|dataout[21] ,\inst_av_hssi_8g_rx_pcs|dataout[20] ,\inst_av_hssi_8g_rx_pcs|dataout[19] ,\inst_av_hssi_8g_rx_pcs|dataout[18] ,\inst_av_hssi_8g_rx_pcs|dataout[17] ,\inst_av_hssi_8g_rx_pcs|dataout[16] ,\inst_av_hssi_8g_rx_pcs|dataout[15] ,
\inst_av_hssi_8g_rx_pcs|dataout[14] ,\inst_av_hssi_8g_rx_pcs|dataout[13] ,\inst_av_hssi_8g_rx_pcs|dataout[12] ,\inst_av_hssi_8g_rx_pcs|dataout[11] ,\inst_av_hssi_8g_rx_pcs|dataout[10] ,\inst_av_hssi_8g_rx_pcs|dataout[9] ,\inst_av_hssi_8g_rx_pcs|dataout[8] ,
\inst_av_hssi_8g_rx_pcs|dataout[7] ,\inst_av_hssi_8g_rx_pcs|dataout[6] ,\inst_av_hssi_8g_rx_pcs|dataout[5] ,\inst_av_hssi_8g_rx_pcs|dataout[4] ,\inst_av_hssi_8g_rx_pcs|dataout[3] ,\inst_av_hssi_8g_rx_pcs|dataout[2] ,\inst_av_hssi_8g_rx_pcs|dataout[1] ,
\inst_av_hssi_8g_rx_pcs|dataout[0] }),
	.decoderdata({\inst_av_hssi_8g_rx_pcs|decoderdata[7] ,\inst_av_hssi_8g_rx_pcs|decoderdata[6] ,\inst_av_hssi_8g_rx_pcs|decoderdata[5] ,\inst_av_hssi_8g_rx_pcs|decoderdata[4] ,\inst_av_hssi_8g_rx_pcs|decoderdata[3] ,\inst_av_hssi_8g_rx_pcs|decoderdata[2] ,
\inst_av_hssi_8g_rx_pcs|decoderdata[1] ,\inst_av_hssi_8g_rx_pcs|decoderdata[0] }),
	.parallelrevloopback({\inst_av_hssi_8g_rx_pcs|parallelrevloopback[19] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[18] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[17] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[16] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[15] ,
\inst_av_hssi_8g_rx_pcs|parallelrevloopback[14] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[13] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[12] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[11] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[10] ,
\inst_av_hssi_8g_rx_pcs|parallelrevloopback[9] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[8] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[7] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[6] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[5] ,
\inst_av_hssi_8g_rx_pcs|parallelrevloopback[4] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[3] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[2] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[1] ,\inst_av_hssi_8g_rx_pcs|parallelrevloopback[0] }),
	.rdalign({\inst_av_hssi_8g_rx_pcs|rdalign[1] ,\inst_av_hssi_8g_rx_pcs|rdalign[0] }),
	.runningdisparity({\inst_av_hssi_8g_rx_pcs|runningdisparity[1] ,\inst_av_hssi_8g_rx_pcs|runningdisparity[0] }),
	.rxdatavalid({\inst_av_hssi_8g_rx_pcs|rxdatavalid[3] ,\inst_av_hssi_8g_rx_pcs|rxdatavalid[2] ,\inst_av_hssi_8g_rx_pcs|rxdatavalid[1] ,\inst_av_hssi_8g_rx_pcs|rxdatavalid[0] }),
	.rxstatus({\inst_av_hssi_8g_rx_pcs|rxstatus[2] ,\inst_av_hssi_8g_rx_pcs|rxstatus[1] ,\inst_av_hssi_8g_rx_pcs|rxstatus[0] }),
	.wordalignboundary({\inst_av_hssi_8g_rx_pcs|wordalignboundary[4] ,\inst_av_hssi_8g_rx_pcs|wordalignboundary[3] ,\inst_av_hssi_8g_rx_pcs|wordalignboundary[2] ,\inst_av_hssi_8g_rx_pcs|wordalignboundary[1] ,\inst_av_hssi_8g_rx_pcs|wordalignboundary[0] }),
	.hrdrst(\inst_av_hssi_common_pld_pcs_interface|pcs8ghardreset ),
	.pldltr(\inst_av_hssi_common_pld_pcs_interface|pcs8gltr ),
	.prbscidenable(\inst_av_hssi_common_pld_pcs_interface|pcs8gprbsciden ),
	.rateswitchcontrol(\inst_av_hssi_common_pld_pcs_interface|pcs8grate ),
	.refclkdig(\inst_av_hssi_common_pld_pcs_interface|pcs8grefclkdig ),
	.refclkdig2(\inst_av_hssi_common_pld_pcs_interface|pcs8grefclkdig2 ),
	.scanmode(\inst_av_hssi_common_pld_pcs_interface|pcs8gscanmoden ),
	.rcvdclkpma(\inst_av_hssi_rx_pcs_pma_interface|clockoutto8gpcs ),
	.sigdetfrompma(\inst_av_hssi_rx_pcs_pma_interface|pcs8gsigdetni ),
	.datain({\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[19] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[18] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[17] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[16] ,
\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[15] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[14] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[13] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[12] ,
\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[11] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[10] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[9] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[8] ,
\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[7] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[6] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[5] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[4] ,
\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[3] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[2] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[1] ,\inst_av_hssi_rx_pcs_pma_interface|dataoutto8gpcs[0] }),
	.gen2ngen1(\inst_av_hssi_common_pcs_pma_interface|pcs8ggen2ngen1 ),
	.rxstatusinternal({gnd,\inst_av_hssi_common_pcs_pma_interface|pcs8grxdetectvalid ,\inst_av_hssi_common_pcs_pma_interface|pcs8gpmarxfound }),
	.alignstatus(\inst_av_hssi_common_pcs_pma_interface|pcsaggalignstatus ),
	.alignstatussync0(\inst_av_hssi_common_pcs_pma_interface|pcsaggalignstatussync0 ),
	.alignstatussync0toporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggalignstatussync0toporbot ),
	.alignstatustoporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggalignstatustoporbot ),
	.cgcomprddall(\inst_av_hssi_common_pcs_pma_interface|pcsaggcgcomprddall ),
	.cgcomprddalltoporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggcgcomprddalltoporbot ),
	.cgcompwrall(\inst_av_hssi_common_pcs_pma_interface|pcsaggcgcompwrall ),
	.cgcompwralltoporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggcgcompwralltoporbot ),
	.delcondmet0(\inst_av_hssi_common_pcs_pma_interface|pcsaggdelcondmet0 ),
	.delcondmet0toporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggdelcondmet0toporbot ),
	.endskwqd(\inst_av_hssi_common_pcs_pma_interface|pcsaggendskwqd ),
	.endskwqdtoporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggendskwqdtoporbot ),
	.endskwrdptrs(\inst_av_hssi_common_pcs_pma_interface|pcsaggendskwrdptrs ),
	.endskwrdptrstoporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggendskwrdptrstoporbot ),
	.fifoovr0(\inst_av_hssi_common_pcs_pma_interface|pcsaggfifoovr0 ),
	.fifoovr0toporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggfifoovr0toporbot ),
	.rmfifordincomp0(\inst_av_hssi_common_pcs_pma_interface|pcsaggfifordincomp0 ),
	.fifordincomp0toporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggfifordincomp0toporbot ),
	.fiforstrdqd(\inst_av_hssi_common_pcs_pma_interface|pcsaggfiforstrdqd ),
	.fiforstrdqdtoporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggfiforstrdqdtoporbot ),
	.insertincomplete0(\inst_av_hssi_common_pcs_pma_interface|pcsagginsertincomplete0 ),
	.insertincomplete0toporbot(\inst_av_hssi_common_pcs_pma_interface|pcsagginsertincomplete0toporbot ),
	.latencycomp0(\inst_av_hssi_common_pcs_pma_interface|pcsagglatencycomp0 ),
	.latencycomp0toporbot(\inst_av_hssi_common_pcs_pma_interface|pcsagglatencycomp0toporbot ),
	.rcvdclkagg(\inst_av_hssi_common_pcs_pma_interface|pcsaggrcvdclkagg ),
	.rcvdclkaggtoporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggrcvdclkaggtoporbot ),
	.ctrlfromaggblock(\inst_av_hssi_common_pcs_pma_interface|pcsaggrxcontrolrs ),
	.rxcontrolrstoporbot(\inst_av_hssi_common_pcs_pma_interface|pcsaggrxcontrolrstoporbot ),
	.datafrinaggblock({\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[7] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[6] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[5] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[4] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[3] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[2] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[1] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatars[0] }),
	.rxdatarstoporbot({\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[7] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[6] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[5] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[4] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[3] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[2] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[1] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggrxdatarstoporbot[0] }),
	.aggtestbus({\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[15] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[14] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[13] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[12] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[11] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[10] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[9] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[8] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[7] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[6] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[5] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[4] ,
\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[3] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[2] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[1] ,\inst_av_hssi_common_pcs_pma_interface|pcsaggtestbus[0] }),
	.dynclkswitchn(\inst_av_hssi_8g_tx_pcs|dynclkswitchn ),
	.pipeloopbk(\inst_av_hssi_8g_tx_pcs|pipeenrevparallellpbkout ),
	.polinvrx(\inst_av_hssi_8g_tx_pcs|polinvrxout ),
	.eidleinfersel({\inst_av_hssi_8g_tx_pcs|grayelecidleinferselout[2] ,\inst_av_hssi_8g_tx_pcs|grayelecidleinferselout[1] ,\inst_av_hssi_8g_tx_pcs|grayelecidleinferselout[0] }),
	.parallelloopback({\inst_av_hssi_8g_tx_pcs|parallelfdbkout[19] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[18] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[17] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[16] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[15] ,
\inst_av_hssi_8g_tx_pcs|parallelfdbkout[14] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[13] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[12] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[11] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[10] ,
\inst_av_hssi_8g_tx_pcs|parallelfdbkout[9] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[8] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[7] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[6] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[5] ,
\inst_av_hssi_8g_tx_pcs|parallelfdbkout[4] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[3] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[2] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[1] ,\inst_av_hssi_8g_tx_pcs|parallelfdbkout[0] }),
	.txctrlplanetestbus({\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[19] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[18] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[17] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[16] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[15] ,
\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[14] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[13] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[12] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[11] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[10] ,
\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[9] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[8] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[7] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[6] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[5] ,
\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[4] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[3] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[2] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[1] ,\inst_av_hssi_8g_tx_pcs|txctrlplanetestbus[0] }),
	.txdivsync({\inst_av_hssi_8g_tx_pcs|txdivsync[1] ,\inst_av_hssi_8g_tx_pcs|txdivsync[0] }),
	.txtestbus({\inst_av_hssi_8g_tx_pcs|txtestbus[19] ,\inst_av_hssi_8g_tx_pcs|txtestbus[18] ,\inst_av_hssi_8g_tx_pcs|txtestbus[17] ,\inst_av_hssi_8g_tx_pcs|txtestbus[16] ,\inst_av_hssi_8g_tx_pcs|txtestbus[15] ,\inst_av_hssi_8g_tx_pcs|txtestbus[14] ,
\inst_av_hssi_8g_tx_pcs|txtestbus[13] ,\inst_av_hssi_8g_tx_pcs|txtestbus[12] ,\inst_av_hssi_8g_tx_pcs|txtestbus[11] ,\inst_av_hssi_8g_tx_pcs|txtestbus[10] ,\inst_av_hssi_8g_tx_pcs|txtestbus[9] ,\inst_av_hssi_8g_tx_pcs|txtestbus[8] ,
\inst_av_hssi_8g_tx_pcs|txtestbus[7] ,\inst_av_hssi_8g_tx_pcs|txtestbus[6] ,\inst_av_hssi_8g_tx_pcs|txtestbus[5] ,\inst_av_hssi_8g_tx_pcs|txtestbus[4] ,\inst_av_hssi_8g_tx_pcs|txtestbus[3] ,\inst_av_hssi_8g_tx_pcs|txtestbus[2] ,
\inst_av_hssi_8g_tx_pcs|txtestbus[1] ,\inst_av_hssi_8g_tx_pcs|txtestbus[0] }),
	.txpmaclk(\inst_av_hssi_tx_pcs_pma_interface|clockoutto8gpcs ));

endmodule

module NATIVE_TRANSCEIVER_IP_av_hssi_8g_rx_pcs_rbc (
	a1a2size,
	bitreversalenable,
	bitslip,
	bytereversalenable,
	byteorder,
	rmfifouserrst,
	enablecommadetect,
	phfifouserrst,
	pldrxclk,
	pcfifordenable,
	rxpcsrst,
	syncsmen,
	pxfifowrdisable,
	avmmwrite,
	avmmread,
	avmmclk,
	avmmrstn,
	avmmwritedata,
	avmmaddress,
	avmmbyteen,
	aggrxpcsrst,
	alignstatuspld,
	alignstatussync,
	bistdone,
	bisterr,
	blockselect,
	byteordflag,
	clocktopld,
	decoderctrl,
	decoderdatavalid,
	delcondmetout,
	disablepcfifobyteserdes,
	earlyeios,
	eidleexit,
	fifoovrout,
	fifordoutcomp,
	insertincompleteout,
	latencycompout,
	ltr,
	pcfifoempty,
	pcfifofull,
	pcieswitch,
	phystatus,
	resetpcptrs,
	resetpcptrsinchnldownpipe,
	resetpcptrsinchnluppipe,
	resetppmcntrspcspma,
	rlvlt,
	rmfifoempty,
	rmfifofull,
	rxclkslip,
	rxvalid,
	signaldetectout,
	syncstatus,
	a1a2k1k2flag,
	aligndetsync,
	avmmreaddata,
	cgcomprddout,
	cgcompwrout,
	channeltestbusout,
	dataout,
	decoderdata,
	parallelrevloopback,
	rdalign,
	runningdisparity,
	rxdatavalid,
	rxstatus,
	wordalignboundary,
	hrdrst,
	pldltr,
	prbscidenable,
	rateswitchcontrol,
	refclkdig,
	refclkdig2,
	scanmode,
	rcvdclkpma,
	sigdetfrompma,
	datain,
	gen2ngen1,
	rxstatusinternal,
	alignstatus,
	alignstatussync0,
	alignstatussync0toporbot,
	alignstatustoporbot,
	cgcomprddall,
	cgcomprddalltoporbot,
	cgcompwrall,
	cgcompwralltoporbot,
	delcondmet0,
	delcondmet0toporbot,
	endskwqd,
	endskwqdtoporbot,
	endskwrdptrs,
	endskwrdptrstoporbot,
	fifoovr0,
	fifoovr0toporbot,
	rmfifordincomp0,
	fifordincomp0toporbot,
	fiforstrdqd,
	fiforstrdqdtoporbot,
	insertincomplete0,
	insertincomplete0toporbot,
	latencycomp0,
	latencycomp0toporbot,
	rcvdclkagg,
	rcvdclkaggtoporbot,
	ctrlfromaggblock,
	rxcontrolrstoporbot,
	datafrinaggblock,
	rxdatarstoporbot,
	aggtestbus,
	dynclkswitchn,
	pipeloopbk,
	polinvrx,
	eidleinfersel,
	parallelloopback,
	txctrlplanetestbus,
	txdivsync,
	txtestbus,
	txpmaclk)/* synthesis synthesis_greybox=0 */;
input 	a1a2size;
input 	bitreversalenable;
input 	bitslip;
input 	bytereversalenable;
input 	byteorder;
input 	rmfifouserrst;
input 	enablecommadetect;
input 	phfifouserrst;
input 	pldrxclk;
input 	pcfifordenable;
input 	rxpcsrst;
input 	syncsmen;
input 	pxfifowrdisable;
input 	avmmwrite;
input 	avmmread;
input 	avmmclk;
input 	avmmrstn;
input 	[15:0] avmmwritedata;
input 	[10:0] avmmaddress;
input 	[1:0] avmmbyteen;
output 	aggrxpcsrst;
output 	alignstatuspld;
output 	alignstatussync;
output 	bistdone;
output 	bisterr;
output 	blockselect;
output 	byteordflag;
output 	clocktopld;
output 	decoderctrl;
output 	decoderdatavalid;
output 	delcondmetout;
output 	disablepcfifobyteserdes;
output 	earlyeios;
output 	eidleexit;
output 	fifoovrout;
output 	fifordoutcomp;
output 	insertincompleteout;
output 	latencycompout;
output 	ltr;
output 	pcfifoempty;
output 	pcfifofull;
output 	pcieswitch;
output 	phystatus;
output 	resetpcptrs;
output 	resetpcptrsinchnldownpipe;
output 	resetpcptrsinchnluppipe;
output 	resetppmcntrspcspma;
output 	rlvlt;
output 	rmfifoempty;
output 	rmfifofull;
output 	rxclkslip;
output 	rxvalid;
output 	signaldetectout;
output 	syncstatus;
output 	[3:0] a1a2k1k2flag;
output 	[1:0] aligndetsync;
output 	[15:0] avmmreaddata;
output 	[1:0] cgcomprddout;
output 	[1:0] cgcompwrout;
output 	[19:0] channeltestbusout;
output 	[63:0] dataout;
output 	[7:0] decoderdata;
output 	[19:0] parallelrevloopback;
output 	[1:0] rdalign;
output 	[1:0] runningdisparity;
output 	[3:0] rxdatavalid;
output 	[2:0] rxstatus;
output 	[4:0] wordalignboundary;
input 	hrdrst;
input 	pldltr;
input 	prbscidenable;
input 	rateswitchcontrol;
input 	refclkdig;
input 	refclkdig2;
input 	scanmode;
input 	rcvdclkpma;
input 	sigdetfrompma;
input 	[19:0] datain;
input 	gen2ngen1;
input 	[2:0] rxstatusinternal;
input 	alignstatus;
input 	alignstatussync0;
input 	alignstatussync0toporbot;
input 	alignstatustoporbot;
input 	cgcomprddall;
input 	cgcomprddalltoporbot;
input 	cgcompwrall;
input 	cgcompwralltoporbot;
input 	delcondmet0;
input 	delcondmet0toporbot;
input 	endskwqd;
input 	endskwqdtoporbot;
input 	endskwrdptrs;
input 	endskwrdptrstoporbot;
input 	fifoovr0;
input 	fifoovr0toporbot;
input 	rmfifordincomp0;
input 	fifordincomp0toporbot;
input 	fiforstrdqd;
input 	fiforstrdqdtoporbot;
input 	insertincomplete0;
input 	insertincomplete0toporbot;
input 	latencycomp0;
input 	latencycomp0toporbot;
input 	rcvdclkagg;
input 	rcvdclkaggtoporbot;
input 	ctrlfromaggblock;
input 	rxcontrolrstoporbot;
input 	[7:0] datafrinaggblock;
input 	[7:0] rxdatarstoporbot;
input 	[15:0] aggtestbus;
input 	dynclkswitchn;
input 	pipeloopbk;
input 	polinvrx;
input 	[2:0] eidleinfersel;
input 	[19:0] parallelloopback;
input 	[19:0] txctrlplanetestbus;
input 	[1:0] txdivsync;
input 	[19:0] txtestbus;
input 	txpmaclk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [1:0] wys_RUNNINGDISPARITY_bus;
wire [15:0] wys_AVMMREADDATA_bus;
wire [63:0] wys_DATAOUT_bus;
wire [3:0] wys_A1A2K1K2FLAG_bus;
wire [1:0] wys_ALIGNDETSYNC_bus;
wire [1:0] wys_CGCOMPRDDOUT_bus;
wire [1:0] wys_CGCOMPWROUT_bus;
wire [19:0] wys_CHANNELTESTBUSOUT_bus;
wire [7:0] wys_DECODERDATA_bus;
wire [19:0] wys_PARALLELREVLOOPBACK_bus;
wire [1:0] wys_RDALIGN_bus;
wire [3:0] wys_RXDATAVALID_bus;
wire [2:0] wys_RXSTATUS_bus;
wire [4:0] wys_WORDALIGNBOUNDARY_bus;

assign runningdisparity[0] = wys_RUNNINGDISPARITY_bus[0];
assign runningdisparity[1] = wys_RUNNINGDISPARITY_bus[1];

assign avmmreaddata[0] = wys_AVMMREADDATA_bus[0];
assign avmmreaddata[1] = wys_AVMMREADDATA_bus[1];
assign avmmreaddata[2] = wys_AVMMREADDATA_bus[2];
assign avmmreaddata[3] = wys_AVMMREADDATA_bus[3];
assign avmmreaddata[4] = wys_AVMMREADDATA_bus[4];
assign avmmreaddata[5] = wys_AVMMREADDATA_bus[5];
assign avmmreaddata[6] = wys_AVMMREADDATA_bus[6];
assign avmmreaddata[7] = wys_AVMMREADDATA_bus[7];
assign avmmreaddata[8] = wys_AVMMREADDATA_bus[8];
assign avmmreaddata[9] = wys_AVMMREADDATA_bus[9];
assign avmmreaddata[10] = wys_AVMMREADDATA_bus[10];
assign avmmreaddata[11] = wys_AVMMREADDATA_bus[11];
assign avmmreaddata[12] = wys_AVMMREADDATA_bus[12];
assign avmmreaddata[13] = wys_AVMMREADDATA_bus[13];
assign avmmreaddata[14] = wys_AVMMREADDATA_bus[14];
assign avmmreaddata[15] = wys_AVMMREADDATA_bus[15];

assign dataout[0] = wys_DATAOUT_bus[0];
assign dataout[1] = wys_DATAOUT_bus[1];
assign dataout[2] = wys_DATAOUT_bus[2];
assign dataout[3] = wys_DATAOUT_bus[3];
assign dataout[4] = wys_DATAOUT_bus[4];
assign dataout[5] = wys_DATAOUT_bus[5];
assign dataout[6] = wys_DATAOUT_bus[6];
assign dataout[7] = wys_DATAOUT_bus[7];
assign dataout[8] = wys_DATAOUT_bus[8];
assign dataout[9] = wys_DATAOUT_bus[9];
assign dataout[10] = wys_DATAOUT_bus[10];
assign dataout[11] = wys_DATAOUT_bus[11];
assign dataout[12] = wys_DATAOUT_bus[12];
assign dataout[13] = wys_DATAOUT_bus[13];
assign dataout[14] = wys_DATAOUT_bus[14];
assign dataout[15] = wys_DATAOUT_bus[15];
assign dataout[16] = wys_DATAOUT_bus[16];
assign dataout[17] = wys_DATAOUT_bus[17];
assign dataout[18] = wys_DATAOUT_bus[18];
assign dataout[19] = wys_DATAOUT_bus[19];
assign dataout[20] = wys_DATAOUT_bus[20];
assign dataout[21] = wys_DATAOUT_bus[21];
assign dataout[22] = wys_DATAOUT_bus[22];
assign dataout[23] = wys_DATAOUT_bus[23];
assign dataout[24] = wys_DATAOUT_bus[24];
assign dataout[25] = wys_DATAOUT_bus[25];
assign dataout[26] = wys_DATAOUT_bus[26];
assign dataout[27] = wys_DATAOUT_bus[27];
assign dataout[28] = wys_DATAOUT_bus[28];
assign dataout[29] = wys_DATAOUT_bus[29];
assign dataout[30] = wys_DATAOUT_bus[30];
assign dataout[31] = wys_DATAOUT_bus[31];
assign dataout[32] = wys_DATAOUT_bus[32];
assign dataout[33] = wys_DATAOUT_bus[33];
assign dataout[34] = wys_DATAOUT_bus[34];
assign dataout[35] = wys_DATAOUT_bus[35];
assign dataout[36] = wys_DATAOUT_bus[36];
assign dataout[37] = wys_DATAOUT_bus[37];
assign dataout[38] = wys_DATAOUT_bus[38];
assign dataout[39] = wys_DATAOUT_bus[39];
assign dataout[40] = wys_DATAOUT_bus[40];
assign dataout[41] = wys_DATAOUT_bus[41];
assign dataout[42] = wys_DATAOUT_bus[42];
assign dataout[43] = wys_DATAOUT_bus[43];
assign dataout[44] = wys_DATAOUT_bus[44];
assign dataout[45] = wys_DATAOUT_bus[45];
assign dataout[46] = wys_DATAOUT_bus[46];
assign dataout[47] = wys_DATAOUT_bus[47];
assign dataout[48] = wys_DATAOUT_bus[48];
assign dataout[49] = wys_DATAOUT_bus[49];
assign dataout[50] = wys_DATAOUT_bus[50];
assign dataout[51] = wys_DATAOUT_bus[51];
assign dataout[52] = wys_DATAOUT_bus[52];
assign dataout[53] = wys_DATAOUT_bus[53];
assign dataout[54] = wys_DATAOUT_bus[54];
assign dataout[55] = wys_DATAOUT_bus[55];
assign dataout[56] = wys_DATAOUT_bus[56];
assign dataout[57] = wys_DATAOUT_bus[57];
assign dataout[58] = wys_DATAOUT_bus[58];
assign dataout[59] = wys_DATAOUT_bus[59];
assign dataout[60] = wys_DATAOUT_bus[60];
assign dataout[61] = wys_DATAOUT_bus[61];
assign dataout[62] = wys_DATAOUT_bus[62];
assign dataout[63] = wys_DATAOUT_bus[63];

assign a1a2k1k2flag[0] = wys_A1A2K1K2FLAG_bus[0];
assign a1a2k1k2flag[1] = wys_A1A2K1K2FLAG_bus[1];
assign a1a2k1k2flag[2] = wys_A1A2K1K2FLAG_bus[2];
assign a1a2k1k2flag[3] = wys_A1A2K1K2FLAG_bus[3];

assign aligndetsync[0] = wys_ALIGNDETSYNC_bus[0];
assign aligndetsync[1] = wys_ALIGNDETSYNC_bus[1];

assign cgcomprddout[0] = wys_CGCOMPRDDOUT_bus[0];
assign cgcomprddout[1] = wys_CGCOMPRDDOUT_bus[1];

assign cgcompwrout[0] = wys_CGCOMPWROUT_bus[0];
assign cgcompwrout[1] = wys_CGCOMPWROUT_bus[1];

assign channeltestbusout[0] = wys_CHANNELTESTBUSOUT_bus[0];
assign channeltestbusout[1] = wys_CHANNELTESTBUSOUT_bus[1];
assign channeltestbusout[2] = wys_CHANNELTESTBUSOUT_bus[2];
assign channeltestbusout[3] = wys_CHANNELTESTBUSOUT_bus[3];
assign channeltestbusout[4] = wys_CHANNELTESTBUSOUT_bus[4];
assign channeltestbusout[5] = wys_CHANNELTESTBUSOUT_bus[5];
assign channeltestbusout[6] = wys_CHANNELTESTBUSOUT_bus[6];
assign channeltestbusout[7] = wys_CHANNELTESTBUSOUT_bus[7];
assign channeltestbusout[8] = wys_CHANNELTESTBUSOUT_bus[8];
assign channeltestbusout[9] = wys_CHANNELTESTBUSOUT_bus[9];
assign channeltestbusout[10] = wys_CHANNELTESTBUSOUT_bus[10];
assign channeltestbusout[11] = wys_CHANNELTESTBUSOUT_bus[11];
assign channeltestbusout[12] = wys_CHANNELTESTBUSOUT_bus[12];
assign channeltestbusout[13] = wys_CHANNELTESTBUSOUT_bus[13];
assign channeltestbusout[14] = wys_CHANNELTESTBUSOUT_bus[14];
assign channeltestbusout[15] = wys_CHANNELTESTBUSOUT_bus[15];
assign channeltestbusout[16] = wys_CHANNELTESTBUSOUT_bus[16];
assign channeltestbusout[17] = wys_CHANNELTESTBUSOUT_bus[17];
assign channeltestbusout[18] = wys_CHANNELTESTBUSOUT_bus[18];
assign channeltestbusout[19] = wys_CHANNELTESTBUSOUT_bus[19];

assign decoderdata[0] = wys_DECODERDATA_bus[0];
assign decoderdata[1] = wys_DECODERDATA_bus[1];
assign decoderdata[2] = wys_DECODERDATA_bus[2];
assign decoderdata[3] = wys_DECODERDATA_bus[3];
assign decoderdata[4] = wys_DECODERDATA_bus[4];
assign decoderdata[5] = wys_DECODERDATA_bus[5];
assign decoderdata[6] = wys_DECODERDATA_bus[6];
assign decoderdata[7] = wys_DECODERDATA_bus[7];

assign parallelrevloopback[0] = wys_PARALLELREVLOOPBACK_bus[0];
assign parallelrevloopback[1] = wys_PARALLELREVLOOPBACK_bus[1];
assign parallelrevloopback[2] = wys_PARALLELREVLOOPBACK_bus[2];
assign parallelrevloopback[3] = wys_PARALLELREVLOOPBACK_bus[3];
assign parallelrevloopback[4] = wys_PARALLELREVLOOPBACK_bus[4];
assign parallelrevloopback[5] = wys_PARALLELREVLOOPBACK_bus[5];
assign parallelrevloopback[6] = wys_PARALLELREVLOOPBACK_bus[6];
assign parallelrevloopback[7] = wys_PARALLELREVLOOPBACK_bus[7];
assign parallelrevloopback[8] = wys_PARALLELREVLOOPBACK_bus[8];
assign parallelrevloopback[9] = wys_PARALLELREVLOOPBACK_bus[9];
assign parallelrevloopback[10] = wys_PARALLELREVLOOPBACK_bus[10];
assign parallelrevloopback[11] = wys_PARALLELREVLOOPBACK_bus[11];
assign parallelrevloopback[12] = wys_PARALLELREVLOOPBACK_bus[12];
assign parallelrevloopback[13] = wys_PARALLELREVLOOPBACK_bus[13];
assign parallelrevloopback[14] = wys_PARALLELREVLOOPBACK_bus[14];
assign parallelrevloopback[15] = wys_PARALLELREVLOOPBACK_bus[15];
assign parallelrevloopback[16] = wys_PARALLELREVLOOPBACK_bus[16];
assign parallelrevloopback[17] = wys_PARALLELREVLOOPBACK_bus[17];
assign parallelrevloopback[18] = wys_PARALLELREVLOOPBACK_bus[18];
assign parallelrevloopback[19] = wys_PARALLELREVLOOPBACK_bus[19];

assign rdalign[0] = wys_RDALIGN_bus[0];
assign rdalign[1] = wys_RDALIGN_bus[1];

assign rxdatavalid[0] = wys_RXDATAVALID_bus[0];
assign rxdatavalid[1] = wys_RXDATAVALID_bus[1];
assign rxdatavalid[2] = wys_RXDATAVALID_bus[2];
assign rxdatavalid[3] = wys_RXDATAVALID_bus[3];

assign rxstatus[0] = wys_RXSTATUS_bus[0];
assign rxstatus[1] = wys_RXSTATUS_bus[1];
assign rxstatus[2] = wys_RXSTATUS_bus[2];

assign wordalignboundary[0] = wys_WORDALIGNBOUNDARY_bus[0];
assign wordalignboundary[1] = wys_WORDALIGNBOUNDARY_bus[1];
assign wordalignboundary[2] = wys_WORDALIGNBOUNDARY_bus[2];
assign wordalignboundary[3] = wys_WORDALIGNBOUNDARY_bus[3];
assign wordalignboundary[4] = wys_WORDALIGNBOUNDARY_bus[4];

cyclonev_hssi_8g_rx_pcs wys(
	.a1a2size(a1a2size),
	.alignstatus(alignstatus),
	.alignstatussync0(alignstatussync0),
	.alignstatussync0toporbot(alignstatussync0toporbot),
	.alignstatustoporbot(alignstatustoporbot),
	.avmmclk(avmmclk),
	.avmmread(avmmread),
	.avmmrstn(avmmrstn),
	.avmmwrite(avmmwrite),
	.bitreversalenable(bitreversalenable),
	.bitslip(bitslip),
	.byteorder(byteorder),
	.bytereversalenable(bytereversalenable),
	.cgcomprddall(cgcomprddall),
	.cgcomprddalltoporbot(cgcomprddalltoporbot),
	.cgcompwrall(cgcompwrall),
	.cgcompwralltoporbot(cgcompwralltoporbot),
	.configselinchnldown(gnd),
	.configselinchnlup(gnd),
	.ctrlfromaggblock(ctrlfromaggblock),
	.delcondmet0(delcondmet0),
	.delcondmet0toporbot(delcondmet0toporbot),
	.dynclkswitchn(dynclkswitchn),
	.enablecommadetect(enablecommadetect),
	.endskwqd(endskwqd),
	.endskwqdtoporbot(endskwqdtoporbot),
	.endskwrdptrs(endskwrdptrs),
	.endskwrdptrstoporbot(endskwrdptrstoporbot),
	.fifoovr0(fifoovr0),
	.fifoovr0toporbot(fifoovr0toporbot),
	.fifordincomp0toporbot(fifordincomp0toporbot),
	.fiforstrdqd(fiforstrdqd),
	.fiforstrdqdtoporbot(fiforstrdqdtoporbot),
	.gen2ngen1(gen2ngen1),
	.hrdrst(hrdrst),
	.insertincomplete0(insertincomplete0),
	.insertincomplete0toporbot(insertincomplete0toporbot),
	.latencycomp0(latencycomp0),
	.latencycomp0toporbot(latencycomp0toporbot),
	.pcfifordenable(pcfifordenable),
	.phfifouserrst(phfifouserrst),
	.phystatusinternal(gnd),
	.phystatuspcsgen3(gnd),
	.pipeloopbk(pipeloopbk),
	.pldltr(pldltr),
	.pldrxclk(pldrxclk),
	.polinvrx(polinvrx),
	.prbscidenable(prbscidenable),
	.pxfifowrdisable(pxfifowrdisable),
	.rateswitchcontrol(rateswitchcontrol),
	.rcvdclkagg(rcvdclkagg),
	.rcvdclkaggtoporbot(rcvdclkaggtoporbot),
	.rcvdclkpma(rcvdclkpma),
	.rdenableinchnldown(gnd),
	.rdenableinchnlup(gnd),
	.refclkdig(refclkdig),
	.refclkdig2(refclkdig2),
	.resetpcptrsinchnldown(gnd),
	.resetpcptrsinchnlup(gnd),
	.resetppmcntrsinchnldown(gnd),
	.resetppmcntrsinchnlup(gnd),
	.rmfifordincomp0(rmfifordincomp0),
	.rmfiforeadenable(gnd),
	.rmfifouserrst(rmfifouserrst),
	.rmfifowriteenable(gnd),
	.rxcontrolrstoporbot(rxcontrolrstoporbot),
	.rxpcsrst(rxpcsrst),
	.rxvalidinternal(gnd),
	.scanmode(scanmode),
	.sigdetfrompma(sigdetfrompma),
	.speedchangeinchnldown(gnd),
	.speedchangeinchnlup(gnd),
	.syncsmen(syncsmen),
	.txpmaclk(txpmaclk),
	.wrenableinchnldown(gnd),
	.wrenableinchnlup(gnd),
	.aggtestbus({aggtestbus[15],aggtestbus[14],aggtestbus[13],aggtestbus[12],aggtestbus[11],aggtestbus[10],aggtestbus[9],aggtestbus[8],aggtestbus[7],aggtestbus[6],aggtestbus[5],aggtestbus[4],aggtestbus[3],aggtestbus[2],aggtestbus[1],aggtestbus[0]}),
	.avmmaddress({avmmaddress[10],avmmaddress[9],avmmaddress[8],avmmaddress[7],avmmaddress[6],avmmaddress[5],avmmaddress[4],avmmaddress[3],avmmaddress[2],avmmaddress[1],avmmaddress[0]}),
	.avmmbyteen({avmmbyteen[1],avmmbyteen[0]}),
	.avmmwritedata({avmmwritedata[15],avmmwritedata[14],avmmwritedata[13],avmmwritedata[12],avmmwritedata[11],avmmwritedata[10],avmmwritedata[9],avmmwritedata[8],avmmwritedata[7],avmmwritedata[6],avmmwritedata[5],avmmwritedata[4],avmmwritedata[3],avmmwritedata[2],avmmwritedata[1],avmmwritedata[0]}),
	.datafrinaggblock({datafrinaggblock[7],datafrinaggblock[6],datafrinaggblock[5],datafrinaggblock[4],datafrinaggblock[3],datafrinaggblock[2],datafrinaggblock[1],datafrinaggblock[0]}),
	.datain({datain[19],datain[18],datain[17],datain[16],datain[15],datain[14],datain[13],datain[12],datain[11],datain[10],datain[9],datain[8],datain[7],datain[6],datain[5],datain[4],datain[3],datain[2],datain[1],datain[0]}),
	.eidleinfersel({eidleinfersel[2],eidleinfersel[1],eidleinfersel[0]}),
	.parallelloopback({parallelloopback[19],parallelloopback[18],parallelloopback[17],parallelloopback[16],parallelloopback[15],parallelloopback[14],parallelloopback[13],parallelloopback[12],parallelloopback[11],parallelloopback[10],parallelloopback[9],parallelloopback[8],parallelloopback[7],parallelloopback[6],parallelloopback[5],parallelloopback[4],
parallelloopback[3],parallelloopback[2],parallelloopback[1],parallelloopback[0]}),
	.rxdatarstoporbot({rxdatarstoporbot[7],rxdatarstoporbot[6],rxdatarstoporbot[5],rxdatarstoporbot[4],rxdatarstoporbot[3],rxdatarstoporbot[2],rxdatarstoporbot[1],rxdatarstoporbot[0]}),
	.rxdivsyncinchnldown(2'b00),
	.rxdivsyncinchnlup(2'b00),
	.rxstatusinternal({gnd,rxstatusinternal[1],rxstatusinternal[0]}),
	.rxsynchdrpcsgen3(2'b00),
	.rxweinchnldown(2'b00),
	.rxweinchnlup(2'b00),
	.txctrlplanetestbus({txctrlplanetestbus[19],txctrlplanetestbus[18],txctrlplanetestbus[17],txctrlplanetestbus[16],txctrlplanetestbus[15],txctrlplanetestbus[14],txctrlplanetestbus[13],txctrlplanetestbus[12],txctrlplanetestbus[11],txctrlplanetestbus[10],txctrlplanetestbus[9],txctrlplanetestbus[8],txctrlplanetestbus[7],txctrlplanetestbus[6],
txctrlplanetestbus[5],txctrlplanetestbus[4],txctrlplanetestbus[3],txctrlplanetestbus[2],txctrlplanetestbus[1],txctrlplanetestbus[0]}),
	.txdivsync({txdivsync[1],txdivsync[0]}),
	.txtestbus({txtestbus[19],txtestbus[18],txtestbus[17],txtestbus[16],txtestbus[15],txtestbus[14],txtestbus[13],txtestbus[12],txtestbus[11],txtestbus[10],txtestbus[9],txtestbus[8],txtestbus[7],txtestbus[6],txtestbus[5],txtestbus[4],txtestbus[3],txtestbus[2],txtestbus[1],txtestbus[0]}),
	.aggrxpcsrst(aggrxpcsrst),
	.alignstatuspld(alignstatuspld),
	.alignstatussync(alignstatussync),
	.bistdone(bistdone),
	.bisterr(bisterr),
	.blockselect(blockselect),
	.byteordflag(byteordflag),
	.clocktopld(clocktopld),
	.configseloutchnldown(),
	.configseloutchnlup(),
	.decoderctrl(decoderctrl),
	.decoderdatavalid(decoderdatavalid),
	.delcondmetout(delcondmetout),
	.disablepcfifobyteserdes(disablepcfifobyteserdes),
	.earlyeios(earlyeios),
	.eidledetected(),
	.eidleexit(eidleexit),
	.fifoovrout(fifoovrout),
	.fifordoutcomp(fifordoutcomp),
	.insertincompleteout(insertincompleteout),
	.latencycompout(latencycompout),
	.ltr(ltr),
	.pcfifoempty(pcfifoempty),
	.pcfifofull(pcfifofull),
	.pcieswitch(pcieswitch),
	.phystatus(phystatus),
	.prbsdone(),
	.prbserrlt(),
	.rdenableoutchnldown(),
	.rdenableoutchnlup(),
	.resetpcptrs(resetpcptrs),
	.resetpcptrsinchnldownpipe(resetpcptrsinchnldownpipe),
	.resetpcptrsinchnluppipe(resetpcptrsinchnluppipe),
	.resetpcptrsoutchnldown(),
	.resetpcptrsoutchnlup(),
	.resetppmcntrsoutchnldown(),
	.resetppmcntrsoutchnlup(),
	.resetppmcntrspcspma(resetppmcntrspcspma),
	.rlvlt(rlvlt),
	.rmfifoempty(rmfifoempty),
	.rmfifofull(rmfifofull),
	.rmfifopartialempty(),
	.rmfifopartialfull(),
	.runlengthviolation(),
	.rxclkslip(rxclkslip),
	.rxpipeclk(),
	.rxpipesoftreset(),
	.rxvalid(rxvalid),
	.selftestdone(),
	.selftesterr(),
	.signaldetectout(signaldetectout),
	.speedchange(),
	.speedchangeinchnldownpipe(),
	.speedchangeinchnluppipe(),
	.speedchangeoutchnldown(),
	.speedchangeoutchnlup(),
	.syncstatus(syncstatus),
	.wrenableoutchnldown(),
	.wrenableoutchnlup(),
	.a1a2k1k2flag(wys_A1A2K1K2FLAG_bus),
	.aligndetsync(wys_ALIGNDETSYNC_bus),
	.avmmreaddata(wys_AVMMREADDATA_bus),
	.cgcomprddout(wys_CGCOMPRDDOUT_bus),
	.cgcompwrout(wys_CGCOMPWROUT_bus),
	.channeltestbusout(wys_CHANNELTESTBUSOUT_bus),
	.dataout(wys_DATAOUT_bus),
	.decoderdata(wys_DECODERDATA_bus),
	.errctrl(),
	.errdata(),
	.parallelrevloopback(wys_PARALLELREVLOOPBACK_bus),
	.pipedata(),
	.rdalign(wys_RDALIGN_bus),
	.runningdisparity(wys_RUNNINGDISPARITY_bus),
	.rxblkstart(),
	.rxdatavalid(wys_RXDATAVALID_bus),
	.rxdivsyncoutchnldown(),
	.rxdivsyncoutchnlup(),
	.rxstatus(wys_RXSTATUS_bus),
	.rxsynchdr(),
	.rxweoutchnldown(),
	.rxweoutchnlup(),
	.wordalignboundary(wys_WORDALIGNBOUNDARY_bus));
defparam wys.agg_block_sel = "same_smrt_pack";
defparam wys.auto_error_replacement = "dis_err_replace";
defparam wys.auto_speed_nego = "dis_asn";
defparam wys.avmm_group_channel_index = 0;
defparam wys.bist_ver = "dis_bist";
defparam wys.bist_ver_clr_flag = "dis_bist_clr_flag";
defparam wys.bit_reversal = "dis_bit_reversal";
defparam wys.bo_pad = 10'b0000000000;
defparam wys.bo_pattern = 20'b00000000000000000000;
defparam wys.bypass_pipeline_reg = "dis_bypass_pipeline";
defparam wys.byte_deserializer = "dis_bds";
defparam wys.byte_order = "dis_bo";
defparam wys.cdr_ctrl = "dis_cdr_ctrl";
defparam wys.cdr_ctrl_rxvalid_mask = "dis_rxvalid_mask";
defparam wys.channel_number = 0;
defparam wys.cid_pattern = "cid_pattern_0";
defparam wys.cid_pattern_len = 8'b00000000;
defparam wys.clkcmp_pattern_n = 20'b00000000000000000000;
defparam wys.clkcmp_pattern_p = 20'b00000000000000000000;
defparam wys.clock_gate_bds_dec_asn = "dis_bds_dec_asn_clk_gating";
defparam wys.clock_gate_bist = "en_bist_clk_gating";
defparam wys.clock_gate_byteorder = "dis_byteorder_clk_gating";
defparam wys.clock_gate_cdr_eidle = "en_cdr_eidle_clk_gating";
defparam wys.clock_gate_dskw_rd = "en_dskw_rdclk_gating";
defparam wys.clock_gate_dw_dskw_wr = "en_dw_dskw_wrclk_gating";
defparam wys.clock_gate_dw_pc_wrclk = "dis_dw_pc_wrclk_gating";
defparam wys.clock_gate_dw_rm_rd = "en_dw_rm_rdclk_gating";
defparam wys.clock_gate_dw_rm_wr = "en_dw_rm_wrclk_gating";
defparam wys.clock_gate_dw_wa = "dis_dw_wa_clk_gating";
defparam wys.clock_gate_pc_rdclk = "dis_pc_rdclk_gating";
defparam wys.clock_gate_prbs = "en_prbs_clk_gating";
defparam wys.clock_gate_sw_dskw_wr = "en_sw_dskw_wrclk_gating";
defparam wys.clock_gate_sw_pc_wrclk = "dis_sw_pc_wrclk_gating";
defparam wys.clock_gate_sw_rm_rd = "en_sw_rm_rdclk_gating";
defparam wys.clock_gate_sw_rm_wr = "en_sw_rm_wrclk_gating";
defparam wys.clock_gate_sw_wa = "dis_sw_wa_clk_gating";
defparam wys.comp_fifo_rst_pld_ctrl = "dis_comp_fifo_rst_pld_ctrl";
defparam wys.ctrl_plane_bonding_compensation = "dis_compensation";
defparam wys.ctrl_plane_bonding_consumption = "individual";
defparam wys.ctrl_plane_bonding_distribution = "not_master_chnl_distr";
defparam wys.deskew = "dis_deskew";
defparam wys.deskew_pattern = 10'b1101101000;
defparam wys.deskew_prog_pattern_only = "dis_deskew_prog_pat_only";
defparam wys.dw_one_or_two_symbol_bo = "donot_care_one_two_bo";
defparam wys.eidle_entry_eios = "dis_eidle_eios";
defparam wys.eidle_entry_iei = "dis_eidle_iei";
defparam wys.eidle_entry_sd = "dis_eidle_sd";
defparam wys.eightb_tenb_decoder = "dis_8b10b";
defparam wys.eightbtenb_decoder_output_sel = "data_8b10b_decoder";
defparam wys.err_flags_sel = "err_flags_wa";
defparam wys.fixed_pat_det = "dis_fixed_patdet";
defparam wys.fixed_pat_num = 4'b1111;
defparam wys.force_signal_detect = "en_force_signal_detect";
defparam wys.hip_mode = "dis_hip";
defparam wys.ibm_invalid_code = "dis_ibm_invalid_code";
defparam wys.invalid_code_flag_only = "dis_invalid_code_only";
defparam wys.mask_cnt = 10'b1100100000;
defparam wys.pad_or_edb_error_replace = "replace_edb";
defparam wys.pc_fifo_rst_pld_ctrl = "dis_pc_fifo_rst_pld_ctrl";
defparam wys.pcs_bypass = "dis_pcs_bypass";
defparam wys.phase_compensation_fifo = "low_latency";
defparam wys.pipe_if_enable = "dis_pipe_rx";
defparam wys.pma_done_count = 18'b000000000000000000;
defparam wys.pma_dw = "sixteen_bit";
defparam wys.polarity_inversion = "dis_pol_inv";
defparam wys.polinv_8b10b_dec = "dis_polinv_8b10b_dec";
defparam wys.prbs_ver = "dis_prbs";
defparam wys.prbs_ver_clr_flag = "dis_prbs_clr_flag";
defparam wys.prot_mode = "basic";
defparam wys.rate_match = "dis_rm";
defparam wys.re_bo_on_wa = "dis_re_bo_on_wa";
defparam wys.runlength_check = "en_runlength_dw";
defparam wys.runlength_val = 6'b011111;
defparam wys.rx_clk1 = "rcvd_clk_clk1";
defparam wys.rx_clk2 = "rcvd_clk_clk2";
defparam wys.rx_clk_free_running = "en_rx_clk_free_run";
defparam wys.rx_pcs_urst = "en_rx_pcs_urst";
defparam wys.rx_rcvd_clk = "rcvd_clk_rcvd_clk";
defparam wys.rx_rd_clk = "pld_rx_clk";
defparam wys.rx_refclk = "dis_refclk_sel";
defparam wys.rx_wr_clk = "rx_clk2_div_1_2_4";
defparam wys.sup_mode = "user_mode";
defparam wys.symbol_swap = "dis_symbol_swap";
defparam wys.test_bus_sel = "tx_testbus";
defparam wys.test_mode = "dont_care_test";
defparam wys.tx_rx_parallel_loopback = "dis_plpbk";
defparam wys.use_default_base_address = "true";
defparam wys.user_base_address = 0;
defparam wys.wa_boundary_lock_ctrl = "bit_slip";
defparam wys.wa_clk_slip_spacing = "min_clk_slip_spacing";
defparam wys.wa_clk_slip_spacing_data = 10'b0000010000;
defparam wys.wa_det_latency_sync_status_beh = "dont_care_assert_sync";
defparam wys.wa_disp_err_flag = "dis_disp_err_flag";
defparam wys.wa_kchar = "dis_kchar";
defparam wys.wa_pd = "dont_care_wa_pd_1";
defparam wys.wa_pd_data = 64'b0000000000000000000000000000000000000000000000000000000000000000;
defparam wys.wa_pd_polarity = "dis_pd_both_pol";
defparam wys.wa_pld_controlled = "rising_edge_sensitive_dw";
defparam wys.wa_renumber_data = 7'b0000011;
defparam wys.wa_rgnumber_data = 8'b00000011;
defparam wys.wa_rknumber_data = 8'b00000011;
defparam wys.wa_rosnumber_data = 2'b00;
defparam wys.wa_rvnumber_data = 13'b0000000000000;
defparam wys.wa_sync_sm_ctrl = "gige_sync_sm";
defparam wys.wait_cnt = 8'b00000000;

endmodule

module NATIVE_TRANSCEIVER_IP_av_hssi_8g_tx_pcs_rbc (
	polinvrxin,
	phfiforeset,
	coreclk,
	invpol,
	phfiforddisable,
	pipeenrevparallellpbkin,
	txpcsreset,
	phfifowrenable,
	datain,
	bitslipboundaryselect,
	txdatavalid,
	avmmwrite,
	avmmread,
	avmmclk,
	avmmrstn,
	avmmwritedata,
	avmmaddress,
	avmmbyteen,
	dispcbyte,
	resetpcptrs,
	resetpcptrsinchnldown,
	resetpcptrsinchnlup,
	revparallellpbkdata,
	hrdrst,
	prbscidenable,
	refclkdig,
	rxpolarityin,
	scanmode,
	pipetxdeemph,
	detectrxloopin,
	pipetxswing,
	elecidleinfersel,
	powerdn,
	pipetxmargin,
	rateswitch,
	xgmctrl,
	xgmctrltoporbottom,
	xgmdatain,
	xgmdataintoporbottom,
	aggtxpcsrst,
	blockselect,
	clkout,
	dynclkswitchn,
	phfifooverflow,
	phfifounderflow,
	pipeenrevparallellpbkout,
	polinvrxout,
	rdenablesync,
	xgmctrlenable,
	avmmreaddata,
	dataout,
	grayelecidleinferselout,
	parallelfdbkout,
	txctrlplanetestbus,
	txdivsync,
	txtestbus,
	xgmdataout,
	txpmalocalclk)/* synthesis synthesis_greybox=0 */;
input 	polinvrxin;
input 	phfiforeset;
input 	coreclk;
input 	invpol;
input 	phfiforddisable;
input 	pipeenrevparallellpbkin;
input 	txpcsreset;
input 	phfifowrenable;
input 	[43:0] datain;
input 	[4:0] bitslipboundaryselect;
input 	[3:0] txdatavalid;
input 	avmmwrite;
input 	avmmread;
input 	avmmclk;
input 	avmmrstn;
input 	[15:0] avmmwritedata;
input 	[10:0] avmmaddress;
input 	[1:0] avmmbyteen;
input 	dispcbyte;
input 	resetpcptrs;
input 	resetpcptrsinchnldown;
input 	resetpcptrsinchnlup;
input 	[19:0] revparallellpbkdata;
input 	hrdrst;
input 	prbscidenable;
input 	refclkdig;
input 	rxpolarityin;
input 	scanmode;
input 	pipetxdeemph;
input 	detectrxloopin;
input 	pipetxswing;
input 	[2:0] elecidleinfersel;
input 	[1:0] powerdn;
input 	[2:0] pipetxmargin;
input 	rateswitch;
input 	xgmctrl;
input 	xgmctrltoporbottom;
input 	[7:0] xgmdatain;
input 	[7:0] xgmdataintoporbottom;
output 	aggtxpcsrst;
output 	blockselect;
output 	clkout;
output 	dynclkswitchn;
output 	phfifooverflow;
output 	phfifounderflow;
output 	pipeenrevparallellpbkout;
output 	polinvrxout;
output 	rdenablesync;
output 	xgmctrlenable;
output 	[15:0] avmmreaddata;
output 	[19:0] dataout;
output 	[2:0] grayelecidleinferselout;
output 	[19:0] parallelfdbkout;
output 	[19:0] txctrlplanetestbus;
output 	[1:0] txdivsync;
output 	[19:0] txtestbus;
output 	[7:0] xgmdataout;
input 	txpmalocalclk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [15:0] wys_AVMMREADDATA_bus;
wire [19:0] wys_DATAOUT_bus;
wire [2:0] wys_GRAYELECIDLEINFERSELOUT_bus;
wire [19:0] wys_PARALLELFDBKOUT_bus;
wire [19:0] wys_TXCTRLPLANETESTBUS_bus;
wire [1:0] wys_TXDIVSYNC_bus;
wire [19:0] wys_TXTESTBUS_bus;
wire [7:0] wys_XGMDATAOUT_bus;

assign avmmreaddata[0] = wys_AVMMREADDATA_bus[0];
assign avmmreaddata[1] = wys_AVMMREADDATA_bus[1];
assign avmmreaddata[2] = wys_AVMMREADDATA_bus[2];
assign avmmreaddata[3] = wys_AVMMREADDATA_bus[3];
assign avmmreaddata[4] = wys_AVMMREADDATA_bus[4];
assign avmmreaddata[5] = wys_AVMMREADDATA_bus[5];
assign avmmreaddata[6] = wys_AVMMREADDATA_bus[6];
assign avmmreaddata[7] = wys_AVMMREADDATA_bus[7];
assign avmmreaddata[8] = wys_AVMMREADDATA_bus[8];
assign avmmreaddata[9] = wys_AVMMREADDATA_bus[9];
assign avmmreaddata[10] = wys_AVMMREADDATA_bus[10];
assign avmmreaddata[11] = wys_AVMMREADDATA_bus[11];
assign avmmreaddata[12] = wys_AVMMREADDATA_bus[12];
assign avmmreaddata[13] = wys_AVMMREADDATA_bus[13];
assign avmmreaddata[14] = wys_AVMMREADDATA_bus[14];
assign avmmreaddata[15] = wys_AVMMREADDATA_bus[15];

assign dataout[0] = wys_DATAOUT_bus[0];
assign dataout[1] = wys_DATAOUT_bus[1];
assign dataout[2] = wys_DATAOUT_bus[2];
assign dataout[3] = wys_DATAOUT_bus[3];
assign dataout[4] = wys_DATAOUT_bus[4];
assign dataout[5] = wys_DATAOUT_bus[5];
assign dataout[6] = wys_DATAOUT_bus[6];
assign dataout[7] = wys_DATAOUT_bus[7];
assign dataout[8] = wys_DATAOUT_bus[8];
assign dataout[9] = wys_DATAOUT_bus[9];
assign dataout[10] = wys_DATAOUT_bus[10];
assign dataout[11] = wys_DATAOUT_bus[11];
assign dataout[12] = wys_DATAOUT_bus[12];
assign dataout[13] = wys_DATAOUT_bus[13];
assign dataout[14] = wys_DATAOUT_bus[14];
assign dataout[15] = wys_DATAOUT_bus[15];
assign dataout[16] = wys_DATAOUT_bus[16];
assign dataout[17] = wys_DATAOUT_bus[17];
assign dataout[18] = wys_DATAOUT_bus[18];
assign dataout[19] = wys_DATAOUT_bus[19];

assign grayelecidleinferselout[0] = wys_GRAYELECIDLEINFERSELOUT_bus[0];
assign grayelecidleinferselout[1] = wys_GRAYELECIDLEINFERSELOUT_bus[1];
assign grayelecidleinferselout[2] = wys_GRAYELECIDLEINFERSELOUT_bus[2];

assign parallelfdbkout[0] = wys_PARALLELFDBKOUT_bus[0];
assign parallelfdbkout[1] = wys_PARALLELFDBKOUT_bus[1];
assign parallelfdbkout[2] = wys_PARALLELFDBKOUT_bus[2];
assign parallelfdbkout[3] = wys_PARALLELFDBKOUT_bus[3];
assign parallelfdbkout[4] = wys_PARALLELFDBKOUT_bus[4];
assign parallelfdbkout[5] = wys_PARALLELFDBKOUT_bus[5];
assign parallelfdbkout[6] = wys_PARALLELFDBKOUT_bus[6];
assign parallelfdbkout[7] = wys_PARALLELFDBKOUT_bus[7];
assign parallelfdbkout[8] = wys_PARALLELFDBKOUT_bus[8];
assign parallelfdbkout[9] = wys_PARALLELFDBKOUT_bus[9];
assign parallelfdbkout[10] = wys_PARALLELFDBKOUT_bus[10];
assign parallelfdbkout[11] = wys_PARALLELFDBKOUT_bus[11];
assign parallelfdbkout[12] = wys_PARALLELFDBKOUT_bus[12];
assign parallelfdbkout[13] = wys_PARALLELFDBKOUT_bus[13];
assign parallelfdbkout[14] = wys_PARALLELFDBKOUT_bus[14];
assign parallelfdbkout[15] = wys_PARALLELFDBKOUT_bus[15];
assign parallelfdbkout[16] = wys_PARALLELFDBKOUT_bus[16];
assign parallelfdbkout[17] = wys_PARALLELFDBKOUT_bus[17];
assign parallelfdbkout[18] = wys_PARALLELFDBKOUT_bus[18];
assign parallelfdbkout[19] = wys_PARALLELFDBKOUT_bus[19];

assign txctrlplanetestbus[0] = wys_TXCTRLPLANETESTBUS_bus[0];
assign txctrlplanetestbus[1] = wys_TXCTRLPLANETESTBUS_bus[1];
assign txctrlplanetestbus[2] = wys_TXCTRLPLANETESTBUS_bus[2];
assign txctrlplanetestbus[3] = wys_TXCTRLPLANETESTBUS_bus[3];
assign txctrlplanetestbus[4] = wys_TXCTRLPLANETESTBUS_bus[4];
assign txctrlplanetestbus[5] = wys_TXCTRLPLANETESTBUS_bus[5];
assign txctrlplanetestbus[6] = wys_TXCTRLPLANETESTBUS_bus[6];
assign txctrlplanetestbus[7] = wys_TXCTRLPLANETESTBUS_bus[7];
assign txctrlplanetestbus[8] = wys_TXCTRLPLANETESTBUS_bus[8];
assign txctrlplanetestbus[9] = wys_TXCTRLPLANETESTBUS_bus[9];
assign txctrlplanetestbus[10] = wys_TXCTRLPLANETESTBUS_bus[10];
assign txctrlplanetestbus[11] = wys_TXCTRLPLANETESTBUS_bus[11];
assign txctrlplanetestbus[12] = wys_TXCTRLPLANETESTBUS_bus[12];
assign txctrlplanetestbus[13] = wys_TXCTRLPLANETESTBUS_bus[13];
assign txctrlplanetestbus[14] = wys_TXCTRLPLANETESTBUS_bus[14];
assign txctrlplanetestbus[15] = wys_TXCTRLPLANETESTBUS_bus[15];
assign txctrlplanetestbus[16] = wys_TXCTRLPLANETESTBUS_bus[16];
assign txctrlplanetestbus[17] = wys_TXCTRLPLANETESTBUS_bus[17];
assign txctrlplanetestbus[18] = wys_TXCTRLPLANETESTBUS_bus[18];
assign txctrlplanetestbus[19] = wys_TXCTRLPLANETESTBUS_bus[19];

assign txdivsync[0] = wys_TXDIVSYNC_bus[0];
assign txdivsync[1] = wys_TXDIVSYNC_bus[1];

assign txtestbus[0] = wys_TXTESTBUS_bus[0];
assign txtestbus[1] = wys_TXTESTBUS_bus[1];
assign txtestbus[2] = wys_TXTESTBUS_bus[2];
assign txtestbus[3] = wys_TXTESTBUS_bus[3];
assign txtestbus[4] = wys_TXTESTBUS_bus[4];
assign txtestbus[5] = wys_TXTESTBUS_bus[5];
assign txtestbus[6] = wys_TXTESTBUS_bus[6];
assign txtestbus[7] = wys_TXTESTBUS_bus[7];
assign txtestbus[8] = wys_TXTESTBUS_bus[8];
assign txtestbus[9] = wys_TXTESTBUS_bus[9];
assign txtestbus[10] = wys_TXTESTBUS_bus[10];
assign txtestbus[11] = wys_TXTESTBUS_bus[11];
assign txtestbus[12] = wys_TXTESTBUS_bus[12];
assign txtestbus[13] = wys_TXTESTBUS_bus[13];
assign txtestbus[14] = wys_TXTESTBUS_bus[14];
assign txtestbus[15] = wys_TXTESTBUS_bus[15];
assign txtestbus[16] = wys_TXTESTBUS_bus[16];
assign txtestbus[17] = wys_TXTESTBUS_bus[17];
assign txtestbus[18] = wys_TXTESTBUS_bus[18];
assign txtestbus[19] = wys_TXTESTBUS_bus[19];

assign xgmdataout[0] = wys_XGMDATAOUT_bus[0];
assign xgmdataout[1] = wys_XGMDATAOUT_bus[1];
assign xgmdataout[2] = wys_XGMDATAOUT_bus[2];
assign xgmdataout[3] = wys_XGMDATAOUT_bus[3];
assign xgmdataout[4] = wys_XGMDATAOUT_bus[4];
assign xgmdataout[5] = wys_XGMDATAOUT_bus[5];
assign xgmdataout[6] = wys_XGMDATAOUT_bus[6];
assign xgmdataout[7] = wys_XGMDATAOUT_bus[7];

cyclonev_hssi_8g_tx_pcs wys(
	.avmmclk(avmmclk),
	.avmmread(avmmread),
	.avmmrstn(avmmrstn),
	.avmmwrite(avmmwrite),
	.coreclk(coreclk),
	.detectrxloopin(detectrxloopin),
	.dispcbyte(dispcbyte),
	.enrevparallellpbk(pipeenrevparallellpbkout),
	.hrdrst(hrdrst),
	.invpol(invpol),
	.phfiforddisable(phfiforddisable),
	.phfiforeset(phfiforeset),
	.phfifowrenable(phfifowrenable),
	.pipeenrevparallellpbkin(pipeenrevparallellpbkin),
	.pipetxdeemph(pipetxdeemph),
	.pipetxswing(pipetxswing),
	.polinvrxin(polinvrxin),
	.prbscidenable(prbscidenable),
	.rateswitch(rateswitch),
	.rdenableinchnldown(gnd),
	.rdenableinchnlup(gnd),
	.refclkdig(refclkdig),
	.resetpcptrs(resetpcptrs),
	.resetpcptrsinchnldown(resetpcptrsinchnldown),
	.resetpcptrsinchnlup(resetpcptrsinchnlup),
	.rxpolarityin(rxpolarityin),
	.scanmode(scanmode),
	.txpcsreset(txpcsreset),
	.txpmalocalclk(txpmalocalclk),
	.wrenableinchnldown(gnd),
	.wrenableinchnlup(gnd),
	.xgmctrl(xgmctrl),
	.xgmctrltoporbottom(xgmctrltoporbottom),
	.avmmaddress({avmmaddress[10],avmmaddress[9],avmmaddress[8],avmmaddress[7],avmmaddress[6],avmmaddress[5],avmmaddress[4],avmmaddress[3],avmmaddress[2],avmmaddress[1],avmmaddress[0]}),
	.avmmbyteen({avmmbyteen[1],avmmbyteen[0]}),
	.avmmwritedata({avmmwritedata[15],avmmwritedata[14],avmmwritedata[13],avmmwritedata[12],avmmwritedata[11],avmmwritedata[10],avmmwritedata[9],avmmwritedata[8],avmmwritedata[7],avmmwritedata[6],avmmwritedata[5],avmmwritedata[4],avmmwritedata[3],avmmwritedata[2],avmmwritedata[1],avmmwritedata[0]}),
	.bitslipboundaryselect({bitslipboundaryselect[4],bitslipboundaryselect[3],bitslipboundaryselect[2],bitslipboundaryselect[1],bitslipboundaryselect[0]}),
	.datain({datain[43],datain[42],datain[41],datain[40],datain[39],datain[38],datain[37],datain[36],datain[35],datain[34],datain[33],datain[32],datain[31],datain[30],datain[29],datain[28],datain[27],datain[26],datain[25],datain[24],datain[23],datain[22],datain[21],datain[20],datain[19],datain[18],datain[17],datain[16],datain[15],datain[14],datain[13],datain[12],datain[11],datain[10],datain[9],datain[8],datain[7],datain[6],datain[5],datain[4],datain[3],datain[2],
datain[1],datain[0]}),
	.elecidleinfersel({elecidleinfersel[2],elecidleinfersel[1],elecidleinfersel[0]}),
	.fifoselectinchnldown(2'b00),
	.fifoselectinchnlup(2'b00),
	.pipetxmargin({pipetxmargin[2],pipetxmargin[1],pipetxmargin[0]}),
	.powerdn({powerdn[1],powerdn[0]}),
	.revparallellpbkdata({revparallellpbkdata[19],revparallellpbkdata[18],revparallellpbkdata[17],revparallellpbkdata[16],revparallellpbkdata[15],revparallellpbkdata[14],revparallellpbkdata[13],revparallellpbkdata[12],revparallellpbkdata[11],revparallellpbkdata[10],revparallellpbkdata[9],revparallellpbkdata[8],revparallellpbkdata[7],
revparallellpbkdata[6],revparallellpbkdata[5],revparallellpbkdata[4],revparallellpbkdata[3],revparallellpbkdata[2],revparallellpbkdata[1],revparallellpbkdata[0]}),
	.txblkstart(4'b0000),
	.txdatavalid({txdatavalid[3],txdatavalid[2],txdatavalid[1],txdatavalid[0]}),
	.txdivsyncinchnldown(2'b00),
	.txdivsyncinchnlup(2'b00),
	.txsynchdr(2'b00),
	.xgmdatain({xgmdatain[7],xgmdatain[6],xgmdatain[5],xgmdatain[4],xgmdatain[3],xgmdatain[2],xgmdatain[1],xgmdatain[0]}),
	.xgmdataintoporbottom({xgmdataintoporbottom[7],xgmdataintoporbottom[6],xgmdataintoporbottom[5],xgmdataintoporbottom[4],xgmdataintoporbottom[3],xgmdataintoporbottom[2],xgmdataintoporbottom[1],xgmdataintoporbottom[0]}),
	.aggtxpcsrst(aggtxpcsrst),
	.blockselect(blockselect),
	.clkout(clkout),
	.detectrxloopout(),
	.dynclkswitchn(dynclkswitchn),
	.phfifooverflow(phfifooverflow),
	.phfifotxdeemph(),
	.phfifotxswing(),
	.phfifounderflow(phfifounderflow),
	.pipeenrevparallellpbkout(pipeenrevparallellpbkout),
	.polinvrxout(polinvrxout),
	.rdenableoutchnldown(),
	.rdenableoutchnlup(),
	.rdenablesync(rdenablesync),
	.refclkb(),
	.refclkbreset(),
	.rxpolarityout(),
	.txcomplianceout(),
	.txelecidleout(),
	.txpipeclk(),
	.txpipeelectidle(),
	.txpipesoftreset(),
	.wrenableoutchnldown(),
	.wrenableoutchnlup(),
	.xgmctrlenable(xgmctrlenable),
	.avmmreaddata(wys_AVMMREADDATA_bus),
	.dataout(wys_DATAOUT_bus),
	.fifoselectoutchnldown(),
	.fifoselectoutchnlup(),
	.grayelecidleinferselout(wys_GRAYELECIDLEINFERSELOUT_bus),
	.parallelfdbkout(wys_PARALLELFDBKOUT_bus),
	.phfifotxmargin(),
	.pipepowerdownout(),
	.txblkstartout(),
	.txctrlplanetestbus(wys_TXCTRLPLANETESTBUS_bus),
	.txdatakouttogen3(),
	.txdataouttogen3(),
	.txdatavalidouttogen3(),
	.txdivsync(wys_TXDIVSYNC_bus),
	.txdivsyncoutchnldown(),
	.txdivsyncoutchnlup(),
	.txsynchdrout(),
	.txtestbus(wys_TXTESTBUS_bus),
	.xgmdataout(wys_XGMDATAOUT_bus));
defparam wys.agg_block_sel = "same_smrt_pack";
defparam wys.auto_speed_nego_gen2 = "dis_asn_g2";
defparam wys.avmm_group_channel_index = 0;
defparam wys.bist_gen = "dis_bist";
defparam wys.bit_reversal = "dis_bit_reversal";
defparam wys.bypass_pipeline_reg = "dis_bypass_pipeline";
defparam wys.byte_serializer = "dis_bs";
defparam wys.channel_number = 0;
defparam wys.cid_pattern = "cid_pattern_0";
defparam wys.cid_pattern_len = 8'b00000000;
defparam wys.clock_gate_bist = "en_bist_clk_gating";
defparam wys.clock_gate_bs_enc = "dis_bs_enc_clk_gating";
defparam wys.clock_gate_dw_fifowr = "dis_dw_fifowr_clk_gating";
defparam wys.clock_gate_fiford = "dis_fiford_clk_gating";
defparam wys.clock_gate_prbs = "en_prbs_clk_gating";
defparam wys.clock_gate_sw_fifowr = "dis_sw_fifowr_clk_gating";
defparam wys.ctrl_plane_bonding_compensation = "dis_compensation";
defparam wys.ctrl_plane_bonding_consumption = "individual";
defparam wys.ctrl_plane_bonding_distribution = "not_master_chnl_distr";
defparam wys.data_selection_8b10b_encoder_input = "normal_data_path";
defparam wys.dynamic_clk_switch = "dis_dyn_clk_switch";
defparam wys.eightb_tenb_disp_ctrl = "dis_disp_ctrl";
defparam wys.eightb_tenb_encoder = "dis_8b10b";
defparam wys.force_echar = "dis_force_echar";
defparam wys.force_kchar = "dis_force_kchar";
defparam wys.hip_mode = "dis_hip";
defparam wys.pcfifo_urst = "dis_pcfifourst";
defparam wys.pcs_bypass = "dis_pcs_bypass";
defparam wys.phase_compensation_fifo = "low_latency";
defparam wys.phfifo_write_clk_sel = "pld_tx_clk";
defparam wys.pma_dw = "sixteen_bit";
defparam wys.polarity_inversion = "dis_polinv";
defparam wys.prbs_gen = "dis_prbs";
defparam wys.prot_mode = "basic";
defparam wys.refclk_b_clk_sel = "tx_pma_clock";
defparam wys.revloop_back_rm = "dis_rev_loopback_rx_rm";
defparam wys.sup_mode = "user_mode";
defparam wys.symbol_swap = "dis_symbol_swap";
defparam wys.test_mode = "dont_care_test";
defparam wys.tx_bitslip = "dis_tx_bitslip";
defparam wys.tx_compliance_controlled_disparity = "dis_txcompliance";
defparam wys.txclk_freerun = "en_freerun_tx";
defparam wys.txpcs_urst = "en_txpcs_urst";
defparam wys.use_default_base_address = "true";
defparam wys.user_base_address = 0;

endmodule

module NATIVE_TRANSCEIVER_IP_av_hssi_common_pcs_pma_interface_rbc (
	pmarxdetectvalid,
	pmarxfound,
	clklow,
	fref,
	avmmwrite,
	avmmread,
	avmmclk,
	avmmrstn,
	avmmwritedata,
	avmmaddress,
	avmmbyteen,
	pcsaggrxpcsrst,
	pcsaggalignstatussync,
	pcsaggdecctl,
	pcsaggdecdatavalid,
	pcsaggdelcondmetout,
	pcs8gearlyeios,
	pcs8geidleexit,
	pcsaggfifoovrout,
	pcsaggfifordoutcomp,
	pcsagginsertincompleteout,
	pcsagglatencycompout,
	pcs8gltrpma,
	pcs8gpcieswitch,
	resetppmcntrs,
	pcsaggsyncstatus,
	pcsaggaligndetsync,
	pcsaggcgcomprddout,
	pcsaggcgcompwrout,
	pcsaggdecdata,
	pcsaggrdalign,
	pcsaggrunningdisp,
	pcs8gtxelecidle,
	pcsaggrefclkdig,
	pcsaggscanmoden,
	pcsaggscanshiftn,
	pldtestsitoaggin,
	pcsrefclkdig,
	pcsscanmoden,
	pcsscanshiftn,
	hardreset,
	pldnfrzdrv,
	pldpartialreconfig,
	pmarxpmarstb,
	aggtestsotopldout,
	blockselect,
	freqlock,
	pcs8ggen2ngen1,
	pcs8gpmarxfound,
	pcs8grxdetectvalid,
	pcsaggalignstatus,
	pcsaggalignstatussync0,
	pcsaggalignstatussync0toporbot,
	pcsaggalignstatustoporbot,
	pcsaggcgcomprddall,
	pcsaggcgcomprddalltoporbot,
	pcsaggcgcompwrall,
	pcsaggcgcompwralltoporbot,
	pcsaggdelcondmet0,
	pcsaggdelcondmet0toporbot,
	pcsaggendskwqd,
	pcsaggendskwqdtoporbot,
	pcsaggendskwrdptrs,
	pcsaggendskwrdptrstoporbot,
	pcsaggfifoovr0,
	pcsaggfifoovr0toporbot,
	pcsaggfifordincomp0,
	pcsaggfifordincomp0toporbot,
	pcsaggfiforstrdqd,
	pcsaggfiforstrdqdtoporbot,
	pcsagginsertincomplete0,
	pcsagginsertincomplete0toporbot,
	pcsagglatencycomp0,
	pcsagglatencycomp0toporbot,
	pcsaggrcvdclkagg,
	pcsaggrcvdclkaggtoporbot,
	pcsaggrxcontrolrs,
	pcsaggrxcontrolrstoporbot,
	pcsaggtxctlts,
	pcsaggtxctltstoporbot,
	pldhclkout,
	pmaclklowout,
	pmaearlyeios,
	pmafrefout,
	pmaltr,
	pmatxdetectrx,
	pmatxelecidle,
	avmmreaddata,
	pcsaggrxdatars,
	pcsaggrxdatarstoporbot,
	pcsaggtestbus,
	pcsaggtxdatats,
	pcsaggtxdatatstoporbot,
	pmaiftestbus,
	pcsaggtxpcsrst,
	pcsaggrdenablesync,
	pcsaggtxctltc,
	pcsaggtxdatatc)/* synthesis synthesis_greybox=0 */;
input 	pmarxdetectvalid;
input 	pmarxfound;
input 	clklow;
input 	fref;
input 	avmmwrite;
input 	avmmread;
input 	avmmclk;
input 	avmmrstn;
input 	[15:0] avmmwritedata;
input 	[10:0] avmmaddress;
input 	[1:0] avmmbyteen;
input 	pcsaggrxpcsrst;
input 	pcsaggalignstatussync;
input 	pcsaggdecctl;
input 	pcsaggdecdatavalid;
input 	pcsaggdelcondmetout;
input 	pcs8gearlyeios;
input 	pcs8geidleexit;
input 	pcsaggfifoovrout;
input 	pcsaggfifordoutcomp;
input 	pcsagginsertincompleteout;
input 	pcsagglatencycompout;
input 	pcs8gltrpma;
input 	pcs8gpcieswitch;
input 	resetppmcntrs;
input 	pcsaggsyncstatus;
input 	[1:0] pcsaggaligndetsync;
input 	[1:0] pcsaggcgcomprddout;
input 	[1:0] pcsaggcgcompwrout;
input 	[7:0] pcsaggdecdata;
input 	[1:0] pcsaggrdalign;
input 	[1:0] pcsaggrunningdisp;
input 	pcs8gtxelecidle;
input 	pcsaggrefclkdig;
input 	pcsaggscanmoden;
input 	pcsaggscanshiftn;
input 	pldtestsitoaggin;
input 	pcsrefclkdig;
input 	pcsscanmoden;
input 	pcsscanshiftn;
input 	hardreset;
input 	pldnfrzdrv;
input 	pldpartialreconfig;
input 	pmarxpmarstb;
output 	aggtestsotopldout;
output 	blockselect;
output 	freqlock;
output 	pcs8ggen2ngen1;
output 	pcs8gpmarxfound;
output 	pcs8grxdetectvalid;
output 	pcsaggalignstatus;
output 	pcsaggalignstatussync0;
output 	pcsaggalignstatussync0toporbot;
output 	pcsaggalignstatustoporbot;
output 	pcsaggcgcomprddall;
output 	pcsaggcgcomprddalltoporbot;
output 	pcsaggcgcompwrall;
output 	pcsaggcgcompwralltoporbot;
output 	pcsaggdelcondmet0;
output 	pcsaggdelcondmet0toporbot;
output 	pcsaggendskwqd;
output 	pcsaggendskwqdtoporbot;
output 	pcsaggendskwrdptrs;
output 	pcsaggendskwrdptrstoporbot;
output 	pcsaggfifoovr0;
output 	pcsaggfifoovr0toporbot;
output 	pcsaggfifordincomp0;
output 	pcsaggfifordincomp0toporbot;
output 	pcsaggfiforstrdqd;
output 	pcsaggfiforstrdqdtoporbot;
output 	pcsagginsertincomplete0;
output 	pcsagginsertincomplete0toporbot;
output 	pcsagglatencycomp0;
output 	pcsagglatencycomp0toporbot;
output 	pcsaggrcvdclkagg;
output 	pcsaggrcvdclkaggtoporbot;
output 	pcsaggrxcontrolrs;
output 	pcsaggrxcontrolrstoporbot;
output 	pcsaggtxctlts;
output 	pcsaggtxctltstoporbot;
output 	pldhclkout;
output 	pmaclklowout;
output 	pmaearlyeios;
output 	pmafrefout;
output 	pmaltr;
output 	pmatxdetectrx;
output 	pmatxelecidle;
output 	[15:0] avmmreaddata;
output 	[7:0] pcsaggrxdatars;
output 	[7:0] pcsaggrxdatarstoporbot;
output 	[15:0] pcsaggtestbus;
output 	[7:0] pcsaggtxdatats;
output 	[7:0] pcsaggtxdatatstoporbot;
output 	[9:0] pmaiftestbus;
input 	pcsaggtxpcsrst;
input 	pcsaggrdenablesync;
input 	pcsaggtxctltc;
input 	[7:0] pcsaggtxdatatc;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \aggaligndetsync[0] ;
wire \aggaligndetsync[1] ;

wire [15:0] wys_AVMMREADDATA_bus;
wire [1:0] wys_AGGALIGNDETSYNC_bus;
wire [7:0] wys_PCSAGGRXDATARS_bus;
wire [7:0] wys_PCSAGGRXDATARSTOPORBOT_bus;
wire [15:0] wys_PCSAGGTESTBUS_bus;
wire [7:0] wys_PCSAGGTXDATATS_bus;
wire [7:0] wys_PCSAGGTXDATATSTOPORBOT_bus;
wire [9:0] wys_PMAIFTESTBUS_bus;

assign avmmreaddata[0] = wys_AVMMREADDATA_bus[0];
assign avmmreaddata[1] = wys_AVMMREADDATA_bus[1];
assign avmmreaddata[2] = wys_AVMMREADDATA_bus[2];
assign avmmreaddata[3] = wys_AVMMREADDATA_bus[3];
assign avmmreaddata[4] = wys_AVMMREADDATA_bus[4];
assign avmmreaddata[5] = wys_AVMMREADDATA_bus[5];
assign avmmreaddata[6] = wys_AVMMREADDATA_bus[6];
assign avmmreaddata[7] = wys_AVMMREADDATA_bus[7];
assign avmmreaddata[8] = wys_AVMMREADDATA_bus[8];
assign avmmreaddata[9] = wys_AVMMREADDATA_bus[9];
assign avmmreaddata[10] = wys_AVMMREADDATA_bus[10];
assign avmmreaddata[11] = wys_AVMMREADDATA_bus[11];
assign avmmreaddata[12] = wys_AVMMREADDATA_bus[12];
assign avmmreaddata[13] = wys_AVMMREADDATA_bus[13];
assign avmmreaddata[14] = wys_AVMMREADDATA_bus[14];
assign avmmreaddata[15] = wys_AVMMREADDATA_bus[15];

assign \aggaligndetsync[0]  = wys_AGGALIGNDETSYNC_bus[0];
assign \aggaligndetsync[1]  = wys_AGGALIGNDETSYNC_bus[1];

assign pcsaggrxdatars[0] = wys_PCSAGGRXDATARS_bus[0];
assign pcsaggrxdatars[1] = wys_PCSAGGRXDATARS_bus[1];
assign pcsaggrxdatars[2] = wys_PCSAGGRXDATARS_bus[2];
assign pcsaggrxdatars[3] = wys_PCSAGGRXDATARS_bus[3];
assign pcsaggrxdatars[4] = wys_PCSAGGRXDATARS_bus[4];
assign pcsaggrxdatars[5] = wys_PCSAGGRXDATARS_bus[5];
assign pcsaggrxdatars[6] = wys_PCSAGGRXDATARS_bus[6];
assign pcsaggrxdatars[7] = wys_PCSAGGRXDATARS_bus[7];

assign pcsaggrxdatarstoporbot[0] = wys_PCSAGGRXDATARSTOPORBOT_bus[0];
assign pcsaggrxdatarstoporbot[1] = wys_PCSAGGRXDATARSTOPORBOT_bus[1];
assign pcsaggrxdatarstoporbot[2] = wys_PCSAGGRXDATARSTOPORBOT_bus[2];
assign pcsaggrxdatarstoporbot[3] = wys_PCSAGGRXDATARSTOPORBOT_bus[3];
assign pcsaggrxdatarstoporbot[4] = wys_PCSAGGRXDATARSTOPORBOT_bus[4];
assign pcsaggrxdatarstoporbot[5] = wys_PCSAGGRXDATARSTOPORBOT_bus[5];
assign pcsaggrxdatarstoporbot[6] = wys_PCSAGGRXDATARSTOPORBOT_bus[6];
assign pcsaggrxdatarstoporbot[7] = wys_PCSAGGRXDATARSTOPORBOT_bus[7];

assign pcsaggtestbus[0] = wys_PCSAGGTESTBUS_bus[0];
assign pcsaggtestbus[1] = wys_PCSAGGTESTBUS_bus[1];
assign pcsaggtestbus[2] = wys_PCSAGGTESTBUS_bus[2];
assign pcsaggtestbus[3] = wys_PCSAGGTESTBUS_bus[3];
assign pcsaggtestbus[4] = wys_PCSAGGTESTBUS_bus[4];
assign pcsaggtestbus[5] = wys_PCSAGGTESTBUS_bus[5];
assign pcsaggtestbus[6] = wys_PCSAGGTESTBUS_bus[6];
assign pcsaggtestbus[7] = wys_PCSAGGTESTBUS_bus[7];
assign pcsaggtestbus[8] = wys_PCSAGGTESTBUS_bus[8];
assign pcsaggtestbus[9] = wys_PCSAGGTESTBUS_bus[9];
assign pcsaggtestbus[10] = wys_PCSAGGTESTBUS_bus[10];
assign pcsaggtestbus[11] = wys_PCSAGGTESTBUS_bus[11];
assign pcsaggtestbus[12] = wys_PCSAGGTESTBUS_bus[12];
assign pcsaggtestbus[13] = wys_PCSAGGTESTBUS_bus[13];
assign pcsaggtestbus[14] = wys_PCSAGGTESTBUS_bus[14];
assign pcsaggtestbus[15] = wys_PCSAGGTESTBUS_bus[15];

assign pcsaggtxdatats[0] = wys_PCSAGGTXDATATS_bus[0];
assign pcsaggtxdatats[1] = wys_PCSAGGTXDATATS_bus[1];
assign pcsaggtxdatats[2] = wys_PCSAGGTXDATATS_bus[2];
assign pcsaggtxdatats[3] = wys_PCSAGGTXDATATS_bus[3];
assign pcsaggtxdatats[4] = wys_PCSAGGTXDATATS_bus[4];
assign pcsaggtxdatats[5] = wys_PCSAGGTXDATATS_bus[5];
assign pcsaggtxdatats[6] = wys_PCSAGGTXDATATS_bus[6];
assign pcsaggtxdatats[7] = wys_PCSAGGTXDATATS_bus[7];

assign pcsaggtxdatatstoporbot[0] = wys_PCSAGGTXDATATSTOPORBOT_bus[0];
assign pcsaggtxdatatstoporbot[1] = wys_PCSAGGTXDATATSTOPORBOT_bus[1];
assign pcsaggtxdatatstoporbot[2] = wys_PCSAGGTXDATATSTOPORBOT_bus[2];
assign pcsaggtxdatatstoporbot[3] = wys_PCSAGGTXDATATSTOPORBOT_bus[3];
assign pcsaggtxdatatstoporbot[4] = wys_PCSAGGTXDATATSTOPORBOT_bus[4];
assign pcsaggtxdatatstoporbot[5] = wys_PCSAGGTXDATATSTOPORBOT_bus[5];
assign pcsaggtxdatatstoporbot[6] = wys_PCSAGGTXDATATSTOPORBOT_bus[6];
assign pcsaggtxdatatstoporbot[7] = wys_PCSAGGTXDATATSTOPORBOT_bus[7];

assign pmaiftestbus[0] = wys_PMAIFTESTBUS_bus[0];
assign pmaiftestbus[1] = wys_PMAIFTESTBUS_bus[1];
assign pmaiftestbus[2] = wys_PMAIFTESTBUS_bus[2];
assign pmaiftestbus[3] = wys_PMAIFTESTBUS_bus[3];
assign pmaiftestbus[4] = wys_PMAIFTESTBUS_bus[4];
assign pmaiftestbus[5] = wys_PMAIFTESTBUS_bus[5];
assign pmaiftestbus[6] = wys_PMAIFTESTBUS_bus[6];
assign pmaiftestbus[7] = wys_PMAIFTESTBUS_bus[7];
assign pmaiftestbus[8] = wys_PMAIFTESTBUS_bus[8];
assign pmaiftestbus[9] = wys_PMAIFTESTBUS_bus[9];

cyclonev_hssi_common_pcs_pma_interface wys(
	.aggalignstatus(gnd),
	.aggalignstatussync0(gnd),
	.aggalignstatussync0toporbot(gnd),
	.aggalignstatustoporbot(gnd),
	.aggcgcomprddall(gnd),
	.aggcgcomprddalltoporbot(gnd),
	.aggcgcompwrall(gnd),
	.aggcgcompwralltoporbot(gnd),
	.aggdelcondmet0(gnd),
	.aggdelcondmet0toporbot(gnd),
	.aggendskwqd(gnd),
	.aggendskwqdtoporbot(gnd),
	.aggendskwrdptrs(gnd),
	.aggendskwrdptrstoporbot(gnd),
	.aggfifoovr0(gnd),
	.aggfifoovr0toporbot(gnd),
	.aggfifordincomp0(gnd),
	.aggfifordincomp0toporbot(gnd),
	.aggfiforstrdqd(gnd),
	.aggfiforstrdqdtoporbot(gnd),
	.agginsertincomplete0(gnd),
	.agginsertincomplete0toporbot(gnd),
	.agglatencycomp0(gnd),
	.agglatencycomp0toporbot(gnd),
	.aggrcvdclkagg(gnd),
	.aggrcvdclkaggtoporbot(gnd),
	.aggrxcontrolrs(gnd),
	.aggrxcontrolrstoporbot(gnd),
	.aggtestsotopldin(gnd),
	.aggtxctlts(gnd),
	.aggtxctltstoporbot(gnd),
	.avmmclk(avmmclk),
	.avmmread(avmmread),
	.avmmrstn(avmmrstn),
	.avmmwrite(avmmwrite),
	.clklow(clklow),
	.fref(fref),
	.hardreset(hardreset),
	.pcs8gearlyeios(pcs8gearlyeios),
	.pcs8geidleexit(pcs8geidleexit),
	.pcs8gltrpma(pcs8gltrpma),
	.pcs8gpcieswitch(pcs8gpcieswitch),
	.pcs8gtxdetectrx(gnd),
	.pcs8gtxelecidle(pcs8gtxelecidle),
	.pcsaggalignstatussync(pcsaggalignstatussync),
	.pcsaggdecctl(pcsaggdecctl),
	.pcsaggdecdatavalid(pcsaggdecdatavalid),
	.pcsaggdelcondmetout(pcsaggdelcondmetout),
	.pcsaggfifoovrout(pcsaggfifoovrout),
	.pcsaggfifordoutcomp(pcsaggfifordoutcomp),
	.pcsagginsertincompleteout(pcsagginsertincompleteout),
	.pcsagglatencycompout(pcsagglatencycompout),
	.pcsaggrdenablesync(pcsaggrdenablesync),
	.pcsaggrefclkdig(pcsaggrefclkdig),
	.pcsaggrxpcsrst(pcsaggrxpcsrst),
	.pcsaggscanmoden(pcsaggscanmoden),
	.pcsaggscanshiftn(pcsaggscanshiftn),
	.pcsaggsyncstatus(pcsaggsyncstatus),
	.pcsaggtxctltc(pcsaggtxctltc),
	.pcsaggtxpcsrst(pcsaggtxpcsrst),
	.pcsrefclkdig(pcsrefclkdig),
	.pcsscanmoden(pcsscanmoden),
	.pcsscanshiftn(pcsscanshiftn),
	.pldnfrzdrv(pldnfrzdrv),
	.pldpartialreconfig(pldpartialreconfig),
	.pldtestsitoaggin(pldtestsitoaggin),
	.pmahclk(gnd),
	.pmarxdetectvalid(pmarxdetectvalid),
	.pmarxfound(pmarxfound),
	.pmarxpmarstb(pmarxpmarstb),
	.resetppmcntrs(resetppmcntrs),
	.aggrxdatars(8'b00000000),
	.aggrxdatarstoporbot(8'b00000000),
	.aggtestbus(16'b0000000000000000),
	.aggtxdatats(8'b00000000),
	.aggtxdatatstoporbot(8'b00000000),
	.avmmaddress({avmmaddress[10],avmmaddress[9],avmmaddress[8],avmmaddress[7],avmmaddress[6],avmmaddress[5],avmmaddress[4],avmmaddress[3],avmmaddress[2],avmmaddress[1],avmmaddress[0]}),
	.avmmbyteen({avmmbyteen[1],avmmbyteen[0]}),
	.avmmwritedata({avmmwritedata[15],avmmwritedata[14],avmmwritedata[13],avmmwritedata[12],avmmwritedata[11],avmmwritedata[10],avmmwritedata[9],avmmwritedata[8],avmmwritedata[7],avmmwritedata[6],avmmwritedata[5],avmmwritedata[4],avmmwritedata[3],avmmwritedata[2],avmmwritedata[1],avmmwritedata[0]}),
	.pcs8gpmacurrentcoeff(18'b000000000000000000),
	.pcsaggaligndetsync({pcsaggaligndetsync[1],pcsaggaligndetsync[0]}),
	.pcsaggcgcomprddout({pcsaggcgcomprddout[1],pcsaggcgcomprddout[0]}),
	.pcsaggcgcompwrout({pcsaggcgcompwrout[1],pcsaggcgcompwrout[0]}),
	.pcsaggdecdata({pcsaggdecdata[7],pcsaggdecdata[6],pcsaggdecdata[5],pcsaggdecdata[4],pcsaggdecdata[3],pcsaggdecdata[2],pcsaggdecdata[1],pcsaggdecdata[0]}),
	.pcsaggrdalign({pcsaggrdalign[1],pcsaggrdalign[0]}),
	.pcsaggrunningdisp({pcsaggrunningdisp[1],pcsaggrunningdisp[0]}),
	.pcsaggtxdatatc({pcsaggtxdatatc[7],pcsaggtxdatatc[6],pcsaggtxdatatc[5],pcsaggtxdatatc[4],pcsaggtxdatatc[3],pcsaggtxdatatc[2],pcsaggtxdatatc[1],pcsaggtxdatatc[0]}),
	.pmapcieswdone(2'b00),
	.aggalignstatussync(),
	.aggdecctl(),
	.aggdecdatavalid(),
	.aggdelcondmetout(),
	.aggfifoovrout(),
	.aggfifordoutcomp(),
	.agginsertincompleteout(),
	.agglatencycompout(),
	.aggrdenablesync(),
	.aggrefclkdig(),
	.aggrxpcsrst(),
	.aggscanmoden(),
	.aggscanshiftn(),
	.aggsyncstatus(),
	.aggtestsotopldout(aggtestsotopldout),
	.aggtxctltc(),
	.aggtxpcsrst(),
	.blockselect(blockselect),
	.freqlock(freqlock),
	.pcs8ggen2ngen1(pcs8ggen2ngen1),
	.pcs8gpmarxfound(pcs8gpmarxfound),
	.pcs8gpowerstatetransitiondone(),
	.pcs8grxdetectvalid(pcs8grxdetectvalid),
	.pcsaggalignstatus(pcsaggalignstatus),
	.pcsaggalignstatussync0(pcsaggalignstatussync0),
	.pcsaggalignstatussync0toporbot(pcsaggalignstatussync0toporbot),
	.pcsaggalignstatustoporbot(pcsaggalignstatustoporbot),
	.pcsaggcgcomprddall(pcsaggcgcomprddall),
	.pcsaggcgcomprddalltoporbot(pcsaggcgcomprddalltoporbot),
	.pcsaggcgcompwrall(pcsaggcgcompwrall),
	.pcsaggcgcompwralltoporbot(pcsaggcgcompwralltoporbot),
	.pcsaggdelcondmet0(pcsaggdelcondmet0),
	.pcsaggdelcondmet0toporbot(pcsaggdelcondmet0toporbot),
	.pcsaggendskwqd(pcsaggendskwqd),
	.pcsaggendskwqdtoporbot(pcsaggendskwqdtoporbot),
	.pcsaggendskwrdptrs(pcsaggendskwrdptrs),
	.pcsaggendskwrdptrstoporbot(pcsaggendskwrdptrstoporbot),
	.pcsaggfifoovr0(pcsaggfifoovr0),
	.pcsaggfifoovr0toporbot(pcsaggfifoovr0toporbot),
	.pcsaggfifordincomp0(pcsaggfifordincomp0),
	.pcsaggfifordincomp0toporbot(pcsaggfifordincomp0toporbot),
	.pcsaggfiforstrdqd(pcsaggfiforstrdqd),
	.pcsaggfiforstrdqdtoporbot(pcsaggfiforstrdqdtoporbot),
	.pcsagginsertincomplete0(pcsagginsertincomplete0),
	.pcsagginsertincomplete0toporbot(pcsagginsertincomplete0toporbot),
	.pcsagglatencycomp0(pcsagglatencycomp0),
	.pcsagglatencycomp0toporbot(pcsagglatencycomp0toporbot),
	.pcsaggrcvdclkagg(pcsaggrcvdclkagg),
	.pcsaggrcvdclkaggtoporbot(pcsaggrcvdclkaggtoporbot),
	.pcsaggrxcontrolrs(pcsaggrxcontrolrs),
	.pcsaggrxcontrolrstoporbot(pcsaggrxcontrolrstoporbot),
	.pcsaggtxctlts(pcsaggtxctlts),
	.pcsaggtxctltstoporbot(pcsaggtxctltstoporbot),
	.pldhclkout(pldhclkout),
	.pldtestsitoaggout(),
	.pmaclklowout(pmaclklowout),
	.pmaearlyeios(pmaearlyeios),
	.pmafrefout(pmafrefout),
	.pmaltr(pmaltr),
	.pmanfrzdrv(),
	.pmapartialreconfig(),
	.pmatxdetectrx(pmatxdetectrx),
	.pmatxelecidle(pmatxelecidle),
	.aggaligndetsync(wys_AGGALIGNDETSYNC_bus),
	.aggcgcomprddout(),
	.aggcgcompwrout(),
	.aggdecdata(),
	.aggrdalign(),
	.aggrunningdisp(),
	.aggtxdatatc(),
	.avmmreaddata(wys_AVMMREADDATA_bus),
	.pcsaggrxdatars(wys_PCSAGGRXDATARS_bus),
	.pcsaggrxdatarstoporbot(wys_PCSAGGRXDATARSTOPORBOT_bus),
	.pcsaggtestbus(wys_PCSAGGTESTBUS_bus),
	.pcsaggtxdatats(wys_PCSAGGTXDATATS_bus),
	.pcsaggtxdatatstoporbot(wys_PCSAGGTXDATATSTOPORBOT_bus),
	.pmacurrentcoeff(),
	.pmaiftestbus(wys_PMAIFTESTBUS_bus),
	.pmapcieswitch());
defparam wys.auto_speed_ena = "dis_auto_speed_ena";
defparam wys.avmm_group_channel_index = 0;
defparam wys.force_freqdet = "force_freqdet_dis";
defparam wys.func_mode = "eightg_only_pld";
defparam wys.pipe_if_g3pcs = "pipe_if_8gpcs";
defparam wys.pma_if_dft_en = "dft_dis";
defparam wys.pma_if_dft_val = "dft_0";
defparam wys.ppm_cnt_rst = "ppm_cnt_rst_dis";
defparam wys.ppm_deassert_early = "deassert_early_dis";
defparam wys.ppm_gen1_2_cnt = "cnt_32k";
defparam wys.ppm_post_eidle_delay = "cnt_200_cycles";
defparam wys.ppmsel = "ppmsel_500";
defparam wys.prot_mode = "other_protocols";
defparam wys.selectpcs = "eight_g_pcs";
defparam wys.sup_mode = "user_mode";
defparam wys.use_default_base_address = "true";
defparam wys.user_base_address = 0;

endmodule

module NATIVE_TRANSCEIVER_IP_av_hssi_common_pld_pcs_interface_rbc (
	avmmwrite,
	avmmread,
	avmmclk,
	avmmrstn,
	avmmwritedata,
	avmmaddress,
	avmmbyteen,
	pcs8gphystatus,
	pcs8grxvalid,
	pcs8gchnltestbusout,
	pcs8grxstatus,
	blockselect,
	emsipenablediocsrrdydly,
	pcs8ghardreset,
	pcs8gltr,
	pcs8gprbsciden,
	pcs8grate,
	pcs8grefclkdig,
	pcs8grefclkdig2,
	pcs8grxpolarity,
	pcs8gscanmoden,
	pcs8gtxdeemph,
	pcs8gtxdetectrxloopback,
	pcs8gtxelecidle,
	pcs8gtxswing,
	pcsaggrefclkdig,
	pcsaggscanmoden,
	pcsaggscanshift,
	pcsaggtestsi,
	pcspcspmaifrefclkdig,
	pcspcspmaifscanmoden,
	pcspcspmaifscanshiftn,
	pcspmaifhardreset,
	pldnfrzdrv,
	pldpartialreconfigout,
	rstsel,
	usrrstsel,
	avmmreaddata,
	pcs8geidleinfersel,
	pcs8gpowerdown,
	pcs8gtxmargin,
	pcs8grxelecidle,
	pcsaggtestso,
	pldhclkin,
	pmaclklow,
	pmafref,
	pcspmaiftestbusout,
	pldltr)/* synthesis synthesis_greybox=0 */;
input 	avmmwrite;
input 	avmmread;
input 	avmmclk;
input 	avmmrstn;
input 	[15:0] avmmwritedata;
input 	[10:0] avmmaddress;
input 	[1:0] avmmbyteen;
input 	pcs8gphystatus;
input 	pcs8grxvalid;
input 	[19:0] pcs8gchnltestbusout;
input 	[2:0] pcs8grxstatus;
output 	blockselect;
output 	emsipenablediocsrrdydly;
output 	pcs8ghardreset;
output 	pcs8gltr;
output 	pcs8gprbsciden;
output 	pcs8grate;
output 	pcs8grefclkdig;
output 	pcs8grefclkdig2;
output 	pcs8grxpolarity;
output 	pcs8gscanmoden;
output 	pcs8gtxdeemph;
output 	pcs8gtxdetectrxloopback;
output 	pcs8gtxelecidle;
output 	pcs8gtxswing;
output 	pcsaggrefclkdig;
output 	pcsaggscanmoden;
output 	pcsaggscanshift;
output 	pcsaggtestsi;
output 	pcspcspmaifrefclkdig;
output 	pcspcspmaifscanmoden;
output 	pcspcspmaifscanshiftn;
output 	pcspmaifhardreset;
output 	pldnfrzdrv;
output 	pldpartialreconfigout;
output 	rstsel;
output 	usrrstsel;
output 	[15:0] avmmreaddata;
output 	[2:0] pcs8geidleinfersel;
output 	[1:0] pcs8gpowerdown;
output 	[2:0] pcs8gtxmargin;
input 	pcs8grxelecidle;
input 	pcsaggtestso;
input 	pldhclkin;
input 	pmaclklow;
input 	pmafref;
input 	[9:0] pcspmaiftestbusout;
input 	pldltr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \emsipcomclkout[0] ;
wire \emsipcomclkout[1] ;
wire \emsipcomclkout[2] ;

wire [15:0] wys_AVMMREADDATA_bus;
wire [2:0] wys_EMSIPCOMCLKOUT_bus;
wire [2:0] wys_PCS8GEIDLEINFERSEL_bus;
wire [1:0] wys_PCS8GPOWERDOWN_bus;
wire [2:0] wys_PCS8GTXMARGIN_bus;

assign avmmreaddata[0] = wys_AVMMREADDATA_bus[0];
assign avmmreaddata[1] = wys_AVMMREADDATA_bus[1];
assign avmmreaddata[2] = wys_AVMMREADDATA_bus[2];
assign avmmreaddata[3] = wys_AVMMREADDATA_bus[3];
assign avmmreaddata[4] = wys_AVMMREADDATA_bus[4];
assign avmmreaddata[5] = wys_AVMMREADDATA_bus[5];
assign avmmreaddata[6] = wys_AVMMREADDATA_bus[6];
assign avmmreaddata[7] = wys_AVMMREADDATA_bus[7];
assign avmmreaddata[8] = wys_AVMMREADDATA_bus[8];
assign avmmreaddata[9] = wys_AVMMREADDATA_bus[9];
assign avmmreaddata[10] = wys_AVMMREADDATA_bus[10];
assign avmmreaddata[11] = wys_AVMMREADDATA_bus[11];
assign avmmreaddata[12] = wys_AVMMREADDATA_bus[12];
assign avmmreaddata[13] = wys_AVMMREADDATA_bus[13];
assign avmmreaddata[14] = wys_AVMMREADDATA_bus[14];
assign avmmreaddata[15] = wys_AVMMREADDATA_bus[15];

assign \emsipcomclkout[0]  = wys_EMSIPCOMCLKOUT_bus[0];
assign \emsipcomclkout[1]  = wys_EMSIPCOMCLKOUT_bus[1];
assign \emsipcomclkout[2]  = wys_EMSIPCOMCLKOUT_bus[2];

assign pcs8geidleinfersel[0] = wys_PCS8GEIDLEINFERSEL_bus[0];
assign pcs8geidleinfersel[1] = wys_PCS8GEIDLEINFERSEL_bus[1];
assign pcs8geidleinfersel[2] = wys_PCS8GEIDLEINFERSEL_bus[2];

assign pcs8gpowerdown[0] = wys_PCS8GPOWERDOWN_bus[0];
assign pcs8gpowerdown[1] = wys_PCS8GPOWERDOWN_bus[1];

assign pcs8gtxmargin[0] = wys_PCS8GTXMARGIN_bus[0];
assign pcs8gtxmargin[1] = wys_PCS8GTXMARGIN_bus[1];
assign pcs8gtxmargin[2] = wys_PCS8GTXMARGIN_bus[2];

cyclonev_hssi_common_pld_pcs_interface wys(
	.avmmclk(avmmclk),
	.avmmread(avmmread),
	.avmmrstn(avmmrstn),
	.avmmwrite(avmmwrite),
	.pcs8gphystatus(pcs8gphystatus),
	.pcs8grxelecidle(pcs8grxelecidle),
	.pcs8grxvalid(pcs8grxvalid),
	.pcsaggtestso(pcsaggtestso),
	.pcspmaiftestso(gnd),
	.pld8gprbsciden(gnd),
	.pld8grefclkdig(gnd),
	.pld8grefclkdig2(gnd),
	.pld8grxpolarity(gnd),
	.pld8gtxdeemph(gnd),
	.pld8gtxdetectrxloopback(gnd),
	.pld8gtxelecidle(gnd),
	.pld8gtxswing(gnd),
	.pldaggrefclkdig(gnd),
	.pldhclkin(pldhclkin),
	.pldltr(pldltr),
	.pldpartialreconfigin(vcc),
	.pldpcspmaifrefclkdig(gnd),
	.pldrate(gnd),
	.pldscanmoden(vcc),
	.pldscanshiftn(vcc),
	.pmaclklow(pmaclklow),
	.pmafref(pmafref),
	.avmmaddress({avmmaddress[10],avmmaddress[9],avmmaddress[8],avmmaddress[7],avmmaddress[6],avmmaddress[5],avmmaddress[4],avmmaddress[3],avmmaddress[2],avmmaddress[1],avmmaddress[0]}),
	.avmmbyteen({avmmbyteen[1],avmmbyteen[0]}),
	.avmmwritedata({avmmwritedata[15],avmmwritedata[14],avmmwritedata[13],avmmwritedata[12],avmmwritedata[11],avmmwritedata[10],avmmwritedata[9],avmmwritedata[8],avmmwritedata[7],avmmwritedata[6],avmmwritedata[5],avmmwritedata[4],avmmwritedata[3],avmmwritedata[2],avmmwritedata[1],avmmwritedata[0]}),
	.emsipcomin(38'b00000000000000000000000000000000000000),
	.pcs8gchnltestbusout({pcs8gchnltestbusout[19],pcs8gchnltestbusout[18],pcs8gchnltestbusout[17],pcs8gchnltestbusout[16],pcs8gchnltestbusout[15],pcs8gchnltestbusout[14],pcs8gchnltestbusout[13],pcs8gchnltestbusout[12],pcs8gchnltestbusout[11],pcs8gchnltestbusout[10],pcs8gchnltestbusout[9],pcs8gchnltestbusout[8],pcs8gchnltestbusout[7],
pcs8gchnltestbusout[6],pcs8gchnltestbusout[5],pcs8gchnltestbusout[4],pcs8gchnltestbusout[3],pcs8gchnltestbusout[2],pcs8gchnltestbusout[1],pcs8gchnltestbusout[0]}),
	.pcs8gpldextraout(3'b000),
	.pcs8grxstatus({pcs8grxstatus[2],pcs8grxstatus[1],pcs8grxstatus[0]}),
	.pcs8gtestso(6'b000000),
	.pcspmaiftestbusout({pcspmaiftestbusout[9],pcspmaiftestbusout[8],pcspmaiftestbusout[7],pcspmaiftestbusout[6],pcspmaiftestbusout[5],pcspmaiftestbusout[4],pcspmaiftestbusout[3],pcspmaiftestbusout[2],pcspmaiftestbusout[1],pcspmaiftestbusout[0]}),
	.pld8gpowerdown({gnd,gnd}),
	.pld8gtxmargin({gnd,gnd,gnd}),
	.pldeidleinfersel({gnd,gnd,gnd}),
	.pldreservedin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.blockselect(blockselect),
	.emsipenablediocsrrdydly(emsipenablediocsrrdydly),
	.pcs8ghardreset(pcs8ghardreset),
	.pcs8gltr(pcs8gltr),
	.pcs8gprbsciden(pcs8gprbsciden),
	.pcs8grate(pcs8grate),
	.pcs8grefclkdig(pcs8grefclkdig),
	.pcs8grefclkdig2(pcs8grefclkdig2),
	.pcs8grxpolarity(pcs8grxpolarity),
	.pcs8gscanmoden(pcs8gscanmoden),
	.pcs8gscanshift(),
	.pcs8gtxdeemph(pcs8gtxdeemph),
	.pcs8gtxdetectrxloopback(pcs8gtxdetectrxloopback),
	.pcs8gtxelecidle(pcs8gtxelecidle),
	.pcs8gtxswing(pcs8gtxswing),
	.pcsaggrefclkdig(pcsaggrefclkdig),
	.pcsaggscanmoden(pcsaggscanmoden),
	.pcsaggscanshift(pcsaggscanshift),
	.pcsaggtestsi(pcsaggtestsi),
	.pcspcspmaifrefclkdig(pcspcspmaifrefclkdig),
	.pcspcspmaifscanmoden(pcspcspmaifscanmoden),
	.pcspcspmaifscanshiftn(pcspcspmaifscanshiftn),
	.pcspmaifhardreset(pcspmaifhardreset),
	.pcspmaiftestsi(),
	.pld8gphystatus(),
	.pld8grxelecidle(),
	.pld8grxvalid(),
	.pldclklow(),
	.pldfref(),
	.pldnfrzdrv(pldnfrzdrv),
	.pldpartialreconfigout(pldpartialreconfigout),
	.rstsel(rstsel),
	.usrrstsel(usrrstsel),
	.avmmreaddata(wys_AVMMREADDATA_bus),
	.emsipcomclkout(wys_EMSIPCOMCLKOUT_bus),
	.emsipcomout(),
	.pcs8geidleinfersel(wys_PCS8GEIDLEINFERSEL_bus),
	.pcs8gpldextrain(),
	.pcs8gpowerdown(wys_PCS8GPOWERDOWN_bus),
	.pcs8gtestsi(),
	.pcs8gtxmargin(wys_PCS8GTXMARGIN_bus),
	.pld8grxstatus(),
	.pldreservedout(),
	.pldtestdata());
defparam wys.avmm_group_channel_index = 0;
defparam wys.hip_enable = "hip_disable";
defparam wys.hrdrstctrl_en_cfg = "hrst_dis_cfg";
defparam wys.hrdrstctrl_en_cfgusr = "hrst_dis_cfgusr";
defparam wys.pld_side_data_source = "pld";
defparam wys.pld_side_reserved_source0 = "pld_res0";
defparam wys.pld_side_reserved_source1 = "pld_res1";
defparam wys.pld_side_reserved_source10 = "pld_res10";
defparam wys.pld_side_reserved_source11 = "pld_res11";
defparam wys.pld_side_reserved_source2 = "pld_res2";
defparam wys.pld_side_reserved_source3 = "pld_res3";
defparam wys.pld_side_reserved_source4 = "pld_res4";
defparam wys.pld_side_reserved_source5 = "pld_res5";
defparam wys.pld_side_reserved_source6 = "pld_res6";
defparam wys.pld_side_reserved_source7 = "pld_res7";
defparam wys.pld_side_reserved_source8 = "pld_res8";
defparam wys.pld_side_reserved_source9 = "pld_res9";
defparam wys.testbus_sel = "eight_g_pcs";
defparam wys.use_default_base_address = "true";
defparam wys.user_base_address = 0;
defparam wys.usrmode_sel4rst = "usermode";

endmodule

module NATIVE_TRANSCEIVER_IP_av_hssi_rx_pcs_pma_interface_rbc (
	pldrxclkslip,
	pldrxpmarstb,
	clockinfrompma,
	datainfrompma,
	pmarxpllphaselockin,
	avmmwrite,
	avmmread,
	avmmclk,
	avmmrstn,
	avmmwritedata,
	avmmaddress,
	avmmbyteen,
	pcs8grxclkiqout,
	pcs8grxclkslip,
	blockselect,
	clockoutto8gpcs,
	pcs8gsigdetni,
	pmarxclkslip,
	pmarxpllphaselockout,
	pmarxpmarstb,
	avmmreaddata,
	dataoutto8gpcs,
	pmasigdet)/* synthesis synthesis_greybox=0 */;
input 	pldrxclkslip;
input 	pldrxpmarstb;
input 	clockinfrompma;
input 	[79:0] datainfrompma;
input 	pmarxpllphaselockin;
input 	avmmwrite;
input 	avmmread;
input 	avmmclk;
input 	avmmrstn;
input 	[15:0] avmmwritedata;
input 	[10:0] avmmaddress;
input 	[1:0] avmmbyteen;
input 	pcs8grxclkiqout;
input 	pcs8grxclkslip;
output 	blockselect;
output 	clockoutto8gpcs;
output 	pcs8gsigdetni;
output 	pmarxclkslip;
output 	pmarxpllphaselockout;
output 	pmarxpmarstb;
output 	[15:0] avmmreaddata;
output 	[19:0] dataoutto8gpcs;
input 	pmasigdet;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [15:0] wys_AVMMREADDATA_bus;
wire [19:0] wys_DATAOUTTO8GPCS_bus;

assign avmmreaddata[0] = wys_AVMMREADDATA_bus[0];
assign avmmreaddata[1] = wys_AVMMREADDATA_bus[1];
assign avmmreaddata[2] = wys_AVMMREADDATA_bus[2];
assign avmmreaddata[3] = wys_AVMMREADDATA_bus[3];
assign avmmreaddata[4] = wys_AVMMREADDATA_bus[4];
assign avmmreaddata[5] = wys_AVMMREADDATA_bus[5];
assign avmmreaddata[6] = wys_AVMMREADDATA_bus[6];
assign avmmreaddata[7] = wys_AVMMREADDATA_bus[7];
assign avmmreaddata[8] = wys_AVMMREADDATA_bus[8];
assign avmmreaddata[9] = wys_AVMMREADDATA_bus[9];
assign avmmreaddata[10] = wys_AVMMREADDATA_bus[10];
assign avmmreaddata[11] = wys_AVMMREADDATA_bus[11];
assign avmmreaddata[12] = wys_AVMMREADDATA_bus[12];
assign avmmreaddata[13] = wys_AVMMREADDATA_bus[13];
assign avmmreaddata[14] = wys_AVMMREADDATA_bus[14];
assign avmmreaddata[15] = wys_AVMMREADDATA_bus[15];

assign dataoutto8gpcs[0] = wys_DATAOUTTO8GPCS_bus[0];
assign dataoutto8gpcs[1] = wys_DATAOUTTO8GPCS_bus[1];
assign dataoutto8gpcs[2] = wys_DATAOUTTO8GPCS_bus[2];
assign dataoutto8gpcs[3] = wys_DATAOUTTO8GPCS_bus[3];
assign dataoutto8gpcs[4] = wys_DATAOUTTO8GPCS_bus[4];
assign dataoutto8gpcs[5] = wys_DATAOUTTO8GPCS_bus[5];
assign dataoutto8gpcs[6] = wys_DATAOUTTO8GPCS_bus[6];
assign dataoutto8gpcs[7] = wys_DATAOUTTO8GPCS_bus[7];
assign dataoutto8gpcs[8] = wys_DATAOUTTO8GPCS_bus[8];
assign dataoutto8gpcs[9] = wys_DATAOUTTO8GPCS_bus[9];
assign dataoutto8gpcs[10] = wys_DATAOUTTO8GPCS_bus[10];
assign dataoutto8gpcs[11] = wys_DATAOUTTO8GPCS_bus[11];
assign dataoutto8gpcs[12] = wys_DATAOUTTO8GPCS_bus[12];
assign dataoutto8gpcs[13] = wys_DATAOUTTO8GPCS_bus[13];
assign dataoutto8gpcs[14] = wys_DATAOUTTO8GPCS_bus[14];
assign dataoutto8gpcs[15] = wys_DATAOUTTO8GPCS_bus[15];
assign dataoutto8gpcs[16] = wys_DATAOUTTO8GPCS_bus[16];
assign dataoutto8gpcs[17] = wys_DATAOUTTO8GPCS_bus[17];
assign dataoutto8gpcs[18] = wys_DATAOUTTO8GPCS_bus[18];
assign dataoutto8gpcs[19] = wys_DATAOUTTO8GPCS_bus[19];

cyclonev_hssi_rx_pcs_pma_interface wys(
	.avmmclk(avmmclk),
	.avmmread(avmmread),
	.avmmrstn(avmmrstn),
	.avmmwrite(avmmwrite),
	.clockinfrompma(clockinfrompma),
	.pcs8grxclkiqout(pcs8grxclkiqout),
	.pcs8grxclkslip(pcs8grxclkslip),
	.pldrxclkslip(pldrxclkslip),
	.pldrxpmarstb(pldrxpmarstb),
	.pmarxpllphaselockin(pmarxpllphaselockin),
	.pmasigdet(pmasigdet),
	.avmmaddress({avmmaddress[10],avmmaddress[9],avmmaddress[8],avmmaddress[7],avmmaddress[6],avmmaddress[5],avmmaddress[4],avmmaddress[3],avmmaddress[2],avmmaddress[1],avmmaddress[0]}),
	.avmmbyteen({avmmbyteen[1],avmmbyteen[0]}),
	.avmmwritedata({avmmwritedata[15],avmmwritedata[14],avmmwritedata[13],avmmwritedata[12],avmmwritedata[11],avmmwritedata[10],avmmwritedata[9],avmmwritedata[8],avmmwritedata[7],avmmwritedata[6],avmmwritedata[5],avmmwritedata[4],avmmwritedata[3],avmmwritedata[2],avmmwritedata[1],avmmwritedata[0]}),
	.datainfrompma({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,datainfrompma[19],datainfrompma[18],datainfrompma[17],datainfrompma[16],datainfrompma[15],
datainfrompma[14],datainfrompma[13],datainfrompma[12],datainfrompma[11],datainfrompma[10],datainfrompma[9],datainfrompma[8],datainfrompma[7],datainfrompma[6],datainfrompma[5],datainfrompma[4],datainfrompma[3],datainfrompma[2],datainfrompma[1],datainfrompma[0]}),
	.pmareservedin(5'b00000),
	.blockselect(blockselect),
	.clockoutto8gpcs(clockoutto8gpcs),
	.pcs8gsigdetni(pcs8gsigdetni),
	.pmarxclkout(),
	.pmarxclkslip(pmarxclkslip),
	.pmarxpllphaselockout(pmarxpllphaselockout),
	.pmarxpmarstb(pmarxpmarstb),
	.avmmreaddata(wys_AVMMREADDATA_bus),
	.dataoutto8gpcs(wys_DATAOUTTO8GPCS_bus),
	.pmareservedout());
defparam wys.avmm_group_channel_index = 0;
defparam wys.clkslip_sel = "pld";
defparam wys.prot_mode = "other_protocols";
defparam wys.selectpcs = "eight_g_pcs";
defparam wys.use_default_base_address = "true";
defparam wys.user_base_address = 0;

endmodule

module NATIVE_TRANSCEIVER_IP_av_hssi_rx_pld_pcs_interface_rbc (
	blockselect,
	pcs8ga1a2size,
	pcs8gbitlocreven,
	pcs8gbitslip,
	pcs8gbytereven,
	pcs8gbytordpld,
	pcs8gcmpfifourst,
	pcs8gencdt,
	pcs8gphfifourstrx,
	pcs8gpldrxclk,
	pcs8gpolinvrx,
	pcs8grdenablerx,
	pcs8grxurstpcs,
	pcs8gsyncsmenoutput,
	pcs8gwrdisablerx,
	pld8gemptyrx,
	pld8gfullrx,
	pld8grxclkout,
	pldrxclkslipout,
	pldrxpmarstbout,
	avmmreaddata,
	dataouttopld,
	avmmwrite,
	avmmread,
	avmmclk,
	avmmrstn,
	avmmwritedata,
	avmmaddress,
	avmmbyteen,
	pcs8galignstatus,
	pcs8gbistdone,
	pcs8gbisterr,
	pcs8gbyteordflag,
	clockinfrom8gpcs,
	pcs8gemptyrx,
	pcs8gfullrx,
	pcs8grlvlt,
	pcs8gemptyrmf,
	pcs8gfullrmf,
	pcs8gsignaldetectout,
	pcs8ga1a2k1k2flag,
	datainfrom8gpcs,
	pcs8grxdatavalid,
	pcs8gwaboundary,
	emsipenablediocsrrdydly,
	rstsel,
	usrrstsel,
	pmarxplllock,
	pld8grxurstpcsn,
	pldrxpmarstbin,
	pld8gpldrxclk)/* synthesis synthesis_greybox=0 */;
output 	blockselect;
output 	pcs8ga1a2size;
output 	pcs8gbitlocreven;
output 	pcs8gbitslip;
output 	pcs8gbytereven;
output 	pcs8gbytordpld;
output 	pcs8gcmpfifourst;
output 	pcs8gencdt;
output 	pcs8gphfifourstrx;
output 	pcs8gpldrxclk;
output 	pcs8gpolinvrx;
output 	pcs8grdenablerx;
output 	pcs8grxurstpcs;
output 	pcs8gsyncsmenoutput;
output 	pcs8gwrdisablerx;
output 	pld8gemptyrx;
output 	pld8gfullrx;
output 	pld8grxclkout;
output 	pldrxclkslipout;
output 	pldrxpmarstbout;
output 	[15:0] avmmreaddata;
output 	[63:0] dataouttopld;
input 	avmmwrite;
input 	avmmread;
input 	avmmclk;
input 	avmmrstn;
input 	[15:0] avmmwritedata;
input 	[10:0] avmmaddress;
input 	[1:0] avmmbyteen;
input 	pcs8galignstatus;
input 	pcs8gbistdone;
input 	pcs8gbisterr;
input 	pcs8gbyteordflag;
input 	clockinfrom8gpcs;
input 	pcs8gemptyrx;
input 	pcs8gfullrx;
input 	pcs8grlvlt;
input 	pcs8gemptyrmf;
input 	pcs8gfullrmf;
input 	pcs8gsignaldetectout;
input 	[3:0] pcs8ga1a2k1k2flag;
input 	[63:0] datainfrom8gpcs;
input 	[3:0] pcs8grxdatavalid;
input 	[4:0] pcs8gwaboundary;
input 	emsipenablediocsrrdydly;
input 	rstsel;
input 	usrrstsel;
input 	pmarxplllock;
input 	pld8grxurstpcsn;
input 	pldrxpmarstbin;
input 	pld8gpldrxclk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \emsiprxout[0] ;
wire \emsiprxout[1] ;
wire \emsiprxout[2] ;
wire \emsiprxout[3] ;
wire \emsiprxout[4] ;
wire \emsiprxout[5] ;
wire \emsiprxout[6] ;
wire \emsiprxout[7] ;
wire \emsiprxout[8] ;
wire \emsiprxout[9] ;
wire \emsiprxout[10] ;
wire \emsiprxout[11] ;
wire \emsiprxout[12] ;
wire \emsiprxout[13] ;
wire \emsiprxout[14] ;
wire \emsiprxout[15] ;
wire \emsiprxout[16] ;
wire \emsiprxout[17] ;
wire \emsiprxout[18] ;
wire \emsiprxout[19] ;
wire \emsiprxout[20] ;
wire \emsiprxout[21] ;
wire \emsiprxout[22] ;
wire \emsiprxout[23] ;
wire \emsiprxout[24] ;
wire \emsiprxout[25] ;
wire \emsiprxout[26] ;
wire \emsiprxout[27] ;
wire \emsiprxout[28] ;
wire \emsiprxout[29] ;
wire \emsiprxout[30] ;
wire \emsiprxout[31] ;
wire \emsiprxout[32] ;
wire \emsiprxout[33] ;
wire \emsiprxout[34] ;
wire \emsiprxout[35] ;
wire \emsiprxout[36] ;
wire \emsiprxout[37] ;
wire \emsiprxout[38] ;
wire \emsiprxout[39] ;
wire \emsiprxout[40] ;
wire \emsiprxout[41] ;
wire \emsiprxout[42] ;
wire \emsiprxout[43] ;
wire \emsiprxout[44] ;
wire \emsiprxout[45] ;
wire \emsiprxout[46] ;
wire \emsiprxout[47] ;
wire \emsiprxout[48] ;
wire \emsiprxout[49] ;
wire \emsiprxout[50] ;
wire \emsiprxout[51] ;
wire \emsiprxout[52] ;
wire \emsiprxout[53] ;
wire \emsiprxout[54] ;
wire \emsiprxout[55] ;
wire \emsiprxout[56] ;
wire \emsiprxout[57] ;
wire \emsiprxout[58] ;
wire \emsiprxout[59] ;
wire \emsiprxout[60] ;
wire \emsiprxout[61] ;
wire \emsiprxout[62] ;
wire \emsiprxout[63] ;
wire \emsiprxout[64] ;
wire \emsiprxout[65] ;
wire \emsiprxout[66] ;
wire \emsiprxout[67] ;
wire \emsiprxout[68] ;
wire \emsiprxout[69] ;
wire \emsiprxout[70] ;
wire \emsiprxout[71] ;
wire \emsiprxout[72] ;
wire \emsiprxout[73] ;
wire \emsiprxout[74] ;
wire \emsiprxout[75] ;
wire \emsiprxout[76] ;
wire \emsiprxout[77] ;
wire \emsiprxout[78] ;
wire \emsiprxout[79] ;
wire \emsiprxout[80] ;
wire \emsiprxout[81] ;
wire \emsiprxout[82] ;
wire \emsiprxout[83] ;
wire \emsiprxout[84] ;
wire \emsiprxout[85] ;
wire \emsiprxout[86] ;
wire \emsiprxout[87] ;
wire \emsiprxout[88] ;
wire \emsiprxout[89] ;
wire \emsiprxout[90] ;
wire \emsiprxout[91] ;
wire \emsiprxout[92] ;
wire \emsiprxout[93] ;
wire \emsiprxout[94] ;
wire \emsiprxout[95] ;
wire \emsiprxout[96] ;
wire \emsiprxout[97] ;
wire \emsiprxout[98] ;
wire \emsiprxout[99] ;
wire \emsiprxout[100] ;
wire \emsiprxout[101] ;
wire \emsiprxout[102] ;
wire \emsiprxout[103] ;
wire \emsiprxout[104] ;
wire \emsiprxout[105] ;
wire \emsiprxout[106] ;
wire \emsiprxout[107] ;
wire \emsiprxout[108] ;
wire \emsiprxout[109] ;
wire \emsiprxout[110] ;
wire \emsiprxout[111] ;
wire \emsiprxout[112] ;
wire \emsiprxout[113] ;
wire \emsiprxout[114] ;
wire \emsiprxout[115] ;
wire \emsiprxout[116] ;
wire \emsiprxout[117] ;
wire \emsiprxout[118] ;
wire \emsiprxout[119] ;
wire \emsiprxout[120] ;
wire \emsiprxout[121] ;
wire \emsiprxout[122] ;
wire \emsiprxout[123] ;
wire \emsiprxout[124] ;
wire \emsiprxout[125] ;
wire \emsiprxout[126] ;
wire \emsiprxout[127] ;
wire \emsiprxout[128] ;

wire [15:0] wys_AVMMREADDATA_bus;
wire [63:0] wys_DATAOUTTOPLD_bus;
wire [128:0] wys_EMSIPRXOUT_bus;

assign avmmreaddata[0] = wys_AVMMREADDATA_bus[0];
assign avmmreaddata[1] = wys_AVMMREADDATA_bus[1];
assign avmmreaddata[2] = wys_AVMMREADDATA_bus[2];
assign avmmreaddata[3] = wys_AVMMREADDATA_bus[3];
assign avmmreaddata[4] = wys_AVMMREADDATA_bus[4];
assign avmmreaddata[5] = wys_AVMMREADDATA_bus[5];
assign avmmreaddata[6] = wys_AVMMREADDATA_bus[6];
assign avmmreaddata[7] = wys_AVMMREADDATA_bus[7];
assign avmmreaddata[8] = wys_AVMMREADDATA_bus[8];
assign avmmreaddata[9] = wys_AVMMREADDATA_bus[9];
assign avmmreaddata[10] = wys_AVMMREADDATA_bus[10];
assign avmmreaddata[11] = wys_AVMMREADDATA_bus[11];
assign avmmreaddata[12] = wys_AVMMREADDATA_bus[12];
assign avmmreaddata[13] = wys_AVMMREADDATA_bus[13];
assign avmmreaddata[14] = wys_AVMMREADDATA_bus[14];
assign avmmreaddata[15] = wys_AVMMREADDATA_bus[15];

assign dataouttopld[0] = wys_DATAOUTTOPLD_bus[0];
assign dataouttopld[1] = wys_DATAOUTTOPLD_bus[1];
assign dataouttopld[2] = wys_DATAOUTTOPLD_bus[2];
assign dataouttopld[3] = wys_DATAOUTTOPLD_bus[3];
assign dataouttopld[4] = wys_DATAOUTTOPLD_bus[4];
assign dataouttopld[5] = wys_DATAOUTTOPLD_bus[5];
assign dataouttopld[6] = wys_DATAOUTTOPLD_bus[6];
assign dataouttopld[7] = wys_DATAOUTTOPLD_bus[7];
assign dataouttopld[8] = wys_DATAOUTTOPLD_bus[8];
assign dataouttopld[9] = wys_DATAOUTTOPLD_bus[9];
assign dataouttopld[10] = wys_DATAOUTTOPLD_bus[10];
assign dataouttopld[11] = wys_DATAOUTTOPLD_bus[11];
assign dataouttopld[12] = wys_DATAOUTTOPLD_bus[12];
assign dataouttopld[13] = wys_DATAOUTTOPLD_bus[13];
assign dataouttopld[14] = wys_DATAOUTTOPLD_bus[14];
assign dataouttopld[15] = wys_DATAOUTTOPLD_bus[15];
assign dataouttopld[16] = wys_DATAOUTTOPLD_bus[16];
assign dataouttopld[17] = wys_DATAOUTTOPLD_bus[17];
assign dataouttopld[18] = wys_DATAOUTTOPLD_bus[18];
assign dataouttopld[19] = wys_DATAOUTTOPLD_bus[19];
assign dataouttopld[20] = wys_DATAOUTTOPLD_bus[20];
assign dataouttopld[21] = wys_DATAOUTTOPLD_bus[21];
assign dataouttopld[22] = wys_DATAOUTTOPLD_bus[22];
assign dataouttopld[23] = wys_DATAOUTTOPLD_bus[23];
assign dataouttopld[24] = wys_DATAOUTTOPLD_bus[24];
assign dataouttopld[25] = wys_DATAOUTTOPLD_bus[25];
assign dataouttopld[26] = wys_DATAOUTTOPLD_bus[26];
assign dataouttopld[27] = wys_DATAOUTTOPLD_bus[27];
assign dataouttopld[28] = wys_DATAOUTTOPLD_bus[28];
assign dataouttopld[29] = wys_DATAOUTTOPLD_bus[29];
assign dataouttopld[30] = wys_DATAOUTTOPLD_bus[30];
assign dataouttopld[31] = wys_DATAOUTTOPLD_bus[31];
assign dataouttopld[32] = wys_DATAOUTTOPLD_bus[32];
assign dataouttopld[33] = wys_DATAOUTTOPLD_bus[33];
assign dataouttopld[34] = wys_DATAOUTTOPLD_bus[34];
assign dataouttopld[35] = wys_DATAOUTTOPLD_bus[35];
assign dataouttopld[36] = wys_DATAOUTTOPLD_bus[36];
assign dataouttopld[37] = wys_DATAOUTTOPLD_bus[37];
assign dataouttopld[38] = wys_DATAOUTTOPLD_bus[38];
assign dataouttopld[39] = wys_DATAOUTTOPLD_bus[39];
assign dataouttopld[40] = wys_DATAOUTTOPLD_bus[40];
assign dataouttopld[41] = wys_DATAOUTTOPLD_bus[41];
assign dataouttopld[42] = wys_DATAOUTTOPLD_bus[42];
assign dataouttopld[43] = wys_DATAOUTTOPLD_bus[43];
assign dataouttopld[44] = wys_DATAOUTTOPLD_bus[44];
assign dataouttopld[45] = wys_DATAOUTTOPLD_bus[45];
assign dataouttopld[46] = wys_DATAOUTTOPLD_bus[46];
assign dataouttopld[47] = wys_DATAOUTTOPLD_bus[47];
assign dataouttopld[48] = wys_DATAOUTTOPLD_bus[48];
assign dataouttopld[49] = wys_DATAOUTTOPLD_bus[49];
assign dataouttopld[50] = wys_DATAOUTTOPLD_bus[50];
assign dataouttopld[51] = wys_DATAOUTTOPLD_bus[51];
assign dataouttopld[52] = wys_DATAOUTTOPLD_bus[52];
assign dataouttopld[53] = wys_DATAOUTTOPLD_bus[53];
assign dataouttopld[54] = wys_DATAOUTTOPLD_bus[54];
assign dataouttopld[55] = wys_DATAOUTTOPLD_bus[55];
assign dataouttopld[56] = wys_DATAOUTTOPLD_bus[56];
assign dataouttopld[57] = wys_DATAOUTTOPLD_bus[57];
assign dataouttopld[58] = wys_DATAOUTTOPLD_bus[58];
assign dataouttopld[59] = wys_DATAOUTTOPLD_bus[59];
assign dataouttopld[60] = wys_DATAOUTTOPLD_bus[60];
assign dataouttopld[61] = wys_DATAOUTTOPLD_bus[61];
assign dataouttopld[62] = wys_DATAOUTTOPLD_bus[62];
assign dataouttopld[63] = wys_DATAOUTTOPLD_bus[63];

assign \emsiprxout[0]  = wys_EMSIPRXOUT_bus[0];
assign \emsiprxout[1]  = wys_EMSIPRXOUT_bus[1];
assign \emsiprxout[2]  = wys_EMSIPRXOUT_bus[2];
assign \emsiprxout[3]  = wys_EMSIPRXOUT_bus[3];
assign \emsiprxout[4]  = wys_EMSIPRXOUT_bus[4];
assign \emsiprxout[5]  = wys_EMSIPRXOUT_bus[5];
assign \emsiprxout[6]  = wys_EMSIPRXOUT_bus[6];
assign \emsiprxout[7]  = wys_EMSIPRXOUT_bus[7];
assign \emsiprxout[8]  = wys_EMSIPRXOUT_bus[8];
assign \emsiprxout[9]  = wys_EMSIPRXOUT_bus[9];
assign \emsiprxout[10]  = wys_EMSIPRXOUT_bus[10];
assign \emsiprxout[11]  = wys_EMSIPRXOUT_bus[11];
assign \emsiprxout[12]  = wys_EMSIPRXOUT_bus[12];
assign \emsiprxout[13]  = wys_EMSIPRXOUT_bus[13];
assign \emsiprxout[14]  = wys_EMSIPRXOUT_bus[14];
assign \emsiprxout[15]  = wys_EMSIPRXOUT_bus[15];
assign \emsiprxout[16]  = wys_EMSIPRXOUT_bus[16];
assign \emsiprxout[17]  = wys_EMSIPRXOUT_bus[17];
assign \emsiprxout[18]  = wys_EMSIPRXOUT_bus[18];
assign \emsiprxout[19]  = wys_EMSIPRXOUT_bus[19];
assign \emsiprxout[20]  = wys_EMSIPRXOUT_bus[20];
assign \emsiprxout[21]  = wys_EMSIPRXOUT_bus[21];
assign \emsiprxout[22]  = wys_EMSIPRXOUT_bus[22];
assign \emsiprxout[23]  = wys_EMSIPRXOUT_bus[23];
assign \emsiprxout[24]  = wys_EMSIPRXOUT_bus[24];
assign \emsiprxout[25]  = wys_EMSIPRXOUT_bus[25];
assign \emsiprxout[26]  = wys_EMSIPRXOUT_bus[26];
assign \emsiprxout[27]  = wys_EMSIPRXOUT_bus[27];
assign \emsiprxout[28]  = wys_EMSIPRXOUT_bus[28];
assign \emsiprxout[29]  = wys_EMSIPRXOUT_bus[29];
assign \emsiprxout[30]  = wys_EMSIPRXOUT_bus[30];
assign \emsiprxout[31]  = wys_EMSIPRXOUT_bus[31];
assign \emsiprxout[32]  = wys_EMSIPRXOUT_bus[32];
assign \emsiprxout[33]  = wys_EMSIPRXOUT_bus[33];
assign \emsiprxout[34]  = wys_EMSIPRXOUT_bus[34];
assign \emsiprxout[35]  = wys_EMSIPRXOUT_bus[35];
assign \emsiprxout[36]  = wys_EMSIPRXOUT_bus[36];
assign \emsiprxout[37]  = wys_EMSIPRXOUT_bus[37];
assign \emsiprxout[38]  = wys_EMSIPRXOUT_bus[38];
assign \emsiprxout[39]  = wys_EMSIPRXOUT_bus[39];
assign \emsiprxout[40]  = wys_EMSIPRXOUT_bus[40];
assign \emsiprxout[41]  = wys_EMSIPRXOUT_bus[41];
assign \emsiprxout[42]  = wys_EMSIPRXOUT_bus[42];
assign \emsiprxout[43]  = wys_EMSIPRXOUT_bus[43];
assign \emsiprxout[44]  = wys_EMSIPRXOUT_bus[44];
assign \emsiprxout[45]  = wys_EMSIPRXOUT_bus[45];
assign \emsiprxout[46]  = wys_EMSIPRXOUT_bus[46];
assign \emsiprxout[47]  = wys_EMSIPRXOUT_bus[47];
assign \emsiprxout[48]  = wys_EMSIPRXOUT_bus[48];
assign \emsiprxout[49]  = wys_EMSIPRXOUT_bus[49];
assign \emsiprxout[50]  = wys_EMSIPRXOUT_bus[50];
assign \emsiprxout[51]  = wys_EMSIPRXOUT_bus[51];
assign \emsiprxout[52]  = wys_EMSIPRXOUT_bus[52];
assign \emsiprxout[53]  = wys_EMSIPRXOUT_bus[53];
assign \emsiprxout[54]  = wys_EMSIPRXOUT_bus[54];
assign \emsiprxout[55]  = wys_EMSIPRXOUT_bus[55];
assign \emsiprxout[56]  = wys_EMSIPRXOUT_bus[56];
assign \emsiprxout[57]  = wys_EMSIPRXOUT_bus[57];
assign \emsiprxout[58]  = wys_EMSIPRXOUT_bus[58];
assign \emsiprxout[59]  = wys_EMSIPRXOUT_bus[59];
assign \emsiprxout[60]  = wys_EMSIPRXOUT_bus[60];
assign \emsiprxout[61]  = wys_EMSIPRXOUT_bus[61];
assign \emsiprxout[62]  = wys_EMSIPRXOUT_bus[62];
assign \emsiprxout[63]  = wys_EMSIPRXOUT_bus[63];
assign \emsiprxout[64]  = wys_EMSIPRXOUT_bus[64];
assign \emsiprxout[65]  = wys_EMSIPRXOUT_bus[65];
assign \emsiprxout[66]  = wys_EMSIPRXOUT_bus[66];
assign \emsiprxout[67]  = wys_EMSIPRXOUT_bus[67];
assign \emsiprxout[68]  = wys_EMSIPRXOUT_bus[68];
assign \emsiprxout[69]  = wys_EMSIPRXOUT_bus[69];
assign \emsiprxout[70]  = wys_EMSIPRXOUT_bus[70];
assign \emsiprxout[71]  = wys_EMSIPRXOUT_bus[71];
assign \emsiprxout[72]  = wys_EMSIPRXOUT_bus[72];
assign \emsiprxout[73]  = wys_EMSIPRXOUT_bus[73];
assign \emsiprxout[74]  = wys_EMSIPRXOUT_bus[74];
assign \emsiprxout[75]  = wys_EMSIPRXOUT_bus[75];
assign \emsiprxout[76]  = wys_EMSIPRXOUT_bus[76];
assign \emsiprxout[77]  = wys_EMSIPRXOUT_bus[77];
assign \emsiprxout[78]  = wys_EMSIPRXOUT_bus[78];
assign \emsiprxout[79]  = wys_EMSIPRXOUT_bus[79];
assign \emsiprxout[80]  = wys_EMSIPRXOUT_bus[80];
assign \emsiprxout[81]  = wys_EMSIPRXOUT_bus[81];
assign \emsiprxout[82]  = wys_EMSIPRXOUT_bus[82];
assign \emsiprxout[83]  = wys_EMSIPRXOUT_bus[83];
assign \emsiprxout[84]  = wys_EMSIPRXOUT_bus[84];
assign \emsiprxout[85]  = wys_EMSIPRXOUT_bus[85];
assign \emsiprxout[86]  = wys_EMSIPRXOUT_bus[86];
assign \emsiprxout[87]  = wys_EMSIPRXOUT_bus[87];
assign \emsiprxout[88]  = wys_EMSIPRXOUT_bus[88];
assign \emsiprxout[89]  = wys_EMSIPRXOUT_bus[89];
assign \emsiprxout[90]  = wys_EMSIPRXOUT_bus[90];
assign \emsiprxout[91]  = wys_EMSIPRXOUT_bus[91];
assign \emsiprxout[92]  = wys_EMSIPRXOUT_bus[92];
assign \emsiprxout[93]  = wys_EMSIPRXOUT_bus[93];
assign \emsiprxout[94]  = wys_EMSIPRXOUT_bus[94];
assign \emsiprxout[95]  = wys_EMSIPRXOUT_bus[95];
assign \emsiprxout[96]  = wys_EMSIPRXOUT_bus[96];
assign \emsiprxout[97]  = wys_EMSIPRXOUT_bus[97];
assign \emsiprxout[98]  = wys_EMSIPRXOUT_bus[98];
assign \emsiprxout[99]  = wys_EMSIPRXOUT_bus[99];
assign \emsiprxout[100]  = wys_EMSIPRXOUT_bus[100];
assign \emsiprxout[101]  = wys_EMSIPRXOUT_bus[101];
assign \emsiprxout[102]  = wys_EMSIPRXOUT_bus[102];
assign \emsiprxout[103]  = wys_EMSIPRXOUT_bus[103];
assign \emsiprxout[104]  = wys_EMSIPRXOUT_bus[104];
assign \emsiprxout[105]  = wys_EMSIPRXOUT_bus[105];
assign \emsiprxout[106]  = wys_EMSIPRXOUT_bus[106];
assign \emsiprxout[107]  = wys_EMSIPRXOUT_bus[107];
assign \emsiprxout[108]  = wys_EMSIPRXOUT_bus[108];
assign \emsiprxout[109]  = wys_EMSIPRXOUT_bus[109];
assign \emsiprxout[110]  = wys_EMSIPRXOUT_bus[110];
assign \emsiprxout[111]  = wys_EMSIPRXOUT_bus[111];
assign \emsiprxout[112]  = wys_EMSIPRXOUT_bus[112];
assign \emsiprxout[113]  = wys_EMSIPRXOUT_bus[113];
assign \emsiprxout[114]  = wys_EMSIPRXOUT_bus[114];
assign \emsiprxout[115]  = wys_EMSIPRXOUT_bus[115];
assign \emsiprxout[116]  = wys_EMSIPRXOUT_bus[116];
assign \emsiprxout[117]  = wys_EMSIPRXOUT_bus[117];
assign \emsiprxout[118]  = wys_EMSIPRXOUT_bus[118];
assign \emsiprxout[119]  = wys_EMSIPRXOUT_bus[119];
assign \emsiprxout[120]  = wys_EMSIPRXOUT_bus[120];
assign \emsiprxout[121]  = wys_EMSIPRXOUT_bus[121];
assign \emsiprxout[122]  = wys_EMSIPRXOUT_bus[122];
assign \emsiprxout[123]  = wys_EMSIPRXOUT_bus[123];
assign \emsiprxout[124]  = wys_EMSIPRXOUT_bus[124];
assign \emsiprxout[125]  = wys_EMSIPRXOUT_bus[125];
assign \emsiprxout[126]  = wys_EMSIPRXOUT_bus[126];
assign \emsiprxout[127]  = wys_EMSIPRXOUT_bus[127];
assign \emsiprxout[128]  = wys_EMSIPRXOUT_bus[128];

cyclonev_hssi_rx_pld_pcs_interface wys(
	.avmmclk(avmmclk),
	.avmmread(avmmread),
	.avmmrstn(avmmrstn),
	.avmmwrite(avmmwrite),
	.clockinfrom8gpcs(clockinfrom8gpcs),
	.emsipenablediocsrrdydly(emsipenablediocsrrdydly),
	.pcs8galignstatus(pcs8galignstatus),
	.pcs8gbistdone(pcs8gbistdone),
	.pcs8gbisterr(pcs8gbisterr),
	.pcs8gbyteordflag(pcs8gbyteordflag),
	.pcs8gemptyrmf(pcs8gemptyrmf),
	.pcs8gemptyrx(pcs8gemptyrx),
	.pcs8gfullrmf(pcs8gfullrmf),
	.pcs8gfullrx(pcs8gfullrx),
	.pcs8grlvlt(pcs8grlvlt),
	.pcs8gsignaldetectout(pcs8gsignaldetectout),
	.pld8ga1a2size(gnd),
	.pld8gbitlocreven(gnd),
	.pld8gbitslip(gnd),
	.pld8gbytereven(gnd),
	.pld8gbytordpld(gnd),
	.pld8gcmpfifourstn(gnd),
	.pld8gencdt(gnd),
	.pld8gphfifourstrxn(gnd),
	.pld8gpldrxclk(pld8gpldrxclk),
	.pld8gpolinvrx(gnd),
	.pld8grdenablermf(gnd),
	.pld8grdenablerx(gnd),
	.pld8grxurstpcsn(pld8grxurstpcsn),
	.pld8gsyncsmeninput(vcc),
	.pld8gwrdisablerx(gnd),
	.pld8gwrenablermf(gnd),
	.pldrxclkslipin(gnd),
	.pldrxpmarstbin(pldrxpmarstbin),
	.pmarxplllock(pmarxplllock),
	.rstsel(rstsel),
	.usrrstsel(usrrstsel),
	.avmmaddress({avmmaddress[10],avmmaddress[9],avmmaddress[8],avmmaddress[7],avmmaddress[6],avmmaddress[5],avmmaddress[4],avmmaddress[3],avmmaddress[2],avmmaddress[1],avmmaddress[0]}),
	.avmmbyteen({avmmbyteen[1],avmmbyteen[0]}),
	.avmmwritedata({avmmwritedata[15],avmmwritedata[14],avmmwritedata[13],avmmwritedata[12],avmmwritedata[11],avmmwritedata[10],avmmwritedata[9],avmmwritedata[8],avmmwritedata[7],avmmwritedata[6],avmmwritedata[5],avmmwritedata[4],avmmwritedata[3],avmmwritedata[2],avmmwritedata[1],avmmwritedata[0]}),
	.datainfrom8gpcs({datainfrom8gpcs[63],datainfrom8gpcs[62],datainfrom8gpcs[61],datainfrom8gpcs[60],datainfrom8gpcs[59],datainfrom8gpcs[58],datainfrom8gpcs[57],datainfrom8gpcs[56],datainfrom8gpcs[55],datainfrom8gpcs[54],datainfrom8gpcs[53],datainfrom8gpcs[52],datainfrom8gpcs[51],datainfrom8gpcs[50],datainfrom8gpcs[49],datainfrom8gpcs[48],datainfrom8gpcs[47],
datainfrom8gpcs[46],datainfrom8gpcs[45],datainfrom8gpcs[44],datainfrom8gpcs[43],datainfrom8gpcs[42],datainfrom8gpcs[41],datainfrom8gpcs[40],datainfrom8gpcs[39],datainfrom8gpcs[38],datainfrom8gpcs[37],datainfrom8gpcs[36],datainfrom8gpcs[35],datainfrom8gpcs[34],datainfrom8gpcs[33],datainfrom8gpcs[32],datainfrom8gpcs[31],datainfrom8gpcs[30],
datainfrom8gpcs[29],datainfrom8gpcs[28],datainfrom8gpcs[27],datainfrom8gpcs[26],datainfrom8gpcs[25],datainfrom8gpcs[24],datainfrom8gpcs[23],datainfrom8gpcs[22],datainfrom8gpcs[21],datainfrom8gpcs[20],datainfrom8gpcs[19],datainfrom8gpcs[18],datainfrom8gpcs[17],datainfrom8gpcs[16],datainfrom8gpcs[15],datainfrom8gpcs[14],datainfrom8gpcs[13],
datainfrom8gpcs[12],datainfrom8gpcs[11],datainfrom8gpcs[10],datainfrom8gpcs[9],datainfrom8gpcs[8],datainfrom8gpcs[7],datainfrom8gpcs[6],datainfrom8gpcs[5],datainfrom8gpcs[4],datainfrom8gpcs[3],datainfrom8gpcs[2],datainfrom8gpcs[1],datainfrom8gpcs[0]}),
	.emsiprxspecialin(13'b0000000000000),
	.pcs8ga1a2k1k2flag({pcs8ga1a2k1k2flag[3],pcs8ga1a2k1k2flag[2],pcs8ga1a2k1k2flag[1],pcs8ga1a2k1k2flag[0]}),
	.pcs8grxdatavalid({pcs8grxdatavalid[3],pcs8grxdatavalid[2],pcs8grxdatavalid[1],pcs8grxdatavalid[0]}),
	.pcs8gwaboundary({pcs8gwaboundary[4],pcs8gwaboundary[3],pcs8gwaboundary[2],pcs8gwaboundary[1],pcs8gwaboundary[0]}),
	.blockselect(blockselect),
	.pcs8ga1a2size(pcs8ga1a2size),
	.pcs8gbitlocreven(pcs8gbitlocreven),
	.pcs8gbitslip(pcs8gbitslip),
	.pcs8gbytereven(pcs8gbytereven),
	.pcs8gbytordpld(pcs8gbytordpld),
	.pcs8gcmpfifourst(pcs8gcmpfifourst),
	.pcs8gencdt(pcs8gencdt),
	.pcs8gphfifourstrx(pcs8gphfifourstrx),
	.pcs8gpldrxclk(pcs8gpldrxclk),
	.pcs8gpolinvrx(pcs8gpolinvrx),
	.pcs8grdenablermf(),
	.pcs8grdenablerx(pcs8grdenablerx),
	.pcs8grxurstpcs(pcs8grxurstpcs),
	.pcs8gsyncsmenoutput(pcs8gsyncsmenoutput),
	.pcs8gwrdisablerx(pcs8gwrdisablerx),
	.pcs8gwrenablermf(),
	.pld8galignstatus(),
	.pld8gbistdone(),
	.pld8gbisterr(),
	.pld8gbyteordflag(),
	.pld8gemptyrmf(),
	.pld8gemptyrx(pld8gemptyrx),
	.pld8gfullrmf(),
	.pld8gfullrx(pld8gfullrx),
	.pld8grlvlt(),
	.pld8grxclkout(pld8grxclkout),
	.pld8gsignaldetectout(),
	.pldrxclkslipout(pldrxclkslipout),
	.pldrxpmarstbout(pldrxpmarstbout),
	.avmmreaddata(wys_AVMMREADDATA_bus),
	.dataouttopld(wys_DATAOUTTOPLD_bus),
	.emsiprxout(wys_EMSIPRXOUT_bus),
	.emsiprxspecialout(),
	.pld8ga1a2k1k2flag(),
	.pld8grxdatavalid(),
	.pld8gwaboundary());
defparam wys.avmm_group_channel_index = 0;
defparam wys.is_8g_0ppm = "false";
defparam wys.pcs_side_block_sel = "eight_g_pcs";
defparam wys.pld_side_data_source = "pld";
defparam wys.use_default_base_address = "true";
defparam wys.user_base_address = 0;

endmodule

module NATIVE_TRANSCEIVER_IP_av_hssi_tx_pcs_pma_interface_rbc (
	avmmwrite,
	avmmread,
	avmmclk,
	avmmrstn,
	avmmwritedata,
	avmmaddress,
	avmmbyteen,
	clockinfrompma,
	pcs8gtxclkiqout,
	datainfrom8gpcs,
	blockselect,
	clockoutto8gpcs,
	pmarxfreqtxcmuplllockout,
	avmmreaddata,
	dataouttopma)/* synthesis synthesis_greybox=0 */;
input 	avmmwrite;
input 	avmmread;
input 	avmmclk;
input 	avmmrstn;
input 	[15:0] avmmwritedata;
input 	[10:0] avmmaddress;
input 	[1:0] avmmbyteen;
input 	clockinfrompma;
input 	pcs8gtxclkiqout;
input 	[19:0] datainfrom8gpcs;
output 	blockselect;
output 	clockoutto8gpcs;
output 	pmarxfreqtxcmuplllockout;
output 	[15:0] avmmreaddata;
output 	[79:0] dataouttopma;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [15:0] wys_AVMMREADDATA_bus;
wire [79:0] wys_DATAOUTTOPMA_bus;

assign avmmreaddata[0] = wys_AVMMREADDATA_bus[0];
assign avmmreaddata[1] = wys_AVMMREADDATA_bus[1];
assign avmmreaddata[2] = wys_AVMMREADDATA_bus[2];
assign avmmreaddata[3] = wys_AVMMREADDATA_bus[3];
assign avmmreaddata[4] = wys_AVMMREADDATA_bus[4];
assign avmmreaddata[5] = wys_AVMMREADDATA_bus[5];
assign avmmreaddata[6] = wys_AVMMREADDATA_bus[6];
assign avmmreaddata[7] = wys_AVMMREADDATA_bus[7];
assign avmmreaddata[8] = wys_AVMMREADDATA_bus[8];
assign avmmreaddata[9] = wys_AVMMREADDATA_bus[9];
assign avmmreaddata[10] = wys_AVMMREADDATA_bus[10];
assign avmmreaddata[11] = wys_AVMMREADDATA_bus[11];
assign avmmreaddata[12] = wys_AVMMREADDATA_bus[12];
assign avmmreaddata[13] = wys_AVMMREADDATA_bus[13];
assign avmmreaddata[14] = wys_AVMMREADDATA_bus[14];
assign avmmreaddata[15] = wys_AVMMREADDATA_bus[15];

assign dataouttopma[0] = wys_DATAOUTTOPMA_bus[0];
assign dataouttopma[1] = wys_DATAOUTTOPMA_bus[1];
assign dataouttopma[2] = wys_DATAOUTTOPMA_bus[2];
assign dataouttopma[3] = wys_DATAOUTTOPMA_bus[3];
assign dataouttopma[4] = wys_DATAOUTTOPMA_bus[4];
assign dataouttopma[5] = wys_DATAOUTTOPMA_bus[5];
assign dataouttopma[6] = wys_DATAOUTTOPMA_bus[6];
assign dataouttopma[7] = wys_DATAOUTTOPMA_bus[7];
assign dataouttopma[8] = wys_DATAOUTTOPMA_bus[8];
assign dataouttopma[9] = wys_DATAOUTTOPMA_bus[9];
assign dataouttopma[10] = wys_DATAOUTTOPMA_bus[10];
assign dataouttopma[11] = wys_DATAOUTTOPMA_bus[11];
assign dataouttopma[12] = wys_DATAOUTTOPMA_bus[12];
assign dataouttopma[13] = wys_DATAOUTTOPMA_bus[13];
assign dataouttopma[14] = wys_DATAOUTTOPMA_bus[14];
assign dataouttopma[15] = wys_DATAOUTTOPMA_bus[15];
assign dataouttopma[16] = wys_DATAOUTTOPMA_bus[16];
assign dataouttopma[17] = wys_DATAOUTTOPMA_bus[17];
assign dataouttopma[18] = wys_DATAOUTTOPMA_bus[18];
assign dataouttopma[19] = wys_DATAOUTTOPMA_bus[19];

cyclonev_hssi_tx_pcs_pma_interface wys(
	.avmmclk(avmmclk),
	.avmmread(avmmread),
	.avmmrstn(avmmrstn),
	.avmmwrite(avmmwrite),
	.clockinfrompma(clockinfrompma),
	.pcs8gtxclkiqout(pcs8gtxclkiqout),
	.pmarxfreqtxcmuplllockin(gnd),
	.avmmaddress({avmmaddress[10],avmmaddress[9],avmmaddress[8],avmmaddress[7],avmmaddress[6],avmmaddress[5],avmmaddress[4],avmmaddress[3],avmmaddress[2],avmmaddress[1],avmmaddress[0]}),
	.avmmbyteen({avmmbyteen[1],avmmbyteen[0]}),
	.avmmwritedata({avmmwritedata[15],avmmwritedata[14],avmmwritedata[13],avmmwritedata[12],avmmwritedata[11],avmmwritedata[10],avmmwritedata[9],avmmwritedata[8],avmmwritedata[7],avmmwritedata[6],avmmwritedata[5],avmmwritedata[4],avmmwritedata[3],avmmwritedata[2],avmmwritedata[1],avmmwritedata[0]}),
	.datainfrom8gpcs({datainfrom8gpcs[19],datainfrom8gpcs[18],datainfrom8gpcs[17],datainfrom8gpcs[16],datainfrom8gpcs[15],datainfrom8gpcs[14],datainfrom8gpcs[13],datainfrom8gpcs[12],datainfrom8gpcs[11],datainfrom8gpcs[10],datainfrom8gpcs[9],datainfrom8gpcs[8],datainfrom8gpcs[7],datainfrom8gpcs[6],datainfrom8gpcs[5],datainfrom8gpcs[4],datainfrom8gpcs[3],
datainfrom8gpcs[2],datainfrom8gpcs[1],datainfrom8gpcs[0]}),
	.blockselect(blockselect),
	.clockoutto8gpcs(clockoutto8gpcs),
	.pmarxfreqtxcmuplllockout(pmarxfreqtxcmuplllockout),
	.pmatxclkout(),
	.avmmreaddata(wys_AVMMREADDATA_bus),
	.dataouttopma(wys_DATAOUTTOPMA_bus));
defparam wys.avmm_group_channel_index = 0;
defparam wys.selectpcs = "eight_g_pcs";
defparam wys.use_default_base_address = "true";
defparam wys.user_base_address = 0;

endmodule

module NATIVE_TRANSCEIVER_IP_av_hssi_tx_pld_pcs_interface_rbc (
	blockselect,
	pcs8gphfifoursttx,
	pcs8gpldtxclk,
	pcs8gpolinvtx,
	pcs8grddisabletx,
	pcs8grevloopbk,
	pcs8gtxurstpcs,
	pcs8gwrenabletx,
	pld8gemptytx,
	pld8gfulltx,
	pld8gtxclkout,
	avmmreaddata,
	dataoutto8gpcs,
	pcs8gtxboundarysel,
	pcs8gtxdatavalid,
	avmmwrite,
	avmmread,
	avmmclk,
	avmmrstn,
	avmmwritedata,
	avmmaddress,
	avmmbyteen,
	emsipenablediocsrrdydly,
	rstsel,
	usrrstsel,
	clockinfrom8gpcs,
	pcs8gfulltx,
	pcs8gemptytx,
	pmatxcmuplllock,
	pld8gtxurstpcsn,
	pld8gpldtxclk,
	datainfrompld)/* synthesis synthesis_greybox=0 */;
output 	blockselect;
output 	pcs8gphfifoursttx;
output 	pcs8gpldtxclk;
output 	pcs8gpolinvtx;
output 	pcs8grddisabletx;
output 	pcs8grevloopbk;
output 	pcs8gtxurstpcs;
output 	pcs8gwrenabletx;
output 	pld8gemptytx;
output 	pld8gfulltx;
output 	pld8gtxclkout;
output 	[15:0] avmmreaddata;
output 	[43:0] dataoutto8gpcs;
output 	[4:0] pcs8gtxboundarysel;
output 	[3:0] pcs8gtxdatavalid;
input 	avmmwrite;
input 	avmmread;
input 	avmmclk;
input 	avmmrstn;
input 	[15:0] avmmwritedata;
input 	[10:0] avmmaddress;
input 	[1:0] avmmbyteen;
input 	emsipenablediocsrrdydly;
input 	rstsel;
input 	usrrstsel;
input 	clockinfrom8gpcs;
input 	pcs8gfulltx;
input 	pcs8gemptytx;
input 	pmatxcmuplllock;
input 	pld8gtxurstpcsn;
input 	pld8gpldtxclk;
input 	[43:0] datainfrompld;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \emsippcstxclkout[0] ;
wire \emsippcstxclkout[1] ;
wire \emsippcstxclkout[2] ;

wire [15:0] wys_AVMMREADDATA_bus;
wire [43:0] wys_DATAOUTTO8GPCS_bus;
wire [2:0] wys_EMSIPPCSTXCLKOUT_bus;
wire [4:0] wys_PCS8GTXBOUNDARYSEL_bus;
wire [3:0] wys_PCS8GTXDATAVALID_bus;

assign avmmreaddata[0] = wys_AVMMREADDATA_bus[0];
assign avmmreaddata[1] = wys_AVMMREADDATA_bus[1];
assign avmmreaddata[2] = wys_AVMMREADDATA_bus[2];
assign avmmreaddata[3] = wys_AVMMREADDATA_bus[3];
assign avmmreaddata[4] = wys_AVMMREADDATA_bus[4];
assign avmmreaddata[5] = wys_AVMMREADDATA_bus[5];
assign avmmreaddata[6] = wys_AVMMREADDATA_bus[6];
assign avmmreaddata[7] = wys_AVMMREADDATA_bus[7];
assign avmmreaddata[8] = wys_AVMMREADDATA_bus[8];
assign avmmreaddata[9] = wys_AVMMREADDATA_bus[9];
assign avmmreaddata[10] = wys_AVMMREADDATA_bus[10];
assign avmmreaddata[11] = wys_AVMMREADDATA_bus[11];
assign avmmreaddata[12] = wys_AVMMREADDATA_bus[12];
assign avmmreaddata[13] = wys_AVMMREADDATA_bus[13];
assign avmmreaddata[14] = wys_AVMMREADDATA_bus[14];
assign avmmreaddata[15] = wys_AVMMREADDATA_bus[15];

assign dataoutto8gpcs[0] = wys_DATAOUTTO8GPCS_bus[0];
assign dataoutto8gpcs[1] = wys_DATAOUTTO8GPCS_bus[1];
assign dataoutto8gpcs[2] = wys_DATAOUTTO8GPCS_bus[2];
assign dataoutto8gpcs[3] = wys_DATAOUTTO8GPCS_bus[3];
assign dataoutto8gpcs[4] = wys_DATAOUTTO8GPCS_bus[4];
assign dataoutto8gpcs[5] = wys_DATAOUTTO8GPCS_bus[5];
assign dataoutto8gpcs[6] = wys_DATAOUTTO8GPCS_bus[6];
assign dataoutto8gpcs[7] = wys_DATAOUTTO8GPCS_bus[7];
assign dataoutto8gpcs[8] = wys_DATAOUTTO8GPCS_bus[8];
assign dataoutto8gpcs[9] = wys_DATAOUTTO8GPCS_bus[9];
assign dataoutto8gpcs[10] = wys_DATAOUTTO8GPCS_bus[10];
assign dataoutto8gpcs[11] = wys_DATAOUTTO8GPCS_bus[11];
assign dataoutto8gpcs[12] = wys_DATAOUTTO8GPCS_bus[12];
assign dataoutto8gpcs[13] = wys_DATAOUTTO8GPCS_bus[13];
assign dataoutto8gpcs[14] = wys_DATAOUTTO8GPCS_bus[14];
assign dataoutto8gpcs[15] = wys_DATAOUTTO8GPCS_bus[15];
assign dataoutto8gpcs[16] = wys_DATAOUTTO8GPCS_bus[16];
assign dataoutto8gpcs[17] = wys_DATAOUTTO8GPCS_bus[17];
assign dataoutto8gpcs[18] = wys_DATAOUTTO8GPCS_bus[18];
assign dataoutto8gpcs[19] = wys_DATAOUTTO8GPCS_bus[19];
assign dataoutto8gpcs[20] = wys_DATAOUTTO8GPCS_bus[20];
assign dataoutto8gpcs[21] = wys_DATAOUTTO8GPCS_bus[21];
assign dataoutto8gpcs[22] = wys_DATAOUTTO8GPCS_bus[22];
assign dataoutto8gpcs[23] = wys_DATAOUTTO8GPCS_bus[23];
assign dataoutto8gpcs[24] = wys_DATAOUTTO8GPCS_bus[24];
assign dataoutto8gpcs[25] = wys_DATAOUTTO8GPCS_bus[25];
assign dataoutto8gpcs[26] = wys_DATAOUTTO8GPCS_bus[26];
assign dataoutto8gpcs[27] = wys_DATAOUTTO8GPCS_bus[27];
assign dataoutto8gpcs[28] = wys_DATAOUTTO8GPCS_bus[28];
assign dataoutto8gpcs[29] = wys_DATAOUTTO8GPCS_bus[29];
assign dataoutto8gpcs[30] = wys_DATAOUTTO8GPCS_bus[30];
assign dataoutto8gpcs[31] = wys_DATAOUTTO8GPCS_bus[31];
assign dataoutto8gpcs[32] = wys_DATAOUTTO8GPCS_bus[32];
assign dataoutto8gpcs[33] = wys_DATAOUTTO8GPCS_bus[33];
assign dataoutto8gpcs[34] = wys_DATAOUTTO8GPCS_bus[34];
assign dataoutto8gpcs[35] = wys_DATAOUTTO8GPCS_bus[35];
assign dataoutto8gpcs[36] = wys_DATAOUTTO8GPCS_bus[36];
assign dataoutto8gpcs[37] = wys_DATAOUTTO8GPCS_bus[37];
assign dataoutto8gpcs[38] = wys_DATAOUTTO8GPCS_bus[38];
assign dataoutto8gpcs[39] = wys_DATAOUTTO8GPCS_bus[39];
assign dataoutto8gpcs[40] = wys_DATAOUTTO8GPCS_bus[40];
assign dataoutto8gpcs[41] = wys_DATAOUTTO8GPCS_bus[41];
assign dataoutto8gpcs[42] = wys_DATAOUTTO8GPCS_bus[42];
assign dataoutto8gpcs[43] = wys_DATAOUTTO8GPCS_bus[43];

assign \emsippcstxclkout[0]  = wys_EMSIPPCSTXCLKOUT_bus[0];
assign \emsippcstxclkout[1]  = wys_EMSIPPCSTXCLKOUT_bus[1];
assign \emsippcstxclkout[2]  = wys_EMSIPPCSTXCLKOUT_bus[2];

assign pcs8gtxboundarysel[0] = wys_PCS8GTXBOUNDARYSEL_bus[0];
assign pcs8gtxboundarysel[1] = wys_PCS8GTXBOUNDARYSEL_bus[1];
assign pcs8gtxboundarysel[2] = wys_PCS8GTXBOUNDARYSEL_bus[2];
assign pcs8gtxboundarysel[3] = wys_PCS8GTXBOUNDARYSEL_bus[3];
assign pcs8gtxboundarysel[4] = wys_PCS8GTXBOUNDARYSEL_bus[4];

assign pcs8gtxdatavalid[0] = wys_PCS8GTXDATAVALID_bus[0];
assign pcs8gtxdatavalid[1] = wys_PCS8GTXDATAVALID_bus[1];
assign pcs8gtxdatavalid[2] = wys_PCS8GTXDATAVALID_bus[2];
assign pcs8gtxdatavalid[3] = wys_PCS8GTXDATAVALID_bus[3];

cyclonev_hssi_tx_pld_pcs_interface wys(
	.avmmclk(avmmclk),
	.avmmread(avmmread),
	.avmmrstn(avmmrstn),
	.avmmwrite(avmmwrite),
	.clockinfrom8gpcs(clockinfrom8gpcs),
	.emsipenablediocsrrdydly(emsipenablediocsrrdydly),
	.pcs8gemptytx(pcs8gemptytx),
	.pcs8gfulltx(pcs8gfulltx),
	.pld8gphfifoursttxn(gnd),
	.pld8gpldtxclk(pld8gpldtxclk),
	.pld8gpolinvtx(gnd),
	.pld8grddisabletx(gnd),
	.pld8grevloopbk(gnd),
	.pld8gtxurstpcsn(pld8gtxurstpcsn),
	.pld8gwrenabletx(gnd),
	.pmatxcmuplllock(pmatxcmuplllock),
	.rstsel(rstsel),
	.usrrstsel(usrrstsel),
	.avmmaddress({avmmaddress[10],avmmaddress[9],avmmaddress[8],avmmaddress[7],avmmaddress[6],avmmaddress[5],avmmaddress[4],avmmaddress[3],avmmaddress[2],avmmaddress[1],avmmaddress[0]}),
	.avmmbyteen({avmmbyteen[1],avmmbyteen[0]}),
	.avmmwritedata({avmmwritedata[15],avmmwritedata[14],avmmwritedata[13],avmmwritedata[12],avmmwritedata[11],avmmwritedata[10],avmmwritedata[9],avmmwritedata[8],avmmwritedata[7],avmmwritedata[6],avmmwritedata[5],avmmwritedata[4],avmmwritedata[3],avmmwritedata[2],avmmwritedata[1],avmmwritedata[0]}),
	.datainfrompld({datainfrompld[43],datainfrompld[42],datainfrompld[41],datainfrompld[40],datainfrompld[39],datainfrompld[38],datainfrompld[37],datainfrompld[36],datainfrompld[35],datainfrompld[34],datainfrompld[33],datainfrompld[32],datainfrompld[31],datainfrompld[30],datainfrompld[29],datainfrompld[28],datainfrompld[27],datainfrompld[26],datainfrompld[25],
datainfrompld[24],datainfrompld[23],datainfrompld[22],datainfrompld[21],datainfrompld[20],datainfrompld[19],datainfrompld[18],datainfrompld[17],datainfrompld[16],datainfrompld[15],datainfrompld[14],datainfrompld[13],datainfrompld[12],datainfrompld[11],datainfrompld[10],datainfrompld[9],datainfrompld[8],datainfrompld[7],datainfrompld[6],
datainfrompld[5],datainfrompld[4],datainfrompld[3],datainfrompld[2],datainfrompld[1],datainfrompld[0]}),
	.emsiptxin(104'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
	.emsiptxspecialin(13'b0000000000000),
	.pld8gtxboundarysel({gnd,gnd,gnd,gnd,gnd}),
	.pld8gtxdatavalid({gnd,gnd,gnd,gnd}),
	.blockselect(blockselect),
	.pcs8gphfifoursttx(pcs8gphfifoursttx),
	.pcs8gpldtxclk(pcs8gpldtxclk),
	.pcs8gpolinvtx(pcs8gpolinvtx),
	.pcs8grddisabletx(pcs8grddisabletx),
	.pcs8grevloopbk(pcs8grevloopbk),
	.pcs8gtxurstpcs(pcs8gtxurstpcs),
	.pcs8gwrenabletx(pcs8gwrenabletx),
	.pld8gemptytx(pld8gemptytx),
	.pld8gfulltx(pld8gfulltx),
	.pld8gtxclkout(pld8gtxclkout),
	.avmmreaddata(wys_AVMMREADDATA_bus),
	.dataoutto8gpcs(wys_DATAOUTTO8GPCS_bus),
	.emsippcstxclkout(wys_EMSIPPCSTXCLKOUT_bus),
	.emsiptxspecialout(),
	.pcs8gtxboundarysel(wys_PCS8GTXBOUNDARYSEL_bus),
	.pcs8gtxdatavalid(wys_PCS8GTXDATAVALID_bus));
defparam wys.avmm_group_channel_index = 0;
defparam wys.is_8g_0ppm = "false";
defparam wys.pld_side_data_source = "pld";
defparam wys.use_default_base_address = "true";
defparam wys.user_base_address = 0;

endmodule

module NATIVE_TRANSCEIVER_IP_av_pma (
	blockselect_buf,
	dataout,
	rxdetectvalid,
	rxfound,
	avmmreaddata_buf_0,
	avmmreaddata_buf_1,
	avmmreaddata_buf_2,
	avmmreaddata_buf_3,
	avmmreaddata_buf_4,
	avmmreaddata_buf_5,
	avmmreaddata_buf_6,
	avmmreaddata_buf_7,
	avmmreaddata_buf_8,
	avmmreaddata_buf_9,
	avmmreaddata_buf_10,
	avmmreaddata_buf_11,
	avmmreaddata_buf_12,
	avmmreaddata_buf_13,
	avmmreaddata_buf_14,
	avmmreaddata_buf_15,
	blockselect_ser_0,
	clkdivrx_0,
	avmmreaddata_ser_0,
	avmmreaddata_ser_1,
	avmmreaddata_ser_2,
	avmmreaddata_ser_3,
	avmmreaddata_ser_4,
	avmmreaddata_ser_5,
	avmmreaddata_ser_6,
	avmmreaddata_ser_7,
	avmmreaddata_ser_8,
	avmmreaddata_ser_9,
	avmmreaddata_ser_10,
	avmmreaddata_ser_11,
	avmmreaddata_ser_12,
	avmmreaddata_ser_13,
	avmmreaddata_ser_14,
	avmmreaddata_ser_15,
	dout_0,
	dout_1,
	dout_2,
	dout_3,
	dout_4,
	dout_5,
	dout_6,
	dout_7,
	dout_8,
	dout_9,
	dout_10,
	dout_11,
	dout_12,
	dout_13,
	dout_14,
	dout_15,
	dout_16,
	dout_17,
	dout_18,
	dout_19,
	blockselect_cdr_0,
	clklow_0,
	fref_0,
	rx_is_lockedtoref_0,
	rx_is_lockedtodata_0,
	avmmreaddata_cdr_0,
	avmmreaddata_cdr_1,
	avmmreaddata_cdr_2,
	avmmreaddata_cdr_3,
	avmmreaddata_cdr_4,
	avmmreaddata_cdr_5,
	avmmreaddata_cdr_6,
	avmmreaddata_cdr_7,
	avmmreaddata_cdr_8,
	avmmreaddata_cdr_9,
	avmmreaddata_cdr_10,
	avmmreaddata_cdr_11,
	avmmreaddata_cdr_12,
	avmmreaddata_cdr_13,
	avmmreaddata_cdr_14,
	avmmreaddata_cdr_15,
	chnl_avmm_write_0,
	chnl_avmm_read_0,
	chnl_avmm_clk_0,
	chnl_avmm_rstn_0,
	chnl_avmm_writedata_0,
	chnl_avmm_writedata_1,
	chnl_avmm_writedata_2,
	chnl_avmm_writedata_3,
	chnl_avmm_writedata_4,
	chnl_avmm_writedata_5,
	chnl_avmm_writedata_6,
	chnl_avmm_writedata_7,
	chnl_avmm_writedata_8,
	chnl_avmm_writedata_9,
	chnl_avmm_writedata_10,
	chnl_avmm_writedata_11,
	chnl_avmm_writedata_12,
	chnl_avmm_writedata_13,
	chnl_avmm_writedata_14,
	chnl_avmm_writedata_15,
	chnl_avmm_address_0,
	chnl_avmm_address_1,
	chnl_avmm_address_2,
	chnl_avmm_address_3,
	chnl_avmm_address_4,
	chnl_avmm_address_5,
	chnl_avmm_address_6,
	chnl_avmm_address_7,
	chnl_avmm_address_8,
	chnl_avmm_address_9,
	chnl_avmm_address_10,
	chnl_avmm_byteen_0,
	chnl_avmm_byteen_1,
	atb_comp_out,
	pmarxclkslip,
	pmarxpmarstb,
	blockselect_ser,
	clkdivtx,
	avmmreaddata_ser_01,
	avmmreaddata_ser_16,
	avmmreaddata_ser_21,
	avmmreaddata_ser_31,
	avmmreaddata_ser_41,
	avmmreaddata_ser_51,
	avmmreaddata_ser_61,
	avmmreaddata_ser_71,
	avmmreaddata_ser_81,
	avmmreaddata_ser_91,
	avmmreaddata_ser_101,
	avmmreaddata_ser_111,
	avmmreaddata_ser_121,
	avmmreaddata_ser_131,
	avmmreaddata_ser_141,
	avmmreaddata_ser_151,
	freqlock,
	pmaearlyeios,
	pmaltr,
	pmatxdetectrx,
	pmatxelecidle,
	blockselect_buf_0,
	sd_0,
	avmmreaddata_buf_01,
	avmmreaddata_buf_16,
	avmmreaddata_buf_21,
	avmmreaddata_buf_31,
	avmmreaddata_buf_41,
	avmmreaddata_buf_51,
	avmmreaddata_buf_61,
	avmmreaddata_buf_71,
	avmmreaddata_buf_81,
	avmmreaddata_buf_91,
	avmmreaddata_buf_101,
	avmmreaddata_buf_111,
	avmmreaddata_buf_121,
	avmmreaddata_buf_131,
	avmmreaddata_buf_141,
	avmmreaddata_buf_151,
	blockselect_mux_0,
	avmmreaddata_mux_0,
	avmmreaddata_mux_1,
	avmmreaddata_mux_2,
	avmmreaddata_mux_3,
	avmmreaddata_mux_4,
	avmmreaddata_mux_5,
	avmmreaddata_mux_6,
	avmmreaddata_mux_7,
	avmmreaddata_mux_8,
	avmmreaddata_mux_9,
	avmmreaddata_mux_10,
	avmmreaddata_mux_11,
	avmmreaddata_mux_12,
	avmmreaddata_mux_13,
	avmmreaddata_mux_14,
	avmmreaddata_mux_15,
	dataouttopma_0,
	dataouttopma_1,
	dataouttopma_2,
	dataouttopma_3,
	dataouttopma_4,
	dataouttopma_5,
	dataouttopma_6,
	dataouttopma_7,
	dataouttopma_8,
	dataouttopma_9,
	dataouttopma_10,
	dataouttopma_11,
	dataouttopma_12,
	dataouttopma_13,
	dataouttopma_14,
	dataouttopma_15,
	dataouttopma_16,
	dataouttopma_17,
	dataouttopma_18,
	dataouttopma_19,
	blockselect_cgb,
	avmmreaddata_cgb_0,
	avmmreaddata_cgb_1,
	avmmreaddata_cgb_2,
	avmmreaddata_cgb_3,
	avmmreaddata_cgb_4,
	avmmreaddata_cgb_5,
	avmmreaddata_cgb_6,
	avmmreaddata_cgb_7,
	avmmreaddata_cgb_8,
	avmmreaddata_cgb_9,
	avmmreaddata_cgb_10,
	avmmreaddata_cgb_11,
	avmmreaddata_cgb_12,
	avmmreaddata_cgb_13,
	avmmreaddata_cgb_14,
	avmmreaddata_cgb_15,
	out_pld_rxpma_rstb_in_0,
	gen_oc_regr_hardoccalen,
	gen_slpbk_regr_seriallpbken,
	rx_set_locktodata_0,
	reconfig_to_xcvr_0,
	tx_analogreset_0,
	rx_serial_data_0,
	rx_cdr_refclk_0,
	ext_pll_clk_0)/* synthesis synthesis_greybox=0 */;
output 	blockselect_buf;
output 	dataout;
output 	rxdetectvalid;
output 	rxfound;
output 	avmmreaddata_buf_0;
output 	avmmreaddata_buf_1;
output 	avmmreaddata_buf_2;
output 	avmmreaddata_buf_3;
output 	avmmreaddata_buf_4;
output 	avmmreaddata_buf_5;
output 	avmmreaddata_buf_6;
output 	avmmreaddata_buf_7;
output 	avmmreaddata_buf_8;
output 	avmmreaddata_buf_9;
output 	avmmreaddata_buf_10;
output 	avmmreaddata_buf_11;
output 	avmmreaddata_buf_12;
output 	avmmreaddata_buf_13;
output 	avmmreaddata_buf_14;
output 	avmmreaddata_buf_15;
output 	blockselect_ser_0;
output 	clkdivrx_0;
output 	avmmreaddata_ser_0;
output 	avmmreaddata_ser_1;
output 	avmmreaddata_ser_2;
output 	avmmreaddata_ser_3;
output 	avmmreaddata_ser_4;
output 	avmmreaddata_ser_5;
output 	avmmreaddata_ser_6;
output 	avmmreaddata_ser_7;
output 	avmmreaddata_ser_8;
output 	avmmreaddata_ser_9;
output 	avmmreaddata_ser_10;
output 	avmmreaddata_ser_11;
output 	avmmreaddata_ser_12;
output 	avmmreaddata_ser_13;
output 	avmmreaddata_ser_14;
output 	avmmreaddata_ser_15;
output 	dout_0;
output 	dout_1;
output 	dout_2;
output 	dout_3;
output 	dout_4;
output 	dout_5;
output 	dout_6;
output 	dout_7;
output 	dout_8;
output 	dout_9;
output 	dout_10;
output 	dout_11;
output 	dout_12;
output 	dout_13;
output 	dout_14;
output 	dout_15;
output 	dout_16;
output 	dout_17;
output 	dout_18;
output 	dout_19;
output 	blockselect_cdr_0;
output 	clklow_0;
output 	fref_0;
output 	rx_is_lockedtoref_0;
output 	rx_is_lockedtodata_0;
output 	avmmreaddata_cdr_0;
output 	avmmreaddata_cdr_1;
output 	avmmreaddata_cdr_2;
output 	avmmreaddata_cdr_3;
output 	avmmreaddata_cdr_4;
output 	avmmreaddata_cdr_5;
output 	avmmreaddata_cdr_6;
output 	avmmreaddata_cdr_7;
output 	avmmreaddata_cdr_8;
output 	avmmreaddata_cdr_9;
output 	avmmreaddata_cdr_10;
output 	avmmreaddata_cdr_11;
output 	avmmreaddata_cdr_12;
output 	avmmreaddata_cdr_13;
output 	avmmreaddata_cdr_14;
output 	avmmreaddata_cdr_15;
input 	chnl_avmm_write_0;
input 	chnl_avmm_read_0;
input 	chnl_avmm_clk_0;
input 	chnl_avmm_rstn_0;
input 	chnl_avmm_writedata_0;
input 	chnl_avmm_writedata_1;
input 	chnl_avmm_writedata_2;
input 	chnl_avmm_writedata_3;
input 	chnl_avmm_writedata_4;
input 	chnl_avmm_writedata_5;
input 	chnl_avmm_writedata_6;
input 	chnl_avmm_writedata_7;
input 	chnl_avmm_writedata_8;
input 	chnl_avmm_writedata_9;
input 	chnl_avmm_writedata_10;
input 	chnl_avmm_writedata_11;
input 	chnl_avmm_writedata_12;
input 	chnl_avmm_writedata_13;
input 	chnl_avmm_writedata_14;
input 	chnl_avmm_writedata_15;
input 	chnl_avmm_address_0;
input 	chnl_avmm_address_1;
input 	chnl_avmm_address_2;
input 	chnl_avmm_address_3;
input 	chnl_avmm_address_4;
input 	chnl_avmm_address_5;
input 	chnl_avmm_address_6;
input 	chnl_avmm_address_7;
input 	chnl_avmm_address_8;
input 	chnl_avmm_address_9;
input 	chnl_avmm_address_10;
input 	chnl_avmm_byteen_0;
input 	chnl_avmm_byteen_1;
output 	atb_comp_out;
input 	pmarxclkslip;
input 	pmarxpmarstb;
output 	blockselect_ser;
output 	clkdivtx;
output 	avmmreaddata_ser_01;
output 	avmmreaddata_ser_16;
output 	avmmreaddata_ser_21;
output 	avmmreaddata_ser_31;
output 	avmmreaddata_ser_41;
output 	avmmreaddata_ser_51;
output 	avmmreaddata_ser_61;
output 	avmmreaddata_ser_71;
output 	avmmreaddata_ser_81;
output 	avmmreaddata_ser_91;
output 	avmmreaddata_ser_101;
output 	avmmreaddata_ser_111;
output 	avmmreaddata_ser_121;
output 	avmmreaddata_ser_131;
output 	avmmreaddata_ser_141;
output 	avmmreaddata_ser_151;
input 	freqlock;
input 	pmaearlyeios;
input 	pmaltr;
input 	pmatxdetectrx;
input 	pmatxelecidle;
output 	blockselect_buf_0;
output 	sd_0;
output 	avmmreaddata_buf_01;
output 	avmmreaddata_buf_16;
output 	avmmreaddata_buf_21;
output 	avmmreaddata_buf_31;
output 	avmmreaddata_buf_41;
output 	avmmreaddata_buf_51;
output 	avmmreaddata_buf_61;
output 	avmmreaddata_buf_71;
output 	avmmreaddata_buf_81;
output 	avmmreaddata_buf_91;
output 	avmmreaddata_buf_101;
output 	avmmreaddata_buf_111;
output 	avmmreaddata_buf_121;
output 	avmmreaddata_buf_131;
output 	avmmreaddata_buf_141;
output 	avmmreaddata_buf_151;
output 	blockselect_mux_0;
output 	avmmreaddata_mux_0;
output 	avmmreaddata_mux_1;
output 	avmmreaddata_mux_2;
output 	avmmreaddata_mux_3;
output 	avmmreaddata_mux_4;
output 	avmmreaddata_mux_5;
output 	avmmreaddata_mux_6;
output 	avmmreaddata_mux_7;
output 	avmmreaddata_mux_8;
output 	avmmreaddata_mux_9;
output 	avmmreaddata_mux_10;
output 	avmmreaddata_mux_11;
output 	avmmreaddata_mux_12;
output 	avmmreaddata_mux_13;
output 	avmmreaddata_mux_14;
output 	avmmreaddata_mux_15;
input 	dataouttopma_0;
input 	dataouttopma_1;
input 	dataouttopma_2;
input 	dataouttopma_3;
input 	dataouttopma_4;
input 	dataouttopma_5;
input 	dataouttopma_6;
input 	dataouttopma_7;
input 	dataouttopma_8;
input 	dataouttopma_9;
input 	dataouttopma_10;
input 	dataouttopma_11;
input 	dataouttopma_12;
input 	dataouttopma_13;
input 	dataouttopma_14;
input 	dataouttopma_15;
input 	dataouttopma_16;
input 	dataouttopma_17;
input 	dataouttopma_18;
input 	dataouttopma_19;
output 	blockselect_cgb;
output 	avmmreaddata_cgb_0;
output 	avmmreaddata_cgb_1;
output 	avmmreaddata_cgb_2;
output 	avmmreaddata_cgb_3;
output 	avmmreaddata_cgb_4;
output 	avmmreaddata_cgb_5;
output 	avmmreaddata_cgb_6;
output 	avmmreaddata_cgb_7;
output 	avmmreaddata_cgb_8;
output 	avmmreaddata_cgb_9;
output 	avmmreaddata_cgb_10;
output 	avmmreaddata_cgb_11;
output 	avmmreaddata_cgb_12;
output 	avmmreaddata_cgb_13;
output 	avmmreaddata_cgb_14;
output 	avmmreaddata_cgb_15;
input 	out_pld_rxpma_rstb_in_0;
input 	gen_oc_regr_hardoccalen;
input 	gen_slpbk_regr_seriallpbken;
input 	rx_set_locktodata_0;
input 	reconfig_to_xcvr_0;
input 	tx_analogreset_0;
input 	rx_serial_data_0;
input 	rx_cdr_refclk_0;
input 	ext_pll_clk_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|seriallpbkout ;
wire \av_rx_pma|rdlpbkp[0] ;


NATIVE_TRANSCEIVER_IP_av_tx_pma av_tx_pma_1(
	.blockselect_buf({blockselect_buf}),
	.dataout({dataout}),
	.rxdetectvalid({rxdetectvalid}),
	.rxfound({rxfound}),
	.avmmreaddata_buf_0(avmmreaddata_buf_0),
	.avmmreaddata_buf_1(avmmreaddata_buf_1),
	.avmmreaddata_buf_2(avmmreaddata_buf_2),
	.avmmreaddata_buf_3(avmmreaddata_buf_3),
	.avmmreaddata_buf_4(avmmreaddata_buf_4),
	.avmmreaddata_buf_5(avmmreaddata_buf_5),
	.avmmreaddata_buf_6(avmmreaddata_buf_6),
	.avmmreaddata_buf_7(avmmreaddata_buf_7),
	.avmmreaddata_buf_8(avmmreaddata_buf_8),
	.avmmreaddata_buf_9(avmmreaddata_buf_9),
	.avmmreaddata_buf_10(avmmreaddata_buf_10),
	.avmmreaddata_buf_11(avmmreaddata_buf_11),
	.avmmreaddata_buf_12(avmmreaddata_buf_12),
	.avmmreaddata_buf_13(avmmreaddata_buf_13),
	.avmmreaddata_buf_14(avmmreaddata_buf_14),
	.avmmreaddata_buf_15(avmmreaddata_buf_15),
	.chnl_avmm_write_0(chnl_avmm_write_0),
	.chnl_avmm_read_0(chnl_avmm_read_0),
	.chnl_avmm_clk_0(chnl_avmm_clk_0),
	.chnl_avmm_rstn_0(chnl_avmm_rstn_0),
	.chnl_avmm_writedata_0(chnl_avmm_writedata_0),
	.chnl_avmm_writedata_1(chnl_avmm_writedata_1),
	.chnl_avmm_writedata_2(chnl_avmm_writedata_2),
	.chnl_avmm_writedata_3(chnl_avmm_writedata_3),
	.chnl_avmm_writedata_4(chnl_avmm_writedata_4),
	.chnl_avmm_writedata_5(chnl_avmm_writedata_5),
	.chnl_avmm_writedata_6(chnl_avmm_writedata_6),
	.chnl_avmm_writedata_7(chnl_avmm_writedata_7),
	.chnl_avmm_writedata_8(chnl_avmm_writedata_8),
	.chnl_avmm_writedata_9(chnl_avmm_writedata_9),
	.chnl_avmm_writedata_10(chnl_avmm_writedata_10),
	.chnl_avmm_writedata_11(chnl_avmm_writedata_11),
	.chnl_avmm_writedata_12(chnl_avmm_writedata_12),
	.chnl_avmm_writedata_13(chnl_avmm_writedata_13),
	.chnl_avmm_writedata_14(chnl_avmm_writedata_14),
	.chnl_avmm_writedata_15(chnl_avmm_writedata_15),
	.chnl_avmm_address_0(chnl_avmm_address_0),
	.chnl_avmm_address_1(chnl_avmm_address_1),
	.chnl_avmm_address_2(chnl_avmm_address_2),
	.chnl_avmm_address_3(chnl_avmm_address_3),
	.chnl_avmm_address_4(chnl_avmm_address_4),
	.chnl_avmm_address_5(chnl_avmm_address_5),
	.chnl_avmm_address_6(chnl_avmm_address_6),
	.chnl_avmm_address_7(chnl_avmm_address_7),
	.chnl_avmm_address_8(chnl_avmm_address_8),
	.chnl_avmm_address_9(chnl_avmm_address_9),
	.chnl_avmm_address_10(chnl_avmm_address_10),
	.chnl_avmm_byteen_0(chnl_avmm_byteen_0),
	.chnl_avmm_byteen_1(chnl_avmm_byteen_1),
	.atb_comp_out({atb_comp_out}),
	.blockselect_ser({blockselect_ser}),
	.clkdivtx({clkdivtx}),
	.seriallpbkout({\av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|seriallpbkout }),
	.avmmreaddata_ser_0(avmmreaddata_ser_01),
	.avmmreaddata_ser_1(avmmreaddata_ser_16),
	.avmmreaddata_ser_2(avmmreaddata_ser_21),
	.avmmreaddata_ser_3(avmmreaddata_ser_31),
	.avmmreaddata_ser_4(avmmreaddata_ser_41),
	.avmmreaddata_ser_5(avmmreaddata_ser_51),
	.avmmreaddata_ser_6(avmmreaddata_ser_61),
	.avmmreaddata_ser_7(avmmreaddata_ser_71),
	.avmmreaddata_ser_8(avmmreaddata_ser_81),
	.avmmreaddata_ser_9(avmmreaddata_ser_91),
	.avmmreaddata_ser_10(avmmreaddata_ser_101),
	.avmmreaddata_ser_11(avmmreaddata_ser_111),
	.avmmreaddata_ser_12(avmmreaddata_ser_121),
	.avmmreaddata_ser_13(avmmreaddata_ser_131),
	.avmmreaddata_ser_14(avmmreaddata_ser_141),
	.avmmreaddata_ser_15(avmmreaddata_ser_151),
	.pmatxdetectrx(pmatxdetectrx),
	.pmatxelecidle(pmatxelecidle),
	.rdlpbkp_0(\av_rx_pma|rdlpbkp[0] ),
	.dataouttopma_0(dataouttopma_0),
	.dataouttopma_1(dataouttopma_1),
	.dataouttopma_2(dataouttopma_2),
	.dataouttopma_3(dataouttopma_3),
	.dataouttopma_4(dataouttopma_4),
	.dataouttopma_5(dataouttopma_5),
	.dataouttopma_6(dataouttopma_6),
	.dataouttopma_7(dataouttopma_7),
	.dataouttopma_8(dataouttopma_8),
	.dataouttopma_9(dataouttopma_9),
	.dataouttopma_10(dataouttopma_10),
	.dataouttopma_11(dataouttopma_11),
	.dataouttopma_12(dataouttopma_12),
	.dataouttopma_13(dataouttopma_13),
	.dataouttopma_14(dataouttopma_14),
	.dataouttopma_15(dataouttopma_15),
	.dataouttopma_16(dataouttopma_16),
	.dataouttopma_17(dataouttopma_17),
	.dataouttopma_18(dataouttopma_18),
	.dataouttopma_19(dataouttopma_19),
	.blockselect_cgb({blockselect_cgb}),
	.avmmreaddata_cgb_0(avmmreaddata_cgb_0),
	.avmmreaddata_cgb_1(avmmreaddata_cgb_1),
	.avmmreaddata_cgb_2(avmmreaddata_cgb_2),
	.avmmreaddata_cgb_3(avmmreaddata_cgb_3),
	.avmmreaddata_cgb_4(avmmreaddata_cgb_4),
	.avmmreaddata_cgb_5(avmmreaddata_cgb_5),
	.avmmreaddata_cgb_6(avmmreaddata_cgb_6),
	.avmmreaddata_cgb_7(avmmreaddata_cgb_7),
	.avmmreaddata_cgb_8(avmmreaddata_cgb_8),
	.avmmreaddata_cgb_9(avmmreaddata_cgb_9),
	.avmmreaddata_cgb_10(avmmreaddata_cgb_10),
	.avmmreaddata_cgb_11(avmmreaddata_cgb_11),
	.avmmreaddata_cgb_12(avmmreaddata_cgb_12),
	.avmmreaddata_cgb_13(avmmreaddata_cgb_13),
	.avmmreaddata_cgb_14(avmmreaddata_cgb_14),
	.avmmreaddata_cgb_15(avmmreaddata_cgb_15),
	.gen_slpbk_regr_seriallpbken(gen_slpbk_regr_seriallpbken),
	.reconfig_to_xcvr_0(reconfig_to_xcvr_0),
	.tx_analogreset_0(tx_analogreset_0),
	.ext_pll_clk_0(ext_pll_clk_0));

NATIVE_TRANSCEIVER_IP_av_rx_pma av_rx_pma_1(
	.blockselect_ser({blockselect_ser_0}),
	.clkdivrx({clkdivrx_0}),
	.avmmreaddata_ser({avmmreaddata_ser_15,avmmreaddata_ser_14,avmmreaddata_ser_13,avmmreaddata_ser_12,avmmreaddata_ser_11,avmmreaddata_ser_10,avmmreaddata_ser_9,avmmreaddata_ser_8,avmmreaddata_ser_7,avmmreaddata_ser_6,avmmreaddata_ser_5,avmmreaddata_ser_4,avmmreaddata_ser_3,
avmmreaddata_ser_2,avmmreaddata_ser_1,avmmreaddata_ser_0}),
	.dout({dout_19,dout_18,dout_17,dout_16,dout_15,dout_14,dout_13,dout_12,dout_11,dout_10,dout_9,dout_8,dout_7,dout_6,dout_5,dout_4,dout_3,dout_2,dout_1,dout_0}),
	.blockselect_cdr({blockselect_cdr_0}),
	.clklow({clklow_0}),
	.fref({fref_0}),
	.rx_is_lockedtoref({rx_is_lockedtoref_0}),
	.rx_is_lockedtodata({rx_is_lockedtodata_0}),
	.avmmreaddata_cdr({avmmreaddata_cdr_15,avmmreaddata_cdr_14,avmmreaddata_cdr_13,avmmreaddata_cdr_12,avmmreaddata_cdr_11,avmmreaddata_cdr_10,avmmreaddata_cdr_9,avmmreaddata_cdr_8,avmmreaddata_cdr_7,avmmreaddata_cdr_6,avmmreaddata_cdr_5,avmmreaddata_cdr_4,avmmreaddata_cdr_3,
avmmreaddata_cdr_2,avmmreaddata_cdr_1,avmmreaddata_cdr_0}),
	.avmmwrite({chnl_avmm_write_0}),
	.avmmread({chnl_avmm_read_0}),
	.avmmclk({chnl_avmm_clk_0}),
	.avmmrstn({chnl_avmm_rstn_0}),
	.avmmwritedata({chnl_avmm_writedata_15,chnl_avmm_writedata_14,chnl_avmm_writedata_13,chnl_avmm_writedata_12,chnl_avmm_writedata_11,chnl_avmm_writedata_10,chnl_avmm_writedata_9,chnl_avmm_writedata_8,chnl_avmm_writedata_7,chnl_avmm_writedata_6,chnl_avmm_writedata_5,
chnl_avmm_writedata_4,chnl_avmm_writedata_3,chnl_avmm_writedata_2,chnl_avmm_writedata_1,chnl_avmm_writedata_0}),
	.avmmaddress({chnl_avmm_address_10,chnl_avmm_address_9,chnl_avmm_address_8,chnl_avmm_address_7,chnl_avmm_address_6,chnl_avmm_address_5,chnl_avmm_address_4,chnl_avmm_address_3,chnl_avmm_address_2,chnl_avmm_address_1,chnl_avmm_address_0}),
	.avmmbyteen({chnl_avmm_byteen_1,chnl_avmm_byteen_0}),
	.bslip({pmarxclkslip}),
	.rstn({pmarxpmarstb}),
	.seriallpbkin({\av_tx_pma|tx_pma_insts[0].av_tx_pma_ch_inst|seriallpbkout }),
	.freqlock({freqlock}),
	.earlyeios({pmaearlyeios}),
	.ltr({pmaltr}),
	.blockselect_buf({blockselect_buf_0}),
	.rdlpbkp({\av_rx_pma|rdlpbkp[0] }),
	.sd({sd_0}),
	.avmmreaddata_buf({avmmreaddata_buf_151,avmmreaddata_buf_141,avmmreaddata_buf_131,avmmreaddata_buf_121,avmmreaddata_buf_111,avmmreaddata_buf_101,avmmreaddata_buf_91,avmmreaddata_buf_81,avmmreaddata_buf_71,avmmreaddata_buf_61,avmmreaddata_buf_51,avmmreaddata_buf_41,avmmreaddata_buf_31,
avmmreaddata_buf_21,avmmreaddata_buf_16,avmmreaddata_buf_01}),
	.blockselect_mux({blockselect_mux_0}),
	.avmmreaddata_mux({avmmreaddata_mux_15,avmmreaddata_mux_14,avmmreaddata_mux_13,avmmreaddata_mux_12,avmmreaddata_mux_11,avmmreaddata_mux_10,avmmreaddata_mux_9,avmmreaddata_mux_8,avmmreaddata_mux_7,avmmreaddata_mux_6,avmmreaddata_mux_5,avmmreaddata_mux_4,avmmreaddata_mux_3,
avmmreaddata_mux_2,avmmreaddata_mux_1,avmmreaddata_mux_0}),
	.crurstn({out_pld_rxpma_rstb_in_0}),
	.hardoccalen({gen_oc_regr_hardoccalen}),
	.seriallpbken({gen_slpbk_regr_seriallpbken}),
	.ltd({rx_set_locktodata_0}),
	.calclk({reconfig_to_xcvr_0}),
	.datain({rx_serial_data_0}),
	.cdr_ref_clk({rx_cdr_refclk_0}));

endmodule

module NATIVE_TRANSCEIVER_IP_av_rx_pma (
	blockselect_ser,
	clkdivrx,
	avmmreaddata_ser,
	dout,
	blockselect_cdr,
	clklow,
	fref,
	rx_is_lockedtoref,
	rx_is_lockedtodata,
	avmmreaddata_cdr,
	avmmwrite,
	avmmread,
	avmmclk,
	avmmrstn,
	avmmwritedata,
	avmmaddress,
	avmmbyteen,
	bslip,
	rstn,
	seriallpbkin,
	freqlock,
	earlyeios,
	ltr,
	blockselect_buf,
	rdlpbkp,
	sd,
	avmmreaddata_buf,
	blockselect_mux,
	avmmreaddata_mux,
	crurstn,
	hardoccalen,
	seriallpbken,
	ltd,
	calclk,
	datain,
	cdr_ref_clk)/* synthesis synthesis_greybox=0 */;
output 	[0:0] blockselect_ser;
output 	[0:0] clkdivrx;
output 	[15:0] avmmreaddata_ser;
output 	[19:0] dout;
output 	[0:0] blockselect_cdr;
output 	[0:0] clklow;
output 	[0:0] fref;
output 	[0:0] rx_is_lockedtoref;
output 	[0:0] rx_is_lockedtodata;
output 	[15:0] avmmreaddata_cdr;
input 	[0:0] avmmwrite;
input 	[0:0] avmmread;
input 	[0:0] avmmclk;
input 	[0:0] avmmrstn;
input 	[15:0] avmmwritedata;
input 	[10:0] avmmaddress;
input 	[1:0] avmmbyteen;
input 	[0:0] bslip;
input 	[0:0] rstn;
input 	[0:0] seriallpbkin;
input 	[0:0] freqlock;
input 	[0:0] earlyeios;
input 	[0:0] ltr;
output 	[0:0] blockselect_buf;
output 	[0:0] rdlpbkp;
output 	[0:0] sd;
output 	[15:0] avmmreaddata_buf;
output 	[0:0] blockselect_mux;
output 	[15:0] avmmreaddata_mux;
input 	[0:0] crurstn;
input 	[0:0] hardoccalen;
input 	[0:0] seriallpbken;
input 	[0:0] ltd;
input 	[0:0] calclk;
input 	[0:0] datain;
input 	[0:0] cdr_ref_clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \rx_pmas[0].rx_pma.rx_pma_aux~O_ATB0OUT ;
wire \rx_pmas[0].rx_pma.wire_clkdivrxrx ;
wire \rx_pmas[0].rx_pma.wire_pciel ;
wire \rx_pmas[0].rx_pma.wire_cdr_to_deser_clk_270 ;
wire \rx_pmas[0].rx_pma.wire_cdr_to_deser_clk ;
wire \rx_pmas[0].rx_pma.wire_deven ;
wire \rx_pmas[0].rx_pma.wire_dodd ;
wire \rx_pmas[0].rx_pma.wire_dataout_to_cdr ;
wire \rx_pmas[0].rx_pma.wire_refclk_to_cdr ;
wire \rx_pmas[0].rx_pma.nonuserfrompmaux ;

wire [79:0] \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus ;
wire [15:0] \rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus ;
wire [15:0] \rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus ;
wire [15:0] \rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus ;
wire [15:0] \rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus ;

assign dout[0] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [0];
assign dout[1] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [1];
assign dout[2] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [2];
assign dout[3] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [3];
assign dout[4] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [4];
assign dout[5] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [5];
assign dout[6] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [6];
assign dout[7] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [7];
assign dout[8] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [8];
assign dout[9] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [9];
assign dout[10] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [10];
assign dout[11] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [11];
assign dout[12] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [12];
assign dout[13] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [13];
assign dout[14] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [14];
assign dout[15] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [15];
assign dout[16] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [16];
assign dout[17] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [17];
assign dout[18] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [18];
assign dout[19] = \rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus [19];

assign avmmreaddata_ser[0] = \rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus [0];
assign avmmreaddata_ser[1] = \rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus [1];
assign avmmreaddata_ser[2] = \rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus [2];
assign avmmreaddata_ser[3] = \rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus [3];
assign avmmreaddata_ser[4] = \rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus [4];
assign avmmreaddata_ser[5] = \rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus [5];
assign avmmreaddata_ser[6] = \rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus [6];
assign avmmreaddata_ser[7] = \rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus [7];
assign avmmreaddata_ser[8] = \rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus [8];
assign avmmreaddata_ser[9] = \rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus [9];
assign avmmreaddata_ser[10] = \rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus [10];
assign avmmreaddata_ser[11] = \rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus [11];
assign avmmreaddata_ser[12] = \rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus [12];
assign avmmreaddata_ser[13] = \rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus [13];
assign avmmreaddata_ser[14] = \rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus [14];
assign avmmreaddata_ser[15] = \rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus [15];

assign avmmreaddata_cdr[0] = \rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus [0];
assign avmmreaddata_cdr[1] = \rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus [1];
assign avmmreaddata_cdr[2] = \rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus [2];
assign avmmreaddata_cdr[3] = \rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus [3];
assign avmmreaddata_cdr[4] = \rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus [4];
assign avmmreaddata_cdr[5] = \rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus [5];
assign avmmreaddata_cdr[6] = \rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus [6];
assign avmmreaddata_cdr[7] = \rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus [7];
assign avmmreaddata_cdr[8] = \rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus [8];
assign avmmreaddata_cdr[9] = \rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus [9];
assign avmmreaddata_cdr[10] = \rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus [10];
assign avmmreaddata_cdr[11] = \rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus [11];
assign avmmreaddata_cdr[12] = \rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus [12];
assign avmmreaddata_cdr[13] = \rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus [13];
assign avmmreaddata_cdr[14] = \rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus [14];
assign avmmreaddata_cdr[15] = \rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus [15];

assign avmmreaddata_buf[0] = \rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus [0];
assign avmmreaddata_buf[1] = \rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus [1];
assign avmmreaddata_buf[2] = \rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus [2];
assign avmmreaddata_buf[3] = \rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus [3];
assign avmmreaddata_buf[4] = \rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus [4];
assign avmmreaddata_buf[5] = \rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus [5];
assign avmmreaddata_buf[6] = \rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus [6];
assign avmmreaddata_buf[7] = \rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus [7];
assign avmmreaddata_buf[8] = \rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus [8];
assign avmmreaddata_buf[9] = \rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus [9];
assign avmmreaddata_buf[10] = \rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus [10];
assign avmmreaddata_buf[11] = \rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus [11];
assign avmmreaddata_buf[12] = \rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus [12];
assign avmmreaddata_buf[13] = \rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus [13];
assign avmmreaddata_buf[14] = \rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus [14];
assign avmmreaddata_buf[15] = \rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus [15];

assign avmmreaddata_mux[0] = \rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus [0];
assign avmmreaddata_mux[1] = \rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus [1];
assign avmmreaddata_mux[2] = \rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus [2];
assign avmmreaddata_mux[3] = \rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus [3];
assign avmmreaddata_mux[4] = \rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus [4];
assign avmmreaddata_mux[5] = \rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus [5];
assign avmmreaddata_mux[6] = \rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus [6];
assign avmmreaddata_mux[7] = \rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus [7];
assign avmmreaddata_mux[8] = \rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus [8];
assign avmmreaddata_mux[9] = \rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus [9];
assign avmmreaddata_mux[10] = \rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus [10];
assign avmmreaddata_mux[11] = \rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus [11];
assign avmmreaddata_mux[12] = \rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus [12];
assign avmmreaddata_mux[13] = \rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus [13];
assign avmmreaddata_mux[14] = \rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus [14];
assign avmmreaddata_mux[15] = \rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus [15];

cyclonev_hssi_pma_rx_deser \rx_pmas[0].rx_pma.rx_pma_deser (
	.avmmclk(avmmclk[0]),
	.avmmread(avmmread[0]),
	.avmmrstn(avmmrstn[0]),
	.avmmwrite(avmmwrite[0]),
	.bslip(bslip[0]),
	.clk270b(\rx_pmas[0].rx_pma.wire_cdr_to_deser_clk_270 ),
	.clk90b(\rx_pmas[0].rx_pma.wire_cdr_to_deser_clk ),
	.deven(\rx_pmas[0].rx_pma.wire_deven ),
	.dodd(\rx_pmas[0].rx_pma.wire_dodd ),
	.pciesw(gnd),
	.rstn(rstn[0]),
	.avmmaddress({avmmaddress[10],avmmaddress[9],avmmaddress[8],avmmaddress[7],avmmaddress[6],avmmaddress[5],avmmaddress[4],avmmaddress[3],avmmaddress[2],avmmaddress[1],avmmaddress[0]}),
	.avmmbyteen({avmmbyteen[1],avmmbyteen[0]}),
	.avmmwritedata({avmmwritedata[15],avmmwritedata[14],avmmwritedata[13],avmmwritedata[12],avmmwritedata[11],avmmwritedata[10],avmmwritedata[9],avmmwritedata[8],avmmwritedata[7],avmmwritedata[6],avmmwritedata[5],avmmwritedata[4],avmmwritedata[3],avmmwritedata[2],avmmwritedata[1],avmmwritedata[0]}),
	.blockselect(blockselect_ser[0]),
	.clkdivrx(clkdivrx[0]),
	.clkdivrxrx(\rx_pmas[0].rx_pma.wire_clkdivrxrx ),
	.pciel(\rx_pmas[0].rx_pma.wire_pciel ),
	.avmmreaddata(\rx_pmas[0].rx_pma.rx_pma_deser_AVMMREADDATA_bus ),
	.dout(\rx_pmas[0].rx_pma.rx_pma_deser_DOUT_bus ));
defparam \rx_pmas[0].rx_pma.rx_pma_deser .auto_negotiation = "false";
defparam \rx_pmas[0].rx_pma.rx_pma_deser .avmm_group_channel_index = 0;
defparam \rx_pmas[0].rx_pma.rx_pma_deser .channel_number = 0;
defparam \rx_pmas[0].rx_pma.rx_pma_deser .clk_forward_only_mode = "false";
defparam \rx_pmas[0].rx_pma.rx_pma_deser .enable_bit_slip = "false";
defparam \rx_pmas[0].rx_pma.rx_pma_deser .mode = 16;
defparam \rx_pmas[0].rx_pma.rx_pma_deser .pma_direct = "false";
defparam \rx_pmas[0].rx_pma.rx_pma_deser .sdclk_enable = "true";
defparam \rx_pmas[0].rx_pma.rx_pma_deser .use_default_base_address = "true";
defparam \rx_pmas[0].rx_pma.rx_pma_deser .user_base_address = 0;
defparam \rx_pmas[0].rx_pma.rx_pma_deser .vco_bypass = "vco_bypass_normal";

cyclonev_channel_pll \rx_pmas[0].rx_pma.rx_cdr (
	.avmmclk(avmmclk[0]),
	.avmmread(avmmread[0]),
	.avmmrstn(avmmrstn[0]),
	.avmmwrite(avmmwrite[0]),
	.clkindeser(gnd),
	.crurstb(crurstn[0]),
	.earlyeios(earlyeios[0]),
	.extclk(gnd),
	.lpbkpreen(gnd),
	.ltd(!ltd[0]),
	.ltr(ltr[0]),
	.occalen(gnd),
	.pciel(\rx_pmas[0].rx_pma.wire_pciel ),
	.ppmlock(freqlock[0]),
	.refclk(\rx_pmas[0].rx_pma.wire_refclk_to_cdr ),
	.rstn(rstn[0]),
	.rxp(\rx_pmas[0].rx_pma.wire_dataout_to_cdr ),
	.sd(sd[0]),
	.avmmaddress({avmmaddress[10],avmmaddress[9],avmmaddress[8],avmmaddress[7],avmmaddress[6],avmmaddress[5],avmmaddress[4],avmmaddress[3],avmmaddress[2],avmmaddress[1],avmmaddress[0]}),
	.avmmbyteen({avmmbyteen[1],avmmbyteen[0]}),
	.avmmwritedata({avmmwritedata[15],avmmwritedata[14],avmmwritedata[13],avmmwritedata[12],avmmwritedata[11],avmmwritedata[10],avmmwritedata[9],avmmwritedata[8],avmmwritedata[7],avmmwritedata[6],avmmwritedata[5],avmmwritedata[4],avmmwritedata[3],avmmwritedata[2],avmmwritedata[1],avmmwritedata[0]}),
	.pciesw({gnd,gnd}),
	.blockselect(blockselect_cdr[0]),
	.ck0pd(),
	.ck180pd(),
	.ck270pd(),
	.ck90pd(),
	.clk270bdes(\rx_pmas[0].rx_pma.wire_cdr_to_deser_clk_270 ),
	.clk90bdes(\rx_pmas[0].rx_pma.wire_cdr_to_deser_clk ),
	.clkcdr(),
	.clklow(clklow[0]),
	.deven(\rx_pmas[0].rx_pma.wire_deven ),
	.dodd(\rx_pmas[0].rx_pma.wire_dodd ),
	.fref(fref[0]),
	.pfdmodelock(rx_is_lockedtoref[0]),
	.rxlpbdp(),
	.rxlpbp(),
	.rxplllock(rx_is_lockedtodata[0]),
	.txpllhclk(),
	.txrlpbk(),
	.vctrloverrange(),
	.avmmreaddata(\rx_pmas[0].rx_pma.rx_cdr_AVMMREADDATA_bus ),
	.pdof());
defparam \rx_pmas[0].rx_pma.rx_cdr .avmm_group_channel_index = 0;
defparam \rx_pmas[0].rx_pma.rx_cdr .bbpd_salatch_offset_ctrl_clk0 = "offset_0mv";
defparam \rx_pmas[0].rx_pma.rx_cdr .bbpd_salatch_offset_ctrl_clk180 = "offset_0mv";
defparam \rx_pmas[0].rx_pma.rx_cdr .bbpd_salatch_offset_ctrl_clk270 = "offset_0mv";
defparam \rx_pmas[0].rx_pma.rx_cdr .bbpd_salatch_offset_ctrl_clk90 = "offset_0mv";
defparam \rx_pmas[0].rx_pma.rx_cdr .bbpd_salatch_sel = "normal";
defparam \rx_pmas[0].rx_pma.rx_cdr .bypass_cp_rgla = "false";
defparam \rx_pmas[0].rx_pma.rx_cdr .cdr_atb_select = "atb_disable";
defparam \rx_pmas[0].rx_pma.rx_cdr .cgb_clk_enable = "false";
defparam \rx_pmas[0].rx_pma.rx_cdr .charge_pump_current_test = "enable_ch_pump_normal";
defparam \rx_pmas[0].rx_pma.rx_cdr .clklow_fref_to_ppm_div_sel = 1;
defparam \rx_pmas[0].rx_pma.rx_cdr .clock_monitor = "lpbk_data";
defparam \rx_pmas[0].rx_pma.rx_cdr .cvp_en_iocsr = "false";
defparam \rx_pmas[0].rx_pma.rx_cdr .diag_rev_lpbk = "false";
defparam \rx_pmas[0].rx_pma.rx_cdr .enable_gpon_detection = "false";
defparam \rx_pmas[0].rx_pma.rx_cdr .enabled_for_reconfig = "true";
defparam \rx_pmas[0].rx_pma.rx_cdr .fast_lock_mode = "true";
defparam \rx_pmas[0].rx_pma.rx_cdr .fb_sel = "vcoclk";
defparam \rx_pmas[0].rx_pma.rx_cdr .hs_levshift_power_supply_setting = 1;
defparam \rx_pmas[0].rx_pma.rx_cdr .ignore_phslock = "false";
defparam \rx_pmas[0].rx_pma.rx_cdr .l_counter_pd_clock_disable = "false";
defparam \rx_pmas[0].rx_pma.rx_cdr .m_counter = 0;
defparam \rx_pmas[0].rx_pma.rx_cdr .output_clock_frequency = "1000.0 mhz";
defparam \rx_pmas[0].rx_pma.rx_cdr .pcie_freq_control = "pcie_100mhz";
defparam \rx_pmas[0].rx_pma.rx_cdr .pd_charge_pump_current_ctrl = 0;
defparam \rx_pmas[0].rx_pma.rx_cdr .pd_l_counter = 0;
defparam \rx_pmas[0].rx_pma.rx_cdr .pfd_charge_pump_current_ctrl = 0;
defparam \rx_pmas[0].rx_pma.rx_cdr .pfd_l_counter = 0;
defparam \rx_pmas[0].rx_pma.rx_cdr .powerdown = "false";
defparam \rx_pmas[0].rx_pma.rx_cdr .ref_clk_div = 0;
defparam \rx_pmas[0].rx_pma.rx_cdr .reference_clock_frequency = "100.0 mhz";
defparam \rx_pmas[0].rx_pma.rx_cdr .regulator_volt_inc = "0";
defparam \rx_pmas[0].rx_pma.rx_cdr .replica_bias_ctrl = "true";
defparam \rx_pmas[0].rx_pma.rx_cdr .reverse_serial_lpbk = "false";
defparam \rx_pmas[0].rx_pma.rx_cdr .ripple_cap_ctrl = "none";
defparam \rx_pmas[0].rx_pma.rx_cdr .rxpll_pd_bw_ctrl = 300;
defparam \rx_pmas[0].rx_pma.rx_cdr .rxpll_pfd_bw_ctrl = 0;
defparam \rx_pmas[0].rx_pma.rx_cdr .txpll_hclk_driver_enable = "false";
defparam \rx_pmas[0].rx_pma.rx_cdr .use_default_base_address = "true";
defparam \rx_pmas[0].rx_pma.rx_cdr .user_base_address = 0;
defparam \rx_pmas[0].rx_pma.rx_cdr .vco_overange_ref = "ref_2";
defparam \rx_pmas[0].rx_pma.rx_cdr .vco_range_ctrl_en = "true";

cyclonev_hssi_pma_rx_buf \rx_pmas[0].rx_pma.rx_pma_buf (
	.avmmclk(avmmclk[0]),
	.avmmread(avmmread[0]),
	.avmmrstn(avmmrstn[0]),
	.avmmwrite(avmmwrite[0]),
	.ck0sigdet(\rx_pmas[0].rx_pma.wire_clkdivrxrx ),
	.datain(datain[0]),
	.hardoccalen(hardoccalen[0]),
	.lpbkp(seriallpbkin[0]),
	.nonuserfrompmaux(\rx_pmas[0].rx_pma.nonuserfrompmaux ),
	.rstn(rstn[0]),
	.slpbk(!seriallpbken[0]),
	.avmmaddress({avmmaddress[10],avmmaddress[9],avmmaddress[8],avmmaddress[7],avmmaddress[6],avmmaddress[5],avmmaddress[4],avmmaddress[3],avmmaddress[2],avmmaddress[1],avmmaddress[0]}),
	.avmmbyteen({avmmbyteen[1],avmmbyteen[0]}),
	.avmmwritedata({avmmwritedata[15],avmmwritedata[14],avmmwritedata[13],avmmwritedata[12],avmmwritedata[11],avmmwritedata[10],avmmwritedata[9],avmmwritedata[8],avmmwritedata[7],avmmwritedata[6],avmmwritedata[5],avmmwritedata[4],avmmwritedata[3],avmmwritedata[2],avmmwritedata[1],avmmwritedata[0]}),
	.blockselect(blockselect_buf[0]),
	.dataout(\rx_pmas[0].rx_pma.wire_dataout_to_cdr ),
	.rdlpbkp(rdlpbkp[0]),
	.sd(sd[0]),
	.avmmreaddata(\rx_pmas[0].rx_pma.rx_pma_buf_AVMMREADDATA_bus ));
defparam \rx_pmas[0].rx_pma.rx_pma_buf .avmm_group_channel_index = 0;
defparam \rx_pmas[0].rx_pma.rx_pma_buf .cdrclk_to_cgb = "cdrclk_2cgb_dis";
defparam \rx_pmas[0].rx_pma.rx_pma_buf .channel_number = 0;
defparam \rx_pmas[0].rx_pma.rx_pma_buf .ct_equalizer_setting = 0;
defparam \rx_pmas[0].rx_pma.rx_pma_buf .diagnostic_loopback = "diag_lpbk_off";
defparam \rx_pmas[0].rx_pma.rx_pma_buf .pdb_sd = "true";
defparam \rx_pmas[0].rx_pma.rx_pma_buf .reverse_loopback = "reverse_lpbk_rx";
defparam \rx_pmas[0].rx_pma.rx_pma_buf .rx_acgain_a = "aref_volt_0";
defparam \rx_pmas[0].rx_pma.rx_pma_buf .rx_acgain_v = "vref_volt_1p0";
defparam \rx_pmas[0].rx_pma.rx_pma_buf .rx_dc_gain = 0;
defparam \rx_pmas[0].rx_pma.rx_pma_buf .rx_sel_half_bw = "full_bw";
defparam \rx_pmas[0].rx_pma.rx_pma_buf .sd_off = 1;
defparam \rx_pmas[0].rx_pma.rx_pma_buf .sd_on = 16;
defparam \rx_pmas[0].rx_pma.rx_pma_buf .sd_threshold = 3;
defparam \rx_pmas[0].rx_pma.rx_pma_buf .term_sel = "100 ohms";
defparam \rx_pmas[0].rx_pma.rx_pma_buf .use_default_base_address = "true";
defparam \rx_pmas[0].rx_pma.rx_pma_buf .user_base_address = 0;
defparam \rx_pmas[0].rx_pma.rx_pma_buf .vcm_current_add = "vcm_current_1";
defparam \rx_pmas[0].rx_pma.rx_pma_buf .vcm_sel = "vtt_0p80v";

cyclonev_hssi_pma_cdr_refclk_select_mux \rx_pmas[0].rx_pma.cdr_refclk_mux0 (
	.avmmclk(avmmclk[0]),
	.avmmread(avmmread[0]),
	.avmmrstn(avmmrstn[0]),
	.avmmwrite(avmmwrite[0]),
	.calclk(gnd),
	.ffplloutbot(gnd),
	.ffpllouttop(gnd),
	.pldclk(gnd),
	.refiqclk0(cdr_ref_clk[0]),
	.refiqclk1(gnd),
	.refiqclk10(gnd),
	.refiqclk2(gnd),
	.refiqclk3(gnd),
	.refiqclk4(gnd),
	.refiqclk5(gnd),
	.refiqclk6(gnd),
	.refiqclk7(gnd),
	.refiqclk8(gnd),
	.refiqclk9(gnd),
	.rxiqclk0(gnd),
	.rxiqclk1(gnd),
	.rxiqclk10(gnd),
	.rxiqclk2(gnd),
	.rxiqclk3(gnd),
	.rxiqclk4(gnd),
	.rxiqclk5(gnd),
	.rxiqclk6(gnd),
	.rxiqclk7(gnd),
	.rxiqclk8(gnd),
	.rxiqclk9(gnd),
	.avmmaddress({avmmaddress[10],avmmaddress[9],avmmaddress[8],avmmaddress[7],avmmaddress[6],avmmaddress[5],avmmaddress[4],avmmaddress[3],avmmaddress[2],avmmaddress[1],avmmaddress[0]}),
	.avmmbyteen({avmmbyteen[1],avmmbyteen[0]}),
	.avmmwritedata({avmmwritedata[15],avmmwritedata[14],avmmwritedata[13],avmmwritedata[12],avmmwritedata[11],avmmwritedata[10],avmmwritedata[9],avmmwritedata[8],avmmwritedata[7],avmmwritedata[6],avmmwritedata[5],avmmwritedata[4],avmmwritedata[3],avmmwritedata[2],avmmwritedata[1],avmmwritedata[0]}),
	.blockselect(blockselect_mux[0]),
	.clkout(\rx_pmas[0].rx_pma.wire_refclk_to_cdr ),
	.avmmreaddata(\rx_pmas[0].rx_pma.cdr_refclk_mux0_AVMMREADDATA_bus ));
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .avmm_group_channel_index = 0;
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .channel_number = 0;
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk0_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk10_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk11_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk12_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk13_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk14_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk15_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk16_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk17_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk18_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk19_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk1_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk20_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk21_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk22_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk23_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk24_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk25_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk2_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk3_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk4_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk5_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk6_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk7_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk8_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .inclk9_logical_to_physical_mapping = "unused";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .mux_type = "cdr_refclk_select_mux";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .refclk_select = "ref_iqclk0";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .reference_clock_frequency = "100.0 mhz";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .use_default_base_address = "true";
defparam \rx_pmas[0].rx_pma.cdr_refclk_mux0 .user_base_address = 0;

cyclonev_hssi_pma_aux \rx_pmas[0].rx_pma.rx_pma_aux (
	.calclk(calclk[0]),
	.calpdb(vcc),
	.testcntl(gnd),
	.refiqclk(6'b000000),
	.atb0out(\rx_pmas[0].rx_pma.rx_pma_aux~O_ATB0OUT ),
	.atb1out(),
	.nonusertoio(\rx_pmas[0].rx_pma.nonuserfrompmaux ),
	.zrxtx50());
defparam \rx_pmas[0].rx_pma.rx_pma_aux .avmm_group_channel_index = 0;
defparam \rx_pmas[0].rx_pma.rx_pma_aux .cal_clk_sel = "pm_aux_iqclk_cal_clk_sel_cal_clk";
defparam \rx_pmas[0].rx_pma.rx_pma_aux .cal_result_status = "pm_aux_result_status_tx";
defparam \rx_pmas[0].rx_pma.rx_pma_aux .continuous_calibration = "true";
defparam \rx_pmas[0].rx_pma.rx_pma_aux .pm_aux_cal_clk_test_sel = "false";
defparam \rx_pmas[0].rx_pma.rx_pma_aux .rx_cal_override_value = 0;
defparam \rx_pmas[0].rx_pma.rx_pma_aux .rx_cal_override_value_enable = "false";
defparam \rx_pmas[0].rx_pma.rx_pma_aux .rx_imp = "cal_imp_46_ohm";
defparam \rx_pmas[0].rx_pma.rx_pma_aux .test_counter_enable = "false";
defparam \rx_pmas[0].rx_pma.rx_pma_aux .tx_cal_override_value = 0;
defparam \rx_pmas[0].rx_pma.rx_pma_aux .tx_cal_override_value_enable = "false";
defparam \rx_pmas[0].rx_pma.rx_pma_aux .tx_imp = "cal_imp_48_ohm";
defparam \rx_pmas[0].rx_pma.rx_pma_aux .use_default_base_address = "true";
defparam \rx_pmas[0].rx_pma.rx_pma_aux .user_base_address = 0;

endmodule

module NATIVE_TRANSCEIVER_IP_av_tx_pma (
	blockselect_buf,
	dataout,
	rxdetectvalid,
	rxfound,
	avmmreaddata_buf_0,
	avmmreaddata_buf_1,
	avmmreaddata_buf_2,
	avmmreaddata_buf_3,
	avmmreaddata_buf_4,
	avmmreaddata_buf_5,
	avmmreaddata_buf_6,
	avmmreaddata_buf_7,
	avmmreaddata_buf_8,
	avmmreaddata_buf_9,
	avmmreaddata_buf_10,
	avmmreaddata_buf_11,
	avmmreaddata_buf_12,
	avmmreaddata_buf_13,
	avmmreaddata_buf_14,
	avmmreaddata_buf_15,
	chnl_avmm_write_0,
	chnl_avmm_read_0,
	chnl_avmm_clk_0,
	chnl_avmm_rstn_0,
	chnl_avmm_writedata_0,
	chnl_avmm_writedata_1,
	chnl_avmm_writedata_2,
	chnl_avmm_writedata_3,
	chnl_avmm_writedata_4,
	chnl_avmm_writedata_5,
	chnl_avmm_writedata_6,
	chnl_avmm_writedata_7,
	chnl_avmm_writedata_8,
	chnl_avmm_writedata_9,
	chnl_avmm_writedata_10,
	chnl_avmm_writedata_11,
	chnl_avmm_writedata_12,
	chnl_avmm_writedata_13,
	chnl_avmm_writedata_14,
	chnl_avmm_writedata_15,
	chnl_avmm_address_0,
	chnl_avmm_address_1,
	chnl_avmm_address_2,
	chnl_avmm_address_3,
	chnl_avmm_address_4,
	chnl_avmm_address_5,
	chnl_avmm_address_6,
	chnl_avmm_address_7,
	chnl_avmm_address_8,
	chnl_avmm_address_9,
	chnl_avmm_address_10,
	chnl_avmm_byteen_0,
	chnl_avmm_byteen_1,
	atb_comp_out,
	blockselect_ser,
	clkdivtx,
	seriallpbkout,
	avmmreaddata_ser_0,
	avmmreaddata_ser_1,
	avmmreaddata_ser_2,
	avmmreaddata_ser_3,
	avmmreaddata_ser_4,
	avmmreaddata_ser_5,
	avmmreaddata_ser_6,
	avmmreaddata_ser_7,
	avmmreaddata_ser_8,
	avmmreaddata_ser_9,
	avmmreaddata_ser_10,
	avmmreaddata_ser_11,
	avmmreaddata_ser_12,
	avmmreaddata_ser_13,
	avmmreaddata_ser_14,
	avmmreaddata_ser_15,
	pmatxdetectrx,
	pmatxelecidle,
	rdlpbkp_0,
	dataouttopma_0,
	dataouttopma_1,
	dataouttopma_2,
	dataouttopma_3,
	dataouttopma_4,
	dataouttopma_5,
	dataouttopma_6,
	dataouttopma_7,
	dataouttopma_8,
	dataouttopma_9,
	dataouttopma_10,
	dataouttopma_11,
	dataouttopma_12,
	dataouttopma_13,
	dataouttopma_14,
	dataouttopma_15,
	dataouttopma_16,
	dataouttopma_17,
	dataouttopma_18,
	dataouttopma_19,
	blockselect_cgb,
	avmmreaddata_cgb_0,
	avmmreaddata_cgb_1,
	avmmreaddata_cgb_2,
	avmmreaddata_cgb_3,
	avmmreaddata_cgb_4,
	avmmreaddata_cgb_5,
	avmmreaddata_cgb_6,
	avmmreaddata_cgb_7,
	avmmreaddata_cgb_8,
	avmmreaddata_cgb_9,
	avmmreaddata_cgb_10,
	avmmreaddata_cgb_11,
	avmmreaddata_cgb_12,
	avmmreaddata_cgb_13,
	avmmreaddata_cgb_14,
	avmmreaddata_cgb_15,
	gen_slpbk_regr_seriallpbken,
	reconfig_to_xcvr_0,
	tx_analogreset_0,
	ext_pll_clk_0)/* synthesis synthesis_greybox=0 */;
output 	[0:0] blockselect_buf;
output 	[0:0] dataout;
output 	[0:0] rxdetectvalid;
output 	[0:0] rxfound;
output 	avmmreaddata_buf_0;
output 	avmmreaddata_buf_1;
output 	avmmreaddata_buf_2;
output 	avmmreaddata_buf_3;
output 	avmmreaddata_buf_4;
output 	avmmreaddata_buf_5;
output 	avmmreaddata_buf_6;
output 	avmmreaddata_buf_7;
output 	avmmreaddata_buf_8;
output 	avmmreaddata_buf_9;
output 	avmmreaddata_buf_10;
output 	avmmreaddata_buf_11;
output 	avmmreaddata_buf_12;
output 	avmmreaddata_buf_13;
output 	avmmreaddata_buf_14;
output 	avmmreaddata_buf_15;
input 	chnl_avmm_write_0;
input 	chnl_avmm_read_0;
input 	chnl_avmm_clk_0;
input 	chnl_avmm_rstn_0;
input 	chnl_avmm_writedata_0;
input 	chnl_avmm_writedata_1;
input 	chnl_avmm_writedata_2;
input 	chnl_avmm_writedata_3;
input 	chnl_avmm_writedata_4;
input 	chnl_avmm_writedata_5;
input 	chnl_avmm_writedata_6;
input 	chnl_avmm_writedata_7;
input 	chnl_avmm_writedata_8;
input 	chnl_avmm_writedata_9;
input 	chnl_avmm_writedata_10;
input 	chnl_avmm_writedata_11;
input 	chnl_avmm_writedata_12;
input 	chnl_avmm_writedata_13;
input 	chnl_avmm_writedata_14;
input 	chnl_avmm_writedata_15;
input 	chnl_avmm_address_0;
input 	chnl_avmm_address_1;
input 	chnl_avmm_address_2;
input 	chnl_avmm_address_3;
input 	chnl_avmm_address_4;
input 	chnl_avmm_address_5;
input 	chnl_avmm_address_6;
input 	chnl_avmm_address_7;
input 	chnl_avmm_address_8;
input 	chnl_avmm_address_9;
input 	chnl_avmm_address_10;
input 	chnl_avmm_byteen_0;
input 	chnl_avmm_byteen_1;
output 	[0:0] atb_comp_out;
output 	[0:0] blockselect_ser;
output 	[0:0] clkdivtx;
output 	[0:0] seriallpbkout;
output 	avmmreaddata_ser_0;
output 	avmmreaddata_ser_1;
output 	avmmreaddata_ser_2;
output 	avmmreaddata_ser_3;
output 	avmmreaddata_ser_4;
output 	avmmreaddata_ser_5;
output 	avmmreaddata_ser_6;
output 	avmmreaddata_ser_7;
output 	avmmreaddata_ser_8;
output 	avmmreaddata_ser_9;
output 	avmmreaddata_ser_10;
output 	avmmreaddata_ser_11;
output 	avmmreaddata_ser_12;
output 	avmmreaddata_ser_13;
output 	avmmreaddata_ser_14;
output 	avmmreaddata_ser_15;
input 	pmatxdetectrx;
input 	pmatxelecidle;
input 	rdlpbkp_0;
input 	dataouttopma_0;
input 	dataouttopma_1;
input 	dataouttopma_2;
input 	dataouttopma_3;
input 	dataouttopma_4;
input 	dataouttopma_5;
input 	dataouttopma_6;
input 	dataouttopma_7;
input 	dataouttopma_8;
input 	dataouttopma_9;
input 	dataouttopma_10;
input 	dataouttopma_11;
input 	dataouttopma_12;
input 	dataouttopma_13;
input 	dataouttopma_14;
input 	dataouttopma_15;
input 	dataouttopma_16;
input 	dataouttopma_17;
input 	dataouttopma_18;
input 	dataouttopma_19;
output 	[0:0] blockselect_cgb;
output 	avmmreaddata_cgb_0;
output 	avmmreaddata_cgb_1;
output 	avmmreaddata_cgb_2;
output 	avmmreaddata_cgb_3;
output 	avmmreaddata_cgb_4;
output 	avmmreaddata_cgb_5;
output 	avmmreaddata_cgb_6;
output 	avmmreaddata_cgb_7;
output 	avmmreaddata_cgb_8;
output 	avmmreaddata_cgb_9;
output 	avmmreaddata_cgb_10;
output 	avmmreaddata_cgb_11;
output 	avmmreaddata_cgb_12;
output 	avmmreaddata_cgb_13;
output 	avmmreaddata_cgb_14;
output 	avmmreaddata_cgb_15;
input 	gen_slpbk_regr_seriallpbken;
input 	reconfig_to_xcvr_0;
input 	tx_analogreset_0;
input 	ext_pll_clk_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



NATIVE_TRANSCEIVER_IP_av_tx_pma_ch \tx_pma_insts[0].av_tx_pma_ch_inst (
	.blockselect_buf(blockselect_buf[0]),
	.dataout(dataout[0]),
	.rxdetectvalid(rxdetectvalid[0]),
	.rxfound(rxfound[0]),
	.avmmreaddata_buf({avmmreaddata_buf_15,avmmreaddata_buf_14,avmmreaddata_buf_13,avmmreaddata_buf_12,avmmreaddata_buf_11,avmmreaddata_buf_10,avmmreaddata_buf_9,avmmreaddata_buf_8,avmmreaddata_buf_7,avmmreaddata_buf_6,avmmreaddata_buf_5,avmmreaddata_buf_4,avmmreaddata_buf_3,
avmmreaddata_buf_2,avmmreaddata_buf_1,avmmreaddata_buf_0}),
	.avmmwrite(chnl_avmm_write_0),
	.avmmread(chnl_avmm_read_0),
	.avmmclk(chnl_avmm_clk_0),
	.avmmrstn(chnl_avmm_rstn_0),
	.avmmwritedata({chnl_avmm_writedata_15,chnl_avmm_writedata_14,chnl_avmm_writedata_13,chnl_avmm_writedata_12,chnl_avmm_writedata_11,chnl_avmm_writedata_10,chnl_avmm_writedata_9,chnl_avmm_writedata_8,chnl_avmm_writedata_7,chnl_avmm_writedata_6,chnl_avmm_writedata_5,
chnl_avmm_writedata_4,chnl_avmm_writedata_3,chnl_avmm_writedata_2,chnl_avmm_writedata_1,chnl_avmm_writedata_0}),
	.avmmaddress({chnl_avmm_address_10,chnl_avmm_address_9,chnl_avmm_address_8,chnl_avmm_address_7,chnl_avmm_address_6,chnl_avmm_address_5,chnl_avmm_address_4,chnl_avmm_address_3,chnl_avmm_address_2,chnl_avmm_address_1,chnl_avmm_address_0}),
	.avmmbyteen({chnl_avmm_byteen_1,chnl_avmm_byteen_0}),
	.atb_comp_out(atb_comp_out[0]),
	.blockselect_ser(blockselect_ser[0]),
	.clkdivtx(clkdivtx[0]),
	.seriallpbkout(seriallpbkout[0]),
	.avmmreaddata_ser({avmmreaddata_ser_15,avmmreaddata_ser_14,avmmreaddata_ser_13,avmmreaddata_ser_12,avmmreaddata_ser_11,avmmreaddata_ser_10,avmmreaddata_ser_9,avmmreaddata_ser_8,avmmreaddata_ser_7,avmmreaddata_ser_6,avmmreaddata_ser_5,avmmreaddata_ser_4,avmmreaddata_ser_3,
avmmreaddata_ser_2,avmmreaddata_ser_1,avmmreaddata_ser_0}),
	.txdetrx(pmatxdetectrx),
	.txelecidl(pmatxelecidle),
	.vrlpbkp(rdlpbkp_0),
	.datain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,dataouttopma_19,dataouttopma_18,dataouttopma_17,dataouttopma_16,dataouttopma_15,
dataouttopma_14,dataouttopma_13,dataouttopma_12,dataouttopma_11,dataouttopma_10,dataouttopma_9,dataouttopma_8,dataouttopma_7,dataouttopma_6,dataouttopma_5,dataouttopma_4,dataouttopma_3,dataouttopma_2,dataouttopma_1,dataouttopma_0}),
	.blockselect_cgb(blockselect_cgb[0]),
	.avmmreaddata_cgb({avmmreaddata_cgb_15,avmmreaddata_cgb_14,avmmreaddata_cgb_13,avmmreaddata_cgb_12,avmmreaddata_cgb_11,avmmreaddata_cgb_10,avmmreaddata_cgb_9,avmmreaddata_cgb_8,avmmreaddata_cgb_7,avmmreaddata_cgb_6,avmmreaddata_cgb_5,avmmreaddata_cgb_4,avmmreaddata_cgb_3,
avmmreaddata_cgb_2,avmmreaddata_cgb_1,avmmreaddata_cgb_0}),
	.seriallpbken(gen_slpbk_regr_seriallpbken),
	.calclk(reconfig_to_xcvr_0),
	.rstn(tx_analogreset_0),
	.clk({ext_pll_clk_0}));

endmodule

module NATIVE_TRANSCEIVER_IP_av_tx_pma_ch (
	blockselect_buf,
	dataout,
	rxdetectvalid,
	rxfound,
	avmmreaddata_buf,
	avmmwrite,
	avmmread,
	avmmclk,
	avmmrstn,
	avmmwritedata,
	avmmaddress,
	avmmbyteen,
	atb_comp_out,
	blockselect_ser,
	clkdivtx,
	seriallpbkout,
	avmmreaddata_ser,
	txdetrx,
	txelecidl,
	vrlpbkp,
	datain,
	blockselect_cgb,
	avmmreaddata_cgb,
	seriallpbken,
	calclk,
	rstn,
	clk)/* synthesis synthesis_greybox=0 */;
output 	blockselect_buf;
output 	dataout;
output 	rxdetectvalid;
output 	rxfound;
output 	[15:0] avmmreaddata_buf;
input 	avmmwrite;
input 	avmmread;
input 	avmmclk;
input 	avmmrstn;
input 	[15:0] avmmwritedata;
input 	[10:0] avmmaddress;
input 	[1:0] avmmbyteen;
output 	atb_comp_out;
output 	blockselect_ser;
output 	clkdivtx;
output 	seriallpbkout;
output 	[15:0] avmmreaddata_ser;
input 	txdetrx;
input 	txelecidl;
input 	vrlpbkp;
input 	[79:0] datain;
output 	blockselect_cgb;
output 	[15:0] avmmreaddata_cgb;
input 	seriallpbken;
input 	calclk;
input 	rstn;
input 	[0:0] clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \tx_pma_ch.tx_pma_buf.tx_pma_buf~O_COMPASS ;
wire \tx_pma_ch.dataout_from_ser ;
wire \tx_pma_ch.cpulse_from_cgb ;
wire \tx_pma_ch.hclk_from_cgb ;
wire \tx_pma_ch.lfclk_from_cgb ;
wire \tx_pma_ch.pclk_from_cgb[0] ;
wire \tx_pma_ch.pclk_from_cgb[1] ;
wire \tx_pma_ch.pclk_from_cgb[2] ;
wire \tx_pma_ch.tx_pma_buf.nonuserfrompmaux ;
wire \tx_pma_ch.tx_pma_buf.atb0outtopllaux ;
wire \tx_pma_ch.tx_pma_buf.atb1outtopllaux ;

wire [15:0] \tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus ;
wire [15:0] \tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus ;
wire [15:0] \tx_pma_ch.tx_cgb_AVMMREADDATA_bus ;
wire [2:0] \tx_pma_ch.tx_cgb_PCLK_bus ;

assign avmmreaddata_buf[0] = \tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus [0];
assign avmmreaddata_buf[1] = \tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus [1];
assign avmmreaddata_buf[2] = \tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus [2];
assign avmmreaddata_buf[3] = \tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus [3];
assign avmmreaddata_buf[4] = \tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus [4];
assign avmmreaddata_buf[5] = \tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus [5];
assign avmmreaddata_buf[6] = \tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus [6];
assign avmmreaddata_buf[7] = \tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus [7];
assign avmmreaddata_buf[8] = \tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus [8];
assign avmmreaddata_buf[9] = \tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus [9];
assign avmmreaddata_buf[10] = \tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus [10];
assign avmmreaddata_buf[11] = \tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus [11];
assign avmmreaddata_buf[12] = \tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus [12];
assign avmmreaddata_buf[13] = \tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus [13];
assign avmmreaddata_buf[14] = \tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus [14];
assign avmmreaddata_buf[15] = \tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus [15];

assign avmmreaddata_ser[0] = \tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus [0];
assign avmmreaddata_ser[1] = \tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus [1];
assign avmmreaddata_ser[2] = \tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus [2];
assign avmmreaddata_ser[3] = \tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus [3];
assign avmmreaddata_ser[4] = \tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus [4];
assign avmmreaddata_ser[5] = \tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus [5];
assign avmmreaddata_ser[6] = \tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus [6];
assign avmmreaddata_ser[7] = \tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus [7];
assign avmmreaddata_ser[8] = \tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus [8];
assign avmmreaddata_ser[9] = \tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus [9];
assign avmmreaddata_ser[10] = \tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus [10];
assign avmmreaddata_ser[11] = \tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus [11];
assign avmmreaddata_ser[12] = \tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus [12];
assign avmmreaddata_ser[13] = \tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus [13];
assign avmmreaddata_ser[14] = \tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus [14];
assign avmmreaddata_ser[15] = \tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus [15];

assign avmmreaddata_cgb[0] = \tx_pma_ch.tx_cgb_AVMMREADDATA_bus [0];
assign avmmreaddata_cgb[1] = \tx_pma_ch.tx_cgb_AVMMREADDATA_bus [1];
assign avmmreaddata_cgb[2] = \tx_pma_ch.tx_cgb_AVMMREADDATA_bus [2];
assign avmmreaddata_cgb[3] = \tx_pma_ch.tx_cgb_AVMMREADDATA_bus [3];
assign avmmreaddata_cgb[4] = \tx_pma_ch.tx_cgb_AVMMREADDATA_bus [4];
assign avmmreaddata_cgb[5] = \tx_pma_ch.tx_cgb_AVMMREADDATA_bus [5];
assign avmmreaddata_cgb[6] = \tx_pma_ch.tx_cgb_AVMMREADDATA_bus [6];
assign avmmreaddata_cgb[7] = \tx_pma_ch.tx_cgb_AVMMREADDATA_bus [7];
assign avmmreaddata_cgb[8] = \tx_pma_ch.tx_cgb_AVMMREADDATA_bus [8];
assign avmmreaddata_cgb[9] = \tx_pma_ch.tx_cgb_AVMMREADDATA_bus [9];
assign avmmreaddata_cgb[10] = \tx_pma_ch.tx_cgb_AVMMREADDATA_bus [10];
assign avmmreaddata_cgb[11] = \tx_pma_ch.tx_cgb_AVMMREADDATA_bus [11];
assign avmmreaddata_cgb[12] = \tx_pma_ch.tx_cgb_AVMMREADDATA_bus [12];
assign avmmreaddata_cgb[13] = \tx_pma_ch.tx_cgb_AVMMREADDATA_bus [13];
assign avmmreaddata_cgb[14] = \tx_pma_ch.tx_cgb_AVMMREADDATA_bus [14];
assign avmmreaddata_cgb[15] = \tx_pma_ch.tx_cgb_AVMMREADDATA_bus [15];

assign \tx_pma_ch.pclk_from_cgb[0]  = \tx_pma_ch.tx_cgb_PCLK_bus [0];
assign \tx_pma_ch.pclk_from_cgb[1]  = \tx_pma_ch.tx_cgb_PCLK_bus [1];
assign \tx_pma_ch.pclk_from_cgb[2]  = \tx_pma_ch.tx_cgb_PCLK_bus [2];

cyclonev_hssi_pma_tx_buf \tx_pma_ch.tx_pma_buf.tx_pma_buf (
	.avgvon(gnd),
	.avgvop(gnd),
	.avmmclk(avmmclk),
	.avmmread(avmmread),
	.avmmrstn(avmmrstn),
	.avmmwrite(avmmwrite),
	.datain(\tx_pma_ch.dataout_from_ser ),
	.nonuserfrompmaux(\tx_pma_ch.tx_pma_buf.nonuserfrompmaux ),
	.rxdetclk(gnd),
	.txdetrx(txdetrx),
	.txelecidl(txelecidl),
	.vrlpbkn(gnd),
	.vrlpbkn1t(gnd),
	.vrlpbkp(vrlpbkp),
	.vrlpbkp1t(gnd),
	.avmmaddress({avmmaddress[10],avmmaddress[9],avmmaddress[8],avmmaddress[7],avmmaddress[6],avmmaddress[5],avmmaddress[4],avmmaddress[3],avmmaddress[2],avmmaddress[1],avmmaddress[0]}),
	.avmmbyteen({avmmbyteen[1],avmmbyteen[0]}),
	.avmmwritedata({avmmwritedata[15],avmmwritedata[14],avmmwritedata[13],avmmwritedata[12],avmmwritedata[11],avmmwritedata[10],avmmwritedata[9],avmmwritedata[8],avmmwritedata[7],avmmwritedata[6],avmmwritedata[5],avmmwritedata[4],avmmwritedata[3],avmmwritedata[2],avmmwritedata[1],avmmwritedata[0]}),
	.icoeff(12'b000000000000),
	.blockselect(blockselect_buf),
	.compass(\tx_pma_ch.tx_pma_buf.tx_pma_buf~O_COMPASS ),
	.dataout(dataout),
	.fixedclkout(),
	.probepass(),
	.rxdetectvalid(rxdetectvalid),
	.rxfound(rxfound),
	.avmmreaddata(\tx_pma_ch.tx_pma_buf.tx_pma_buf_AVMMREADDATA_bus ),
	.detecton());
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .avmm_group_channel_index = 0;
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .channel_number = 0;
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .cml_en = "no_cml";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .common_mode_driver_sel = "volt_0p65v";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .driver_resolution_ctrl = "disabled";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .fir_coeff_ctrl_sel = "ram_ctl";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .local_ib_ctl = "ib_29ohm";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .local_ib_en = "no_local_ib";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .lst = "atb_disabled";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .pre_emp_switching_ctrl_1st_post_tap = 0;
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .rx_det = 0;
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .rx_det_pdb = "false";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .slew_rate_ctrl = 5;
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .swing_boost = "not_boost";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .term_sel = "100 ohms";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .tx_powerdown = "normal_tx_on";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .use_default_base_address = "true";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .user_base_address = 0;
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .vcm_current_addl = "vcm_current_1";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .vod_boost = "not_boost";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_buf .vod_switching_ctrl_main_tap = 50;

cyclonev_pll_aux \tx_pma_ch.tx_pma_buf.pll_aux (
	.atb0out(\tx_pma_ch.tx_pma_buf.atb0outtopllaux ),
	.atb1out(\tx_pma_ch.tx_pma_buf.atb1outtopllaux ),
	.atbcompout(atb_comp_out));
defparam \tx_pma_ch.tx_pma_buf.pll_aux .pl_aux_atb_atben0_precomp = 1'b1;
defparam \tx_pma_ch.tx_pma_buf.pll_aux .pl_aux_atb_atben1_precomp = 1'b1;
defparam \tx_pma_ch.tx_pma_buf.pll_aux .pl_aux_atb_comp_minus = 1'b1;
defparam \tx_pma_ch.tx_pma_buf.pll_aux .pl_aux_atb_comp_plus = 1'b1;
defparam \tx_pma_ch.tx_pma_buf.pll_aux .pl_aux_comp_pwr_dn = 1'b0;

cyclonev_hssi_pma_tx_ser \tx_pma_ch.tx_pma_ser (
	.avmmclk(avmmclk),
	.avmmread(avmmread),
	.avmmrstn(avmmrstn),
	.avmmwrite(avmmwrite),
	.cpulse(\tx_pma_ch.cpulse_from_cgb ),
	.hfclk(\tx_pma_ch.hclk_from_cgb ),
	.hfclkn(gnd),
	.lfclk(\tx_pma_ch.lfclk_from_cgb ),
	.lfclkn(gnd),
	.rstn(!rstn),
	.slpbk(!seriallpbken),
	.avmmaddress({avmmaddress[10],avmmaddress[9],avmmaddress[8],avmmaddress[7],avmmaddress[6],avmmaddress[5],avmmaddress[4],avmmaddress[3],avmmaddress[2],avmmaddress[1],avmmaddress[0]}),
	.avmmbyteen({avmmbyteen[1],avmmbyteen[0]}),
	.avmmwritedata({avmmwritedata[15],avmmwritedata[14],avmmwritedata[13],avmmwritedata[12],avmmwritedata[11],avmmwritedata[10],avmmwritedata[9],avmmwritedata[8],avmmwritedata[7],avmmwritedata[6],avmmwritedata[5],avmmwritedata[4],avmmwritedata[3],avmmwritedata[2],avmmwritedata[1],avmmwritedata[0]}),
	.datain({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,datain[19],datain[18],datain[17],datain[16],datain[15],datain[14],datain[13],datain[12],datain[11],datain[10],datain[9],datain[8],
datain[7],datain[6],datain[5],datain[4],datain[3],datain[2],datain[1],datain[0]}),
	.pclk({\tx_pma_ch.pclk_from_cgb[2] ,\tx_pma_ch.pclk_from_cgb[1] ,\tx_pma_ch.pclk_from_cgb[0] }),
	.avgvon(),
	.avgvop(),
	.blockselect(blockselect_ser),
	.clkdivtx(clkdivtx),
	.dataout(\tx_pma_ch.dataout_from_ser ),
	.lbvop(seriallpbkout),
	.preenout(),
	.avmmreaddata(\tx_pma_ch.tx_pma_ser_AVMMREADDATA_bus ));
defparam \tx_pma_ch.tx_pma_ser .auto_negotiation = "false";
defparam \tx_pma_ch.tx_pma_ser .avmm_group_channel_index = 0;
defparam \tx_pma_ch.tx_pma_ser .channel_number = 0;
defparam \tx_pma_ch.tx_pma_ser .clk_divtx_deskew = 0;
defparam \tx_pma_ch.tx_pma_ser .clk_forward_only_mode = "false";
defparam \tx_pma_ch.tx_pma_ser .duty_cycle_tune = "duty_cycle3";
defparam \tx_pma_ch.tx_pma_ser .forced_data_mode = 1'b0;
defparam \tx_pma_ch.tx_pma_ser .mode = 16;
defparam \tx_pma_ch.tx_pma_ser .pma_direct = "false";
defparam \tx_pma_ch.tx_pma_ser .post_tap_1_en = "true";
defparam \tx_pma_ch.tx_pma_ser .ser_loopback = "false";
defparam \tx_pma_ch.tx_pma_ser .use_default_base_address = "true";
defparam \tx_pma_ch.tx_pma_ser .user_base_address = 0;

cyclonev_hssi_pma_tx_cgb \tx_pma_ch.tx_cgb (
	.avmmclk(avmmclk),
	.avmmread(avmmread),
	.avmmrstn(avmmrstn),
	.avmmwrite(avmmwrite),
	.clkbcdr1b(gnd),
	.clkbcdr1t(gnd),
	.clkbcdrloc(gnd),
	.clkbdnseg(gnd),
	.clkbffpll(gnd),
	.clkbupseg(gnd),
	.clkcdr1b(gnd),
	.clkcdr1t(gnd),
	.clkcdrloc(clk[0]),
	.clkdnseg(gnd),
	.clkffpll(gnd),
	.clkupseg(gnd),
	.cpulsex6dn(gnd),
	.cpulsex6up(gnd),
	.cpulsexndn(gnd),
	.cpulsexnup(gnd),
	.fref(gnd),
	.hfclknx6dn(gnd),
	.hfclknx6up(gnd),
	.hfclknxndn(gnd),
	.hfclknxnup(gnd),
	.hfclkpx6dn(gnd),
	.hfclkpx6up(gnd),
	.hfclkpxndn(gnd),
	.hfclkpxnup(gnd),
	.lfclknx6dn(gnd),
	.lfclknx6up(gnd),
	.lfclknxndn(gnd),
	.lfclknxnup(gnd),
	.lfclkpx6dn(gnd),
	.lfclkpx6up(gnd),
	.lfclkpxndn(gnd),
	.lfclkpxnup(gnd),
	.pciesw(gnd),
	.pclkx6dn(gnd),
	.pclkx6up(gnd),
	.pclkxndn(gnd),
	.pclkxnup(gnd),
	.pcsrstn(vcc),
	.rstn(!rstn),
	.rxclk(gnd),
	.avmmaddress({avmmaddress[10],avmmaddress[9],avmmaddress[8],avmmaddress[7],avmmaddress[6],avmmaddress[5],avmmaddress[4],avmmaddress[3],avmmaddress[2],avmmaddress[1],avmmaddress[0]}),
	.avmmbyteen({avmmbyteen[1],avmmbyteen[0]}),
	.avmmwritedata({avmmwritedata[15],avmmwritedata[14],avmmwritedata[13],avmmwritedata[12],avmmwritedata[11],avmmwritedata[10],avmmwritedata[9],avmmwritedata[8],avmmwritedata[7],avmmwritedata[6],avmmwritedata[5],avmmwritedata[4],avmmwritedata[3],avmmwritedata[2],avmmwritedata[1],avmmwritedata[0]}),
	.blockselect(blockselect_cgb),
	.cpulse(\tx_pma_ch.cpulse_from_cgb ),
	.cpulseout(),
	.hfclkn(),
	.hfclknout(),
	.hfclkp(\tx_pma_ch.hclk_from_cgb ),
	.hfclkpout(),
	.lfclkn(),
	.lfclknout(),
	.lfclkp(\tx_pma_ch.lfclk_from_cgb ),
	.lfclkpout(),
	.pcieswdone(),
	.pciesyncp(),
	.pclkout(),
	.rxiqclk(),
	.avmmreaddata(\tx_pma_ch.tx_cgb_AVMMREADDATA_bus ),
	.pclk(\tx_pma_ch.tx_cgb_PCLK_bus ));
defparam \tx_pma_ch.tx_cgb .auto_negotiation = "false";
defparam \tx_pma_ch.tx_cgb .avmm_group_channel_index = 0;
defparam \tx_pma_ch.tx_cgb .cgb_iqclk_sel = "tristate";
defparam \tx_pma_ch.tx_cgb .cgb_sync = "normal";
defparam \tx_pma_ch.tx_cgb .channel_number = 0;
defparam \tx_pma_ch.tx_cgb .clk_mute = "disable_clockmute";
defparam \tx_pma_ch.tx_cgb .data_rate = "2000.0 mbps";
defparam \tx_pma_ch.tx_cgb .fref_vco_bypass = "normal_operation";
defparam \tx_pma_ch.tx_cgb .mode = 16;
defparam \tx_pma_ch.tx_cgb .pcie_rst = "normal_reset";
defparam \tx_pma_ch.tx_cgb .reserved_transmit_channel = "false";
defparam \tx_pma_ch.tx_cgb .reset_scheme = "counter_reset_disable";
defparam \tx_pma_ch.tx_cgb .tx_mux_power_down = "normal";
defparam \tx_pma_ch.tx_cgb .use_default_base_address = "true";
defparam \tx_pma_ch.tx_cgb .user_base_address = 0;
defparam \tx_pma_ch.tx_cgb .x1_clock0_logical_to_physical_mapping = "x1_clk_unused";
defparam \tx_pma_ch.tx_cgb .x1_clock1_logical_to_physical_mapping = "x1_clk_unused";
defparam \tx_pma_ch.tx_cgb .x1_clock2_logical_to_physical_mapping = "x1_clk_unused";
defparam \tx_pma_ch.tx_cgb .x1_clock3_logical_to_physical_mapping = "x1_clk_unused";
defparam \tx_pma_ch.tx_cgb .x1_clock4_logical_to_physical_mapping = "x1_clk_unused";
defparam \tx_pma_ch.tx_cgb .x1_clock5_logical_to_physical_mapping = "x1_clk_unused";
defparam \tx_pma_ch.tx_cgb .x1_clock6_logical_to_physical_mapping = "x1_clk_unused";
defparam \tx_pma_ch.tx_cgb .x1_clock7_logical_to_physical_mapping = "x1_clk_unused";
defparam \tx_pma_ch.tx_cgb .x1_clock_source_sel = "same_ch_txpll";
defparam \tx_pma_ch.tx_cgb .x1_div_m_sel = 1;
defparam \tx_pma_ch.tx_cgb .xn_clock_source_sel = "cgb_x1_m_div";

cyclonev_hssi_pma_aux \tx_pma_ch.tx_pma_buf.tx_pma_aux (
	.calclk(calclk),
	.calpdb(vcc),
	.testcntl(gnd),
	.refiqclk(6'b000000),
	.atb0out(\tx_pma_ch.tx_pma_buf.atb0outtopllaux ),
	.atb1out(\tx_pma_ch.tx_pma_buf.atb1outtopllaux ),
	.nonusertoio(\tx_pma_ch.tx_pma_buf.nonuserfrompmaux ),
	.zrxtx50());
defparam \tx_pma_ch.tx_pma_buf.tx_pma_aux .avmm_group_channel_index = 0;
defparam \tx_pma_ch.tx_pma_buf.tx_pma_aux .cal_clk_sel = "pm_aux_iqclk_cal_clk_sel_cal_clk";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_aux .cal_result_status = "pm_aux_result_status_tx";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_aux .continuous_calibration = "true";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_aux .pm_aux_cal_clk_test_sel = "false";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_aux .rx_cal_override_value = 0;
defparam \tx_pma_ch.tx_pma_buf.tx_pma_aux .rx_cal_override_value_enable = "false";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_aux .rx_imp = "cal_imp_46_ohm";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_aux .test_counter_enable = "false";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_aux .tx_cal_override_value = 0;
defparam \tx_pma_ch.tx_pma_buf.tx_pma_aux .tx_cal_override_value_enable = "false";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_aux .tx_imp = "cal_imp_48_ohm";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_aux .use_default_base_address = "true";
defparam \tx_pma_ch.tx_pma_buf.tx_pma_aux .user_base_address = 0;

endmodule

module NATIVE_TRANSCEIVER_IP_av_xcvr_avmm (
	blockselect_rx_pld_pcs_if,
	avmmreaddata_rx_pld_pcs_if,
	pma_blockselect_tx_buf,
	pma_avmmreaddata_tx_buf,
	pma_blockselect_rx_ser,
	pma_avmmreaddata_rx_ser,
	pma_blockselect_rx_cdr,
	pma_avmmreaddata_rx_cdr,
	blockselect_tx_pld_pcs_if,
	avmmreaddata_tx_pld_pcs_if,
	chnl_avmm_write,
	chnl_avmm_read,
	chnl_avmm_clk,
	chnl_avmm_rstn,
	chnl_avmm_writedata,
	chnl_avmm_address,
	chnl_avmm_byteen,
	avmm_interface_insts0w_pmatestbus_0,
	avmm_interface_insts0w_pmatestbus_1,
	avmm_interface_insts0w_pmatestbus_2,
	avmm_interface_insts0w_pmatestbus_3,
	avmm_interface_insts0w_pmatestbus_4,
	avmm_interface_insts0w_pmatestbus_5,
	avmm_interface_insts0w_pmatestbus_6,
	avmm_interface_insts0w_pmatestbus_7,
	avmm_interface_insts0w_pmatestbus_8,
	avmm_interface_insts0w_pmatestbus_9,
	avmm_interface_insts0w_pmatestbus_10,
	avmm_interface_insts0w_pmatestbus_11,
	avmm_interface_insts0w_pmatestbus_12,
	avmm_interface_insts0w_pmatestbus_13,
	avmm_interface_insts0w_pmatestbus_14,
	avmm_interface_insts0w_pmatestbus_15,
	avmm_interface_insts0w_pmatestbus_16,
	avmm_interface_insts0w_pmatestbus_17,
	avmm_interface_insts0w_pmatestbus_18,
	avmm_interface_insts0w_pmatestbus_19,
	avmm_interface_insts0w_pmatestbus_20,
	avmm_interface_insts0w_pmatestbus_21,
	avmm_interface_insts0w_pmatestbus_22,
	avmm_interface_insts0w_pmatestbus_23,
	blockselect_pcs8g_rx,
	avmmreaddata_pcs8g_rx,
	blockselect_com_pld_pcs_if,
	avmmreaddata_com_pld_pcs_if,
	blockselect_rx_pcs_pma_if,
	avmmreaddata_rx_pcs_pma_if,
	pma_blockselect_tx_ser,
	pma_avmmreaddata_tx_ser,
	blockselect_com_pcs_pma_if,
	avmmreaddata_com_pcs_pma_if,
	pma_blockselect_rx_buf,
	pma_avmmreaddata_rx_buf,
	pma_blockselect_rx_mux,
	pma_avmmreaddata_rx_mux,
	blockselect_pcs8g_tx,
	avmmreaddata_pcs8g_tx,
	blockselect_tx_pcs_pma_if,
	avmmreaddata_tx_pcs_pma_if,
	pma_blockselect_tx_cgb,
	pma_avmmreaddata_tx_cgb,
	avmm_interface_insts0pld_avmm_readdata_0,
	avmm_interface_insts0pld_avmm_readdata_1,
	avmm_interface_insts0pld_avmm_readdata_2,
	avmm_interface_insts0pld_avmm_readdata_3,
	avmm_interface_insts0pld_avmm_readdata_4,
	avmm_interface_insts0pld_avmm_readdata_5,
	avmm_interface_insts0pld_avmm_readdata_6,
	avmm_interface_insts0pld_avmm_readdata_7,
	avmm_interface_insts0pld_avmm_readdata_8,
	avmm_interface_insts0pld_avmm_readdata_9,
	avmm_interface_insts0pld_avmm_readdata_10,
	avmm_interface_insts0pld_avmm_readdata_11,
	avmm_interface_insts0pld_avmm_readdata_12,
	avmm_interface_insts0pld_avmm_readdata_13,
	avmm_interface_insts0pld_avmm_readdata_14,
	avmm_interface_insts0pld_avmm_readdata_15,
	out_pld_8g_rxurstpcs_n_0,
	out_pld_rxpma_rstb_in_0,
	out_pld_8g_txurstpcs_n_0,
	gen_oc_regr_hardoccalen,
	gen_slpbk_regr_seriallpbken,
	rx_digitalreset_0,
	rx_analogreset_0,
	tx_digitalreset_0,
	reconfig_to_xcvr_31,
	reconfig_to_xcvr_0,
	reconfig_to_xcvr_1,
	reconfig_to_xcvr_22,
	reconfig_to_xcvr_20,
	reconfig_to_xcvr_19,
	reconfig_to_xcvr_21,
	reconfig_to_xcvr_23,
	reconfig_to_xcvr_18,
	reconfig_to_xcvr_45,
	reconfig_to_xcvr_44,
	reconfig_to_xcvr_24,
	reconfig_to_xcvr_25,
	reconfig_to_xcvr_26,
	reconfig_to_xcvr_27,
	reconfig_to_xcvr_28,
	reconfig_to_xcvr_29,
	reconfig_to_xcvr_30,
	reconfig_to_xcvr_2,
	reconfig_to_xcvr_3,
	reconfig_to_xcvr_4,
	reconfig_to_xcvr_5,
	reconfig_to_xcvr_6,
	reconfig_to_xcvr_7,
	reconfig_to_xcvr_8,
	reconfig_to_xcvr_9,
	reconfig_to_xcvr_10,
	reconfig_to_xcvr_11,
	reconfig_to_xcvr_12,
	reconfig_to_xcvr_13,
	reconfig_to_xcvr_14,
	reconfig_to_xcvr_15,
	reconfig_to_xcvr_16,
	reconfig_to_xcvr_17,
	reconfig_to_xcvr_32,
	reconfig_to_xcvr_33,
	reconfig_to_xcvr_34,
	reconfig_to_xcvr_35,
	reconfig_to_xcvr_36,
	reconfig_to_xcvr_37,
	reconfig_to_xcvr_38,
	reconfig_to_xcvr_39,
	reconfig_to_xcvr_40,
	reconfig_to_xcvr_41,
	reconfig_to_xcvr_42,
	reconfig_to_xcvr_43)/* synthesis synthesis_greybox=0 */;
input 	[0:0] blockselect_rx_pld_pcs_if;
input 	[15:0] avmmreaddata_rx_pld_pcs_if;
input 	[0:0] pma_blockselect_tx_buf;
input 	[15:0] pma_avmmreaddata_tx_buf;
input 	[0:0] pma_blockselect_rx_ser;
input 	[15:0] pma_avmmreaddata_rx_ser;
input 	[0:0] pma_blockselect_rx_cdr;
input 	[15:0] pma_avmmreaddata_rx_cdr;
input 	[0:0] blockselect_tx_pld_pcs_if;
input 	[15:0] avmmreaddata_tx_pld_pcs_if;
output 	[0:0] chnl_avmm_write;
output 	[0:0] chnl_avmm_read;
output 	[0:0] chnl_avmm_clk;
output 	[0:0] chnl_avmm_rstn;
output 	[15:0] chnl_avmm_writedata;
output 	[10:0] chnl_avmm_address;
output 	[1:0] chnl_avmm_byteen;
output 	avmm_interface_insts0w_pmatestbus_0;
output 	avmm_interface_insts0w_pmatestbus_1;
output 	avmm_interface_insts0w_pmatestbus_2;
output 	avmm_interface_insts0w_pmatestbus_3;
output 	avmm_interface_insts0w_pmatestbus_4;
output 	avmm_interface_insts0w_pmatestbus_5;
output 	avmm_interface_insts0w_pmatestbus_6;
output 	avmm_interface_insts0w_pmatestbus_7;
output 	avmm_interface_insts0w_pmatestbus_8;
output 	avmm_interface_insts0w_pmatestbus_9;
output 	avmm_interface_insts0w_pmatestbus_10;
output 	avmm_interface_insts0w_pmatestbus_11;
output 	avmm_interface_insts0w_pmatestbus_12;
output 	avmm_interface_insts0w_pmatestbus_13;
output 	avmm_interface_insts0w_pmatestbus_14;
output 	avmm_interface_insts0w_pmatestbus_15;
output 	avmm_interface_insts0w_pmatestbus_16;
output 	avmm_interface_insts0w_pmatestbus_17;
output 	avmm_interface_insts0w_pmatestbus_18;
output 	avmm_interface_insts0w_pmatestbus_19;
output 	avmm_interface_insts0w_pmatestbus_20;
output 	avmm_interface_insts0w_pmatestbus_21;
output 	avmm_interface_insts0w_pmatestbus_22;
output 	avmm_interface_insts0w_pmatestbus_23;
input 	[0:0] blockselect_pcs8g_rx;
input 	[15:0] avmmreaddata_pcs8g_rx;
input 	[0:0] blockselect_com_pld_pcs_if;
input 	[15:0] avmmreaddata_com_pld_pcs_if;
input 	[0:0] blockselect_rx_pcs_pma_if;
input 	[15:0] avmmreaddata_rx_pcs_pma_if;
input 	[0:0] pma_blockselect_tx_ser;
input 	[15:0] pma_avmmreaddata_tx_ser;
input 	[0:0] blockselect_com_pcs_pma_if;
input 	[15:0] avmmreaddata_com_pcs_pma_if;
input 	[0:0] pma_blockselect_rx_buf;
input 	[15:0] pma_avmmreaddata_rx_buf;
input 	[0:0] pma_blockselect_rx_mux;
input 	[15:0] pma_avmmreaddata_rx_mux;
input 	[0:0] blockselect_pcs8g_tx;
input 	[15:0] avmmreaddata_pcs8g_tx;
input 	[0:0] blockselect_tx_pcs_pma_if;
input 	[15:0] avmmreaddata_tx_pcs_pma_if;
input 	[0:0] pma_blockselect_tx_cgb;
input 	[15:0] pma_avmmreaddata_tx_cgb;
output 	avmm_interface_insts0pld_avmm_readdata_0;
output 	avmm_interface_insts0pld_avmm_readdata_1;
output 	avmm_interface_insts0pld_avmm_readdata_2;
output 	avmm_interface_insts0pld_avmm_readdata_3;
output 	avmm_interface_insts0pld_avmm_readdata_4;
output 	avmm_interface_insts0pld_avmm_readdata_5;
output 	avmm_interface_insts0pld_avmm_readdata_6;
output 	avmm_interface_insts0pld_avmm_readdata_7;
output 	avmm_interface_insts0pld_avmm_readdata_8;
output 	avmm_interface_insts0pld_avmm_readdata_9;
output 	avmm_interface_insts0pld_avmm_readdata_10;
output 	avmm_interface_insts0pld_avmm_readdata_11;
output 	avmm_interface_insts0pld_avmm_readdata_12;
output 	avmm_interface_insts0pld_avmm_readdata_13;
output 	avmm_interface_insts0pld_avmm_readdata_14;
output 	avmm_interface_insts0pld_avmm_readdata_15;
output 	out_pld_8g_rxurstpcs_n_0;
output 	out_pld_rxpma_rstb_in_0;
output 	out_pld_8g_txurstpcs_n_0;
output 	gen_oc_regr_hardoccalen;
output 	gen_slpbk_regr_seriallpbken;
input 	rx_digitalreset_0;
input 	rx_analogreset_0;
input 	tx_digitalreset_0;
input 	reconfig_to_xcvr_31;
input 	reconfig_to_xcvr_0;
input 	reconfig_to_xcvr_1;
input 	reconfig_to_xcvr_22;
input 	reconfig_to_xcvr_20;
input 	reconfig_to_xcvr_19;
input 	reconfig_to_xcvr_21;
input 	reconfig_to_xcvr_23;
input 	reconfig_to_xcvr_18;
input 	reconfig_to_xcvr_45;
input 	reconfig_to_xcvr_44;
input 	reconfig_to_xcvr_24;
input 	reconfig_to_xcvr_25;
input 	reconfig_to_xcvr_26;
input 	reconfig_to_xcvr_27;
input 	reconfig_to_xcvr_28;
input 	reconfig_to_xcvr_29;
input 	reconfig_to_xcvr_30;
input 	reconfig_to_xcvr_2;
input 	reconfig_to_xcvr_3;
input 	reconfig_to_xcvr_4;
input 	reconfig_to_xcvr_5;
input 	reconfig_to_xcvr_6;
input 	reconfig_to_xcvr_7;
input 	reconfig_to_xcvr_8;
input 	reconfig_to_xcvr_9;
input 	reconfig_to_xcvr_10;
input 	reconfig_to_xcvr_11;
input 	reconfig_to_xcvr_12;
input 	reconfig_to_xcvr_13;
input 	reconfig_to_xcvr_14;
input 	reconfig_to_xcvr_15;
input 	reconfig_to_xcvr_16;
input 	reconfig_to_xcvr_17;
input 	reconfig_to_xcvr_32;
input 	reconfig_to_xcvr_33;
input 	reconfig_to_xcvr_34;
input 	reconfig_to_xcvr_35;
input 	reconfig_to_xcvr_36;
input 	reconfig_to_xcvr_37;
input 	reconfig_to_xcvr_38;
input 	reconfig_to_xcvr_39;
input 	reconfig_to_xcvr_40;
input 	reconfig_to_xcvr_41;
input 	reconfig_to_xcvr_42;
input 	reconfig_to_xcvr_43;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|av_readdata[0]~q ;
wire \avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|av_readdata[1]~q ;
wire \avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|av_readdata[2]~q ;
wire \avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|av_readdata[3]~q ;
wire \avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|av_readdata[4]~q ;
wire \avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_rstctl_reg_rx.r_rx_rst_ovr~q ;
wire \avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_rstctl_reg_rx.r_rx_digital_rst_n_val~q ;
wire \avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_rstctl_reg_rx.r_rx_analog_rst_n_val~q ;
wire \avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_rstctl_reg_tx.r_tx_rst_ovr~q ;
wire \avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_rstctl_reg_tx.r_tx_digital_rst_n_val~q ;
wire \avmm_interface_insts[0].avmm_readdata[0] ;
wire \avmm_interface_insts[0].avmm_readdata[1] ;
wire \avmm_interface_insts[0].avmm_readdata[2] ;
wire \avmm_interface_insts[0].avmm_readdata[3] ;
wire \avmm_interface_insts[0].avmm_readdata[4] ;
wire \avmm_interface_insts[0].avmm_readdata[5] ;
wire \avmm_interface_insts[0].avmm_readdata[6] ;
wire \avmm_interface_insts[0].avmm_readdata[7] ;
wire \avmm_interface_insts[0].avmm_readdata[8] ;
wire \avmm_interface_insts[0].avmm_readdata[9] ;
wire \avmm_interface_insts[0].avmm_readdata[10] ;
wire \avmm_interface_insts[0].avmm_readdata[11] ;
wire \avmm_interface_insts[0].avmm_readdata[12] ;
wire \avmm_interface_insts[0].avmm_readdata[13] ;
wire \avmm_interface_insts[0].avmm_readdata[14] ;
wire \avmm_interface_insts[0].avmm_readdata[15] ;
wire \avmm_interface_insts[0].avmm_write~combout ;
wire \avmm_interface_insts[0].avmm_read~combout ;
wire \avmm_interface_insts[0].csr_avmm_n_sel_r~q ;

wire [1:0] \avmm_interface_insts[0].av_hssi_avmm_interface_inst_BYTEENCHNL_bus ;
wire [15:0] \avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus ;
wire [10:0] \avmm_interface_insts[0].av_hssi_avmm_interface_inst_REGADDRCHNL_bus ;
wire [15:0] \avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus ;
wire [23:0] \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus ;

assign chnl_avmm_byteen[0] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_BYTEENCHNL_bus [0];
assign chnl_avmm_byteen[1] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_BYTEENCHNL_bus [1];

assign chnl_avmm_writedata[0] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [0];
assign chnl_avmm_writedata[1] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [1];
assign chnl_avmm_writedata[2] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [2];
assign chnl_avmm_writedata[3] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [3];
assign chnl_avmm_writedata[4] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [4];
assign chnl_avmm_writedata[5] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [5];
assign chnl_avmm_writedata[6] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [6];
assign chnl_avmm_writedata[7] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [7];
assign chnl_avmm_writedata[8] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [8];
assign chnl_avmm_writedata[9] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [9];
assign chnl_avmm_writedata[10] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [10];
assign chnl_avmm_writedata[11] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [11];
assign chnl_avmm_writedata[12] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [12];
assign chnl_avmm_writedata[13] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [13];
assign chnl_avmm_writedata[14] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [14];
assign chnl_avmm_writedata[15] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [15];

assign chnl_avmm_address[0] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_REGADDRCHNL_bus [0];
assign chnl_avmm_address[1] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_REGADDRCHNL_bus [1];
assign chnl_avmm_address[2] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_REGADDRCHNL_bus [2];
assign chnl_avmm_address[3] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_REGADDRCHNL_bus [3];
assign chnl_avmm_address[4] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_REGADDRCHNL_bus [4];
assign chnl_avmm_address[5] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_REGADDRCHNL_bus [5];
assign chnl_avmm_address[6] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_REGADDRCHNL_bus [6];
assign chnl_avmm_address[7] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_REGADDRCHNL_bus [7];
assign chnl_avmm_address[8] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_REGADDRCHNL_bus [8];
assign chnl_avmm_address[9] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_REGADDRCHNL_bus [9];
assign chnl_avmm_address[10] = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_REGADDRCHNL_bus [10];

assign \avmm_interface_insts[0].avmm_readdata[0]  = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus [0];
assign \avmm_interface_insts[0].avmm_readdata[1]  = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus [1];
assign \avmm_interface_insts[0].avmm_readdata[2]  = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus [2];
assign \avmm_interface_insts[0].avmm_readdata[3]  = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus [3];
assign \avmm_interface_insts[0].avmm_readdata[4]  = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus [4];
assign \avmm_interface_insts[0].avmm_readdata[5]  = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus [5];
assign \avmm_interface_insts[0].avmm_readdata[6]  = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus [6];
assign \avmm_interface_insts[0].avmm_readdata[7]  = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus [7];
assign \avmm_interface_insts[0].avmm_readdata[8]  = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus [8];
assign \avmm_interface_insts[0].avmm_readdata[9]  = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus [9];
assign \avmm_interface_insts[0].avmm_readdata[10]  = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus [10];
assign \avmm_interface_insts[0].avmm_readdata[11]  = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus [11];
assign \avmm_interface_insts[0].avmm_readdata[12]  = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus [12];
assign \avmm_interface_insts[0].avmm_readdata[13]  = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus [13];
assign \avmm_interface_insts[0].avmm_readdata[14]  = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus [14];
assign \avmm_interface_insts[0].avmm_readdata[15]  = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus [15];

assign avmm_interface_insts0w_pmatestbus_0 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [0];
assign avmm_interface_insts0w_pmatestbus_1 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [1];
assign avmm_interface_insts0w_pmatestbus_2 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [2];
assign avmm_interface_insts0w_pmatestbus_3 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [3];
assign avmm_interface_insts0w_pmatestbus_4 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [4];
assign avmm_interface_insts0w_pmatestbus_5 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [5];
assign avmm_interface_insts0w_pmatestbus_6 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [6];
assign avmm_interface_insts0w_pmatestbus_7 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [7];
assign avmm_interface_insts0w_pmatestbus_8 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [8];
assign avmm_interface_insts0w_pmatestbus_9 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [9];
assign avmm_interface_insts0w_pmatestbus_10 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [10];
assign avmm_interface_insts0w_pmatestbus_11 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [11];
assign avmm_interface_insts0w_pmatestbus_12 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [12];
assign avmm_interface_insts0w_pmatestbus_13 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [13];
assign avmm_interface_insts0w_pmatestbus_14 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [14];
assign avmm_interface_insts0w_pmatestbus_15 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [15];
assign avmm_interface_insts0w_pmatestbus_16 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [16];
assign avmm_interface_insts0w_pmatestbus_17 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [17];
assign avmm_interface_insts0w_pmatestbus_18 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [18];
assign avmm_interface_insts0w_pmatestbus_19 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [19];
assign avmm_interface_insts0w_pmatestbus_20 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [20];
assign avmm_interface_insts0w_pmatestbus_21 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [21];
assign avmm_interface_insts0w_pmatestbus_22 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [22];
assign avmm_interface_insts0w_pmatestbus_23 = \avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus [23];

NATIVE_TRANSCEIVER_IP_av_xcvr_avmm_csr \avmm_interface_insts[0].sv_xcvr_avmm_csr_inst (
	.av_readdata_0(\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|av_readdata[0]~q ),
	.av_readdata_1(\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|av_readdata[1]~q ),
	.av_readdata_2(\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|av_readdata[2]~q ),
	.av_readdata_3(\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|av_readdata[3]~q ),
	.av_readdata_4(\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|av_readdata[4]~q ),
	.gen_rstctl_reg_rxr_rx_rst_ovr(\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_rstctl_reg_rx.r_rx_rst_ovr~q ),
	.gen_rstctl_reg_rxr_rx_digital_rst_n_val(\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_rstctl_reg_rx.r_rx_digital_rst_n_val~q ),
	.gen_rstctl_reg_rxr_rx_analog_rst_n_val(\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_rstctl_reg_rx.r_rx_analog_rst_n_val~q ),
	.gen_rstctl_reg_txr_tx_rst_ovr(\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_rstctl_reg_tx.r_tx_rst_ovr~q ),
	.gen_rstctl_reg_txr_tx_digital_rst_n_val(\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_rstctl_reg_tx.r_tx_digital_rst_n_val~q ),
	.gen_oc_regr_hardoccalen(gen_oc_regr_hardoccalen),
	.gen_slpbk_regr_seriallpbken(gen_slpbk_regr_seriallpbken),
	.rx_digitalreset_0(rx_digitalreset_0),
	.reconfig_to_xcvr_31(reconfig_to_xcvr_31),
	.reconfig_to_xcvr_0(reconfig_to_xcvr_0),
	.reconfig_to_xcvr_1(reconfig_to_xcvr_1),
	.reconfig_to_xcvr_22(reconfig_to_xcvr_22),
	.reconfig_to_xcvr_20(reconfig_to_xcvr_20),
	.reconfig_to_xcvr_19(reconfig_to_xcvr_19),
	.reconfig_to_xcvr_21(reconfig_to_xcvr_21),
	.reconfig_to_xcvr_23(reconfig_to_xcvr_23),
	.reconfig_to_xcvr_18(reconfig_to_xcvr_18),
	.av_writedata({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,reconfig_to_xcvr_6,reconfig_to_xcvr_5,reconfig_to_xcvr_4,reconfig_to_xcvr_3,reconfig_to_xcvr_2}));

cyclonev_hssi_avmm_interface \avmm_interface_insts[0].av_hssi_avmm_interface_inst (
	.refclkdig(gnd),
	.avmmrstn(vcc),
	.avmmclk(reconfig_to_xcvr_0),
	.avmmwrite(\avmm_interface_insts[0].avmm_write~combout ),
	.avmmread(\avmm_interface_insts[0].avmm_read~combout ),
	.avmmreservedin(gnd),
	.scanmoden(vcc),
	.scanshiftn(vcc),
	.sershiftload(reconfig_to_xcvr_45),
	.interfacesel(reconfig_to_xcvr_44),
	.avmmbyteen({vcc,vcc}),
	.avmmaddress({reconfig_to_xcvr_30,reconfig_to_xcvr_29,reconfig_to_xcvr_28,reconfig_to_xcvr_27,reconfig_to_xcvr_26,reconfig_to_xcvr_25,reconfig_to_xcvr_24,reconfig_to_xcvr_23,reconfig_to_xcvr_22,reconfig_to_xcvr_21,reconfig_to_xcvr_20}),
	.avmmwritedata({reconfig_to_xcvr_17,reconfig_to_xcvr_16,reconfig_to_xcvr_15,reconfig_to_xcvr_14,reconfig_to_xcvr_13,reconfig_to_xcvr_12,reconfig_to_xcvr_11,reconfig_to_xcvr_10,reconfig_to_xcvr_9,reconfig_to_xcvr_8,reconfig_to_xcvr_7,reconfig_to_xcvr_6,reconfig_to_xcvr_5,
reconfig_to_xcvr_4,reconfig_to_xcvr_3,reconfig_to_xcvr_2}),
	.blockselect({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,blockselect_rx_pcs_pma_if[0],blockselect_tx_pcs_pma_if[0],
blockselect_com_pcs_pma_if[0],blockselect_rx_pld_pcs_if[0],blockselect_tx_pld_pcs_if[0],blockselect_com_pld_pcs_if[0],gnd,gnd,gnd,gnd,gnd,blockselect_pcs8g_tx[0],gnd,blockselect_pcs8g_rx[0],gnd,gnd,gnd,pma_blockselect_rx_mux[0],pma_blockselect_rx_cdr[0],pma_blockselect_rx_buf[0],
pma_blockselect_rx_ser[0],pma_blockselect_tx_buf[0],pma_blockselect_tx_cgb[0],pma_blockselect_tx_ser[0]}),
	.readdatachnl({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,avmmreaddata_rx_pcs_pma_if[15],avmmreaddata_rx_pcs_pma_if[14],avmmreaddata_rx_pcs_pma_if[13],avmmreaddata_rx_pcs_pma_if[12],avmmreaddata_rx_pcs_pma_if[11],
avmmreaddata_rx_pcs_pma_if[10],avmmreaddata_rx_pcs_pma_if[9],avmmreaddata_rx_pcs_pma_if[8],avmmreaddata_rx_pcs_pma_if[7],avmmreaddata_rx_pcs_pma_if[6],avmmreaddata_rx_pcs_pma_if[5],avmmreaddata_rx_pcs_pma_if[4],avmmreaddata_rx_pcs_pma_if[3],avmmreaddata_rx_pcs_pma_if[2],
avmmreaddata_rx_pcs_pma_if[1],avmmreaddata_rx_pcs_pma_if[0],avmmreaddata_tx_pcs_pma_if[15],avmmreaddata_tx_pcs_pma_if[14],avmmreaddata_tx_pcs_pma_if[13],avmmreaddata_tx_pcs_pma_if[12],avmmreaddata_tx_pcs_pma_if[11],avmmreaddata_tx_pcs_pma_if[10],avmmreaddata_tx_pcs_pma_if[9],
avmmreaddata_tx_pcs_pma_if[8],avmmreaddata_tx_pcs_pma_if[7],avmmreaddata_tx_pcs_pma_if[6],avmmreaddata_tx_pcs_pma_if[5],avmmreaddata_tx_pcs_pma_if[4],avmmreaddata_tx_pcs_pma_if[3],avmmreaddata_tx_pcs_pma_if[2],avmmreaddata_tx_pcs_pma_if[1],avmmreaddata_tx_pcs_pma_if[0],
avmmreaddata_com_pcs_pma_if[15],avmmreaddata_com_pcs_pma_if[14],avmmreaddata_com_pcs_pma_if[13],avmmreaddata_com_pcs_pma_if[12],avmmreaddata_com_pcs_pma_if[11],avmmreaddata_com_pcs_pma_if[10],avmmreaddata_com_pcs_pma_if[9],avmmreaddata_com_pcs_pma_if[8],avmmreaddata_com_pcs_pma_if[7],
avmmreaddata_com_pcs_pma_if[6],avmmreaddata_com_pcs_pma_if[5],avmmreaddata_com_pcs_pma_if[4],avmmreaddata_com_pcs_pma_if[3],avmmreaddata_com_pcs_pma_if[2],avmmreaddata_com_pcs_pma_if[1],avmmreaddata_com_pcs_pma_if[0],avmmreaddata_rx_pld_pcs_if[15],avmmreaddata_rx_pld_pcs_if[14],
avmmreaddata_rx_pld_pcs_if[13],avmmreaddata_rx_pld_pcs_if[12],avmmreaddata_rx_pld_pcs_if[11],avmmreaddata_rx_pld_pcs_if[10],avmmreaddata_rx_pld_pcs_if[9],avmmreaddata_rx_pld_pcs_if[8],avmmreaddata_rx_pld_pcs_if[7],avmmreaddata_rx_pld_pcs_if[6],avmmreaddata_rx_pld_pcs_if[5],
avmmreaddata_rx_pld_pcs_if[4],avmmreaddata_rx_pld_pcs_if[3],avmmreaddata_rx_pld_pcs_if[2],avmmreaddata_rx_pld_pcs_if[1],avmmreaddata_rx_pld_pcs_if[0],avmmreaddata_tx_pld_pcs_if[15],avmmreaddata_tx_pld_pcs_if[14],avmmreaddata_tx_pld_pcs_if[13],avmmreaddata_tx_pld_pcs_if[12],
avmmreaddata_tx_pld_pcs_if[11],avmmreaddata_tx_pld_pcs_if[10],avmmreaddata_tx_pld_pcs_if[9],avmmreaddata_tx_pld_pcs_if[8],avmmreaddata_tx_pld_pcs_if[7],avmmreaddata_tx_pld_pcs_if[6],avmmreaddata_tx_pld_pcs_if[5],avmmreaddata_tx_pld_pcs_if[4],avmmreaddata_tx_pld_pcs_if[3],
avmmreaddata_tx_pld_pcs_if[2],avmmreaddata_tx_pld_pcs_if[1],avmmreaddata_tx_pld_pcs_if[0],avmmreaddata_com_pld_pcs_if[15],avmmreaddata_com_pld_pcs_if[14],avmmreaddata_com_pld_pcs_if[13],avmmreaddata_com_pld_pcs_if[12],avmmreaddata_com_pld_pcs_if[11],avmmreaddata_com_pld_pcs_if[10],
avmmreaddata_com_pld_pcs_if[9],avmmreaddata_com_pld_pcs_if[8],avmmreaddata_com_pld_pcs_if[7],avmmreaddata_com_pld_pcs_if[6],avmmreaddata_com_pld_pcs_if[5],avmmreaddata_com_pld_pcs_if[4],avmmreaddata_com_pld_pcs_if[3],avmmreaddata_com_pld_pcs_if[2],avmmreaddata_com_pld_pcs_if[1],
avmmreaddata_com_pld_pcs_if[0],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,avmmreaddata_pcs8g_tx[15],avmmreaddata_pcs8g_tx[14],avmmreaddata_pcs8g_tx[13],avmmreaddata_pcs8g_tx[12],avmmreaddata_pcs8g_tx[11],avmmreaddata_pcs8g_tx[10],avmmreaddata_pcs8g_tx[9],avmmreaddata_pcs8g_tx[8],avmmreaddata_pcs8g_tx[7],avmmreaddata_pcs8g_tx[6],avmmreaddata_pcs8g_tx[5],
avmmreaddata_pcs8g_tx[4],avmmreaddata_pcs8g_tx[3],avmmreaddata_pcs8g_tx[2],avmmreaddata_pcs8g_tx[1],avmmreaddata_pcs8g_tx[0],gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,avmmreaddata_pcs8g_rx[15],avmmreaddata_pcs8g_rx[14],avmmreaddata_pcs8g_rx[13],avmmreaddata_pcs8g_rx[12],
avmmreaddata_pcs8g_rx[11],avmmreaddata_pcs8g_rx[10],avmmreaddata_pcs8g_rx[9],avmmreaddata_pcs8g_rx[8],avmmreaddata_pcs8g_rx[7],avmmreaddata_pcs8g_rx[6],avmmreaddata_pcs8g_rx[5],avmmreaddata_pcs8g_rx[4],avmmreaddata_pcs8g_rx[3],avmmreaddata_pcs8g_rx[2],avmmreaddata_pcs8g_rx[1],avmmreaddata_pcs8g_rx[0],gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,pma_avmmreaddata_rx_mux[15],pma_avmmreaddata_rx_mux[14],pma_avmmreaddata_rx_mux[13],pma_avmmreaddata_rx_mux[12],pma_avmmreaddata_rx_mux[11],
pma_avmmreaddata_rx_mux[10],pma_avmmreaddata_rx_mux[9],pma_avmmreaddata_rx_mux[8],pma_avmmreaddata_rx_mux[7],pma_avmmreaddata_rx_mux[6],pma_avmmreaddata_rx_mux[5],pma_avmmreaddata_rx_mux[4],pma_avmmreaddata_rx_mux[3],pma_avmmreaddata_rx_mux[2],pma_avmmreaddata_rx_mux[1],pma_avmmreaddata_rx_mux[0],
pma_avmmreaddata_rx_cdr[15],pma_avmmreaddata_rx_cdr[14],pma_avmmreaddata_rx_cdr[13],pma_avmmreaddata_rx_cdr[12],pma_avmmreaddata_rx_cdr[11],pma_avmmreaddata_rx_cdr[10],pma_avmmreaddata_rx_cdr[9],pma_avmmreaddata_rx_cdr[8],pma_avmmreaddata_rx_cdr[7],pma_avmmreaddata_rx_cdr[6],pma_avmmreaddata_rx_cdr[5],
pma_avmmreaddata_rx_cdr[4],pma_avmmreaddata_rx_cdr[3],pma_avmmreaddata_rx_cdr[2],pma_avmmreaddata_rx_cdr[1],pma_avmmreaddata_rx_cdr[0],pma_avmmreaddata_rx_buf[15],pma_avmmreaddata_rx_buf[14],pma_avmmreaddata_rx_buf[13],pma_avmmreaddata_rx_buf[12],pma_avmmreaddata_rx_buf[11],pma_avmmreaddata_rx_buf[10],
pma_avmmreaddata_rx_buf[9],pma_avmmreaddata_rx_buf[8],pma_avmmreaddata_rx_buf[7],pma_avmmreaddata_rx_buf[6],pma_avmmreaddata_rx_buf[5],pma_avmmreaddata_rx_buf[4],pma_avmmreaddata_rx_buf[3],pma_avmmreaddata_rx_buf[2],pma_avmmreaddata_rx_buf[1],pma_avmmreaddata_rx_buf[0],pma_avmmreaddata_rx_ser[15],
pma_avmmreaddata_rx_ser[14],pma_avmmreaddata_rx_ser[13],pma_avmmreaddata_rx_ser[12],pma_avmmreaddata_rx_ser[11],pma_avmmreaddata_rx_ser[10],pma_avmmreaddata_rx_ser[9],pma_avmmreaddata_rx_ser[8],pma_avmmreaddata_rx_ser[7],pma_avmmreaddata_rx_ser[6],pma_avmmreaddata_rx_ser[5],pma_avmmreaddata_rx_ser[4],
pma_avmmreaddata_rx_ser[3],pma_avmmreaddata_rx_ser[2],pma_avmmreaddata_rx_ser[1],pma_avmmreaddata_rx_ser[0],pma_avmmreaddata_tx_buf[15],pma_avmmreaddata_tx_buf[14],pma_avmmreaddata_tx_buf[13],pma_avmmreaddata_tx_buf[12],pma_avmmreaddata_tx_buf[11],pma_avmmreaddata_tx_buf[10],pma_avmmreaddata_tx_buf[9],
pma_avmmreaddata_tx_buf[8],pma_avmmreaddata_tx_buf[7],pma_avmmreaddata_tx_buf[6],pma_avmmreaddata_tx_buf[5],pma_avmmreaddata_tx_buf[4],pma_avmmreaddata_tx_buf[3],pma_avmmreaddata_tx_buf[2],pma_avmmreaddata_tx_buf[1],pma_avmmreaddata_tx_buf[0],pma_avmmreaddata_tx_cgb[15],pma_avmmreaddata_tx_cgb[14],
pma_avmmreaddata_tx_cgb[13],pma_avmmreaddata_tx_cgb[12],pma_avmmreaddata_tx_cgb[11],pma_avmmreaddata_tx_cgb[10],pma_avmmreaddata_tx_cgb[9],pma_avmmreaddata_tx_cgb[8],pma_avmmreaddata_tx_cgb[7],pma_avmmreaddata_tx_cgb[6],pma_avmmreaddata_tx_cgb[5],pma_avmmreaddata_tx_cgb[4],pma_avmmreaddata_tx_cgb[3],
pma_avmmreaddata_tx_cgb[2],pma_avmmreaddata_tx_cgb[1],pma_avmmreaddata_tx_cgb[0],pma_avmmreaddata_tx_ser[15],pma_avmmreaddata_tx_ser[14],pma_avmmreaddata_tx_ser[13],pma_avmmreaddata_tx_ser[12],pma_avmmreaddata_tx_ser[11],pma_avmmreaddata_tx_ser[10],pma_avmmreaddata_tx_ser[9],pma_avmmreaddata_tx_ser[8],
pma_avmmreaddata_tx_ser[7],pma_avmmreaddata_tx_ser[6],pma_avmmreaddata_tx_ser[5],pma_avmmreaddata_tx_ser[4],pma_avmmreaddata_tx_ser[3],pma_avmmreaddata_tx_ser[2],pma_avmmreaddata_tx_ser[1],pma_avmmreaddata_tx_ser[0]}),
	.pmatestbussel({reconfig_to_xcvr_43,reconfig_to_xcvr_42,reconfig_to_xcvr_41,reconfig_to_xcvr_40,reconfig_to_xcvr_39,reconfig_to_xcvr_38,reconfig_to_xcvr_37,reconfig_to_xcvr_36,reconfig_to_xcvr_35,reconfig_to_xcvr_34,reconfig_to_xcvr_33,reconfig_to_xcvr_32}),
	.dpriorstntop(),
	.dprioclktop(),
	.mdiodistopchnl(),
	.writechnl(chnl_avmm_write[0]),
	.readchnl(chnl_avmm_read[0]),
	.dpriorstnmid(),
	.dprioclkmid(),
	.mdiodismidchnl(),
	.dpriorstnbot(),
	.dprioclkbot(),
	.mdiodisbotchnl(),
	.avmmreservedout(),
	.clkchnl(chnl_avmm_clk[0]),
	.rstnchnl(chnl_avmm_rstn[0]),
	.avmmreaddata(\avmm_interface_insts[0].av_hssi_avmm_interface_inst_AVMMREADDATA_bus ),
	.writedatachnl(\avmm_interface_insts[0].av_hssi_avmm_interface_inst_WRITEDATACHNL_bus ),
	.regaddrchnl(\avmm_interface_insts[0].av_hssi_avmm_interface_inst_REGADDRCHNL_bus ),
	.byteenchnl(\avmm_interface_insts[0].av_hssi_avmm_interface_inst_BYTEENCHNL_bus ),
	.dpriotestsitopchnl(),
	.dpriotestsimidchnl(),
	.dpriotestsibotchnl(),
	.pmatestbus(\avmm_interface_insts[0].av_hssi_avmm_interface_inst_PMATESTBUS_bus ));
defparam \avmm_interface_insts[0].av_hssi_avmm_interface_inst .num_ch0_atoms = 0;
defparam \avmm_interface_insts[0].av_hssi_avmm_interface_inst .num_ch1_atoms = 0;
defparam \avmm_interface_insts[0].av_hssi_avmm_interface_inst .num_ch2_atoms = 0;

cyclonev_lcell_comb \avmm_interface_insts[0].pld_avmm_readdata[0]~0 (
	.dataa(!\avmm_interface_insts[0].csr_avmm_n_sel_r~q ),
	.datab(!\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|av_readdata[0]~q ),
	.datac(!\avmm_interface_insts[0].avmm_readdata[0] ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(avmm_interface_insts0pld_avmm_readdata_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].pld_avmm_readdata[0]~0 .extended_lut = "off";
defparam \avmm_interface_insts[0].pld_avmm_readdata[0]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \avmm_interface_insts[0].pld_avmm_readdata[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \avmm_interface_insts[0].pld_avmm_readdata[1]~1 (
	.dataa(!\avmm_interface_insts[0].csr_avmm_n_sel_r~q ),
	.datab(!\avmm_interface_insts[0].avmm_readdata[1] ),
	.datac(!\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|av_readdata[1]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(avmm_interface_insts0pld_avmm_readdata_1),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].pld_avmm_readdata[1]~1 .extended_lut = "off";
defparam \avmm_interface_insts[0].pld_avmm_readdata[1]~1 .lut_mask = 64'h2727272727272727;
defparam \avmm_interface_insts[0].pld_avmm_readdata[1]~1 .shared_arith = "off";

cyclonev_lcell_comb \avmm_interface_insts[0].pld_avmm_readdata[2]~2 (
	.dataa(!\avmm_interface_insts[0].csr_avmm_n_sel_r~q ),
	.datab(!\avmm_interface_insts[0].avmm_readdata[2] ),
	.datac(!\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|av_readdata[2]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(avmm_interface_insts0pld_avmm_readdata_2),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].pld_avmm_readdata[2]~2 .extended_lut = "off";
defparam \avmm_interface_insts[0].pld_avmm_readdata[2]~2 .lut_mask = 64'h2727272727272727;
defparam \avmm_interface_insts[0].pld_avmm_readdata[2]~2 .shared_arith = "off";

cyclonev_lcell_comb \avmm_interface_insts[0].pld_avmm_readdata[3]~3 (
	.dataa(!\avmm_interface_insts[0].csr_avmm_n_sel_r~q ),
	.datab(!\avmm_interface_insts[0].avmm_readdata[3] ),
	.datac(!\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|av_readdata[3]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(avmm_interface_insts0pld_avmm_readdata_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].pld_avmm_readdata[3]~3 .extended_lut = "off";
defparam \avmm_interface_insts[0].pld_avmm_readdata[3]~3 .lut_mask = 64'h2727272727272727;
defparam \avmm_interface_insts[0].pld_avmm_readdata[3]~3 .shared_arith = "off";

cyclonev_lcell_comb \avmm_interface_insts[0].pld_avmm_readdata[4]~4 (
	.dataa(!\avmm_interface_insts[0].csr_avmm_n_sel_r~q ),
	.datab(!\avmm_interface_insts[0].avmm_readdata[4] ),
	.datac(!\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|av_readdata[4]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(avmm_interface_insts0pld_avmm_readdata_4),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].pld_avmm_readdata[4]~4 .extended_lut = "off";
defparam \avmm_interface_insts[0].pld_avmm_readdata[4]~4 .lut_mask = 64'h2727272727272727;
defparam \avmm_interface_insts[0].pld_avmm_readdata[4]~4 .shared_arith = "off";

cyclonev_lcell_comb \avmm_interface_insts[0].pld_avmm_readdata[5]~5 (
	.dataa(!\avmm_interface_insts[0].csr_avmm_n_sel_r~q ),
	.datab(!\avmm_interface_insts[0].avmm_readdata[5] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(avmm_interface_insts0pld_avmm_readdata_5),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].pld_avmm_readdata[5]~5 .extended_lut = "off";
defparam \avmm_interface_insts[0].pld_avmm_readdata[5]~5 .lut_mask = 64'h2222222222222222;
defparam \avmm_interface_insts[0].pld_avmm_readdata[5]~5 .shared_arith = "off";

cyclonev_lcell_comb \avmm_interface_insts[0].pld_avmm_readdata[6]~6 (
	.dataa(!\avmm_interface_insts[0].csr_avmm_n_sel_r~q ),
	.datab(!\avmm_interface_insts[0].avmm_readdata[6] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(avmm_interface_insts0pld_avmm_readdata_6),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].pld_avmm_readdata[6]~6 .extended_lut = "off";
defparam \avmm_interface_insts[0].pld_avmm_readdata[6]~6 .lut_mask = 64'h2222222222222222;
defparam \avmm_interface_insts[0].pld_avmm_readdata[6]~6 .shared_arith = "off";

cyclonev_lcell_comb \avmm_interface_insts[0].pld_avmm_readdata[7]~7 (
	.dataa(!\avmm_interface_insts[0].csr_avmm_n_sel_r~q ),
	.datab(!\avmm_interface_insts[0].avmm_readdata[7] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(avmm_interface_insts0pld_avmm_readdata_7),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].pld_avmm_readdata[7]~7 .extended_lut = "off";
defparam \avmm_interface_insts[0].pld_avmm_readdata[7]~7 .lut_mask = 64'h2222222222222222;
defparam \avmm_interface_insts[0].pld_avmm_readdata[7]~7 .shared_arith = "off";

cyclonev_lcell_comb \avmm_interface_insts[0].pld_avmm_readdata[8]~8 (
	.dataa(!\avmm_interface_insts[0].csr_avmm_n_sel_r~q ),
	.datab(!\avmm_interface_insts[0].avmm_readdata[8] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(avmm_interface_insts0pld_avmm_readdata_8),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].pld_avmm_readdata[8]~8 .extended_lut = "off";
defparam \avmm_interface_insts[0].pld_avmm_readdata[8]~8 .lut_mask = 64'h2222222222222222;
defparam \avmm_interface_insts[0].pld_avmm_readdata[8]~8 .shared_arith = "off";

cyclonev_lcell_comb \avmm_interface_insts[0].pld_avmm_readdata[9]~9 (
	.dataa(!\avmm_interface_insts[0].csr_avmm_n_sel_r~q ),
	.datab(!\avmm_interface_insts[0].avmm_readdata[9] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(avmm_interface_insts0pld_avmm_readdata_9),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].pld_avmm_readdata[9]~9 .extended_lut = "off";
defparam \avmm_interface_insts[0].pld_avmm_readdata[9]~9 .lut_mask = 64'h2222222222222222;
defparam \avmm_interface_insts[0].pld_avmm_readdata[9]~9 .shared_arith = "off";

cyclonev_lcell_comb \avmm_interface_insts[0].pld_avmm_readdata[10]~10 (
	.dataa(!\avmm_interface_insts[0].csr_avmm_n_sel_r~q ),
	.datab(!\avmm_interface_insts[0].avmm_readdata[10] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(avmm_interface_insts0pld_avmm_readdata_10),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].pld_avmm_readdata[10]~10 .extended_lut = "off";
defparam \avmm_interface_insts[0].pld_avmm_readdata[10]~10 .lut_mask = 64'h2222222222222222;
defparam \avmm_interface_insts[0].pld_avmm_readdata[10]~10 .shared_arith = "off";

cyclonev_lcell_comb \avmm_interface_insts[0].pld_avmm_readdata[11]~11 (
	.dataa(!\avmm_interface_insts[0].csr_avmm_n_sel_r~q ),
	.datab(!\avmm_interface_insts[0].avmm_readdata[11] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(avmm_interface_insts0pld_avmm_readdata_11),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].pld_avmm_readdata[11]~11 .extended_lut = "off";
defparam \avmm_interface_insts[0].pld_avmm_readdata[11]~11 .lut_mask = 64'h2222222222222222;
defparam \avmm_interface_insts[0].pld_avmm_readdata[11]~11 .shared_arith = "off";

cyclonev_lcell_comb \avmm_interface_insts[0].pld_avmm_readdata[12]~12 (
	.dataa(!\avmm_interface_insts[0].csr_avmm_n_sel_r~q ),
	.datab(!\avmm_interface_insts[0].avmm_readdata[12] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(avmm_interface_insts0pld_avmm_readdata_12),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].pld_avmm_readdata[12]~12 .extended_lut = "off";
defparam \avmm_interface_insts[0].pld_avmm_readdata[12]~12 .lut_mask = 64'h2222222222222222;
defparam \avmm_interface_insts[0].pld_avmm_readdata[12]~12 .shared_arith = "off";

cyclonev_lcell_comb \avmm_interface_insts[0].pld_avmm_readdata[13]~13 (
	.dataa(!\avmm_interface_insts[0].csr_avmm_n_sel_r~q ),
	.datab(!\avmm_interface_insts[0].avmm_readdata[13] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(avmm_interface_insts0pld_avmm_readdata_13),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].pld_avmm_readdata[13]~13 .extended_lut = "off";
defparam \avmm_interface_insts[0].pld_avmm_readdata[13]~13 .lut_mask = 64'h2222222222222222;
defparam \avmm_interface_insts[0].pld_avmm_readdata[13]~13 .shared_arith = "off";

cyclonev_lcell_comb \avmm_interface_insts[0].pld_avmm_readdata[14]~14 (
	.dataa(!\avmm_interface_insts[0].csr_avmm_n_sel_r~q ),
	.datab(!\avmm_interface_insts[0].avmm_readdata[14] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(avmm_interface_insts0pld_avmm_readdata_14),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].pld_avmm_readdata[14]~14 .extended_lut = "off";
defparam \avmm_interface_insts[0].pld_avmm_readdata[14]~14 .lut_mask = 64'h2222222222222222;
defparam \avmm_interface_insts[0].pld_avmm_readdata[14]~14 .shared_arith = "off";

cyclonev_lcell_comb \avmm_interface_insts[0].pld_avmm_readdata[15]~15 (
	.dataa(!\avmm_interface_insts[0].csr_avmm_n_sel_r~q ),
	.datab(!\avmm_interface_insts[0].avmm_readdata[15] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(avmm_interface_insts0pld_avmm_readdata_15),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].pld_avmm_readdata[15]~15 .extended_lut = "off";
defparam \avmm_interface_insts[0].pld_avmm_readdata[15]~15 .lut_mask = 64'h2222222222222222;
defparam \avmm_interface_insts[0].pld_avmm_readdata[15]~15 .shared_arith = "off";

cyclonev_lcell_comb \out_pld_8g_rxurstpcs_n[0]~0 (
	.dataa(!\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_rstctl_reg_rx.r_rx_rst_ovr~q ),
	.datab(!\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_rstctl_reg_rx.r_rx_digital_rst_n_val~q ),
	.datac(!rx_digitalreset_0),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(out_pld_8g_rxurstpcs_n_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \out_pld_8g_rxurstpcs_n[0]~0 .extended_lut = "off";
defparam \out_pld_8g_rxurstpcs_n[0]~0 .lut_mask = 64'hB1B1B1B1B1B1B1B1;
defparam \out_pld_8g_rxurstpcs_n[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \out_pld_rxpma_rstb_in[0]~0 (
	.dataa(!\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_rstctl_reg_rx.r_rx_rst_ovr~q ),
	.datab(!\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_rstctl_reg_rx.r_rx_analog_rst_n_val~q ),
	.datac(!rx_analogreset_0),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(out_pld_rxpma_rstb_in_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \out_pld_rxpma_rstb_in[0]~0 .extended_lut = "off";
defparam \out_pld_rxpma_rstb_in[0]~0 .lut_mask = 64'hB1B1B1B1B1B1B1B1;
defparam \out_pld_rxpma_rstb_in[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \out_pld_8g_txurstpcs_n[0]~0 (
	.dataa(!\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_rstctl_reg_tx.r_tx_rst_ovr~q ),
	.datab(!\avmm_interface_insts[0].sv_xcvr_avmm_csr_inst|gen_rstctl_reg_tx.r_tx_digital_rst_n_val~q ),
	.datac(!tx_digitalreset_0),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(out_pld_8g_txurstpcs_n_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \out_pld_8g_txurstpcs_n[0]~0 .extended_lut = "off";
defparam \out_pld_8g_txurstpcs_n[0]~0 .lut_mask = 64'hB1B1B1B1B1B1B1B1;
defparam \out_pld_8g_txurstpcs_n[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \avmm_interface_insts[0].avmm_write (
	.dataa(!reconfig_to_xcvr_31),
	.datab(!reconfig_to_xcvr_18),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\avmm_interface_insts[0].avmm_write~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].avmm_write .extended_lut = "off";
defparam \avmm_interface_insts[0].avmm_write .lut_mask = 64'h2222222222222222;
defparam \avmm_interface_insts[0].avmm_write .shared_arith = "off";

cyclonev_lcell_comb \avmm_interface_insts[0].avmm_read (
	.dataa(!reconfig_to_xcvr_31),
	.datab(!reconfig_to_xcvr_19),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\avmm_interface_insts[0].avmm_read~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \avmm_interface_insts[0].avmm_read .extended_lut = "off";
defparam \avmm_interface_insts[0].avmm_read .lut_mask = 64'h2222222222222222;
defparam \avmm_interface_insts[0].avmm_read .shared_arith = "off";

dffeas \avmm_interface_insts[0].csr_avmm_n_sel_r (
	.clk(reconfig_to_xcvr_0),
	.d(reconfig_to_xcvr_31),
	.asdata(vcc),
	.clrn(!reconfig_to_xcvr_1),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\avmm_interface_insts[0].csr_avmm_n_sel_r~q ),
	.prn(vcc));
defparam \avmm_interface_insts[0].csr_avmm_n_sel_r .is_wysiwyg = "true";
defparam \avmm_interface_insts[0].csr_avmm_n_sel_r .power_up = "low";

endmodule

module NATIVE_TRANSCEIVER_IP_av_xcvr_avmm_csr (
	av_readdata_0,
	av_readdata_1,
	av_readdata_2,
	av_readdata_3,
	av_readdata_4,
	gen_rstctl_reg_rxr_rx_rst_ovr,
	gen_rstctl_reg_rxr_rx_digital_rst_n_val,
	gen_rstctl_reg_rxr_rx_analog_rst_n_val,
	gen_rstctl_reg_txr_tx_rst_ovr,
	gen_rstctl_reg_txr_tx_digital_rst_n_val,
	gen_oc_regr_hardoccalen,
	gen_slpbk_regr_seriallpbken,
	rx_digitalreset_0,
	reconfig_to_xcvr_31,
	reconfig_to_xcvr_0,
	reconfig_to_xcvr_1,
	reconfig_to_xcvr_22,
	reconfig_to_xcvr_20,
	reconfig_to_xcvr_19,
	reconfig_to_xcvr_21,
	reconfig_to_xcvr_23,
	reconfig_to_xcvr_18,
	av_writedata)/* synthesis synthesis_greybox=0 */;
output 	av_readdata_0;
output 	av_readdata_1;
output 	av_readdata_2;
output 	av_readdata_3;
output 	av_readdata_4;
output 	gen_rstctl_reg_rxr_rx_rst_ovr;
output 	gen_rstctl_reg_rxr_rx_digital_rst_n_val;
output 	gen_rstctl_reg_rxr_rx_analog_rst_n_val;
output 	gen_rstctl_reg_txr_tx_rst_ovr;
output 	gen_rstctl_reg_txr_tx_digital_rst_n_val;
output 	gen_oc_regr_hardoccalen;
output 	gen_slpbk_regr_seriallpbken;
input 	rx_digitalreset_0;
input 	reconfig_to_xcvr_31;
input 	reconfig_to_xcvr_0;
input 	reconfig_to_xcvr_1;
input 	reconfig_to_xcvr_22;
input 	reconfig_to_xcvr_20;
input 	reconfig_to_xcvr_19;
input 	reconfig_to_xcvr_21;
input 	reconfig_to_xcvr_23;
input 	reconfig_to_xcvr_18;
input 	[15:0] av_writedata;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \gen_status_reg_tx.alt_xcvr_resync_inst|resync_chains[0].sync_r[1]~q ;
wire \gen_status_reg_rx.alt_xcvr_resync_inst|resync_chains[0].sync_r[1]~q ;
wire \always3~0_combout ;
wire \gen_prbs_reg.r_prbs_err_clr~0_combout ;
wire \gen_prbs_reg.r_prbs_err_clr~q ;
wire \av_readdata~0_combout ;
wire \av_readdata~1_combout ;
wire \always1~0_combout ;
wire \r_dummy~0_combout ;
wire \r_dummy~q ;
wire \av_readdata~2_combout ;
wire \av_readdata~3_combout ;
wire \av_readdata~4_combout ;
wire \av_readdata~5_combout ;
wire \av_readdata~6_combout ;
wire \av_readdata~7_combout ;
wire \av_readdata~8_combout ;
wire \av_readdata~9_combout ;
wire \av_readdata~10_combout ;
wire \always5~0_combout ;
wire \gen_oc_reg.r_hardoccalen~0_combout ;
wire \gen_slpbk_reg.r_seriallpbken~0_combout ;


NATIVE_TRANSCEIVER_IP_alt_xcvr_resync \gen_status_reg_rx.alt_xcvr_resync_inst (
	.resync_chains0sync_r_1(\gen_status_reg_rx.alt_xcvr_resync_inst|resync_chains[0].sync_r[1]~q ),
	.d({rx_digitalreset_0}),
	.clk(reconfig_to_xcvr_0),
	.reset(reconfig_to_xcvr_1));

NATIVE_TRANSCEIVER_IP_alt_xcvr_resync_1 \gen_status_reg_tx.alt_xcvr_resync_inst (
	.resync_chains0sync_r_1(\gen_status_reg_tx.alt_xcvr_resync_inst|resync_chains[0].sync_r[1]~q ),
	.d({rx_digitalreset_0}),
	.clk(reconfig_to_xcvr_0),
	.reset(reconfig_to_xcvr_1));

dffeas \av_readdata[0] (
	.clk(reconfig_to_xcvr_0),
	.d(\av_readdata~3_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(av_readdata_0),
	.prn(vcc));
defparam \av_readdata[0] .is_wysiwyg = "true";
defparam \av_readdata[0] .power_up = "low";

dffeas \av_readdata[1] (
	.clk(reconfig_to_xcvr_0),
	.d(\av_readdata~6_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(av_readdata_1),
	.prn(vcc));
defparam \av_readdata[1] .is_wysiwyg = "true";
defparam \av_readdata[1] .power_up = "low";

dffeas \av_readdata[2] (
	.clk(reconfig_to_xcvr_0),
	.d(\av_readdata~8_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(av_readdata_2),
	.prn(vcc));
defparam \av_readdata[2] .is_wysiwyg = "true";
defparam \av_readdata[2] .power_up = "low";

dffeas \av_readdata[3] (
	.clk(reconfig_to_xcvr_0),
	.d(\av_readdata~9_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(av_readdata_3),
	.prn(vcc));
defparam \av_readdata[3] .is_wysiwyg = "true";
defparam \av_readdata[3] .power_up = "low";

dffeas \av_readdata[4] (
	.clk(reconfig_to_xcvr_0),
	.d(\av_readdata~10_combout ),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(av_readdata_4),
	.prn(vcc));
defparam \av_readdata[4] .is_wysiwyg = "true";
defparam \av_readdata[4] .power_up = "low";

dffeas \gen_rstctl_reg_rx.r_rx_rst_ovr (
	.clk(reconfig_to_xcvr_0),
	.d(av_writedata[2]),
	.asdata(vcc),
	.clrn(!reconfig_to_xcvr_1),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\always5~0_combout ),
	.q(gen_rstctl_reg_rxr_rx_rst_ovr),
	.prn(vcc));
defparam \gen_rstctl_reg_rx.r_rx_rst_ovr .is_wysiwyg = "true";
defparam \gen_rstctl_reg_rx.r_rx_rst_ovr .power_up = "low";

dffeas \gen_rstctl_reg_rx.r_rx_digital_rst_n_val (
	.clk(reconfig_to_xcvr_0),
	.d(av_writedata[3]),
	.asdata(vcc),
	.clrn(!reconfig_to_xcvr_1),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\always5~0_combout ),
	.q(gen_rstctl_reg_rxr_rx_digital_rst_n_val),
	.prn(vcc));
defparam \gen_rstctl_reg_rx.r_rx_digital_rst_n_val .is_wysiwyg = "true";
defparam \gen_rstctl_reg_rx.r_rx_digital_rst_n_val .power_up = "low";

dffeas \gen_rstctl_reg_rx.r_rx_analog_rst_n_val (
	.clk(reconfig_to_xcvr_0),
	.d(av_writedata[4]),
	.asdata(vcc),
	.clrn(!reconfig_to_xcvr_1),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\always5~0_combout ),
	.q(gen_rstctl_reg_rxr_rx_analog_rst_n_val),
	.prn(vcc));
defparam \gen_rstctl_reg_rx.r_rx_analog_rst_n_val .is_wysiwyg = "true";
defparam \gen_rstctl_reg_rx.r_rx_analog_rst_n_val .power_up = "low";

dffeas \gen_rstctl_reg_tx.r_tx_rst_ovr (
	.clk(reconfig_to_xcvr_0),
	.d(av_writedata[0]),
	.asdata(vcc),
	.clrn(!reconfig_to_xcvr_1),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\always5~0_combout ),
	.q(gen_rstctl_reg_txr_tx_rst_ovr),
	.prn(vcc));
defparam \gen_rstctl_reg_tx.r_tx_rst_ovr .is_wysiwyg = "true";
defparam \gen_rstctl_reg_tx.r_tx_rst_ovr .power_up = "low";

dffeas \gen_rstctl_reg_tx.r_tx_digital_rst_n_val (
	.clk(reconfig_to_xcvr_0),
	.d(av_writedata[1]),
	.asdata(vcc),
	.clrn(!reconfig_to_xcvr_1),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\always5~0_combout ),
	.q(gen_rstctl_reg_txr_tx_digital_rst_n_val),
	.prn(vcc));
defparam \gen_rstctl_reg_tx.r_tx_digital_rst_n_val .is_wysiwyg = "true";
defparam \gen_rstctl_reg_tx.r_tx_digital_rst_n_val .power_up = "low";

dffeas \gen_oc_reg.r_hardoccalen (
	.clk(reconfig_to_xcvr_0),
	.d(\gen_oc_reg.r_hardoccalen~0_combout ),
	.asdata(vcc),
	.clrn(!reconfig_to_xcvr_1),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(gen_oc_regr_hardoccalen),
	.prn(vcc));
defparam \gen_oc_reg.r_hardoccalen .is_wysiwyg = "true";
defparam \gen_oc_reg.r_hardoccalen .power_up = "low";

dffeas \gen_slpbk_reg.r_seriallpbken (
	.clk(reconfig_to_xcvr_0),
	.d(\gen_slpbk_reg.r_seriallpbken~0_combout ),
	.asdata(vcc),
	.clrn(!reconfig_to_xcvr_1),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(gen_slpbk_regr_seriallpbken),
	.prn(vcc));
defparam \gen_slpbk_reg.r_seriallpbken .is_wysiwyg = "true";
defparam \gen_slpbk_reg.r_seriallpbken .power_up = "low";

cyclonev_lcell_comb \always3~0 (
	.dataa(!reconfig_to_xcvr_31),
	.datab(!reconfig_to_xcvr_21),
	.datac(!reconfig_to_xcvr_23),
	.datad(!reconfig_to_xcvr_18),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\always3~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \always3~0 .extended_lut = "off";
defparam \always3~0 .lut_mask = 64'h0010001000100010;
defparam \always3~0 .shared_arith = "off";

cyclonev_lcell_comb \gen_prbs_reg.r_prbs_err_clr~0 (
	.dataa(!reconfig_to_xcvr_20),
	.datab(!reconfig_to_xcvr_22),
	.datac(!\gen_prbs_reg.r_prbs_err_clr~q ),
	.datad(!av_writedata[0]),
	.datae(!\always3~0_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\gen_prbs_reg.r_prbs_err_clr~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \gen_prbs_reg.r_prbs_err_clr~0 .extended_lut = "off";
defparam \gen_prbs_reg.r_prbs_err_clr~0 .lut_mask = 64'h0F0F0B4F0F0F0B4F;
defparam \gen_prbs_reg.r_prbs_err_clr~0 .shared_arith = "off";

dffeas \gen_prbs_reg.r_prbs_err_clr (
	.clk(reconfig_to_xcvr_0),
	.d(\gen_prbs_reg.r_prbs_err_clr~0_combout ),
	.asdata(vcc),
	.clrn(!reconfig_to_xcvr_1),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\gen_prbs_reg.r_prbs_err_clr~q ),
	.prn(vcc));
defparam \gen_prbs_reg.r_prbs_err_clr .is_wysiwyg = "true";
defparam \gen_prbs_reg.r_prbs_err_clr .power_up = "low";

cyclonev_lcell_comb \av_readdata~0 (
	.dataa(!reconfig_to_xcvr_20),
	.datab(!reconfig_to_xcvr_22),
	.datac(!gen_oc_regr_hardoccalen),
	.datad(!gen_slpbk_regr_seriallpbken),
	.datae(!\gen_prbs_reg.r_prbs_err_clr~q ),
	.dataf(!\gen_status_reg_tx.alt_xcvr_resync_inst|resync_chains[0].sync_r[1]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\av_readdata~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \av_readdata~0 .extended_lut = "off";
defparam \av_readdata~0 .lut_mask = 64'h082A4C6E193B5D7F;
defparam \av_readdata~0 .shared_arith = "off";

cyclonev_lcell_comb \av_readdata~1 (
	.dataa(!reconfig_to_xcvr_31),
	.datab(!reconfig_to_xcvr_19),
	.datac(!reconfig_to_xcvr_21),
	.datad(!reconfig_to_xcvr_23),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\av_readdata~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \av_readdata~1 .extended_lut = "off";
defparam \av_readdata~1 .lut_mask = 64'h0100010001000100;
defparam \av_readdata~1 .shared_arith = "off";

cyclonev_lcell_comb \always1~0 (
	.dataa(!reconfig_to_xcvr_31),
	.datab(!reconfig_to_xcvr_20),
	.datac(!reconfig_to_xcvr_22),
	.datad(!reconfig_to_xcvr_18),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\always1~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \always1~0 .extended_lut = "off";
defparam \always1~0 .lut_mask = 64'h0040004000400040;
defparam \always1~0 .shared_arith = "off";

cyclonev_lcell_comb \r_dummy~0 (
	.dataa(!reconfig_to_xcvr_21),
	.datab(!reconfig_to_xcvr_23),
	.datac(!\r_dummy~q ),
	.datad(!av_writedata[0]),
	.datae(!\always1~0_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\r_dummy~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \r_dummy~0 .extended_lut = "off";
defparam \r_dummy~0 .lut_mask = 64'h0F0F078F0F0F078F;
defparam \r_dummy~0 .shared_arith = "off";

dffeas r_dummy(
	.clk(reconfig_to_xcvr_0),
	.d(\r_dummy~0_combout ),
	.asdata(vcc),
	.clrn(!reconfig_to_xcvr_1),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\r_dummy~q ),
	.prn(vcc));
defparam r_dummy.is_wysiwyg = "true";
defparam r_dummy.power_up = "low";

cyclonev_lcell_comb \av_readdata~2 (
	.dataa(!gen_rstctl_reg_txr_tx_rst_ovr),
	.datab(!reconfig_to_xcvr_20),
	.datac(!reconfig_to_xcvr_21),
	.datad(!reconfig_to_xcvr_23),
	.datae(!\r_dummy~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\av_readdata~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \av_readdata~2 .extended_lut = "off";
defparam \av_readdata~2 .lut_mask = 64'h00F4C0F400F4C0F4;
defparam \av_readdata~2 .shared_arith = "off";

cyclonev_lcell_comb \av_readdata~3 (
	.dataa(!reconfig_to_xcvr_31),
	.datab(!reconfig_to_xcvr_22),
	.datac(!\av_readdata~0_combout ),
	.datad(!reconfig_to_xcvr_19),
	.datae(!\av_readdata~1_combout ),
	.dataf(!\av_readdata~2_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\av_readdata~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \av_readdata~3 .extended_lut = "off";
defparam \av_readdata~3 .lut_mask = 64'h00000F0F00440F4F;
defparam \av_readdata~3 .shared_arith = "off";

cyclonev_lcell_comb \av_readdata~4 (
	.dataa(!reconfig_to_xcvr_31),
	.datab(!reconfig_to_xcvr_20),
	.datac(!reconfig_to_xcvr_22),
	.datad(!reconfig_to_xcvr_19),
	.datae(!reconfig_to_xcvr_23),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\av_readdata~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \av_readdata~4 .extended_lut = "off";
defparam \av_readdata~4 .lut_mask = 64'h0000004000000040;
defparam \av_readdata~4 .shared_arith = "off";

cyclonev_lcell_comb \av_readdata~5 (
	.dataa(!reconfig_to_xcvr_20),
	.datab(!reconfig_to_xcvr_22),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\av_readdata~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \av_readdata~5 .extended_lut = "off";
defparam \av_readdata~5 .lut_mask = 64'h1111111111111111;
defparam \av_readdata~5 .shared_arith = "off";

cyclonev_lcell_comb \av_readdata~6 (
	.dataa(!gen_rstctl_reg_txr_tx_digital_rst_n_val),
	.datab(!reconfig_to_xcvr_21),
	.datac(!\av_readdata~1_combout ),
	.datad(!\gen_status_reg_rx.alt_xcvr_resync_inst|resync_chains[0].sync_r[1]~q ),
	.datae(!\av_readdata~4_combout ),
	.dataf(!\av_readdata~5_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\av_readdata~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \av_readdata~6 .extended_lut = "off";
defparam \av_readdata~6 .lut_mask = 64'h0000DDDD000FDDDF;
defparam \av_readdata~6 .shared_arith = "off";

cyclonev_lcell_comb \av_readdata~7 (
	.dataa(!reconfig_to_xcvr_31),
	.datab(!reconfig_to_xcvr_22),
	.datac(!reconfig_to_xcvr_19),
	.datad(!reconfig_to_xcvr_23),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\av_readdata~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \av_readdata~7 .extended_lut = "off";
defparam \av_readdata~7 .lut_mask = 64'h0004000400040004;
defparam \av_readdata~7 .shared_arith = "off";

cyclonev_lcell_comb \av_readdata~8 (
	.dataa(!gen_rstctl_reg_rxr_rx_rst_ovr),
	.datab(!reconfig_to_xcvr_20),
	.datac(!reconfig_to_xcvr_21),
	.datad(!\av_readdata~7_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\av_readdata~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \av_readdata~8 .extended_lut = "off";
defparam \av_readdata~8 .lut_mask = 64'h0034003400340034;
defparam \av_readdata~8 .shared_arith = "off";

cyclonev_lcell_comb \av_readdata~9 (
	.dataa(!gen_rstctl_reg_rxr_rx_digital_rst_n_val),
	.datab(!reconfig_to_xcvr_21),
	.datac(!\av_readdata~4_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\av_readdata~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \av_readdata~9 .extended_lut = "off";
defparam \av_readdata~9 .lut_mask = 64'h0101010101010101;
defparam \av_readdata~9 .shared_arith = "off";

cyclonev_lcell_comb \av_readdata~10 (
	.dataa(!gen_rstctl_reg_rxr_rx_analog_rst_n_val),
	.datab(!reconfig_to_xcvr_21),
	.datac(!\av_readdata~4_combout ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\av_readdata~10_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \av_readdata~10 .extended_lut = "off";
defparam \av_readdata~10 .lut_mask = 64'h0101010101010101;
defparam \av_readdata~10 .shared_arith = "off";

cyclonev_lcell_comb \always5~0 (
	.dataa(!reconfig_to_xcvr_31),
	.datab(!reconfig_to_xcvr_20),
	.datac(!reconfig_to_xcvr_22),
	.datad(!reconfig_to_xcvr_21),
	.datae(!reconfig_to_xcvr_23),
	.dataf(!reconfig_to_xcvr_18),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\always5~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \always5~0 .extended_lut = "off";
defparam \always5~0 .lut_mask = 64'h0000000000000040;
defparam \always5~0 .shared_arith = "off";

cyclonev_lcell_comb \gen_oc_reg.r_hardoccalen~0 (
	.dataa(!gen_oc_regr_hardoccalen),
	.datab(!reconfig_to_xcvr_21),
	.datac(!reconfig_to_xcvr_23),
	.datad(!av_writedata[0]),
	.datae(!\always1~0_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\gen_oc_reg.r_hardoccalen~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \gen_oc_reg.r_hardoccalen~0 .extended_lut = "off";
defparam \gen_oc_reg.r_hardoccalen~0 .lut_mask = 64'h5555457555554575;
defparam \gen_oc_reg.r_hardoccalen~0 .shared_arith = "off";

cyclonev_lcell_comb \gen_slpbk_reg.r_seriallpbken~0 (
	.dataa(!reconfig_to_xcvr_20),
	.datab(!reconfig_to_xcvr_22),
	.datac(!gen_slpbk_regr_seriallpbken),
	.datad(!av_writedata[0]),
	.datae(!\always3~0_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\gen_slpbk_reg.r_seriallpbken~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \gen_slpbk_reg.r_seriallpbken~0 .extended_lut = "off";
defparam \gen_slpbk_reg.r_seriallpbken~0 .lut_mask = 64'h0F0F0D2F0F0F0D2F;
defparam \gen_slpbk_reg.r_seriallpbken~0 .shared_arith = "off";

endmodule

module NATIVE_TRANSCEIVER_IP_alt_xcvr_resync (
	resync_chains0sync_r_1,
	d,
	clk,
	reset)/* synthesis synthesis_greybox=0 */;
output 	resync_chains0sync_r_1;
input 	[0:0] d;
input 	clk;
input 	reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \resync_chains[0].sync_r[0]~q ;


dffeas \resync_chains[0].sync_r[1] (
	.clk(clk),
	.d(\resync_chains[0].sync_r[0]~q ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(resync_chains0sync_r_1),
	.prn(vcc));
defparam \resync_chains[0].sync_r[1] .is_wysiwyg = "true";
defparam \resync_chains[0].sync_r[1] .power_up = "low";

dffeas \resync_chains[0].sync_r[0] (
	.clk(clk),
	.d(d[0]),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\resync_chains[0].sync_r[0]~q ),
	.prn(vcc));
defparam \resync_chains[0].sync_r[0] .is_wysiwyg = "true";
defparam \resync_chains[0].sync_r[0] .power_up = "low";

endmodule

module NATIVE_TRANSCEIVER_IP_alt_xcvr_resync_1 (
	resync_chains0sync_r_1,
	d,
	clk,
	reset)/* synthesis synthesis_greybox=0 */;
output 	resync_chains0sync_r_1;
input 	[0:0] d;
input 	clk;
input 	reset;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \resync_chains[0].sync_r[0]~q ;


dffeas \resync_chains[0].sync_r[1] (
	.clk(clk),
	.d(\resync_chains[0].sync_r[0]~q ),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(resync_chains0sync_r_1),
	.prn(vcc));
defparam \resync_chains[0].sync_r[1] .is_wysiwyg = "true";
defparam \resync_chains[0].sync_r[1] .power_up = "low";

dffeas \resync_chains[0].sync_r[0] (
	.clk(clk),
	.d(d[0]),
	.asdata(vcc),
	.clrn(!reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\resync_chains[0].sync_r[0]~q ),
	.prn(vcc));
defparam \resync_chains[0].sync_r[0] .is_wysiwyg = "true";
defparam \resync_chains[0].sync_r[0] .power_up = "low";

endmodule
