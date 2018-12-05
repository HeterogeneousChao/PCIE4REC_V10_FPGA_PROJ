////////////////////////////////////////////////////////////////////////////////////////////////
////   TRANCSCEIVER_CTL.v
////                                                        
////   Transceiver ctrl module
/////////////////////////////////////////////////////////////////////////
////                  ZHAOCHAO
////                    2017-11-08
/////////////////////////////////////////////////////////////////////////
////
module TRANSCEIVER_CTL
(
	CLK,
	nRST,
//	// Transceiver PLL
//	TRANSCEIVER_CLK,
//	pll_clkout,
	// Resets
	pll_powerdown, tx_analogreset, tx_digitalreset, rx_analogreset, rx_digitalreset,
	//Reconfigure
	tx_cal_busy, rx_cal_busy, reconfig_to_xcvr, reconfig_from_xcvr,
	//Control & Status Ports
	rx_set_locktodata, rx_set_locktoref, rx_is_lockedtoref, rx_is_lockedtodata
	
);

	input   wire CLK;
	input   wire nRST;
//	// Transceiver pll
//	input   wire [0:0]  TRANSCEIVER_CLK;
//	output  wire [0:0]  pll_clkout;
	// Resets
	output  wire [0:0]  pll_powerdown;      //      pll_powerdown.pll_powerdown
	output  wire [0:0]  tx_analogreset;     //     tx_analogreset.tx_analogreset
	output  wire [0:0]  tx_digitalreset;    //    tx_digitalreset.tx_digitalreset
	output  wire [0:0]  rx_analogreset;     //     rx_analogreset.rx_analogreset
	output  wire [0:0]  rx_digitalreset;    //    rx_digitalreset.rx_digitalreset
//	//Reconfigure
	input   wire [0:0]  tx_cal_busy;        //        tx_cal_busy.tx_cal_busy
	input   wire [0:0]  rx_cal_busy;        //        rx_cal_busy.rx_cal_busy
	output  wire [69:0] reconfig_to_xcvr;   //   reconfig_to_xcvr.reconfig_to_xcvr
	input   wire [45:0] reconfig_from_xcvr;  // reconfig_from_xcvr.reconfig_from_xcvr
	//Control & Status Ports
	output  wire [0:0]  rx_set_locktodata;  //  rx_set_locktodata.rx_set_locktodata
	output  wire [0:0]  rx_set_locktoref;   //   rx_set_locktoref.rx_set_locktoref
	input   wire [0:0]  rx_is_lockedtoref;  //  rx_is_lockedtoref.rx_is_lockedtoref
	input   wire [0:0]  rx_is_lockedtodata; // rx_is_lockedtodata.rx_is_lockedtodata

	
////////////////////////////////////////////////////////////////////////////////////////////
	reg [31:0]rCount;
	
//	wire        pll_powerdown;      //      pll_powerdown.pll_powerdown
	wire [0:0]  pll_refclk;         //         pll_refclk.pll_refclk
	wire        pll_fbclk;          //          pll_fbclk.pll_fbclk
