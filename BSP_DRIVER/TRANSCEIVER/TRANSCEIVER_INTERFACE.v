module TRANSCEIVER_INTERFACE
(
	CLK,
	nRST,
	SFP_RX, SFP_TD, SFP_CLK, SFP_CLK_OUT, SFP_TXDisable, SFP_TXFault, SFP_LOS, SFP_MOD0, SFP_MOD1, SFP_MOD2
);

	input  wire CLK;
	input  wire nRST;
	
	input  wire [0:0] SFP_RX; 
	output wire [0:0] SFP_TD;
	input  wire [0:0] SFP_CLK; 
	output wire [0:0] SFP_CLK_OUT;
	output wire [0:0] SFP_TXDisable; 
	input  wire [0:0] SFP_TXFault;
	input  wire [0:0] SFP_LOS;
	output wire [0:0] SFP_MOD0; 
	output wire [0:0] SFP_MOD1; 
	output wire [0:0] SFP_MOD2;
	
	reg [31:0]rCount;
	
	wire        pll_powerdown;      //      pll_powerdown.pll_powerdown
	wire [0:0]  pll_refclk;         //         pll_refclk.pll_refclk
	wire        pll_fbclk;          //          pll_fbclk.pll_fbclk
	wire        pll_clkout;         //         pll_clkout.pll_clkout
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

	wire       gxb_clock;              //              clock.clk
	wire       reset;              //              reset.reset
	wire [0:0] tx_ready;           //           tx_ready.tx_ready
	wire [0:0] pll_select;         //         pll_select.pll_select
	wire [0:0] rx_ready;           //           rx_ready.rx_ready
		
	wire [0:0]  wCLK;
	//wire [0:0]  pll_powerdown;      //      pll_powerdown.pll_powerdown
	wire [0:0]  tx_analogreset;     //     tx_analogreset.tx_analogreset
	wire [0:0]  tx_digitalreset;    //    tx_digitalreset.tx_digitalreset
	wire [0:0]  tx_serial_data;     //     tx_serial_data.tx_serial_data
	wire [0:0]  ext_pll_clk;        //        ext_pll_clk.ext_pll_clk
	wire [0:0]  rx_analogreset;     //     rx_analogreset.rx_analogreset
	wire [0:0]  rx_digitalreset;    //    rx_digitalreset.rx_digitalreset
	wire [0:0]  rx_cdr_refclk;      //      rx_cdr_refclk.rx_cdr_refclk
	wire [0:0]  rx_pma_clkout;      //      rx_pma_clkout.rx_pma_clkout
	wire [0:0]  rx_serial_data;     //     rx_serial_data.rx_serial_data
	wire [0:0]  rx_set_locktodata;  //  rx_set_locktodata.rx_set_locktodata
	wire [0:0]  rx_set_locktoref;   //   rx_set_locktoref.rx_set_locktoref
	wire [0:0]  rx_is_lockedtoref;  //  rx_is_lockedtoref.rx_is_lockedtoref
	wire [0:0]  rx_is_lockedtodata; // rx_is_lockedtodata.rx_is_lockedtodata
	wire [43:0] tx_parallel_data;   //   tx_parallel_data.tx_parallel_data
	wire [63:0] rx_parallel_data;   //   rx_parallel_data.rx_parallel_data
	wire [0:0]  tx_std_coreclkin;   //   tx_std_coreclkin.tx_std_coreclkin
	wire [0:0]  rx_std_coreclkin;   //   rx_std_coreclkin.rx_std_coreclkin
	wire [0:0]  tx_std_clkout;      //      tx_std_clkout.tx_std_clkout
	wire [0:0]  rx_std_clkout;      //      rx_std_clkout.rx_std_clkout
	wire [0:0]  tx_cal_busy;        //        tx_cal_busy.tx_cal_busy
	wire [0:0]  rx_cal_busy;        //        rx_cal_busy.rx_cal_busy
	wire [69:0] reconfig_to_xcvr;   //   reconfig_to_xcvr.reconfig_to_xcvr
	wire [45:0] reconfig_from_xcvr;  // reconfig_from_xcvr.reconfig_from_xcvr
	
	wire [0:0]  tx_std_pcfifo_full;  //  tx_std_pcfifo_full.tx_std_pcfifo_full
	wire [0:0]  tx_std_pcfifo_empty; // tx_std_pcfifo_empty.tx_std_pcfifo_empty
	wire [0:0]  rx_std_pcfifo_full;  //  rx_std_pcfifo_full.rx_std_pcfifo_full
	wire [0:0]  rx_std_pcfifo_empty; // rx_std_pcfifo_empty.rx_std_pcfifo_empty
	
	
	
	always @( posedge CLK or negedge nRST)
	begin	
		if (!nRST)
			rCount = 32'd0;
		else if ( rCount == 32'd5000)
			rCount = 32'd0;
		else
			rCount = rCount + 1;
		
	end

TRANSCEIVER_FIFO transceiver_fifo_inst(
	.CLK(CLK),
	.nRST(nRST),
	//PCS INTERFACE
		.tx_std_coreclkin(tx_std_coreclkin),           //   in: from fpga fabric, TX parallel clk in, source the tx phase complement fifo
		.rx_std_coreclkin(rx_std_coreclkin),           //   in: from fpga fabric, source RX phase complement fifo
		.tx_std_clkout(tx_std_clkout),           //  out: TX paraller clk
		.rx_std_clkout(rx_std_clkout),            //  out: RX CDR paraller clk
	//Pharse Compensation FIFo
		.tx_std_pcfifo_full(tx_std_pcfifo_full),  //  tx_std_pcfifo_full.tx_std_pcfifo_full
		.tx_std_pcfifo_empty(tx_std_pcfifo_empty), // tx_std_pcfifo_empty.tx_std_pcfifo_empty
		.rx_std_pcfifo_full(rx_std_pcfifo_full),  //  rx_std_pcfifo_full.rx_std_pcfifo_full
		.rx_std_pcfifo_empty(rx_std_pcfifo_empty), // rx_std_pcfifo_empty.rx_std_pcfifo_empty
	//Parallel Data Ports
		.tx_parallel_data(tx_parallel_data),     //   in: PCS TX para data in
		.rx_parallel_data(rx_parallel_data)     //  out: PCS RX para data out
);

TRANSCEIVER_CTL transceiver_ctl_inst(
	.CLK(CLK),
	.nRST(nRST),
//	// Transceiver PLL
//	.TRANSCEIVER_CLK(SFP_CLK),
//	.pll_clkout(gxb_clock),
	// Resets
		.pll_powerdown(pll_powerdown),           //   in: TX pll reset signal(HL) 
		.tx_analogreset(tx_analogreset),         //   in: TX PMA, TX CLK, serialer reset signal(HL)
		.tx_digitalreset(tx_digitalreset),       //   in: TX path digital part reset signal(HL, async)
		.rx_analogreset(rx_analogreset),         //   in: RX CDR, deserialer reset(HL, async)
		.rx_digitalreset(rx_digitalreset),       //   in: RX path digital part reset signal(HL async)
//	//Reconfigure
		.tx_cal_busy(tx_cal_busy),               //  out: TX is calibrating
		.rx_cal_busy(rx_cal_busy),               //  out: RX is calibrating
		.reconfig_to_xcvr(reconfig_to_xcvr),     //   in: from reconfig ip
		.reconfig_from_xcvr(reconfig_from_xcvr), //  out: to reconfig ip

	//Control & Status Ports
		.rx_set_locktodata(rx_set_locktodata),   //   in: RX CDR config to manual lock to data mode(use locktoref and locktodata ctl)
		.rx_set_locktoref(rx_set_locktoref),     //   in: RX CDR in manual lock to data mode(use locktoref and locktodata ctl)
		.rx_is_lockedtoref(rx_is_lockedtoref),   //  out: CDR lock to input refclk
		.rx_is_lockedtodata(rx_is_lockedtodata) //  out: CDR lock to input data
);

NATIVE_TRANSCEIVER_IP transceiver_native_phy_ip_inst(
	// Clock Input & Output Signal
		.ext_pll_clk(CLK),                   //   in: ext_pll_clk
		.rx_pma_clkout(SFP_CLK_OUT),             //  out: pma rx parallel clk out(CDR clk
//		.rx_cdr_refclk(CLK),                 //   in: rx cdr refclk in
	// Resets
		.pll_powerdown(pll_powerdown),           //   in: TX pll reset signal(HL) 
		.tx_analogreset(tx_analogreset),         //   in: TX PMA, TX CLK, serialer reset signal(HL)
		.tx_digitalreset(tx_digitalreset),       //   in: TX path digital part reset signal(HL, async)
		.rx_analogreset(rx_analogreset),         //   in: RX CDR, deserialer reset(HL, async)
		.rx_digitalreset(rx_digitalreset),       //   in: RX path digital part reset signal(HL async)
	//TX & RX SerialPorts
		.tx_serial_data(SFP_TD),                 //  out: tx diff output
		.rx_serial_data(SFP_RX),                 //   in: rx diff input
	//Control & Status Ports
		.rx_set_locktodata(rx_set_locktodata),   //   in: RX CDR config to manual lock to data mode(use locktoref and locktodata ctl)
		.rx_set_locktoref(rx_set_locktoref),     //   in: RX CDR in manual lock to data mode(use locktoref and locktodata ctl)
		.rx_is_lockedtoref(rx_is_lockedtoref),   //  out: CDR lock to input refclk
		.rx_is_lockedtodata(rx_is_lockedtodata), //  out: CDR lock to input data
//	//Reconfigure
		.tx_cal_busy(tx_cal_busy),               //  out: TX is calibrating
		.rx_cal_busy(rx_cal_busy),               //  out: RX is calibrating
		.reconfig_to_xcvr(reconfig_to_xcvr),     //   in: from reconfig ip
		.reconfig_from_xcvr(reconfig_from_xcvr), //  out: to reconfig ip
	//PCS INTERFACE
		.tx_std_coreclkin(tx_std_coreclkin),     //   in: from fpga fabric, TX parallel clk in, source the tx phase complement fifo
		.rx_std_coreclkin(rx_std_coreclkin),     //   in: from fpga fabric, source RX phase complement fifo
		.tx_std_clkout(tx_std_clkout),           //  out: TX paraller clk
		.rx_std_clkout(rx_std_clkout),           //  out: RX CDR paraller clk
	//Pharse Compensation FIFo
		.tx_std_pcfifo_full(tx_std_pcfifo_full),  //  tx_std_pcfifo_full.tx_std_pcfifo_full
		.tx_std_pcfifo_empty(tx_std_pcfifo_empty),// tx_std_pcfifo_empty.tx_std_pcfifo_empty
		.rx_std_pcfifo_full(rx_std_pcfifo_full),  //  rx_std_pcfifo_full.rx_std_pcfifo_full
		.rx_std_pcfifo_empty(rx_std_pcfifo_empty),// rx_std_pcfifo_empty.rx_std_pcfifo_empty
	//Parallel Data Ports
		.tx_parallel_data(tx_parallel_data),      //   in: PCS TX para data in
		.rx_parallel_data(rx_parallel_data)       //  out: PCS RX para data out
	);
	
	
//	assign GXB_CLK_OUT = wCLK;
	
endmodule 
