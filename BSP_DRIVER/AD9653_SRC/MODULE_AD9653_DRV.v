////////////////////////////////////////////////////////////////////////////////////////////////
////   MODULE_AD9653.v
////                                                        
////   AD9653 ctrl  module
/////////////////////////////////////////////////////////////////////////
////                  ZHAOCHAO
////                    2018-11-14
/////////////////////////////////////////////////////////////////////////
////
module MODULE_AD9653 
(
	CLK, 
	nRST,
	AD_CLK, AD_SYNC, AD_CSB, AD_SCLK, AD_SDIO, AD_FCO,  AD_DCO, 
	AD_CHA_D0, AD_CHA_D1, AD_CHB_D0, AD_CHB_D1, AD_CHC_D0, AD_CHC_D1, AD_CHD_D0, AD_CHD_D1,
	);
	
	input  wire CLK;
	input  wire nRST;
		
	output wire [0:0] AD_CLK;
	output wire [0:0] AD_SYNC; 
	output wire [0:0] AD_CSB;
	output wire [0:0] AD_SCLK; 
	inout  wire [0:0] AD_SDIO; 
	input  wire [0:0] AD_FCO; 
	input  wire [0:0] AD_DCO; 
	
	input  wire [0:0] AD_CHA_D0;
	input  wire [0:0] AD_CHA_D1; 
	input  wire [0:0] AD_CHB_D0; 
	input  wire [0:0] AD_CHB_D1; 
	input  wire [0:0] AD_CHC_D0;
	input  wire [0:0] AD_CHC_D1; 
	input  wire [0:0] AD_CHD_D0; 
	input  wire [0:0] AD_CHD_D1;
		
	
/////////////////////////////////////////////////////////////////////////////////////////////////////
// AD CLK
	reg [31:0] rCount;
	
	wire wADCLK_Out;
	wire wbCLKlocked;
	wire wphase_en;
	wire wupdn;
	wire wcntsel;
	wire wphase_done;
	wire [63:0] wreconfig_to_pll;
	wire [63:0] wreconfig_from_pll;
	
	wire wmgmt_waitrequest;
	wire wmgmt_read;
	wire [31:0] wmgmt_readdata;
	wire [5:0]  wmgmt_address;
	wire [31:0] wmgmt_writedata;

	/// AD CLK OUTPUT PLL
	AD_CLK_OUTPUT_PLL_IP ad_pll_ip_inst(
		.refclk(CLK),            //            refclk.clk
		.rst(nRST),               //             reset.reset
		.outclk_0(wADCLK_Out),          //           outclk0.clk
		.locked(wbCLKlocked),            //            locked.export
		.phase_en(wphase_en),          // input         	phase_en.phase_en
		.updn(wupdn),              // input            updn.updn
		.cntsel(wcntsel),            // input   [4:0]    cntsel.cntsel
		.phase_done(wphase_done),        // output         	phase_done.phase_done
		.reconfig_to_pll(wreconfig_to_pll),   // input   [63:0] 	reconfig_to_pll.reconfig_to_pll
		.reconfig_from_pll(wreconfig_from_pll)  // output  [63:0]	reconfig_from_pll.reconfig_from_pll
	);
	/// RECONFIG AD CLK FREQ AND PHASE
	AD_CLK_OUTPUT_PLL_RECONFIG_IP AD_CLK_OUTPUT_PLL_RECONFIG_IP_INST(
		.mgmt_clk(CLK),          // input      mgmt_clk.clk
		.mgmt_reset(nRST),        // input      mgmt_reset.reset
		.mgmt_waitrequest(wmgmt_waitrequest),  // output 	mgmt_avalon_slave.waitrequest
		.mgmt_read(wmgmt_read),         // input          .read
		.mgmt_write(wmgmt_write),        // input          .write
		.mgmt_readdata(wmgmt_readdata),     // output [31:0]  .readdata
		.mgmt_address(wmgmt_address),      // input  [5:0]   .address
		.mgmt_writedata(wmgmt_writedata),    // input  [31:0]  .writedata
		.reconfig_to_pll(wreconfig_to_pll),   // output [63:0]  reconfig_to_pll.reconfig_to_pll
		.reconfig_from_pll(wreconfig_from_pll)  // input  [63:0]  reconfig_from_pll.reconfig_from_pll
	);
	
	always @(posedge CLK or negedge nRST)
	begin
		if (!nRST)
			begin
				rCount = 32'd0;
				//rddr2_oct_rzqin = 1'b0;
			end
		else if (rCount == 32'd5000)
			begin
				rCount = 32'd0;
				//rddr2_oct_rzqin = !rddr2_oct_rzqin;
			end
		else 
			begin
				rCount = rCount + 32'd1;
			end
	end
	
	assign AD_CLK = wADCLK_Out;
	assign AD_SYNC = (rCount < 32'd125) ? 1'b1 : 1'b0;
	assign AD_CSB = 1'b1;
	assign AD_SCLK = CLK;
	assign AD_SDIO  = (rCount < 32'd256) ? 1'b1 : 1'b0;	
	
	
endmodule