//	wire        pll_clkout;         //         pll_clkout.pll_clkout
	wire        pll_locked;         //         pll_locked.pll_locked
	wire [0:0]  fboutclk;           //           fboutclk.fboutclk
	wire [0:0]  hclk;               //               hclk.hclk
		
	wire         reconfig_busy;             //      reconfig_busy.reconfig_busy
	wire         mgmt_clk_clk;              //       mgmt_clk_clk.clk
	wire         mgmt_rst_reset;            //     mgmt_rst_reset.reset
	wire [6:0]   reconfig_mgmt_address;     //      reconfig_mgmt.address
	wire         reconfig_mgmt_read;        //                   .read
	wire [31:0]  reconfig_mgmt_readdata;    //                   .readdata
	wire         reconfig_mgmt_waitrequest; //                   .waitrequest
	wire         reconfig_mgmt_write;       //                   .write
	wire [31:0]  reconfig_mgmt_writedata;   //                   .writedata
	wire [31:0]  reconfig_mif_address;      //       reconfig_mif.address
	wire         reconfig_mif_read;         //                   .read
	wire [15:0]  reconfig_mif_readdata;     //                   .readdata
	wire         reconfig_mif_waitrequest;  //                   .waitrequest

	wire       clock;              //              clock.clk
	wire       reset;              //              reset.reset
	wire [0:0] tx_ready;           //           tx_ready.tx_ready
	wire [0:0] pll_select;         //         pll_select.pll_select
	wire [0:0] rx_ready;           //           rx_ready.rx_ready
		
	wire [0:0]  wCLK;
	
	wire [0:0]  ext_pll_clk;        //        ext_pll_clk.ext_pll_clk
	wire [0:0]  rx_cdr_refclk;      //      rx_cdr_refclk.rx_cdr_refclk
	wire [0:0]  rx_pma_clkout;      //      rx_pma_clkout.rx_pma_clkout
	wire [0:0]  rx_serial_data;     //     rx_serial_data.rx_serial_data
	wire [43:0] tx_parallel_data;   //   tx_parallel_data.tx_parallel_data
	wire [63:0] rx_parallel_data;   //   rx_parallel_data.rx_parallel_data
	wire [0:0]  tx_std_coreclkin;   //   tx_std_coreclkin.tx_std_coreclkin
	wire [0:0]  rx_std_coreclkin;   //   rx_std_coreclkin.rx_std_coreclkin
	wire [0:0]  tx_std_clkout;      //      tx_std_clkout.tx_std_clkout
	wire [0:0]  rx_std_clkout;      //      rx_std_clkout.rx_std_clkout
	
	
	
	always @( posedge CLK or negedge nRST)
	begin	
		if (!nRST)
			rCount = 32'd0;
		else if ( rCount == 32'd5000)
			rCount = 32'd0;
		else
			rCount = rCount + 1;
		
	end
	
//	EXT_PLL_IP tx_pll_ip_inst (
//		.refclk            (CLK),            //            refclk.clk
//		.rst               (wnRST),               //             reset.reset
//		.outclk_0          (wCLK),          //           outclk0.clk
//		.locked            (weCLKlocked),            //            locked.export
//		.phase_en          (phase_en),          //          phase_en.phase_en
//		.updn              (updn),              //              updn.updn
//		.cntsel            (cntsel),            //            cntsel.cntsel
//		.phase_done        (phase_done),        //        phase_done.phase_done
//		.reconfig_to_pll   (reconfig_to_pll),   //   reconfig_to_pll.reconfig_to_pll
//		.reconfig_from_pll (reconfig_from_pll), // reconfig_from_pll.reconfig_from_pll
//		.phout             (phout)              //             phout.phout
//	);

//TRANSCEIVER_PLL_IP transceiver_pll_ip_inst(
//	// PLL Input
//		.pll_powerdown(pll_powerdown),           //    in: powerdown PLL
//		.pll_refclk(CLK),                    //    in: CMU PLL input
//		.pll_fbclk(pll_fbclk),                   //    in: PLL feedback input
//	// PLL Clock and status
//		.pll_clkout(pll_clkout),                 //   out: PLL clk out
//		.pll_locked(pll_locked),                 //   out: PLL is locked to input clk 
//	//Dynamic Reconfig 
////		.reconfig_to_xcvr(reconfig_to_xcvr),     //    in: from reconfig
////		.reconfig_from_xcvr(reconfig_from_xcvr)  //   out: to reconfig
//	// Others
//		.fboutclk(fboutclk),                     //    
//		.hclk(hclk),                             //   
//	);

RECONFIGURE_IP reconfigure_ip_inst(
	// MIF reconfigure avalon-mm master interface
		.reconfig_mif_address(reconfig_mif_address),           //   out: avalon-mm byte address
		.reconfig_mif_read(reconfig_mif_read),                 //   out: avalon-mm read requst
		.reconfig_mif_readdata(reconfig_mif_readdata),         //    in: read data
		.reconfig_mif_waitrequest(reconfig_mif_waitrequest),   //    in: avalon-mm slave without read requst
	// Reconfigure Management avalon-mm slave interface
		.mgmt_clk_clk(mgmt_clk_clk),                           //    in: avalon-mm clk in(75MHz - 100MHz)
		.mgmt_rst_reset(mgmt_rst_reset),                       //    in: reset signal(with phy_mgmt_clk_reset in the same time)
		.reconfig_mgmt_address(reconfig_mgmt_address),         //    in: address
		.reconfig_mgmt_read(reconfig_mgmt_read),               //    in: read request
		.reconfig_mgmt_readdata(reconfig_mgmt_readdata),       //   out: readdata
		.reconfig_mgmt_waitrequest(reconfig_mgmt_waitrequest), //   out: waitrequest
		.reconfig_mgmt_write(reconfig_mgmt_write),             //    in: write request
		.reconfig_mgmt_writedata(reconfig_mgmt_writedata),     //    in: writedata
	// Transceiver reconfigure
		.reconfig_to_xcvr(reconfig_to_xcvr),                   //   out: to transceiver 
		.reconfig_from_xcvr(reconfig_from_xcvr),                //    in: from transceiver
		.reconfig_busy(reconfig_busy)                         //   out: indicate is reconfiging
);


RESET_CONTROLLER_IP reset_controller_ip_inst(
	// PLL and Calibration status
		.pll_locked(pll_locked),                 //    in: TX PLL async status, indicate every TX PLL is lock
		.pll_select(pll_select),                 //    in: indicate which pll is reset
		.tx_cal_busy(tx_cal_busy),               //    in: tx cal is busy
		.rx_cal_busy(rx_cal_busy),               //    in: rx cal is busy
//		.rx_is_lockedtodata(rx_is_lockedtodata), //    in: indicate RX CDR is ok, prepare to receiver data
	// PLL Control
	// Clock and Reset
		.clock(CLK),                             //    in: ref clk
		.reset(reset),                           //    in: async reset 
	// TX and RX reset and status
		.tx_analogreset(tx_analogreset),         //   out: tx analog part reset, set after powerdown 
		.tx_digitalreset(tx_digitalreset),       //   out: tx digital part reset
		.tx_ready(tx_ready),                     //   out: tx reset is valid
		.rx_analogreset(rx_analogreset),         //   out: 
		.rx_digitalreset(rx_digitalreset),       //   out: rx digital part reset 
		.rx_ready(rx_ready),                     //   out: rx reset is valid
	// PLL Powerdown
		.pll_powerdown(pll_powerdown)            //   out: power down a TX PLL
	);
	
endmodule 
