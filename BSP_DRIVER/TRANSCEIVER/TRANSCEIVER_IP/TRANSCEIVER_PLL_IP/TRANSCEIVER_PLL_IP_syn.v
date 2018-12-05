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

// DATE "12/06/2017 05:22:17"

// 
// Device: Altera 5CGXFC7C7F23C8 Package FBGA484
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module TRANSCEIVER_PLL_IP (
	pll_powerdown,
	pll_refclk,
	pll_fbclk,
	pll_clkout,
	pll_locked,
	fboutclk,
	hclk,
	reconfig_to_xcvr,
	reconfig_from_xcvr)/* synthesis synthesis_greybox=0 */;
input 	pll_powerdown;
input 	[0:0] pll_refclk;
input 	pll_fbclk;
output 	pll_clkout;
output 	pll_locked;
output 	[0:0] fboutclk;
output 	[0:0] hclk;
input 	[69:0] reconfig_to_xcvr;
output 	[45:0] reconfig_from_xcvr;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \transceiver_pll_ip_inst|outclk[0] ;
wire \transceiver_pll_ip_inst|locked[0] ;
wire \transceiver_pll_ip_inst|hclk[0] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[0] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[1] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[2] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[3] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[4] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[5] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[6] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[7] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[8] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[9] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[10] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[11] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[12] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[13] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[14] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[15] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[16] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[17] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[18] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[19] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[20] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[21] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[22] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[23] ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[0]~0_combout ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[1]~1_combout ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[2]~2_combout ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[3]~3_combout ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[4]~4_combout ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[5]~5_combout ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[6]~6_combout ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[7]~7_combout ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[8]~8_combout ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[9]~9_combout ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[10]~10_combout ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[11]~11_combout ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[12]~12_combout ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[13]~13_combout ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[14]~14_combout ;
wire \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[15]~15_combout ;
wire \pll_fbclk~input_o ;
wire \reconfig_to_xcvr[46]~input_o ;
wire \reconfig_to_xcvr[47]~input_o ;
wire \reconfig_to_xcvr[48]~input_o ;
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
wire \pll_powerdown~input_o ;
wire \reconfig_to_xcvr[31]~input_o ;
wire \reconfig_to_xcvr[0]~input_o ;
wire \reconfig_to_xcvr[1]~input_o ;
wire \reconfig_to_xcvr[19]~input_o ;
wire \reconfig_to_xcvr[20]~input_o ;
wire \reconfig_to_xcvr[21]~input_o ;
wire \reconfig_to_xcvr[22]~input_o ;
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
wire \pll_refclk[0]~input_o ;


TRANSCEIVER_PLL_IP_av_xcvr_plls transceiver_pll_ip_inst(
	.outclk({\transceiver_pll_ip_inst|outclk[0] }),
	.locked_0(\transceiver_pll_ip_inst|locked[0] ),
	.hclk({\transceiver_pll_ip_inst|hclk[0] }),
	.pll0avmmpmatestbus_0(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[0] ),
	.pll0avmmpmatestbus_1(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[1] ),
	.pll0avmmpmatestbus_2(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[2] ),
	.pll0avmmpmatestbus_3(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[3] ),
	.pll0avmmpmatestbus_4(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[4] ),
	.pll0avmmpmatestbus_5(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[5] ),
	.pll0avmmpmatestbus_6(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[6] ),
	.pll0avmmpmatestbus_7(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[7] ),
	.pll0avmmpmatestbus_8(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[8] ),
	.pll0avmmpmatestbus_9(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[9] ),
	.pll0avmmpmatestbus_10(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[10] ),
	.pll0avmmpmatestbus_11(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[11] ),
	.pll0avmmpmatestbus_12(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[12] ),
	.pll0avmmpmatestbus_13(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[13] ),
	.pll0avmmpmatestbus_14(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[14] ),
	.pll0avmmpmatestbus_15(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[15] ),
	.pll0avmmpmatestbus_16(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[16] ),
	.pll0avmmpmatestbus_17(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[17] ),
	.pll0avmmpmatestbus_18(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[18] ),
	.pll0avmmpmatestbus_19(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[19] ),
	.pll0avmmpmatestbus_20(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[20] ),
	.pll0avmmpmatestbus_21(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[21] ),
	.pll0avmmpmatestbus_22(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[22] ),
	.pll0avmmpmatestbus_23(\transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[23] ),
	.pll0avmmpld_avmm_readdata_0(\transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[0]~0_combout ),
	.pll0avmmpld_avmm_readdata_1(\transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[1]~1_combout ),
	.pll0avmmpld_avmm_readdata_2(\transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[2]~2_combout ),
	.pll0avmmpld_avmm_readdata_3(\transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[3]~3_combout ),
	.pll0avmmpld_avmm_readdata_4(\transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[4]~4_combout ),
	.pll0avmmpld_avmm_readdata_5(\transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[5]~5_combout ),
	.pll0avmmpld_avmm_readdata_6(\transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[6]~6_combout ),
	.pll0avmmpld_avmm_readdata_7(\transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[7]~7_combout ),
	.pll0avmmpld_avmm_readdata_8(\transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[8]~8_combout ),
	.pll0avmmpld_avmm_readdata_9(\transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[9]~9_combout ),
	.pll0avmmpld_avmm_readdata_10(\transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[10]~10_combout ),
	.pll0avmmpld_avmm_readdata_11(\transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[11]~11_combout ),
	.pll0avmmpld_avmm_readdata_12(\transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[12]~12_combout ),
	.pll0avmmpld_avmm_readdata_13(\transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[13]~13_combout ),
	.pll0avmmpld_avmm_readdata_14(\transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[14]~14_combout ),
	.pll0avmmpld_avmm_readdata_15(\transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[15]~15_combout ),
	.rst({\pll_powerdown~input_o }),
	.reconfig_to_xcvr_31(\reconfig_to_xcvr[31]~input_o ),
	.reconfig_to_xcvr_0(\reconfig_to_xcvr[0]~input_o ),
	.reconfig_to_xcvr_1(\reconfig_to_xcvr[1]~input_o ),
	.reconfig_to_xcvr_19(\reconfig_to_xcvr[19]~input_o ),
	.reconfig_to_xcvr_20(\reconfig_to_xcvr[20]~input_o ),
	.reconfig_to_xcvr_21(\reconfig_to_xcvr[21]~input_o ),
	.reconfig_to_xcvr_22(\reconfig_to_xcvr[22]~input_o ),
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
	.refclk({\pll_refclk[0]~input_o }));

assign \pll_powerdown~input_o  = pll_powerdown;

assign \reconfig_to_xcvr[31]~input_o  = reconfig_to_xcvr[31];

assign \reconfig_to_xcvr[0]~input_o  = reconfig_to_xcvr[0];

assign \reconfig_to_xcvr[1]~input_o  = reconfig_to_xcvr[1];

assign \reconfig_to_xcvr[19]~input_o  = reconfig_to_xcvr[19];

assign \reconfig_to_xcvr[20]~input_o  = reconfig_to_xcvr[20];

assign \reconfig_to_xcvr[21]~input_o  = reconfig_to_xcvr[21];

assign \reconfig_to_xcvr[22]~input_o  = reconfig_to_xcvr[22];

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

assign \pll_refclk[0]~input_o  = pll_refclk[0];

assign pll_clkout = \transceiver_pll_ip_inst|outclk[0] ;

assign pll_locked = \transceiver_pll_ip_inst|locked[0] ;

assign fboutclk[0] = gnd;

assign hclk[0] = \transceiver_pll_ip_inst|hclk[0] ;

assign reconfig_from_xcvr[0] = \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[0]~0_combout ;

assign reconfig_from_xcvr[1] = \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[1]~1_combout ;

assign reconfig_from_xcvr[2] = \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[2]~2_combout ;

assign reconfig_from_xcvr[3] = \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[3]~3_combout ;

assign reconfig_from_xcvr[4] = \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[4]~4_combout ;

assign reconfig_from_xcvr[5] = \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[5]~5_combout ;

assign reconfig_from_xcvr[6] = \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[6]~6_combout ;

assign reconfig_from_xcvr[7] = \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[7]~7_combout ;

