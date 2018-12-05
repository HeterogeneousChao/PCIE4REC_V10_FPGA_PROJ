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

// DATE "12/06/2017 05:18:45"

// 
// Device: Altera 5CGXFC7C7F23C8 Package FBGA484
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module RESET_CONTROLLER_IP (
	clock,
	reset,
	pll_powerdown,
	tx_analogreset,
	tx_digitalreset,
	tx_ready,
	pll_locked,
	pll_select,
	tx_cal_busy,
	rx_analogreset,
	rx_digitalreset,
	rx_ready,
	rx_is_lockedtodata,
	rx_cal_busy)/* synthesis synthesis_greybox=0 */;
input 	clock;
input 	reset;
output 	[0:0] pll_powerdown;
output 	[0:0] tx_analogreset;
output 	[0:0] tx_digitalreset;
output 	[0:0] tx_ready;
input 	[0:0] pll_locked;
input 	[0:0] pll_select;
input 	[0:0] tx_cal_busy;
output 	[0:0] rx_analogreset;
output 	[0:0] rx_digitalreset;
output 	[0:0] rx_ready;
input 	[0:0] rx_is_lockedtodata;
input 	[0:0] rx_cal_busy;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \reset_controller_ip_inst|g_pll.counter_pll_powerdown|r_reset~q ;
wire \reset_controller_ip_inst|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~q ;
wire \reset_controller_ip_inst|g_tx.g_tx[0].g_tx.counter_tx_ready|r_reset~q ;
wire \reset_controller_ip_inst|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~q ;
wire \reset_controller_ip_inst|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~q ;
wire \reset_controller_ip_inst|g_rx.g_rx[0].g_rx.counter_rx_ready|r_reset~q ;
wire \pll_select[0]~input_o ;
wire \clock~input_o ;
wire \reset~input_o ;
wire \tx_cal_busy[0]~input_o ;
wire \pll_locked[0]~input_o ;
wire \rx_cal_busy[0]~input_o ;
wire \rx_is_lockedtodata[0]~input_o ;


RESET_CONTROLLER_IP_altera_xcvr_reset_control reset_controller_ip_inst(
	.r_reset(\reset_controller_ip_inst|g_pll.counter_pll_powerdown|r_reset~q ),
	.r_reset1(\reset_controller_ip_inst|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~q ),
	.r_reset2(\reset_controller_ip_inst|g_tx.g_tx[0].g_tx.counter_tx_ready|r_reset~q ),
	.r_reset3(\reset_controller_ip_inst|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~q ),
	.r_reset4(\reset_controller_ip_inst|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~q ),
	.r_reset5(\reset_controller_ip_inst|g_rx.g_rx[0].g_rx.counter_rx_ready|r_reset~q ),
	.clock(\clock~input_o ),
	.reset(\reset~input_o ),
	.tx_cal_busy_0(\tx_cal_busy[0]~input_o ),
	.pll_locked_0(\pll_locked[0]~input_o ),
	.rx_cal_busy_0(\rx_cal_busy[0]~input_o ),
	.rx_is_lockedtodata_0(\rx_is_lockedtodata[0]~input_o ));

assign \clock~input_o  = clock;

assign \reset~input_o  = reset;

assign \tx_cal_busy[0]~input_o  = tx_cal_busy[0];

assign \pll_locked[0]~input_o  = pll_locked[0];

assign \rx_cal_busy[0]~input_o  = rx_cal_busy[0];

assign \rx_is_lockedtodata[0]~input_o  = rx_is_lockedtodata[0];

assign pll_powerdown[0] = ~ \reset_controller_ip_inst|g_pll.counter_pll_powerdown|r_reset~q ;

assign tx_analogreset[0] = ~ \reset_controller_ip_inst|g_pll.counter_pll_powerdown|r_reset~q ;

assign tx_digitalreset[0] = ~ \reset_controller_ip_inst|g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset~q ;

assign tx_ready[0] = \reset_controller_ip_inst|g_tx.g_tx[0].g_tx.counter_tx_ready|r_reset~q ;

assign rx_analogreset[0] = ~ \reset_controller_ip_inst|g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset~q ;

assign rx_digitalreset[0] = ~ \reset_controller_ip_inst|g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset~q ;

assign rx_ready[0] = \reset_controller_ip_inst|g_rx.g_rx[0].g_rx.counter_rx_ready|r_reset~q ;

assign \pll_select[0]~input_o  = pll_select[0];

endmodule

module RESET_CONTROLLER_IP_altera_xcvr_reset_control (
	r_reset,
	r_reset1,
	r_reset2,
	r_reset3,
	r_reset4,
	r_reset5,
	clock,
	reset,
	tx_cal_busy_0,
	pll_locked_0,
	rx_cal_busy_0,
	rx_is_lockedtodata_0)/* synthesis synthesis_greybox=0 */;