assign reconfig_from_xcvr[8] = \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[8]~8_combout ;

assign reconfig_from_xcvr[9] = \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[9]~9_combout ;

assign reconfig_from_xcvr[10] = \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[10]~10_combout ;

assign reconfig_from_xcvr[11] = \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[11]~11_combout ;

assign reconfig_from_xcvr[12] = \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[12]~12_combout ;

assign reconfig_from_xcvr[13] = \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[13]~13_combout ;

assign reconfig_from_xcvr[14] = \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[14]~14_combout ;

assign reconfig_from_xcvr[15] = \transceiver_pll_ip_inst|pll[0].avmm.pld_avmm_readdata[15]~15_combout ;

assign reconfig_from_xcvr[16] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[0] ;

assign reconfig_from_xcvr[17] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[1] ;

assign reconfig_from_xcvr[18] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[2] ;

assign reconfig_from_xcvr[19] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[3] ;

assign reconfig_from_xcvr[20] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[4] ;

assign reconfig_from_xcvr[21] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[5] ;

assign reconfig_from_xcvr[22] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[6] ;

assign reconfig_from_xcvr[23] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[7] ;

assign reconfig_from_xcvr[24] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[8] ;

assign reconfig_from_xcvr[25] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[9] ;

assign reconfig_from_xcvr[26] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[10] ;

assign reconfig_from_xcvr[27] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[11] ;

assign reconfig_from_xcvr[28] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[12] ;

assign reconfig_from_xcvr[29] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[13] ;

assign reconfig_from_xcvr[30] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[14] ;

assign reconfig_from_xcvr[31] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[15] ;

assign reconfig_from_xcvr[32] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[16] ;

assign reconfig_from_xcvr[33] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[17] ;

assign reconfig_from_xcvr[34] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[18] ;

assign reconfig_from_xcvr[35] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[19] ;

assign reconfig_from_xcvr[36] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[20] ;

assign reconfig_from_xcvr[37] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[21] ;

assign reconfig_from_xcvr[38] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[22] ;

assign reconfig_from_xcvr[39] = \transceiver_pll_ip_inst|pll[0].avmm.pmatestbus[23] ;

assign reconfig_from_xcvr[40] = gnd;

assign reconfig_from_xcvr[41] = gnd;

assign reconfig_from_xcvr[42] = gnd;

assign reconfig_from_xcvr[43] = gnd;

assign reconfig_from_xcvr[44] = gnd;

assign reconfig_from_xcvr[45] = gnd;

assign \pll_fbclk~input_o  = pll_fbclk;

assign \reconfig_to_xcvr[46]~input_o  = reconfig_to_xcvr[46];

assign \reconfig_to_xcvr[47]~input_o  = reconfig_to_xcvr[47];

assign \reconfig_to_xcvr[48]~input_o  = reconfig_to_xcvr[48];

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

module TRANSCEIVER_PLL_IP_av_xcvr_plls (
	outclk,
	locked_0,
	hclk,
	pll0avmmpmatestbus_0,
	pll0avmmpmatestbus_1,
	pll0avmmpmatestbus_2,
	pll0avmmpmatestbus_3,
	pll0avmmpmatestbus_4,
	pll0avmmpmatestbus_5,
	pll0avmmpmatestbus_6,
	pll0avmmpmatestbus_7,
	pll0avmmpmatestbus_8,
	pll0avmmpmatestbus_9,
	pll0avmmpmatestbus_10,
	pll0avmmpmatestbus_11,
	pll0avmmpmatestbus_12,
	pll0avmmpmatestbus_13,
	pll0avmmpmatestbus_14,
	pll0avmmpmatestbus_15,
	pll0avmmpmatestbus_16,
	pll0avmmpmatestbus_17,
	pll0avmmpmatestbus_18,
	pll0avmmpmatestbus_19,
	pll0avmmpmatestbus_20,
	pll0avmmpmatestbus_21,
	pll0avmmpmatestbus_22,
	pll0avmmpmatestbus_23,
	pll0avmmpld_avmm_readdata_0,
	pll0avmmpld_avmm_readdata_1,
	pll0avmmpld_avmm_readdata_2,
	pll0avmmpld_avmm_readdata_3,
	pll0avmmpld_avmm_readdata_4,
	pll0avmmpld_avmm_readdata_5,
	pll0avmmpld_avmm_readdata_6,
	pll0avmmpld_avmm_readdata_7,
	pll0avmmpld_avmm_readdata_8,
	pll0avmmpld_avmm_readdata_9,
	pll0avmmpld_avmm_readdata_10,
	pll0avmmpld_avmm_readdata_11,
	pll0avmmpld_avmm_readdata_12,
	pll0avmmpld_avmm_readdata_13,
	pll0avmmpld_avmm_readdata_14,
	pll0avmmpld_avmm_readdata_15,
	rst,
	reconfig_to_xcvr_31,
	reconfig_to_xcvr_0,
	reconfig_to_xcvr_1,
	reconfig_to_xcvr_19,
	reconfig_to_xcvr_20,
	reconfig_to_xcvr_21,
	reconfig_to_xcvr_22,
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
	refclk)/* synthesis synthesis_greybox=0 */;
output 	[0:0] outclk;
output 	locked_0;
output 	[0:0] hclk;
output 	pll0avmmpmatestbus_0;
output 	pll0avmmpmatestbus_1;
output 	pll0avmmpmatestbus_2;
output 	pll0avmmpmatestbus_3;
output 	pll0avmmpmatestbus_4;
output 	pll0avmmpmatestbus_5;
output 	pll0avmmpmatestbus_6;
output 	pll0avmmpmatestbus_7;
output 	pll0avmmpmatestbus_8;
output 	pll0avmmpmatestbus_9;
output 	pll0avmmpmatestbus_10;
output 	pll0avmmpmatestbus_11;
output 	pll0avmmpmatestbus_12;
output 	pll0avmmpmatestbus_13;
output 	pll0avmmpmatestbus_14;
output 	pll0avmmpmatestbus_15;
output 	pll0avmmpmatestbus_16;
output 	pll0avmmpmatestbus_17;
output 	pll0avmmpmatestbus_18;
output 	pll0avmmpmatestbus_19;
output 	pll0avmmpmatestbus_20;
output 	pll0avmmpmatestbus_21;
output 	pll0avmmpmatestbus_22;
output 	pll0avmmpmatestbus_23;
output 	pll0avmmpld_avmm_readdata_0;
output 	pll0avmmpld_avmm_readdata_1;
output 	pll0avmmpld_avmm_readdata_2;
output 	pll0avmmpld_avmm_readdata_3;
output 	pll0avmmpld_avmm_readdata_4;
output 	pll0avmmpld_avmm_readdata_5;
output 	pll0avmmpld_avmm_readdata_6;
output 	pll0avmmpld_avmm_readdata_7;
output 	pll0avmmpld_avmm_readdata_8;
output 	pll0avmmpld_avmm_readdata_9;
output 	pll0avmmpld_avmm_readdata_10;
output 	pll0avmmpld_avmm_readdata_11;
output 	pll0avmmpld_avmm_readdata_12;
output 	pll0avmmpld_avmm_readdata_13;
output 	pll0avmmpld_avmm_readdata_14;
output 	pll0avmmpld_avmm_readdata_15;
input 	[0:0] rst;
input 	reconfig_to_xcvr_31;
input 	reconfig_to_xcvr_0;
input 	reconfig_to_xcvr_1;
input 	reconfig_to_xcvr_19;
input 	reconfig_to_xcvr_20;
input 	reconfig_to_xcvr_21;
input 	reconfig_to_xcvr_22;
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
input 	[0:0] refclk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \pll[0].avmm.av_xcvr_avmm_csr_inst|av_readdata[0]~q ;
wire \pll[0].avmm.av_xcvr_avmm_csr_inst|av_readdata[2]~q ;
wire \pll[0].avmm.av_xcvr_avmm_csr_inst|av_readdata[3]~q ;
wire \pll[0].avmm.chnl_avmm_blockselect[5] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[80] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[81] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[82] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[83] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[84] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[85] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[86] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[87] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[88] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[89] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[90] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[91] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[92] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[93] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[94] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[95] ;
wire \pll[0].local_avmm_write ;
wire \pll[0].local_avmm_read ;
wire \pll[0].local_avmm_clk ;
wire \pll[0].local_avmm_rstn ;
wire \pll[0].avmm.avmm_readdata[0] ;
wire \pll[0].avmm.avmm_readdata[1] ;
wire \pll[0].avmm.avmm_readdata[2] ;
wire \pll[0].avmm.avmm_readdata[3] ;
wire \pll[0].avmm.avmm_readdata[4] ;
wire \pll[0].avmm.avmm_readdata[5] ;
wire \pll[0].avmm.avmm_readdata[6] ;
wire \pll[0].avmm.avmm_readdata[7] ;
wire \pll[0].avmm.avmm_readdata[8] ;
wire \pll[0].avmm.avmm_readdata[9] ;
wire \pll[0].avmm.avmm_readdata[10] ;
wire \pll[0].avmm.avmm_readdata[11] ;
wire \pll[0].avmm.avmm_readdata[12] ;
wire \pll[0].avmm.avmm_readdata[13] ;
wire \pll[0].avmm.avmm_readdata[14] ;
wire \pll[0].avmm.avmm_readdata[15] ;
wire \pll[0].local_avmm_writedata[0] ;
wire \pll[0].local_avmm_writedata[1] ;
wire \pll[0].local_avmm_writedata[2] ;
wire \pll[0].local_avmm_writedata[3] ;
wire \pll[0].local_avmm_writedata[4] ;
wire \pll[0].local_avmm_writedata[5] ;
wire \pll[0].local_avmm_writedata[6] ;
wire \pll[0].local_avmm_writedata[7] ;
wire \pll[0].local_avmm_writedata[8] ;
wire \pll[0].local_avmm_writedata[9] ;
wire \pll[0].local_avmm_writedata[10] ;
wire \pll[0].local_avmm_writedata[11] ;
wire \pll[0].local_avmm_writedata[12] ;
wire \pll[0].local_avmm_writedata[13] ;
wire \pll[0].local_avmm_writedata[14] ;
wire \pll[0].local_avmm_writedata[15] ;
wire \pll[0].local_avmm_address[0] ;
wire \pll[0].local_avmm_address[1] ;
wire \pll[0].local_avmm_address[2] ;
wire \pll[0].local_avmm_address[3] ;
wire \pll[0].local_avmm_address[4] ;
wire \pll[0].local_avmm_address[5] ;
wire \pll[0].local_avmm_address[6] ;
wire \pll[0].local_avmm_address[7] ;
wire \pll[0].local_avmm_address[8] ;
wire \pll[0].local_avmm_address[9] ;
wire \pll[0].local_avmm_address[10] ;
wire \pll[0].local_avmm_byteen[0] ;
wire \pll[0].local_avmm_byteen[1] ;
wire \pll[0].pll.cmu_pll.mux_refclk_out ;
wire \pll[0].avmm.avmm_write~combout ;
wire \pll[0].avmm.avmm_read~combout ;
wire \pll[0].avmm.chnl_avmm_blockselect[6] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[96] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[97] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[98] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[99] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[100] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[101] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[102] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[103] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[104] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[105] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[106] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[107] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[108] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[109] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[110] ;
wire \pll[0].avmm.chnl_avmm_readdatabus[111] ;
wire \pll[0].avmm.csr_avmm_n_sel_r~q ;

wire [15:0] \pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus ;
wire [1:0] \pll[0].avmm.av_hssi_avmm_interface_inst_BYTEENCHNL_bus ;
wire [15:0] \pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus ;
wire [10:0] \pll[0].avmm.av_hssi_avmm_interface_inst_REGADDRCHNL_bus ;
wire [15:0] \pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus ;
wire [23:0] \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus ;
wire [15:0] \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus ;

assign \pll[0].avmm.chnl_avmm_readdatabus[80]  = \pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus [0];
assign \pll[0].avmm.chnl_avmm_readdatabus[81]  = \pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus [1];
assign \pll[0].avmm.chnl_avmm_readdatabus[82]  = \pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus [2];
assign \pll[0].avmm.chnl_avmm_readdatabus[83]  = \pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus [3];
assign \pll[0].avmm.chnl_avmm_readdatabus[84]  = \pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus [4];
assign \pll[0].avmm.chnl_avmm_readdatabus[85]  = \pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus [5];
assign \pll[0].avmm.chnl_avmm_readdatabus[86]  = \pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus [6];
assign \pll[0].avmm.chnl_avmm_readdatabus[87]  = \pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus [7];
assign \pll[0].avmm.chnl_avmm_readdatabus[88]  = \pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus [8];
assign \pll[0].avmm.chnl_avmm_readdatabus[89]  = \pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus [9];
assign \pll[0].avmm.chnl_avmm_readdatabus[90]  = \pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus [10];
assign \pll[0].avmm.chnl_avmm_readdatabus[91]  = \pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus [11];
assign \pll[0].avmm.chnl_avmm_readdatabus[92]  = \pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus [12];
assign \pll[0].avmm.chnl_avmm_readdatabus[93]  = \pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus [13];
assign \pll[0].avmm.chnl_avmm_readdatabus[94]  = \pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus [14];
assign \pll[0].avmm.chnl_avmm_readdatabus[95]  = \pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus [15];

assign \pll[0].local_avmm_byteen[0]  = \pll[0].avmm.av_hssi_avmm_interface_inst_BYTEENCHNL_bus [0];
assign \pll[0].local_avmm_byteen[1]  = \pll[0].avmm.av_hssi_avmm_interface_inst_BYTEENCHNL_bus [1];

assign \pll[0].local_avmm_writedata[0]  = \pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [0];
assign \pll[0].local_avmm_writedata[1]  = \pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [1];
assign \pll[0].local_avmm_writedata[2]  = \pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [2];
assign \pll[0].local_avmm_writedata[3]  = \pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [3];
assign \pll[0].local_avmm_writedata[4]  = \pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [4];
assign \pll[0].local_avmm_writedata[5]  = \pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [5];
assign \pll[0].local_avmm_writedata[6]  = \pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [6];
assign \pll[0].local_avmm_writedata[7]  = \pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [7];
assign \pll[0].local_avmm_writedata[8]  = \pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [8];
assign \pll[0].local_avmm_writedata[9]  = \pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [9];
assign \pll[0].local_avmm_writedata[10]  = \pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [10];
assign \pll[0].local_avmm_writedata[11]  = \pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [11];
assign \pll[0].local_avmm_writedata[12]  = \pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [12];
assign \pll[0].local_avmm_writedata[13]  = \pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [13];
assign \pll[0].local_avmm_writedata[14]  = \pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [14];
assign \pll[0].local_avmm_writedata[15]  = \pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus [15];

assign \pll[0].local_avmm_address[0]  = \pll[0].avmm.av_hssi_avmm_interface_inst_REGADDRCHNL_bus [0];
assign \pll[0].local_avmm_address[1]  = \pll[0].avmm.av_hssi_avmm_interface_inst_REGADDRCHNL_bus [1];
assign \pll[0].local_avmm_address[2]  = \pll[0].avmm.av_hssi_avmm_interface_inst_REGADDRCHNL_bus [2];
assign \pll[0].local_avmm_address[3]  = \pll[0].avmm.av_hssi_avmm_interface_inst_REGADDRCHNL_bus [3];
assign \pll[0].local_avmm_address[4]  = \pll[0].avmm.av_hssi_avmm_interface_inst_REGADDRCHNL_bus [4];
assign \pll[0].local_avmm_address[5]  = \pll[0].avmm.av_hssi_avmm_interface_inst_REGADDRCHNL_bus [5];
assign \pll[0].local_avmm_address[6]  = \pll[0].avmm.av_hssi_avmm_interface_inst_REGADDRCHNL_bus [6];
assign \pll[0].local_avmm_address[7]  = \pll[0].avmm.av_hssi_avmm_interface_inst_REGADDRCHNL_bus [7];
assign \pll[0].local_avmm_address[8]  = \pll[0].avmm.av_hssi_avmm_interface_inst_REGADDRCHNL_bus [8];
assign \pll[0].local_avmm_address[9]  = \pll[0].avmm.av_hssi_avmm_interface_inst_REGADDRCHNL_bus [9];
assign \pll[0].local_avmm_address[10]  = \pll[0].avmm.av_hssi_avmm_interface_inst_REGADDRCHNL_bus [10];