output 	r_reset;
output 	r_reset1;
output 	r_reset2;
output 	r_reset3;
output 	r_reset4;
output 	r_reset5;
input 	clock;
input 	reset;
input 	tx_cal_busy_0;
input 	pll_locked_0;
input 	rx_cal_busy_0;
input 	rx_is_lockedtodata_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \g_tx.g_tx[0].g_tx.pll_locked_latch~q ;
wire \g_pll.counter_pll_powerdown|r_reset_stat~q ;
wire \g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[2].sync_r[1]~q ;
wire \g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[0].sync_r[1]~q ;
wire \g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[1].sync_r[1]~q ;
wire \comb~0_combout ;
wire \g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ;
wire \g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat~q ;
wire \g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ;
wire \g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[1].sync_r[1]~q ;
wire \g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset_stat~q ;
wire \comb~1_combout ;
wire \g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat~q ;
wire \g_tx.g_tx[0].g_tx.pll_locked_latch~0_combout ;


RESET_CONTROLLER_IP_alt_xcvr_reset_counter_3 \g_rx.g_rx[0].g_rx.counter_rx_ready (
	.r_reset1(r_reset5),
	.async_req(\g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.r_reset_stat(\g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat~q ),
	.clk(clock));

RESET_CONTROLLER_IP_alt_xcvr_reset_counter_2 \g_rx.g_rx[0].g_rx.counter_rx_digitalreset (
	.r_reset1(r_reset4),
	.async_req(\g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.resync_chains2sync_r_1(\g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.resync_chains1sync_r_1(\g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[1].sync_r[1]~q ),
	.r_reset_stat1(\g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset_stat~q ),
	.comb(\comb~1_combout ),
	.r_reset_stat2(\g_rx.g_rx[0].g_rx.counter_rx_digitalreset|r_reset_stat~q ),
	.clk(clock));

RESET_CONTROLLER_IP_alt_xcvr_reset_counter_1 \g_rx.g_rx[0].g_rx.counter_rx_analogreset (
	.r_reset1(r_reset3),
	.async_req(\g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.resync_chains2sync_r_1(\g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.r_reset_stat1(\g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset_stat~q ),
	.clk(clock));

RESET_CONTROLLER_IP_alt_xcvr_resync_1 \g_rx.g_rx[0].g_rx.resync_rx_cal_busy (
	.reset(\g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.resync_chains2sync_r_1(\g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.resync_chains1sync_r_1(\g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[1].sync_r[1]~q ),
	.clk(clock),
	.d({rx_cal_busy_0,rx_is_lockedtodata_0,gnd}));

RESET_CONTROLLER_IP_alt_xcvr_reset_counter_5 \g_tx.g_tx[0].g_tx.counter_tx_ready (
	.r_reset1(r_reset2),
	.async_req(\g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.r_reset_stat(\g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat~q ),
	.clk(clock));

RESET_CONTROLLER_IP_alt_xcvr_reset_counter_4 \g_tx.g_tx[0].g_tx.counter_tx_digitalreset (
	.r_reset1(r_reset1),
	.comb(\comb~0_combout ),
	.resync_chains0sync_r_1(\g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.r_reset_stat1(\g_tx.g_tx[0].g_tx.counter_tx_digitalreset|r_reset_stat~q ),
	.clk(clock));

RESET_CONTROLLER_IP_alt_xcvr_resync_2 \g_tx.g_tx[0].g_tx.resync_tx_cal_busy (
	.resync_chains2sync_r_1(\g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.resync_chains0sync_r_1(\g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[0].sync_r[1]~q ),
	.resync_chains1sync_r_1(\g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[1].sync_r[1]~q ),
	.reset(\g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.clk(clock),
	.d({tx_cal_busy_0,gnd,pll_locked_0}));

RESET_CONTROLLER_IP_alt_xcvr_reset_counter \g_pll.counter_pll_powerdown (
	.r_reset1(r_reset),
	.r_reset_stat1(\g_pll.counter_pll_powerdown|r_reset_stat~q ),
	.clk(clock),
	.async_req(reset));

RESET_CONTROLLER_IP_alt_xcvr_resync \g_reset_sync.alt_xcvr_resync_reset (
	.resync_chains0sync_r_1(\g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.clk(clock),
	.reset(reset));

dffeas \g_tx.g_tx[0].g_tx.pll_locked_latch (
	.clk(clock),
	.d(\g_tx.g_tx[0].g_tx.pll_locked_latch~0_combout ),
	.asdata(vcc),
	.clrn(\g_reset_sync.alt_xcvr_resync_reset|resync_chains[0].sync_r[1]~q ),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\g_tx.g_tx[0].g_tx.pll_locked_latch~q ),
	.prn(vcc));
defparam \g_tx.g_tx[0].g_tx.pll_locked_latch .is_wysiwyg = "true";
defparam \g_tx.g_tx[0].g_tx.pll_locked_latch .power_up = "low";

cyclonev_lcell_comb \comb~0 (
	.dataa(!\g_tx.g_tx[0].g_tx.pll_locked_latch~q ),
	.datab(!\g_pll.counter_pll_powerdown|r_reset_stat~q ),
	.datac(!\g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.datad(!\g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[0].sync_r[1]~q ),
	.datae(!\g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[1].sync_r[1]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\comb~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \comb~0 .extended_lut = "off";
defparam \comb~0 .lut_mask = 64'h0010101000101010;
defparam \comb~0 .shared_arith = "off";

cyclonev_lcell_comb \comb~1 (
	.dataa(!\g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.datab(!\g_rx.g_rx[0].g_rx.resync_rx_cal_busy|resync_chains[1].sync_r[1]~q ),
	.datac(!\g_rx.g_rx[0].g_rx.counter_rx_analogreset|r_reset_stat~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\comb~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \comb~1 .extended_lut = "off";
defparam \comb~1 .lut_mask = 64'hFDFDFDFDFDFDFDFD;
defparam \comb~1 .shared_arith = "off";

cyclonev_lcell_comb \g_tx.g_tx[0].g_tx.pll_locked_latch~0 (
	.dataa(!\g_tx.g_tx[0].g_tx.pll_locked_latch~q ),
	.datab(!\g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[2].sync_r[1]~q ),
	.datac(!\g_tx.g_tx[0].g_tx.resync_tx_cal_busy|resync_chains[0].sync_r[1]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\g_tx.g_tx[0].g_tx.pll_locked_latch~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \g_tx.g_tx[0].g_tx.pll_locked_latch~0 .extended_lut = "off";
defparam \g_tx.g_tx[0].g_tx.pll_locked_latch~0 .lut_mask = 64'h5D5D5D5D5D5D5D5D;
defparam \g_tx.g_tx[0].g_tx.pll_locked_latch~0 .shared_arith = "off";

endmodule

module RESET_CONTROLLER_IP_alt_xcvr_reset_counter (
	r_reset1,
	r_reset_stat1,
	clk,
	async_req)/* synthesis synthesis_greybox=0 */;
output 	r_reset1;
output 	r_reset_stat1;
input 	clk;
input 	async_req;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \count[1]~5_combout ;
wire \count[0]~q ;
wire \count[1]~4_combout ;
wire \count[1]~q ;
wire \count[2]~3_combout ;
wire \count[2]~q ;
wire \count[3]~2_combout ;
wire \count[3]~q ;
wire \count[4]~1_combout ;
wire \count[4]~q ;
wire \count[5]~0_combout ;
wire \count[5]~q ;
wire \Equal0~0_combout ;


dffeas r_reset(
	.clk(clk),
	.d(\Equal0~0_combout ),
	.asdata(vcc),
	.clrn(!async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(r_reset1),
	.prn(vcc));
defparam r_reset.is_wysiwyg = "true";
defparam r_reset.power_up = "low";

dffeas r_reset_stat(
	.clk(clk),
	.d(\Equal0~0_combout ),
	.asdata(vcc),
	.clrn(!async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(r_reset_stat1),
	.prn(vcc));
defparam r_reset_stat.is_wysiwyg = "true";
defparam r_reset_stat.power_up = "low";

cyclonev_lcell_comb \count[1]~5 (
	.dataa(!\count[5]~q ),
	.datab(!\count[4]~q ),
	.datac(!\count[3]~q ),
	.datad(!\count[2]~q ),
	.datae(!\count[1]~q ),
	.dataf(!\count[0]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\count[1]~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \count[1]~5 .extended_lut = "off";
defparam \count[1]~5 .lut_mask = 64'hFFFFFFFF10000000;
defparam \count[1]~5 .shared_arith = "off";

dffeas \count[0] (
	.clk(clk),
	.d(\count[1]~5_combout ),
	.asdata(vcc),
	.clrn(!async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\count[0]~q ),
	.prn(vcc));
defparam \count[0] .is_wysiwyg = "true";
defparam \count[0] .power_up = "low";

cyclonev_lcell_comb \count[1]~4 (
	.dataa(!\count[5]~q ),
	.datab(!\count[4]~q ),
	.datac(!\count[3]~q ),
	.datad(!\count[2]~q ),
	.datae(!\count[1]~q ),
	.dataf(!\count[0]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\count[1]~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \count[1]~4 .extended_lut = "off";
defparam \count[1]~4 .lut_mask = 64'h0000FFFFEFFF0000;
defparam \count[1]~4 .shared_arith = "off";

dffeas \count[1] (
	.clk(clk),
	.d(\count[1]~4_combout ),
	.asdata(vcc),
	.clrn(!async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\count[1]~q ),
	.prn(vcc));
defparam \count[1] .is_wysiwyg = "true";
defparam \count[1] .power_up = "low";

cyclonev_lcell_comb \count[2]~3 (
	.dataa(!\count[2]~q ),
	.datab(!\count[1]~q ),
	.datac(!\count[0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\count[2]~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \count[2]~3 .extended_lut = "off";
defparam \count[2]~3 .lut_mask = 64'h5656565656565656;
defparam \count[2]~3 .shared_arith = "off";

dffeas \count[2] (
	.clk(clk),
	.d(\count[2]~3_combout ),
	.asdata(vcc),
	.clrn(!async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\count[2]~q ),
	.prn(vcc));
defparam \count[2] .is_wysiwyg = "true";
defparam \count[2] .power_up = "low";

cyclonev_lcell_comb \count[3]~2 (
	.dataa(!\count[3]~q ),
	.datab(!\count[2]~q ),
	.datac(!\count[1]~q ),
	.datad(!\count[0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\count[3]~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \count[3]~2 .extended_lut = "off";
defparam \count[3]~2 .lut_mask = 64'h5556555655565556;
defparam \count[3]~2 .shared_arith = "off";

dffeas \count[3] (
	.clk(clk),
	.d(\count[3]~2_combout ),
	.asdata(vcc),
	.clrn(!async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\count[3]~q ),
	.prn(vcc));
defparam \count[3] .is_wysiwyg = "true";
defparam \count[3] .power_up = "low";

cyclonev_lcell_comb \count[4]~1 (
	.dataa(!\count[4]~q ),
	.datab(!\count[3]~q ),
	.datac(!\count[2]~q ),
	.datad(!\count[1]~q ),
	.datae(!\count[0]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\count[4]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \count[4]~1 .extended_lut = "off";
defparam \count[4]~1 .lut_mask = 64'h5555555655555556;
defparam \count[4]~1 .shared_arith = "off";

dffeas \count[4] (
	.clk(clk),
	.d(\count[4]~1_combout ),
	.asdata(vcc),
	.clrn(!async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\count[4]~q ),
	.prn(vcc));
defparam \count[4] .is_wysiwyg = "true";
defparam \count[4] .power_up = "low";

cyclonev_lcell_comb \count[5]~0 (
	.dataa(!\count[5]~q ),
	.datab(!\count[4]~q ),
	.datac(!\count[3]~q ),
	.datad(!\count[2]~q ),
	.datae(!\count[1]~q ),
	.dataf(!\count[0]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\count[5]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \count[5]~0 .extended_lut = "off";
defparam \count[5]~0 .lut_mask = 64'h5555555555555556;
defparam \count[5]~0 .shared_arith = "off";

dffeas \count[5] (
	.clk(clk),
	.d(\count[5]~0_combout ),
	.asdata(vcc),
	.clrn(!async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\count[5]~q ),
	.prn(vcc));
defparam \count[5] .is_wysiwyg = "true";
defparam \count[5] .power_up = "low";

cyclonev_lcell_comb \Equal0~0 (
	.dataa(!\count[5]~q ),
	.datab(!\count[4]~q ),
	.datac(!\count[3]~q ),
	.datad(!\count[2]~q ),
	.datae(!\count[1]~q ),
	.dataf(!\count[0]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Equal0~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Equal0~0 .extended_lut = "off";
defparam \Equal0~0 .lut_mask = 64'h0000000010000000;
defparam \Equal0~0 .shared_arith = "off";

endmodule

module RESET_CONTROLLER_IP_alt_xcvr_reset_counter_1 (
	r_reset1,
	async_req,
	resync_chains2sync_r_1,
	r_reset_stat1,
	clk)/* synthesis synthesis_greybox=0 */;
output 	r_reset1;
input 	async_req;
input 	resync_chains2sync_r_1;
output 	r_reset_stat1;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \count[0]~0_combout ;
wire \count[0]~q ;
wire \reset_cond~0_combout ;


dffeas r_reset(
	.clk(clk),
	.d(\reset_cond~0_combout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(r_reset1),
	.prn(vcc));
defparam r_reset.is_wysiwyg = "true";
defparam r_reset.power_up = "low";

dffeas r_reset_stat(
	.clk(clk),
	.d(\reset_cond~0_combout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(r_reset_stat1),
	.prn(vcc));
defparam r_reset_stat.is_wysiwyg = "true";
defparam r_reset_stat.power_up = "low";

cyclonev_lcell_comb \count[0]~0 (
	.dataa(!resync_chains2sync_r_1),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\count[0]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \count[0]~0 .extended_lut = "off";
defparam \count[0]~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \count[0]~0 .shared_arith = "off";

dffeas \count[0] (
	.clk(clk),
	.d(\count[0]~0_combout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\count[0]~q ),
	.prn(vcc));
defparam \count[0] .is_wysiwyg = "true";
defparam \count[0] .power_up = "low";

cyclonev_lcell_comb \reset_cond~0 (
	.dataa(!resync_chains2sync_r_1),
	.datab(!\count[0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\reset_cond~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \reset_cond~0 .extended_lut = "off";
defparam \reset_cond~0 .lut_mask = 64'h2222222222222222;
defparam \reset_cond~0 .shared_arith = "off";

endmodule

module RESET_CONTROLLER_IP_alt_xcvr_reset_counter_2 (
	r_reset1,
	async_req,
	resync_chains2sync_r_1,
	resync_chains1sync_r_1,
	r_reset_stat1,
	comb,
	r_reset_stat2,
	clk)/* synthesis synthesis_greybox=0 */;
output 	r_reset1;
input 	async_req;
input 	resync_chains2sync_r_1;
input 	resync_chains1sync_r_1;
input 	r_reset_stat1;
input 	comb;
output 	r_reset_stat2;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \Add0~29_sumout ;
wire \count[0]~q ;
wire \Add0~30 ;
wire \Add0~25_sumout ;
wire \count[1]~q ;
wire \Add0~26 ;
wire \Add0~21_sumout ;
wire \count[2]~q ;
wire \Add0~22 ;
wire \Add0~17_sumout ;
wire \count[3]~q ;
wire \Add0~18 ;
wire \Add0~13_sumout ;
wire \count[4]~q ;
wire \Add0~14 ;
wire \Add0~9_sumout ;
wire \count[5]~q ;
wire \Add0~10 ;
wire \Add0~5_sumout ;
wire \count[6]~q ;
wire \Add0~6 ;
wire \Add0~1_sumout ;
wire \count[7]~q ;
wire \reset_cond~1_combout ;
wire \reset_cond~0_combout ;
wire \r_reset~0_combout ;
wire \r_reset_stat~0_combout ;


dffeas r_reset(
	.clk(clk),
	.d(\r_reset~0_combout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(r_reset1),
	.prn(vcc));
defparam r_reset.is_wysiwyg = "true";
defparam r_reset.power_up = "low";

dffeas r_reset_stat(
	.clk(clk),
	.d(\r_reset_stat~0_combout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(r_reset_stat2),
	.prn(vcc));
defparam r_reset_stat.is_wysiwyg = "true";
defparam r_reset_stat.power_up = "low";

cyclonev_lcell_comb \Add0~29 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\count[0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~29_sumout ),
	.cout(\Add0~30 ),
	.shareout());
defparam \Add0~29 .extended_lut = "off";
defparam \Add0~29 .lut_mask = 64'h00000000000000FF;
defparam \Add0~29 .shared_arith = "off";

dffeas \count[0] (
	.clk(clk),
	.d(\Add0~29_sumout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(comb),
	.sload(gnd),
	.ena(\reset_cond~0_combout ),
	.q(\count[0]~q ),
	.prn(vcc));
defparam \count[0] .is_wysiwyg = "true";
defparam \count[0] .power_up = "low";

cyclonev_lcell_comb \Add0~25 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\count[1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~30 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~25_sumout ),
	.cout(\Add0~26 ),
	.shareout());
defparam \Add0~25 .extended_lut = "off";
defparam \Add0~25 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~25 .shared_arith = "off";

dffeas \count[1] (
	.clk(clk),
	.d(\Add0~25_sumout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(comb),
	.sload(gnd),
	.ena(\reset_cond~0_combout ),
	.q(\count[1]~q ),
	.prn(vcc));
defparam \count[1] .is_wysiwyg = "true";
defparam \count[1] .power_up = "low";

cyclonev_lcell_comb \Add0~21 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\count[2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~26 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~21_sumout ),
	.cout(\Add0~22 ),
	.shareout());
defparam \Add0~21 .extended_lut = "off";
defparam \Add0~21 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~21 .shared_arith = "off";

dffeas \count[2] (
	.clk(clk),
	.d(\Add0~21_sumout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(comb),
	.sload(gnd),
	.ena(\reset_cond~0_combout ),
	.q(\count[2]~q ),
	.prn(vcc));
defparam \count[2] .is_wysiwyg = "true";
defparam \count[2] .power_up = "low";

cyclonev_lcell_comb \Add0~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\count[3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~22 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~17_sumout ),
	.cout(\Add0~18 ),
	.shareout());
defparam \Add0~17 .extended_lut = "off";
defparam \Add0~17 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~17 .shared_arith = "off";

dffeas \count[3] (
	.clk(clk),
	.d(\Add0~17_sumout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(comb),
	.sload(gnd),
	.ena(\reset_cond~0_combout ),
	.q(\count[3]~q ),
	.prn(vcc));
defparam \count[3] .is_wysiwyg = "true";
defparam \count[3] .power_up = "low";

cyclonev_lcell_comb \Add0~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\count[4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~18 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~13_sumout ),
	.cout(\Add0~14 ),
	.shareout());
defparam \Add0~13 .extended_lut = "off";
defparam \Add0~13 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~13 .shared_arith = "off";

dffeas \count[4] (
	.clk(clk),
	.d(\Add0~13_sumout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(comb),
	.sload(gnd),
	.ena(\reset_cond~0_combout ),
	.q(\count[4]~q ),
	.prn(vcc));
defparam \count[4] .is_wysiwyg = "true";
defparam \count[4] .power_up = "low";

cyclonev_lcell_comb \Add0~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\count[5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~14 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~9_sumout ),
	.cout(\Add0~10 ),
	.shareout());
defparam \Add0~9 .extended_lut = "off";
defparam \Add0~9 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~9 .shared_arith = "off";

dffeas \count[5] (
	.clk(clk),
	.d(\Add0~9_sumout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(comb),
	.sload(gnd),
	.ena(\reset_cond~0_combout ),
	.q(\count[5]~q ),
	.prn(vcc));
defparam \count[5] .is_wysiwyg = "true";
defparam \count[5] .power_up = "low";

cyclonev_lcell_comb \Add0~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\count[6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~10 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~5_sumout ),
	.cout(\Add0~6 ),
	.shareout());
defparam \Add0~5 .extended_lut = "off";
defparam \Add0~5 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~5 .shared_arith = "off";

dffeas \count[6] (
	.clk(clk),
	.d(\Add0~5_sumout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(comb),
	.sload(gnd),
	.ena(\reset_cond~0_combout ),
	.q(\count[6]~q ),
	.prn(vcc));
defparam \count[6] .is_wysiwyg = "true";
defparam \count[6] .power_up = "low";

cyclonev_lcell_comb \Add0~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(!\count[7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(\Add0~6 ),
	.sharein(gnd),
	.combout(),
	.sumout(\Add0~1_sumout ),
	.cout(),
	.shareout());
defparam \Add0~1 .extended_lut = "off";
defparam \Add0~1 .lut_mask = 64'h0000FFFF000000FF;
defparam \Add0~1 .shared_arith = "off";

dffeas \count[7] (
	.clk(clk),
	.d(\Add0~1_sumout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(comb),
	.sload(gnd),
	.ena(\reset_cond~0_combout ),
	.q(\count[7]~q ),
	.prn(vcc));
defparam \count[7] .is_wysiwyg = "true";
defparam \count[7] .power_up = "low";

cyclonev_lcell_comb \reset_cond~1 (
	.dataa(!r_reset_stat1),
	.datab(!\count[4]~q ),
	.datac(!\count[3]~q ),
	.datad(!\count[2]~q ),
	.datae(!\count[1]~q ),
	.dataf(!\count[0]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\reset_cond~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \reset_cond~1 .extended_lut = "off";
defparam \reset_cond~1 .lut_mask = 64'h0000000000000040;
defparam \reset_cond~1 .shared_arith = "off";

cyclonev_lcell_comb \reset_cond~0 (
	.dataa(!\count[7]~q ),
	.datab(!\count[6]~q ),
	.datac(!\count[5]~q ),
	.datad(!resync_chains2sync_r_1),
	.datae(!resync_chains1sync_r_1),
	.dataf(!\reset_cond~1_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\reset_cond~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \reset_cond~0 .extended_lut = "off";
defparam \reset_cond~0 .lut_mask = 64'hFFFFFFFFFFFFEFFF;
defparam \reset_cond~0 .shared_arith = "off";

cyclonev_lcell_comb \r_reset~0 (
	.dataa(!\reset_cond~0_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\r_reset~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \r_reset~0 .extended_lut = "off";
defparam \r_reset~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \r_reset~0 .shared_arith = "off";

cyclonev_lcell_comb \r_reset_stat~0 (
	.dataa(!\reset_cond~0_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\r_reset_stat~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \r_reset_stat~0 .extended_lut = "off";
defparam \r_reset_stat~0 .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \r_reset_stat~0 .shared_arith = "off";

endmodule

module RESET_CONTROLLER_IP_alt_xcvr_reset_counter_3 (
	r_reset1,
	async_req,
	r_reset_stat,
	clk)/* synthesis synthesis_greybox=0 */;
output 	r_reset1;
input 	async_req;
input 	r_reset_stat;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \count[0]~1_combout ;
wire \count[0]~q ;
wire \count[1]~0_combout ;
wire \count[1]~q ;
wire \reset_cond~0_combout ;


dffeas r_reset(
	.clk(clk),
	.d(\reset_cond~0_combout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(r_reset1),
	.prn(vcc));
defparam r_reset.is_wysiwyg = "true";
defparam r_reset.power_up = "low";

cyclonev_lcell_comb \count[0]~1 (
	.dataa(!\count[1]~q ),
	.datab(!r_reset_stat),
	.datac(!\count[0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\count[0]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \count[0]~1 .extended_lut = "off";
defparam \count[0]~1 .lut_mask = 64'h2020202020202020;
defparam \count[0]~1 .shared_arith = "off";

dffeas \count[0] (
	.clk(clk),
	.d(\count[0]~1_combout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\count[0]~q ),
	.prn(vcc));
defparam \count[0] .is_wysiwyg = "true";
defparam \count[0] .power_up = "low";

cyclonev_lcell_comb \count[1]~0 (
	.dataa(!\count[1]~q ),
	.datab(!r_reset_stat),
	.datac(!\count[0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\count[1]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \count[1]~0 .extended_lut = "off";
defparam \count[1]~0 .lut_mask = 64'h1212121212121212;
defparam \count[1]~0 .shared_arith = "off";

dffeas \count[1] (
	.clk(clk),
	.d(\count[1]~0_combout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\count[1]~q ),
	.prn(vcc));
defparam \count[1] .is_wysiwyg = "true";
defparam \count[1] .power_up = "low";

cyclonev_lcell_comb \reset_cond~0 (
	.dataa(!\count[1]~q ),
	.datab(!r_reset_stat),
	.datac(!\count[0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\reset_cond~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \reset_cond~0 .extended_lut = "off";
defparam \reset_cond~0 .lut_mask = 64'h1010101010101010;
defparam \reset_cond~0 .shared_arith = "off";

endmodule

module RESET_CONTROLLER_IP_alt_xcvr_reset_counter_4 (
	r_reset1,
	comb,
	resync_chains0sync_r_1,
	r_reset_stat1,
	clk)/* synthesis synthesis_greybox=0 */;
output 	r_reset1;
input 	comb;
input 	resync_chains0sync_r_1;
output 	r_reset_stat1;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas r_reset(
	.clk(clk),
	.d(comb),
	.asdata(vcc),
	.clrn(resync_chains0sync_r_1),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(r_reset1),
	.prn(vcc));
defparam r_reset.is_wysiwyg = "true";
defparam r_reset.power_up = "low";

dffeas r_reset_stat(
	.clk(clk),
	.d(comb),
	.asdata(vcc),
	.clrn(resync_chains0sync_r_1),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(r_reset_stat1),
	.prn(vcc));
defparam r_reset_stat.is_wysiwyg = "true";
defparam r_reset_stat.power_up = "low";

endmodule

module RESET_CONTROLLER_IP_alt_xcvr_reset_counter_5 (
	r_reset1,
	async_req,
	r_reset_stat,
	clk)/* synthesis synthesis_greybox=0 */;
output 	r_reset1;
input 	async_req;
input 	r_reset_stat;
input 	clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \count[0]~1_combout ;
wire \count[0]~q ;
wire \count[1]~0_combout ;
wire \count[1]~q ;
wire \reset_cond~0_combout ;


dffeas r_reset(
	.clk(clk),
	.d(\reset_cond~0_combout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(r_reset1),
	.prn(vcc));
defparam r_reset.is_wysiwyg = "true";
defparam r_reset.power_up = "low";

cyclonev_lcell_comb \count[0]~1 (
	.dataa(!\count[1]~q ),
	.datab(!r_reset_stat),
	.datac(!\count[0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\count[0]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \count[0]~1 .extended_lut = "off";
defparam \count[0]~1 .lut_mask = 64'h2020202020202020;
defparam \count[0]~1 .shared_arith = "off";

dffeas \count[0] (
	.clk(clk),
	.d(\count[0]~1_combout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\count[0]~q ),
	.prn(vcc));
defparam \count[0] .is_wysiwyg = "true";
defparam \count[0] .power_up = "low";

cyclonev_lcell_comb \count[1]~0 (
	.dataa(!\count[1]~q ),
	.datab(!r_reset_stat),
	.datac(!\count[0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\count[1]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \count[1]~0 .extended_lut = "off";
defparam \count[1]~0 .lut_mask = 64'h1212121212121212;
defparam \count[1]~0 .shared_arith = "off";

dffeas \count[1] (
	.clk(clk),
	.d(\count[1]~0_combout ),
	.asdata(vcc),
	.clrn(async_req),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\count[1]~q ),
	.prn(vcc));
defparam \count[1] .is_wysiwyg = "true";
defparam \count[1] .power_up = "low";

cyclonev_lcell_comb \reset_cond~0 (
	.dataa(!\count[1]~q ),
	.datab(!r_reset_stat),
	.datac(!\count[0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\reset_cond~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \reset_cond~0 .extended_lut = "off";
defparam \reset_cond~0 .lut_mask = 64'h1010101010101010;
defparam \reset_cond~0 .shared_arith = "off";

endmodule

module RESET_CONTROLLER_IP_alt_xcvr_resync (
	resync_chains0sync_r_1,
	clk,
	reset)/* synthesis synthesis_greybox=0 */;
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
	.d(vcc),
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

module RESET_CONTROLLER_IP_alt_xcvr_resync_1 (
	reset,
	resync_chains2sync_r_1,
	resync_chains1sync_r_1,
	clk,
	d)/* synthesis synthesis_greybox=0 */;
input 	reset;
output 	resync_chains2sync_r_1;
output 	resync_chains1sync_r_1;
input 	clk;
input 	[2:0] d;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \resync_chains[2].sync_r[0]~q ;
wire \resync_chains[1].sync_r[0]~q ;


dffeas \resync_chains[2].sync_r[1] (
	.clk(clk),
	.d(\resync_chains[2].sync_r[0]~q ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(resync_chains2sync_r_1),
	.prn(vcc));
defparam \resync_chains[2].sync_r[1] .is_wysiwyg = "true";
defparam \resync_chains[2].sync_r[1] .power_up = "low";

dffeas \resync_chains[1].sync_r[1] (
	.clk(clk),
	.d(\resync_chains[1].sync_r[0]~q ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(resync_chains1sync_r_1),
	.prn(vcc));
defparam \resync_chains[1].sync_r[1] .is_wysiwyg = "true";
defparam \resync_chains[1].sync_r[1] .power_up = "low";

dffeas \resync_chains[2].sync_r[0] (
	.clk(clk),
	.d(d[2]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\resync_chains[2].sync_r[0]~q ),
	.prn(vcc));
defparam \resync_chains[2].sync_r[0] .is_wysiwyg = "true";
defparam \resync_chains[2].sync_r[0] .power_up = "low";

dffeas \resync_chains[1].sync_r[0] (
	.clk(clk),
	.d(d[1]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\resync_chains[1].sync_r[0]~q ),
	.prn(vcc));
defparam \resync_chains[1].sync_r[0] .is_wysiwyg = "true";
defparam \resync_chains[1].sync_r[0] .power_up = "low";

endmodule

module RESET_CONTROLLER_IP_alt_xcvr_resync_2 (
	resync_chains2sync_r_1,
	resync_chains0sync_r_1,
	resync_chains1sync_r_1,
	reset,
	clk,
	d)/* synthesis synthesis_greybox=0 */;
output 	resync_chains2sync_r_1;
output 	resync_chains0sync_r_1;
output 	resync_chains1sync_r_1;
input 	reset;
input 	clk;
input 	[2:0] d;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \resync_chains[2].sync_r[0]~q ;
wire \resync_chains[0].sync_r[0]~q ;
wire \resync_chains[1].sync_r[0]~q ;


dffeas \resync_chains[2].sync_r[1] (
	.clk(clk),
	.d(\resync_chains[2].sync_r[0]~q ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(resync_chains2sync_r_1),
	.prn(vcc));
defparam \resync_chains[2].sync_r[1] .is_wysiwyg = "true";
defparam \resync_chains[2].sync_r[1] .power_up = "low";

dffeas \resync_chains[0].sync_r[1] (
	.clk(clk),
	.d(\resync_chains[0].sync_r[0]~q ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(resync_chains0sync_r_1),
	.prn(vcc));
defparam \resync_chains[0].sync_r[1] .is_wysiwyg = "true";
defparam \resync_chains[0].sync_r[1] .power_up = "low";

dffeas \resync_chains[1].sync_r[1] (
	.clk(clk),
	.d(\resync_chains[1].sync_r[0]~q ),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(resync_chains1sync_r_1),
	.prn(vcc));
defparam \resync_chains[1].sync_r[1] .is_wysiwyg = "true";
defparam \resync_chains[1].sync_r[1] .power_up = "low";

dffeas \resync_chains[2].sync_r[0] (
	.clk(clk),
	.d(d[2]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\resync_chains[2].sync_r[0]~q ),
	.prn(vcc));
defparam \resync_chains[2].sync_r[0] .is_wysiwyg = "true";
defparam \resync_chains[2].sync_r[0] .power_up = "low";

dffeas \resync_chains[0].sync_r[0] (
	.clk(clk),
	.d(d[0]),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\resync_chains[0].sync_r[0]~q ),
	.prn(vcc));
defparam \resync_chains[0].sync_r[0] .is_wysiwyg = "true";
defparam \resync_chains[0].sync_r[0] .power_up = "low";

dffeas \resync_chains[1].sync_r[0] (
	.clk(clk),
	.d(vcc),
	.asdata(vcc),
	.clrn(reset),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\resync_chains[1].sync_r[0]~q ),
	.prn(vcc));
defparam \resync_chains[1].sync_r[0] .is_wysiwyg = "true";
defparam \resync_chains[1].sync_r[0] .power_up = "low";

endmodule