assign \pll[0].avmm.avmm_readdata[0]  = \pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus [0];
assign \pll[0].avmm.avmm_readdata[1]  = \pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus [1];
assign \pll[0].avmm.avmm_readdata[2]  = \pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus [2];
assign \pll[0].avmm.avmm_readdata[3]  = \pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus [3];
assign \pll[0].avmm.avmm_readdata[4]  = \pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus [4];
assign \pll[0].avmm.avmm_readdata[5]  = \pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus [5];
assign \pll[0].avmm.avmm_readdata[6]  = \pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus [6];
assign \pll[0].avmm.avmm_readdata[7]  = \pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus [7];
assign \pll[0].avmm.avmm_readdata[8]  = \pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus [8];
assign \pll[0].avmm.avmm_readdata[9]  = \pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus [9];
assign \pll[0].avmm.avmm_readdata[10]  = \pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus [10];
assign \pll[0].avmm.avmm_readdata[11]  = \pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus [11];
assign \pll[0].avmm.avmm_readdata[12]  = \pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus [12];
assign \pll[0].avmm.avmm_readdata[13]  = \pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus [13];
assign \pll[0].avmm.avmm_readdata[14]  = \pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus [14];
assign \pll[0].avmm.avmm_readdata[15]  = \pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus [15];

assign pll0avmmpmatestbus_0 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [0];
assign pll0avmmpmatestbus_1 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [1];
assign pll0avmmpmatestbus_2 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [2];
assign pll0avmmpmatestbus_3 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [3];
assign pll0avmmpmatestbus_4 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [4];
assign pll0avmmpmatestbus_5 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [5];
assign pll0avmmpmatestbus_6 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [6];
assign pll0avmmpmatestbus_7 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [7];
assign pll0avmmpmatestbus_8 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [8];
assign pll0avmmpmatestbus_9 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [9];
assign pll0avmmpmatestbus_10 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [10];
assign pll0avmmpmatestbus_11 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [11];
assign pll0avmmpmatestbus_12 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [12];
assign pll0avmmpmatestbus_13 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [13];
assign pll0avmmpmatestbus_14 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [14];
assign pll0avmmpmatestbus_15 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [15];
assign pll0avmmpmatestbus_16 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [16];
assign pll0avmmpmatestbus_17 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [17];
assign pll0avmmpmatestbus_18 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [18];
assign pll0avmmpmatestbus_19 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [19];
assign pll0avmmpmatestbus_20 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [20];
assign pll0avmmpmatestbus_21 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [21];
assign pll0avmmpmatestbus_22 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [22];
assign pll0avmmpmatestbus_23 = \pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus [23];

assign \pll[0].avmm.chnl_avmm_readdatabus[96]  = \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus [0];
assign \pll[0].avmm.chnl_avmm_readdatabus[97]  = \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus [1];
assign \pll[0].avmm.chnl_avmm_readdatabus[98]  = \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus [2];
assign \pll[0].avmm.chnl_avmm_readdatabus[99]  = \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus [3];
assign \pll[0].avmm.chnl_avmm_readdatabus[100]  = \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus [4];
assign \pll[0].avmm.chnl_avmm_readdatabus[101]  = \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus [5];
assign \pll[0].avmm.chnl_avmm_readdatabus[102]  = \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus [6];
assign \pll[0].avmm.chnl_avmm_readdatabus[103]  = \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus [7];
assign \pll[0].avmm.chnl_avmm_readdatabus[104]  = \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus [8];
assign \pll[0].avmm.chnl_avmm_readdatabus[105]  = \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus [9];
assign \pll[0].avmm.chnl_avmm_readdatabus[106]  = \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus [10];
assign \pll[0].avmm.chnl_avmm_readdatabus[107]  = \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus [11];
assign \pll[0].avmm.chnl_avmm_readdatabus[108]  = \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus [12];
assign \pll[0].avmm.chnl_avmm_readdatabus[109]  = \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus [13];
assign \pll[0].avmm.chnl_avmm_readdatabus[110]  = \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus [14];
assign \pll[0].avmm.chnl_avmm_readdatabus[111]  = \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus [15];

TRANSCEIVER_PLL_IP_av_xcvr_avmm_csr \pll[0].avmm.av_xcvr_avmm_csr_inst (
	.locked_0(locked_0),
	.av_readdata_0(\pll[0].avmm.av_xcvr_avmm_csr_inst|av_readdata[0]~q ),
	.av_readdata_2(\pll[0].avmm.av_xcvr_avmm_csr_inst|av_readdata[2]~q ),
	.av_readdata_3(\pll[0].avmm.av_xcvr_avmm_csr_inst|av_readdata[3]~q ),
	.reconfig_to_xcvr_31(reconfig_to_xcvr_31),
	.reconfig_to_xcvr_0(reconfig_to_xcvr_0),
	.reconfig_to_xcvr_1(reconfig_to_xcvr_1),
	.reconfig_to_xcvr_19(reconfig_to_xcvr_19),
	.reconfig_to_xcvr_20(reconfig_to_xcvr_20),
	.reconfig_to_xcvr_21(reconfig_to_xcvr_21),
	.reconfig_to_xcvr_22(reconfig_to_xcvr_22),
	.reconfig_to_xcvr_23(reconfig_to_xcvr_23),
	.reconfig_to_xcvr_18(reconfig_to_xcvr_18),
	.reconfig_to_xcvr_2(reconfig_to_xcvr_2),
	.reconfig_to_xcvr_5(reconfig_to_xcvr_5));

cyclonev_channel_pll \pll[0].pll.cmu_pll.tx_pll (
	.avmmclk(\pll[0].local_avmm_clk ),
	.avmmread(\pll[0].local_avmm_read ),
	.avmmrstn(\pll[0].local_avmm_rstn ),
	.avmmwrite(\pll[0].local_avmm_write ),
	.clkindeser(gnd),
	.crurstb(vcc),
	.earlyeios(gnd),
	.extclk(gnd),
	.lpbkpreen(gnd),
	.ltd(vcc),
	.ltr(vcc),
	.occalen(gnd),
	.pciel(gnd),
	.ppmlock(gnd),
	.refclk(\pll[0].pll.cmu_pll.mux_refclk_out ),
	.rstn(!rst[0]),
	.rxp(gnd),
	.sd(gnd),
	.avmmaddress({\pll[0].local_avmm_address[10] ,\pll[0].local_avmm_address[9] ,\pll[0].local_avmm_address[8] ,\pll[0].local_avmm_address[7] ,\pll[0].local_avmm_address[6] ,\pll[0].local_avmm_address[5] ,\pll[0].local_avmm_address[4] ,\pll[0].local_avmm_address[3] ,
\pll[0].local_avmm_address[2] ,\pll[0].local_avmm_address[1] ,\pll[0].local_avmm_address[0] }),
	.avmmbyteen({\pll[0].local_avmm_byteen[1] ,\pll[0].local_avmm_byteen[0] }),
	.avmmwritedata({\pll[0].local_avmm_writedata[15] ,\pll[0].local_avmm_writedata[14] ,\pll[0].local_avmm_writedata[13] ,\pll[0].local_avmm_writedata[12] ,\pll[0].local_avmm_writedata[11] ,\pll[0].local_avmm_writedata[10] ,\pll[0].local_avmm_writedata[9] ,
\pll[0].local_avmm_writedata[8] ,\pll[0].local_avmm_writedata[7] ,\pll[0].local_avmm_writedata[6] ,\pll[0].local_avmm_writedata[5] ,\pll[0].local_avmm_writedata[4] ,\pll[0].local_avmm_writedata[3] ,\pll[0].local_avmm_writedata[2] ,\pll[0].local_avmm_writedata[1] ,
\pll[0].local_avmm_writedata[0] }),
	.pciesw({gnd,gnd}),
	.blockselect(\pll[0].avmm.chnl_avmm_blockselect[5] ),
	.ck0pd(),
	.ck180pd(),
	.ck270pd(),
	.ck90pd(),
	.clk270bdes(),
	.clk90bdes(),
	.clkcdr(outclk[0]),
	.clklow(),
	.deven(),
	.dodd(),
	.fref(),
	.pfdmodelock(locked_0),
	.rxlpbdp(),
	.rxlpbp(),
	.rxplllock(),
	.txpllhclk(hclk[0]),
	.txrlpbk(),
	.vctrloverrange(),
	.avmmreaddata(\pll[0].pll.cmu_pll.tx_pll_AVMMREADDATA_bus ),
	.pdof());
defparam \pll[0].pll.cmu_pll.tx_pll .avmm_group_channel_index = 0;
defparam \pll[0].pll.cmu_pll.tx_pll .bbpd_salatch_offset_ctrl_clk0 = "offset_0mv";
defparam \pll[0].pll.cmu_pll.tx_pll .bbpd_salatch_offset_ctrl_clk180 = "offset_0mv";
defparam \pll[0].pll.cmu_pll.tx_pll .bbpd_salatch_offset_ctrl_clk270 = "offset_0mv";
defparam \pll[0].pll.cmu_pll.tx_pll .bbpd_salatch_offset_ctrl_clk90 = "offset_0mv";
defparam \pll[0].pll.cmu_pll.tx_pll .bbpd_salatch_sel = "normal";
defparam \pll[0].pll.cmu_pll.tx_pll .bypass_cp_rgla = "false";
defparam \pll[0].pll.cmu_pll.tx_pll .cdr_atb_select = "atb_disable";
defparam \pll[0].pll.cmu_pll.tx_pll .cgb_clk_enable = "true";
defparam \pll[0].pll.cmu_pll.tx_pll .charge_pump_current_test = "enable_ch_pump_normal";
defparam \pll[0].pll.cmu_pll.tx_pll .clklow_fref_to_ppm_div_sel = 1;
defparam \pll[0].pll.cmu_pll.tx_pll .clock_monitor = "lpbk_data";
defparam \pll[0].pll.cmu_pll.tx_pll .cvp_en_iocsr = "false";
defparam \pll[0].pll.cmu_pll.tx_pll .diag_rev_lpbk = "false";
defparam \pll[0].pll.cmu_pll.tx_pll .enable_gpon_detection = "false";
defparam \pll[0].pll.cmu_pll.tx_pll .enabled_for_reconfig = "true";
defparam \pll[0].pll.cmu_pll.tx_pll .fast_lock_mode = "true";
defparam \pll[0].pll.cmu_pll.tx_pll .fb_sel = "vcoclk";
defparam \pll[0].pll.cmu_pll.tx_pll .hs_levshift_power_supply_setting = 1;
defparam \pll[0].pll.cmu_pll.tx_pll .ignore_phslock = "false";
defparam \pll[0].pll.cmu_pll.tx_pll .l_counter_pd_clock_disable = "false";
defparam \pll[0].pll.cmu_pll.tx_pll .m_counter = 0;
defparam \pll[0].pll.cmu_pll.tx_pll .output_clock_frequency = "625.0 mhz";
defparam \pll[0].pll.cmu_pll.tx_pll .pcie_freq_control = "pcie_100mhz";
defparam \pll[0].pll.cmu_pll.tx_pll .pd_charge_pump_current_ctrl = 0;
defparam \pll[0].pll.cmu_pll.tx_pll .pd_l_counter = 0;
defparam \pll[0].pll.cmu_pll.tx_pll .pfd_charge_pump_current_ctrl = 0;
defparam \pll[0].pll.cmu_pll.tx_pll .pfd_l_counter = 0;
defparam \pll[0].pll.cmu_pll.tx_pll .powerdown = "false";
defparam \pll[0].pll.cmu_pll.tx_pll .ref_clk_div = 0;
defparam \pll[0].pll.cmu_pll.tx_pll .reference_clock_frequency = "125.0 mhz";
defparam \pll[0].pll.cmu_pll.tx_pll .regulator_volt_inc = "0";
defparam \pll[0].pll.cmu_pll.tx_pll .replica_bias_ctrl = "true";
defparam \pll[0].pll.cmu_pll.tx_pll .reverse_serial_lpbk = "false";
defparam \pll[0].pll.cmu_pll.tx_pll .ripple_cap_ctrl = "none";
defparam \pll[0].pll.cmu_pll.tx_pll .rxpll_pd_bw_ctrl = 0;
defparam \pll[0].pll.cmu_pll.tx_pll .rxpll_pfd_bw_ctrl = 0;
defparam \pll[0].pll.cmu_pll.tx_pll .txpll_hclk_driver_enable = "false";
defparam \pll[0].pll.cmu_pll.tx_pll .use_default_base_address = "true";
defparam \pll[0].pll.cmu_pll.tx_pll .user_base_address = 0;
defparam \pll[0].pll.cmu_pll.tx_pll .vco_overange_ref = "ref_2";
defparam \pll[0].pll.cmu_pll.tx_pll .vco_range_ctrl_en = "true";

cyclonev_hssi_avmm_interface \pll[0].avmm.av_hssi_avmm_interface_inst (
	.refclkdig(gnd),
	.avmmrstn(vcc),
	.avmmclk(reconfig_to_xcvr_0),
	.avmmwrite(\pll[0].avmm.avmm_write~combout ),
	.avmmread(\pll[0].avmm.avmm_read~combout ),
	.avmmreservedin(gnd),
	.scanmoden(vcc),
	.scanshiftn(vcc),
	.sershiftload(reconfig_to_xcvr_45),
	.interfacesel(reconfig_to_xcvr_44),
	.avmmbyteen({vcc,vcc}),
	.avmmaddress({reconfig_to_xcvr_30,reconfig_to_xcvr_29,reconfig_to_xcvr_28,reconfig_to_xcvr_27,reconfig_to_xcvr_26,reconfig_to_xcvr_25,reconfig_to_xcvr_24,reconfig_to_xcvr_23,reconfig_to_xcvr_22,reconfig_to_xcvr_21,reconfig_to_xcvr_20}),
	.avmmwritedata({reconfig_to_xcvr_17,reconfig_to_xcvr_16,reconfig_to_xcvr_15,reconfig_to_xcvr_14,reconfig_to_xcvr_13,reconfig_to_xcvr_12,reconfig_to_xcvr_11,reconfig_to_xcvr_10,reconfig_to_xcvr_9,reconfig_to_xcvr_8,reconfig_to_xcvr_7,reconfig_to_xcvr_6,reconfig_to_xcvr_5,
reconfig_to_xcvr_4,reconfig_to_xcvr_3,reconfig_to_xcvr_2}),
	.blockselect({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
\pll[0].avmm.chnl_avmm_blockselect[6] ,\pll[0].avmm.chnl_avmm_blockselect[5] ,gnd,gnd,gnd,gnd,gnd}),
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
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\pll[0].avmm.chnl_avmm_readdatabus[111] ,\pll[0].avmm.chnl_avmm_readdatabus[110] ,
\pll[0].avmm.chnl_avmm_readdatabus[109] ,\pll[0].avmm.chnl_avmm_readdatabus[108] ,\pll[0].avmm.chnl_avmm_readdatabus[107] ,\pll[0].avmm.chnl_avmm_readdatabus[106] ,\pll[0].avmm.chnl_avmm_readdatabus[105] ,\pll[0].avmm.chnl_avmm_readdatabus[104] ,
\pll[0].avmm.chnl_avmm_readdatabus[103] ,\pll[0].avmm.chnl_avmm_readdatabus[102] ,\pll[0].avmm.chnl_avmm_readdatabus[101] ,\pll[0].avmm.chnl_avmm_readdatabus[100] ,\pll[0].avmm.chnl_avmm_readdatabus[99] ,\pll[0].avmm.chnl_avmm_readdatabus[98] ,
\pll[0].avmm.chnl_avmm_readdatabus[97] ,\pll[0].avmm.chnl_avmm_readdatabus[96] ,\pll[0].avmm.chnl_avmm_readdatabus[95] ,\pll[0].avmm.chnl_avmm_readdatabus[94] ,\pll[0].avmm.chnl_avmm_readdatabus[93] ,\pll[0].avmm.chnl_avmm_readdatabus[92] ,
\pll[0].avmm.chnl_avmm_readdatabus[91] ,\pll[0].avmm.chnl_avmm_readdatabus[90] ,\pll[0].avmm.chnl_avmm_readdatabus[89] ,\pll[0].avmm.chnl_avmm_readdatabus[88] ,\pll[0].avmm.chnl_avmm_readdatabus[87] ,\pll[0].avmm.chnl_avmm_readdatabus[86] ,
\pll[0].avmm.chnl_avmm_readdatabus[85] ,\pll[0].avmm.chnl_avmm_readdatabus[84] ,\pll[0].avmm.chnl_avmm_readdatabus[83] ,\pll[0].avmm.chnl_avmm_readdatabus[82] ,\pll[0].avmm.chnl_avmm_readdatabus[81] ,\pll[0].avmm.chnl_avmm_readdatabus[80] ,gnd,gnd,gnd,gnd,gnd,gnd,gnd,
gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.pmatestbussel({reconfig_to_xcvr_43,reconfig_to_xcvr_42,reconfig_to_xcvr_41,reconfig_to_xcvr_40,reconfig_to_xcvr_39,reconfig_to_xcvr_38,reconfig_to_xcvr_37,reconfig_to_xcvr_36,reconfig_to_xcvr_35,reconfig_to_xcvr_34,reconfig_to_xcvr_33,reconfig_to_xcvr_32}),
	.dpriorstntop(),
	.dprioclktop(),
	.mdiodistopchnl(),
	.writechnl(\pll[0].local_avmm_write ),
	.readchnl(\pll[0].local_avmm_read ),
	.dpriorstnmid(),
	.dprioclkmid(),
	.mdiodismidchnl(),
	.dpriorstnbot(),
	.dprioclkbot(),
	.mdiodisbotchnl(),
	.avmmreservedout(),
	.clkchnl(\pll[0].local_avmm_clk ),
	.rstnchnl(\pll[0].local_avmm_rstn ),
	.avmmreaddata(\pll[0].avmm.av_hssi_avmm_interface_inst_AVMMREADDATA_bus ),
	.writedatachnl(\pll[0].avmm.av_hssi_avmm_interface_inst_WRITEDATACHNL_bus ),
	.regaddrchnl(\pll[0].avmm.av_hssi_avmm_interface_inst_REGADDRCHNL_bus ),
	.byteenchnl(\pll[0].avmm.av_hssi_avmm_interface_inst_BYTEENCHNL_bus ),
	.dpriotestsitopchnl(),
	.dpriotestsimidchnl(),
	.dpriotestsibotchnl(),
	.pmatestbus(\pll[0].avmm.av_hssi_avmm_interface_inst_PMATESTBUS_bus ));
defparam \pll[0].avmm.av_hssi_avmm_interface_inst .num_ch0_atoms = 0;
defparam \pll[0].avmm.av_hssi_avmm_interface_inst .num_ch1_atoms = 0;
defparam \pll[0].avmm.av_hssi_avmm_interface_inst .num_ch2_atoms = 0;

cyclonev_lcell_comb \pll[0].avmm.pld_avmm_readdata[0]~0 (
	.dataa(!\pll[0].avmm.csr_avmm_n_sel_r~q ),
	.datab(!\pll[0].avmm.av_xcvr_avmm_csr_inst|av_readdata[0]~q ),
	.datac(!\pll[0].avmm.avmm_readdata[0] ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(pll0avmmpld_avmm_readdata_0),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.pld_avmm_readdata[0]~0 .extended_lut = "off";
defparam \pll[0].avmm.pld_avmm_readdata[0]~0 .lut_mask = 64'h1B1B1B1B1B1B1B1B;
defparam \pll[0].avmm.pld_avmm_readdata[0]~0 .shared_arith = "off";

cyclonev_lcell_comb \pll[0].avmm.pld_avmm_readdata[1]~1 (
	.dataa(!\pll[0].avmm.csr_avmm_n_sel_r~q ),
	.datab(!\pll[0].avmm.avmm_readdata[1] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(pll0avmmpld_avmm_readdata_1),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.pld_avmm_readdata[1]~1 .extended_lut = "off";
defparam \pll[0].avmm.pld_avmm_readdata[1]~1 .lut_mask = 64'h2222222222222222;
defparam \pll[0].avmm.pld_avmm_readdata[1]~1 .shared_arith = "off";

cyclonev_lcell_comb \pll[0].avmm.pld_avmm_readdata[2]~2 (
	.dataa(!\pll[0].avmm.csr_avmm_n_sel_r~q ),
	.datab(!\pll[0].avmm.avmm_readdata[2] ),
	.datac(!\pll[0].avmm.av_xcvr_avmm_csr_inst|av_readdata[2]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(pll0avmmpld_avmm_readdata_2),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.pld_avmm_readdata[2]~2 .extended_lut = "off";
defparam \pll[0].avmm.pld_avmm_readdata[2]~2 .lut_mask = 64'h2727272727272727;
defparam \pll[0].avmm.pld_avmm_readdata[2]~2 .shared_arith = "off";

cyclonev_lcell_comb \pll[0].avmm.pld_avmm_readdata[3]~3 (
	.dataa(!\pll[0].avmm.csr_avmm_n_sel_r~q ),
	.datab(!\pll[0].avmm.avmm_readdata[3] ),
	.datac(!\pll[0].avmm.av_xcvr_avmm_csr_inst|av_readdata[3]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(pll0avmmpld_avmm_readdata_3),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.pld_avmm_readdata[3]~3 .extended_lut = "off";
defparam \pll[0].avmm.pld_avmm_readdata[3]~3 .lut_mask = 64'h2727272727272727;
defparam \pll[0].avmm.pld_avmm_readdata[3]~3 .shared_arith = "off";

cyclonev_lcell_comb \pll[0].avmm.pld_avmm_readdata[4]~4 (
	.dataa(!\pll[0].avmm.csr_avmm_n_sel_r~q ),
	.datab(!\pll[0].avmm.avmm_readdata[4] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(pll0avmmpld_avmm_readdata_4),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.pld_avmm_readdata[4]~4 .extended_lut = "off";
defparam \pll[0].avmm.pld_avmm_readdata[4]~4 .lut_mask = 64'h2222222222222222;
defparam \pll[0].avmm.pld_avmm_readdata[4]~4 .shared_arith = "off";

cyclonev_lcell_comb \pll[0].avmm.pld_avmm_readdata[5]~5 (
	.dataa(!\pll[0].avmm.csr_avmm_n_sel_r~q ),
	.datab(!\pll[0].avmm.avmm_readdata[5] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(pll0avmmpld_avmm_readdata_5),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.pld_avmm_readdata[5]~5 .extended_lut = "off";
defparam \pll[0].avmm.pld_avmm_readdata[5]~5 .lut_mask = 64'h2222222222222222;
defparam \pll[0].avmm.pld_avmm_readdata[5]~5 .shared_arith = "off";

cyclonev_lcell_comb \pll[0].avmm.pld_avmm_readdata[6]~6 (
	.dataa(!\pll[0].avmm.csr_avmm_n_sel_r~q ),
	.datab(!\pll[0].avmm.avmm_readdata[6] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(pll0avmmpld_avmm_readdata_6),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.pld_avmm_readdata[6]~6 .extended_lut = "off";
defparam \pll[0].avmm.pld_avmm_readdata[6]~6 .lut_mask = 64'h2222222222222222;
defparam \pll[0].avmm.pld_avmm_readdata[6]~6 .shared_arith = "off";

cyclonev_lcell_comb \pll[0].avmm.pld_avmm_readdata[7]~7 (
	.dataa(!\pll[0].avmm.csr_avmm_n_sel_r~q ),
	.datab(!\pll[0].avmm.avmm_readdata[7] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(pll0avmmpld_avmm_readdata_7),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.pld_avmm_readdata[7]~7 .extended_lut = "off";
defparam \pll[0].avmm.pld_avmm_readdata[7]~7 .lut_mask = 64'h2222222222222222;
defparam \pll[0].avmm.pld_avmm_readdata[7]~7 .shared_arith = "off";

cyclonev_lcell_comb \pll[0].avmm.pld_avmm_readdata[8]~8 (
	.dataa(!\pll[0].avmm.csr_avmm_n_sel_r~q ),
	.datab(!\pll[0].avmm.avmm_readdata[8] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(pll0avmmpld_avmm_readdata_8),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.pld_avmm_readdata[8]~8 .extended_lut = "off";
defparam \pll[0].avmm.pld_avmm_readdata[8]~8 .lut_mask = 64'h2222222222222222;
defparam \pll[0].avmm.pld_avmm_readdata[8]~8 .shared_arith = "off";

cyclonev_lcell_comb \pll[0].avmm.pld_avmm_readdata[9]~9 (
	.dataa(!\pll[0].avmm.csr_avmm_n_sel_r~q ),
	.datab(!\pll[0].avmm.avmm_readdata[9] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(pll0avmmpld_avmm_readdata_9),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.pld_avmm_readdata[9]~9 .extended_lut = "off";
defparam \pll[0].avmm.pld_avmm_readdata[9]~9 .lut_mask = 64'h2222222222222222;
defparam \pll[0].avmm.pld_avmm_readdata[9]~9 .shared_arith = "off";

cyclonev_lcell_comb \pll[0].avmm.pld_avmm_readdata[10]~10 (
	.dataa(!\pll[0].avmm.csr_avmm_n_sel_r~q ),
	.datab(!\pll[0].avmm.avmm_readdata[10] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(pll0avmmpld_avmm_readdata_10),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.pld_avmm_readdata[10]~10 .extended_lut = "off";
defparam \pll[0].avmm.pld_avmm_readdata[10]~10 .lut_mask = 64'h2222222222222222;
defparam \pll[0].avmm.pld_avmm_readdata[10]~10 .shared_arith = "off";

cyclonev_lcell_comb \pll[0].avmm.pld_avmm_readdata[11]~11 (
	.dataa(!\pll[0].avmm.csr_avmm_n_sel_r~q ),
	.datab(!\pll[0].avmm.avmm_readdata[11] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(pll0avmmpld_avmm_readdata_11),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.pld_avmm_readdata[11]~11 .extended_lut = "off";
defparam \pll[0].avmm.pld_avmm_readdata[11]~11 .lut_mask = 64'h2222222222222222;
defparam \pll[0].avmm.pld_avmm_readdata[11]~11 .shared_arith = "off";

cyclonev_lcell_comb \pll[0].avmm.pld_avmm_readdata[12]~12 (
	.dataa(!\pll[0].avmm.csr_avmm_n_sel_r~q ),
	.datab(!\pll[0].avmm.avmm_readdata[12] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(pll0avmmpld_avmm_readdata_12),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.pld_avmm_readdata[12]~12 .extended_lut = "off";
defparam \pll[0].avmm.pld_avmm_readdata[12]~12 .lut_mask = 64'h2222222222222222;
defparam \pll[0].avmm.pld_avmm_readdata[12]~12 .shared_arith = "off";

cyclonev_lcell_comb \pll[0].avmm.pld_avmm_readdata[13]~13 (
	.dataa(!\pll[0].avmm.csr_avmm_n_sel_r~q ),
	.datab(!\pll[0].avmm.avmm_readdata[13] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(pll0avmmpld_avmm_readdata_13),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.pld_avmm_readdata[13]~13 .extended_lut = "off";
defparam \pll[0].avmm.pld_avmm_readdata[13]~13 .lut_mask = 64'h2222222222222222;
defparam \pll[0].avmm.pld_avmm_readdata[13]~13 .shared_arith = "off";

cyclonev_lcell_comb \pll[0].avmm.pld_avmm_readdata[14]~14 (
	.dataa(!\pll[0].avmm.csr_avmm_n_sel_r~q ),
	.datab(!\pll[0].avmm.avmm_readdata[14] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(pll0avmmpld_avmm_readdata_14),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.pld_avmm_readdata[14]~14 .extended_lut = "off";
defparam \pll[0].avmm.pld_avmm_readdata[14]~14 .lut_mask = 64'h2222222222222222;
defparam \pll[0].avmm.pld_avmm_readdata[14]~14 .shared_arith = "off";

cyclonev_lcell_comb \pll[0].avmm.pld_avmm_readdata[15]~15 (
	.dataa(!\pll[0].avmm.csr_avmm_n_sel_r~q ),
	.datab(!\pll[0].avmm.avmm_readdata[15] ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(pll0avmmpld_avmm_readdata_15),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.pld_avmm_readdata[15]~15 .extended_lut = "off";
defparam \pll[0].avmm.pld_avmm_readdata[15]~15 .lut_mask = 64'h2222222222222222;
defparam \pll[0].avmm.pld_avmm_readdata[15]~15 .shared_arith = "off";

cyclonev_hssi_pma_cdr_refclk_select_mux \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux (
	.avmmclk(\pll[0].local_avmm_clk ),
	.avmmread(\pll[0].local_avmm_read ),
	.avmmrstn(\pll[0].local_avmm_rstn ),
	.avmmwrite(\pll[0].local_avmm_write ),
	.calclk(gnd),
	.ffplloutbot(gnd),
	.ffpllouttop(gnd),
	.pldclk(gnd),
	.refiqclk0(refclk[0]),
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
	.avmmaddress({\pll[0].local_avmm_address[10] ,\pll[0].local_avmm_address[9] ,\pll[0].local_avmm_address[8] ,\pll[0].local_avmm_address[7] ,\pll[0].local_avmm_address[6] ,\pll[0].local_avmm_address[5] ,\pll[0].local_avmm_address[4] ,\pll[0].local_avmm_address[3] ,
\pll[0].local_avmm_address[2] ,\pll[0].local_avmm_address[1] ,\pll[0].local_avmm_address[0] }),
	.avmmbyteen({\pll[0].local_avmm_byteen[1] ,\pll[0].local_avmm_byteen[0] }),
	.avmmwritedata({\pll[0].local_avmm_writedata[15] ,\pll[0].local_avmm_writedata[14] ,\pll[0].local_avmm_writedata[13] ,\pll[0].local_avmm_writedata[12] ,\pll[0].local_avmm_writedata[11] ,\pll[0].local_avmm_writedata[10] ,\pll[0].local_avmm_writedata[9] ,
\pll[0].local_avmm_writedata[8] ,\pll[0].local_avmm_writedata[7] ,\pll[0].local_avmm_writedata[6] ,\pll[0].local_avmm_writedata[5] ,\pll[0].local_avmm_writedata[4] ,\pll[0].local_avmm_writedata[3] ,\pll[0].local_avmm_writedata[2] ,\pll[0].local_avmm_writedata[1] ,
\pll[0].local_avmm_writedata[0] }),
	.blockselect(\pll[0].avmm.chnl_avmm_blockselect[6] ),
	.clkout(\pll[0].pll.cmu_pll.mux_refclk_out ),
	.avmmreaddata(\pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux_AVMMREADDATA_bus ));
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .avmm_group_channel_index = 0;
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .channel_number = 0;
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk0_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk10_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk11_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk12_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk13_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk14_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk15_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk16_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk17_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk18_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk19_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk1_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk20_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk21_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk22_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk23_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk24_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk25_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk2_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk3_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk4_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk5_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk6_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk7_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk8_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .inclk9_logical_to_physical_mapping = "unused";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .mux_type = "cdr_refclk_select_mux";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .refclk_select = "ref_iqclk0";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .reference_clock_frequency = "125.0 mhz";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .use_default_base_address = "true";
defparam \pll[0].pll.cmu_pll.pll_mux.pll_refclk_select_mux .user_base_address = 0;

cyclonev_lcell_comb \pll[0].avmm.avmm_write (
	.dataa(!reconfig_to_xcvr_31),
	.datab(!reconfig_to_xcvr_18),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\pll[0].avmm.avmm_write~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.avmm_write .extended_lut = "off";
defparam \pll[0].avmm.avmm_write .lut_mask = 64'h2222222222222222;
defparam \pll[0].avmm.avmm_write .shared_arith = "off";

cyclonev_lcell_comb \pll[0].avmm.avmm_read (
	.dataa(!reconfig_to_xcvr_31),
	.datab(!reconfig_to_xcvr_19),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\pll[0].avmm.avmm_read~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \pll[0].avmm.avmm_read .extended_lut = "off";
defparam \pll[0].avmm.avmm_read .lut_mask = 64'h2222222222222222;
defparam \pll[0].avmm.avmm_read .shared_arith = "off";

dffeas \pll[0].avmm.csr_avmm_n_sel_r (
	.clk(reconfig_to_xcvr_0),
	.d(reconfig_to_xcvr_31),
	.asdata(vcc),
	.clrn(!reconfig_to_xcvr_1),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\pll[0].avmm.csr_avmm_n_sel_r~q ),
	.prn(vcc));
defparam \pll[0].avmm.csr_avmm_n_sel_r .is_wysiwyg = "true";
defparam \pll[0].avmm.csr_avmm_n_sel_r .power_up = "low";

endmodule

module TRANSCEIVER_PLL_IP_av_xcvr_avmm_csr (
	locked_0,
	av_readdata_0,
	av_readdata_2,
	av_readdata_3,
	reconfig_to_xcvr_31,
	reconfig_to_xcvr_0,
	reconfig_to_xcvr_1,
	reconfig_to_xcvr_19,
	reconfig_to_xcvr_20,
	reconfig_to_xcvr_21,
	reconfig_to_xcvr_22,
	reconfig_to_xcvr_23,
	reconfig_to_xcvr_18,
	reconfig_to_xcvr_2,
	reconfig_to_xcvr_5)/* synthesis synthesis_greybox=0 */;
input 	locked_0;
output 	av_readdata_0;
output 	av_readdata_2;
output 	av_readdata_3;
input 	reconfig_to_xcvr_31;
input 	reconfig_to_xcvr_0;
input 	reconfig_to_xcvr_1;
input 	reconfig_to_xcvr_19;
input 	reconfig_to_xcvr_20;
input 	reconfig_to_xcvr_21;
input 	reconfig_to_xcvr_22;
input 	reconfig_to_xcvr_23;
input 	reconfig_to_xcvr_18;
input 	reconfig_to_xcvr_2;
input 	reconfig_to_xcvr_5;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \gen_status_reg_pll.alt_xcvr_resync_inst|resync_chains[0].sync_r[1]~q ;
wire \av_readdata~0_combout ;
wire \r_dummy~0_combout ;
wire \r_dummy~q ;
wire \av_readdata~1_combout ;
wire \av_readdata~2_combout ;
wire \av_readdata~3_combout ;
wire \av_readdata~4_combout ;
wire \r_pll_locked_flag~0_combout ;
wire \gen_status_reg_pll.r_pll_locked_flag~q ;
wire \av_readdata~5_combout ;


TRANSCEIVER_PLL_IP_alt_xcvr_resync \gen_status_reg_pll.alt_xcvr_resync_inst (
	.d({locked_0}),
	.resync_chains0sync_r_1(\gen_status_reg_pll.alt_xcvr_resync_inst|resync_chains[0].sync_r[1]~q ),
	.clk(reconfig_to_xcvr_0),
	.reset(reconfig_to_xcvr_1));

dffeas \av_readdata[0] (
	.clk(reconfig_to_xcvr_0),
	.d(\av_readdata~1_combout ),
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

dffeas \av_readdata[2] (
	.clk(reconfig_to_xcvr_0),
	.d(\av_readdata~3_combout ),
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
	.d(\av_readdata~5_combout ),
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

cyclonev_lcell_comb \av_readdata~0 (
	.dataa(!reconfig_to_xcvr_31),
	.datab(!reconfig_to_xcvr_20),
	.datac(!reconfig_to_xcvr_21),
	.datad(!reconfig_to_xcvr_22),
	.datae(!reconfig_to_xcvr_23),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\av_readdata~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \av_readdata~0 .extended_lut = "off";
defparam \av_readdata~0 .lut_mask = 64'h4000000040000000;
defparam \av_readdata~0 .shared_arith = "off";

cyclonev_lcell_comb \r_dummy~0 (
	.dataa(!\r_dummy~q ),
	.datab(!reconfig_to_xcvr_18),
	.datac(!reconfig_to_xcvr_2),
	.datad(!\av_readdata~0_combout ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\r_dummy~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \r_dummy~0 .extended_lut = "off";
defparam \r_dummy~0 .lut_mask = 64'h5547554755475547;
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

cyclonev_lcell_comb \av_readdata~1 (
	.dataa(!reconfig_to_xcvr_19),
	.datab(!\r_dummy~q ),
	.datac(!\av_readdata~0_combout ),
	.datad(gnd),
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
defparam \av_readdata~1 .lut_mask = 64'h0101010101010101;
defparam \av_readdata~1 .shared_arith = "off";

cyclonev_lcell_comb \av_readdata~2 (
	.dataa(!reconfig_to_xcvr_31),
	.datab(!reconfig_to_xcvr_19),
	.datac(!reconfig_to_xcvr_22),
	.datad(!reconfig_to_xcvr_23),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\av_readdata~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \av_readdata~2 .extended_lut = "off";
defparam \av_readdata~2 .lut_mask = 64'h0110011001100110;
defparam \av_readdata~2 .shared_arith = "off";

cyclonev_lcell_comb \av_readdata~3 (
	.dataa(!reconfig_to_xcvr_20),
	.datab(!reconfig_to_xcvr_21),
	.datac(!reconfig_to_xcvr_23),
	.datad(!\gen_status_reg_pll.alt_xcvr_resync_inst|resync_chains[0].sync_r[1]~q ),
	.datae(!\av_readdata~2_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\av_readdata~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \av_readdata~3 .extended_lut = "off";
defparam \av_readdata~3 .lut_mask = 64'h00000C1C00000C1C;
defparam \av_readdata~3 .shared_arith = "off";

cyclonev_lcell_comb \av_readdata~4 (
	.dataa(!reconfig_to_xcvr_31),
	.datab(!reconfig_to_xcvr_20),
	.datac(!reconfig_to_xcvr_21),
	.datad(!reconfig_to_xcvr_22),
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
defparam \av_readdata~4 .lut_mask = 64'h0001000000010000;
defparam \av_readdata~4 .shared_arith = "off";

cyclonev_lcell_comb \r_pll_locked_flag~0 (
	.dataa(!reconfig_to_xcvr_18),
	.datab(!reconfig_to_xcvr_5),
	.datac(!\gen_status_reg_pll.alt_xcvr_resync_inst|resync_chains[0].sync_r[1]~q ),
	.datad(!\gen_status_reg_pll.r_pll_locked_flag~q ),
	.datae(!\av_readdata~4_combout ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\r_pll_locked_flag~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \r_pll_locked_flag~0 .extended_lut = "off";
defparam \r_pll_locked_flag~0 .lut_mask = 64'h000F111B000F111B;
defparam \r_pll_locked_flag~0 .shared_arith = "off";

dffeas \gen_status_reg_pll.r_pll_locked_flag (
	.clk(reconfig_to_xcvr_0),
	.d(\r_pll_locked_flag~0_combout ),
	.asdata(vcc),
	.clrn(!reconfig_to_xcvr_1),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\gen_status_reg_pll.r_pll_locked_flag~q ),
	.prn(vcc));
defparam \gen_status_reg_pll.r_pll_locked_flag .is_wysiwyg = "true";
defparam \gen_status_reg_pll.r_pll_locked_flag .power_up = "low";

cyclonev_lcell_comb \av_readdata~5 (
	.dataa(!reconfig_to_xcvr_19),
	.datab(!\gen_status_reg_pll.r_pll_locked_flag~q ),
	.datac(!\av_readdata~4_combout ),
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
defparam \av_readdata~5 .lut_mask = 64'h0101010101010101;
defparam \av_readdata~5 .shared_arith = "off";

endmodule

module TRANSCEIVER_PLL_IP_alt_xcvr_resync (
	d,
	resync_chains0sync_r_1,
	clk,
	reset)/* synthesis synthesis_greybox=0 */;
input 	[0:0] d;
output 	resync_chains0sync_r_1;
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
