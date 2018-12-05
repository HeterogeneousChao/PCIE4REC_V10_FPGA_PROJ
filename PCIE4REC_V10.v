////////////////////////////////////////////////////////////////////////////////////////////////
////   PCIE4REC_V10.v
////                                                        
////   PCIE4REC_V10 FPGA PROJECT
/////////////////////////////////////////////////////////////////////////
////  	Device:  5CGXFC9
////                  				ZHAOCHAO
////                   					 2018-12-06
/////////////////////////////////////////////////////////////////////////
////

`include "BSP_SDK_DEF.v"

module PCIE4REC_V10
(

`ifdef MODULE_BCLK_IN_ENABLE
	BOARD_CLK, 
`endif
	
`ifdef MODULE_ECLK_IN_ENABLE
	EXT_CLK, 
`endif
	
`ifdef MODULE_GPIO_ENABLE
	GPIO, 
`endif
	
`ifdef MODULE_LEDS_ENABLE
	TEST_LED,
`endif
	
`ifdef MODULE_IDC_IN_ENABLE
	IDC_LO, IDC_SAMPLE,
`endif
	
`ifdef MODULE_RF_CHA_ENABLE
	CHA_AMP1_THR, CHA_AMP1_BYPASS, CHA_AMP2_THR, CHA_AMP2_BYPASS, CHA_5201_CS, CHA_5201_SCLK, CHA_5201_SDIO, CHA_5201_LATCH,
`endif
`ifdef MODULE_RF_CHB_ENABLE
	CHB_AMP1_THR, CHB_AMP1_BYPASS, CHB_AMP2_THR, CHB_AMP2_BYPASS, CHB_5201_CS, CHB_5201_SCLK, CHB_5201_SDIO, CHB_5201_LATCH,
`endif
`ifdef MODULE_RF_CHC_ENABLE
	CHC_AMP1_THR, CHC_AMP1_BYPASS, CHC_AMP2_THR, CHC_AMP2_BYPASS, CHC_5201_CS, CHC_5201_SCLK, CHC_5201_SDIO, CHC_5201_LATCH,
`endif
`ifdef MODULE_RF_CHD_ENABLE
	CHD_AMP1_THR, CHD_AMP1_BYPASS, CHD_AMP2_THR, CHD_AMP2_BYPASS, CHD_5201_CS, CHD_5201_SCLK, CHD_5201_SDIO, CHD_5201_LATCH,
`endif

`ifdef MODULE_AD9653_ENABLE
	AD_CLK, AD_SYNC, AD_CSB, AD_SCLK, AD_SDIO, AD_FCO,  AD_DCO, 
	AD_CHA_D0, AD_CHA_D1, AD_CHB_D0, AD_CHB_D1, AD_CHC_D0, AD_CHC_D1, AD_CHD_D0, AD_CHD_D1,
`endif

`ifdef MODULE_SFP_A_ENABLE
	SFPA_RX, SFPA_TD, /*SFPA_CLK,*/ /*SFPA_CLK_OUT,*/ SFPA_TXDisable, SFPA_TXFault, SFPA_LOS, SFPA_MOD0, SFPA_MOD1, SFPA_MOD2,
`endif
`ifdef MODULE_SFP_B_ENABLE
	SFPB_RX, SFPB_TD, /*SFPB_CLK,*/ /*SFPB_CLK_OUT,*/ SFPB_TXDisable, SFPB_TXFault, SFPB_LOS, SFPB_MOD0, SFPB_MOD1, SFPB_MOD2,
`endif

`ifdef MODULE_PEX8311_ENABLE
	PEX8311_LD, PEX8311_DP, PEX8311_LA, PEX8311_LBE, PEX8311_LRESET, PEX8311_ADS, PEX8311_BLAST, PEX8311_REAY,
	PEX8311_LSERR, PEX8311_EOT, PEX8311_BIGEND, PEX8311_BREQI, PEX8311_BREQO, PEX8311_LLOCKO, PEX8311_LLOCKI, PEX8311_WAIT, PEX8311_CCS,
	PEX8311_LWR, PEX8311_BTERM, PEX8311_LINTO, PEX8311_LINTI, PEX8311_DREQ, PEX8311_DACK,
`endif


`ifdef MODULE_DOUBLE_DDR2
		ddr2a_addr, ddr2a_ck, ddr2a_ckn, ddr2a_cke, ddr2a_csn, ddr2a_rasn, ddr2a_casn, ddr2a_wen, ddr2a_odt,
		ddr2a_ba, ddr2a_dq, ddr2a_dqs,
		ddr2a_oct_rzqin,
		ddr2b_addr, ddr2b_ck, ddr2b_ckn, ddr2b_cke, ddr2b_csn, ddr2b_rasn, ddr2b_casn, ddr2b_wen, ddr2b_odt,
		ddr2b_ba, ddr2b_dq, ddr2b_dqs,  
`endif

`ifdef MODULE_SINGLE_DDR2
	`ifdef MODULE_DDR2_A_ENABLE
		ddr2a_addr, ddr2a_ck, ddr2a_ckn, ddr2a_cke, ddr2a_csn, ddr2a_rasn, ddr2a_casn, ddr2a_wen, ddr2a_odt,
		ddr2a_ba, ddr2a_dq, ddr2a_dqs,  /*ddr2a_dm,*/ /*ddr2a_dqsn,*/
		ddr2a_oct_rzqin,
	`endif
	`ifdef MODULE_DDR2_B_ENABLE
		ddr2b_addr, ddr2b_ck, ddr2b_ckn, ddr2b_cke, ddr2b_csn, ddr2b_rasn, ddr2b_casn, ddr2b_wen, ddr2b_odt,
		ddr2b_ba, ddr2b_dq, ddr2b_dqs,  /*ddr2b_dm,*/ /*ddr2b_dqsn,*/
		ddr2a_oct_rzqin
	`endif
`endif

);

	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//// PERIPHERAL
	`ifdef MODULE_BCLK_IN_ENABLE
		input  wire [0:0] BOARD_CLK;
	`endif
	`ifdef MODULE_ECLK_IN_ENABLE
		input  wire [0:0] EXT_CLK;
	`endif
	
	`ifdef MODULE_GPIO_ENABLE	
		inout  wire [3:0] GPIO;
	`endif
		
	`ifdef MODULE_LEDS_ENABLE	
		output wire [3:0] TEST_LED;
	`endif
		
	`ifdef MODULE_IDC_IN_ENABLE
		input  wire [0:0] IDC_LO;
		input  wire [0:0] IDC_SAMPLE;
	`endif
		
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//// ANALOG CHANEL CTL	
		// CHA
	`ifdef MODULE_RF_CHA_ENABLE
		output wire [0:0] CHA_AMP1_THR;
		output wire [0:0] CHA_AMP1_BYPASS;
		output wire [0:0] CHA_AMP2_THR;
		output wire [0:0] CHA_AMP2_BYPASS;
		output wire [0:0] CHA_5201_CS;
		output wire [0:0] CHA_5201_SCLK;
		inout  wire [0:0] CHA_5201_SDIO; 
		output wire [0:0] CHA_5201_LATCH;
	`endif		
		// CHB
	`ifdef MODULE_RF_CHB_ENABLE
		output wire [0:0] CHB_AMP1_THR; 
		output wire [0:0] CHB_AMP1_BYPASS;
		output wire [0:0] CHB_AMP2_THR;
		output wire [0:0] CHB_AMP2_BYPASS; 
		output wire [0:0] CHB_5201_CS;
		output wire [0:0] CHB_5201_SCLK;
		inout  wire [0:0] CHB_5201_SDIO; 
		output wire [0:0] CHB_5201_LATCH;
	`endif		
		// CHC
	`ifdef MODULE_RF_CHC_ENABLE
		output wire [0:0] CHC_AMP1_THR;
		output wire [0:0] CHC_AMP1_BYPASS;
		output wire [0:0] CHC_AMP2_THR;
		output wire [0:0] CHC_AMP2_BYPASS; 
		output wire [0:0] CHC_5201_CS; 
		output wire [0:0] CHC_5201_SCLK;
		inout  wire [0:0] CHC_5201_SDIO;
		output wire [0:0] CHC_5201_LATCH;
	`endif		
		// CHD
	`ifdef MODULE_RF_CHD_ENABLE
		output wire [0:0] CHD_AMP1_THR;
		output wire [0:0] CHD_AMP1_BYPASS;
		output wire [0:0] CHD_AMP2_THR;
		output wire [0:0] CHD_AMP2_BYPASS;
		output wire [0:0] CHD_5201_CS;
		output wire [0:0] CHD_5201_SCLK;
		inout  wire [0:0] CHD_5201_SDIO;
		output wire [0:0] CHD_5201_LATCH;
	`endif
		
		
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//// AD9653
	`ifdef MODULE_AD9653_ENABLE
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
	`endif
		
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//// TRANSCEIVER 
	`ifdef MODULE_SFP_A_ENABLE
		input  wire [0:0] SFPA_RX;
		output wire [0:0] SFPA_TD;
//		input  wire [0:0] SFPA_CLK; 
//		output wire [0:0] SFPA_CLK_OUT;
		output wire [0:0] SFPA_TXDisable; 
		input  wire [0:0] SFPA_TXFault;
		input  wire [0:0] SFPA_LOS;
		output wire [0:0] SFPA_MOD0; 
		output wire [0:0] SFPA_MOD1; 
		output wire [0:0] SFPA_MOD2;
	`endif
	`ifdef MODULE_SFP_B_ENABLE
		input  wire [0:0] SFPB_RX; 
		output wire [0:0] SFPB_TD; 
//		input  wire [0:0] SFPB_CLK; 
//		output wire [0:0] SFPB_CLK_OUT;
		output wire [0:0] SFPB_TXDisable;
		input  wire [0:0] SFPB_TXFault;
		input  wire [0:0] SFPB_LOS;
		output wire [0:0] SFPB_MOD0; 
		output wire [0:0] SFPB_MOD1; 
		output wire [0:0] SFPB_MOD2;
	`endif
		
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//// PEX8311
	`ifdef MODULE_PEX8311_ENABLE
		input  wire [31:0] PEX8311_LD;
		output wire [3:0]  PEX8311_DP;
		output wire [29:0] PEX8311_LA; 
		output wire [3:0]  PEX8311_LBE;
		input wire  [0:0]  PEX8311_LRESET;
		input wire  [0:0]  PEX8311_ADS;
		input wire  [0:0]  PEX8311_BLAST;
		input wire  [0:0]  PEX8311_REAY;
		input wire  [0:0]  PEX8311_LSERR; 
		input wire  [0:0]  PEX8311_EOT; 
		input wire  [0:0]  PEX8311_BIGEND; 
		input wire  [0:0]  PEX8311_BREQI;
		output wire [0:0]  PEX8311_BREQO; 
		output wire [0:0]  PEX8311_LLOCKO; 
		input wire  [0:0]  PEX8311_LLOCKI; 
		input wire  [0:0]  PEX8311_WAIT;
		output wire [0:0]  PEX8311_CCS;
		output wire [0:0]  PEX8311_LWR; 
		output wire [0:0]  PEX8311_BTERM;
		output wire [0:0]  PEX8311_LINTO;
		input wire  [0:0]  PEX8311_LINTI; 
		output wire [1:0]  PEX8311_DREQ; 
		output wire [1:0]  PEX8311_DACK; 
	`endif

	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//// DDR2
	`ifdef MODULE_DOUBLE_DDR2
		// DDR2 A
		output wire [12:0] ddr2a_addr;         //           memory.mem_a
		output wire [2:0]  ddr2a_ba;             //                 .mem_ba
		output wire [0:0]  ddr2a_ck;            //                 .mem_ck
		output wire [0:0]  ddr2a_ckn;           //                 .mem_ck_n
		output wire [0:0]  ddr2a_cke;           //                 .mem_cke
		output wire [0:0]  ddr2a_csn;           //                 .mem_cs_n
		output wire [0:0]  ddr2a_rasn;          //                 .mem_ras_n
		output wire [0:0]  ddr2a_casn;          //                 .mem_cas_n
		output wire [0:0]  ddr2a_wen;          //                  .mem_we_n
		inout  wire [15:0] ddr2a_dq;             //                 .mem_dq
		inout  wire [1:0]  ddr2a_dqs;            //                 .mem_dqs
		output wire [0:0]  ddr2a_odt;           //                 .mem_odt
		input  wire [0:0]  ddr2a_oct_rzqin;
		// DDR2 B
		output wire [12:0] ddr2b_addr;         //           memory.mem_a
		output wire [2:0]  ddr2b_ba;             //                 .mem_ba
		output wire [0:0]  ddr2b_ck;            //                 .mem_ck
		output wire [0:0]  ddr2b_ckn;           //                 .mem_ck_n
		output wire [0:0]  ddr2b_cke;           //                 .mem_cke
		output wire [0:0]  ddr2b_csn;           //                 .mem_cs_n
		output wire [0:0]  ddr2b_rasn;          //                 .mem_ras_n
		output wire [0:0]  ddr2b_casn;          //                 .mem_cas_n
		output wire [0:0]  ddr2b_wen;          //                  .mem_we_n
		inout  wire [15:0] ddr2b_dq;             //                 .mem_dq
		inout  wire [1:0]  ddr2b_dqs;            //                 .mem_dqs
		output wire [0:0]  ddr2b_odt;           //                 .mem_odt
	`endif
	
	`ifdef MODULE_SINGLE_DDR2
			// DDR2 A
		`ifdef MODULE_DDR2_A_ENABLE
			output wire [12:0] ddr2a_addr;         //           memory.mem_a
			output wire [2:0]  ddr2a_ba;             //                 .mem_ba
			output wire [0:0]  ddr2a_ck;            //                 .mem_ck
			output wire [0:0]  ddr2a_ckn;           //                 .mem_ck_n
			output wire [0:0]  ddr2a_cke;           //                 .mem_cke
			output wire [0:0]  ddr2a_csn;           //                 .mem_cs_n
			//output wire [3:0]  ddr2a_dm;             //                 .mem_dm
			output wire [0:0]  ddr2a_rasn;          //                 .mem_ras_n
			output wire [0:0]  ddr2a_casn;          //                 .mem_cas_n
			output wire [0:0]  ddr2a_wen;          //                  .mem_we_n
			inout  wire [15:0] ddr2a_dq;             //                 .mem_dq
			inout  wire [1:0]  ddr2a_dqs;            //                 .mem_dqs
			output wire [0:0]  ddr2a_odt;           //                 .mem_odt
			//inout  wire [1:0]  ddr2_a2_dqsn;            //                 .mem_dqs
			input  wire [0:0]  ddr2a_oct_rzqin;
		`endif
			// DDR2 B
		`ifdef MODULE_DDR2_B_ENABLE
			output wire [12:0] ddr2b_addr;         //           memory.mem_a
			output wire [2:0]  ddr2b_ba;             //                 .mem_ba
			output wire [0:0]  ddr2b_ck;            //                 .mem_ck
			output wire [0:0]  ddr2b_ckn;           //                 .mem_ck_n
			output wire [0:0]  ddr2b_cke;           //                 .mem_cke
			output wire [0:0]  ddr2b_csn;           //                 .mem_cs_n
			//output wire [3:0]  ddr2b_dm;             //                 .mem_dm
			output wire [0:0]  ddr2b_rasn;          //                 .mem_ras_n
			output wire [0:0]  ddr2b_casn;          //                 .mem_cas_n
			output wire [0:0]  ddr2b_wen;          //                  .mem_we_n
			inout  wire [15:0] ddr2b_dq;             //                 .mem_dq
			inout  wire [1:0]  ddr2b_dqs;            //                 .mem_dqs
			output wire [0:0]  ddr2b_odt;           //                 .mem_odt
			//inout  wire [1:0]  ddr2b_dqsn;            //                 .mem_dqs
			input  wire [0:0]  ddr2a_oct_rzqin;
		`endif
	`endif
	/////////////////////////////////////////////////////////////////////////////////////////////////////
	// wire declaration 
		wire [0:0]  wbCLK;
		wire [0:0]  wEXT_CLK;
		wire [3:0]  wbCLKlocked;
		
		wire [0:0]  wnRST;
		
		
	/////////////////////////////////////////////////////////////////////////////////////////////////////
	// Board Global CLK	IN
`ifdef MODULE_BCLK_IN_ENABLE
	wire wbclk_in;
	ALTCLKCTRL_IP	ALTCLKCTRL_IP_BCLK_inst (
		.inclk ( BOARD_CLK ),
		.outclk ( wbclk_in )
	);

	PLL_IP bclk_pll_ip_inst(
			.refclk(wbclk_in),   //  refclk.clk
			.rst(wnRST),      //   reset.reset
			.outclk_0(wbCLK), // outclk0.clk
			.locked(wbCLKlocked[0])    //  locked.export
		);
`endif
	
	/////////////////////////////////////////////////////////////////////////////////////////////////////
	// EXT CLK IN
`ifdef MODULE_ECLK_IN_ENABLE
	PLL_IP ext_pll_ip_inst (
		.refclk   (EXT_CLK),   //  refclk.clk
		.rst      (wnRST),      //   reset.reset
		.outclk_0 (wEXT_CLK), // outclk0.clk
		.locked   (wbCLKlocked[1])    //  locked.export
	);
`endif

//////////////////////////////////////////////////////////////////
//// DDR2 
`ifdef MODULE_DOUBLE_DDR2

	wire [0:0]  wddr2aclk_in;
	wire [15:0]  wseriesterminationcontrol;   //      oct_sharing.seriesterminationcontrol
	wire [15:0]  wparallelterminationcontrol; //                 .parallelterminationcontrol
	wire [0:0]   wdll_pll_locked;             //      dll_sharing.dll_pll_locked
	wire [6:0]   wdll_delayctrl;               //                 .dll_delayctrl
	
	ALTCLKCTRL_IP	ALTCLKCTRL_IP_DDR2A_inst (
		.inclk ( BOARD_CLK ),
		.outclk ( wddr2aclk_in )
	);	
	
	MODULE_DDR2_SIP_MASTER_DRV ddr2a_sip_master_inst
	(
		.ddr2ref_CLK(BOARD_CLK),
		.CLK(BOARD_CLK),
		.nRST(wnRST),
		.ddr2_addr(ddr2a_addr),        //   memory 	 .mem_a
		.ddr2_ba(ddr2a_ba),            //            .mem_ba
		.ddr2_ck(ddr2a_ck),            //            .mem_ck
		.ddr2_ckn(ddr2a_ckn),          //            .mem_ck_n
		.ddr2_cke(ddr2a_cke),          //            .mem_cke
		.ddr2_csn(ddr2a_csn),          //            .mem_cs_n
		.ddr2_rasn(ddr2a_rasn),        //            .mem_ras_n
		.ddr2_casn(ddr2a_casn),        //            .mem_cas_n
		.ddr2_wen(ddr2a_wen),          //            .mem_we_n
		.ddr2_dq(ddr2a_dq),            //            .mem_dq
		.ddr2_dqs(ddr2a_dqs),          //            .mem_dqs
		.ddr2_odt(ddr2a_odt),          //            .mem_odt
		.ddr2_oct_rzqin(ddr2a_oct_rzqin),
		.seriesterminationcontrol(wseriesterminationcontrol),   //      oct_sharing.seriesterminationcontrol
		.parallelterminationcontrol(wparallelterminationcontrol), //                 .parallelterminationcontrol
		.dll_pll_locked(wdll_pll_locked),             //      dll_sharing.dll_pll_locked
		.dll_delayctrl(wdll_delayctrl)               //                 .dll_delayctrl
	);
	
	wire wddr2bclk_in;
	ALTCLKCTRL_IP	ALTCLKCTRL_IP_DDR2B_inst (
		.inclk ( BOARD_CLK ),
		.outclk ( wddr2bclk_in )
	);
	MODULE_DDR2_SIP_SLAVE_DRV ddr2b_sip_slave_inst
	(
		.CLK(BOARD_CLK),
		.nRST(wnRST),
		.ddr2_addr(ddr2b_addr),         //   memory  .mem_a
		.ddr2_ba(ddr2b_ba),             //           .mem_ba
		.ddr2_ck(ddr2b_ck),             //           .mem_ck
		.ddr2_ckn(ddr2b_ckn),           //           .mem_ck_n
		.ddr2_cke(ddr2b_cke),           //           .mem_cke
		.ddr2_csn(ddr2b_csn),           //           .mem_cs_n
		.ddr2_rasn(ddr2b_rasn),         //           .mem_ras_n
		.ddr2_casn(ddr2b_casn),         //           .mem_cas_n
		.ddr2_wen(ddr2b_wen),           //           .mem_we_n
		.ddr2_dq(ddr2b_dq),             //           .mem_dq
		.ddr2_dqs(ddr2b_dqs),           //           .mem_dqs
		.ddr2_odt(ddr2b_odt),           //           .mem_odt
		.seriesterminationcontrol(wseriesterminationcontrol),   //      oct_sharing.seriesterminationcontrol
		.parallelterminationcontrol(wparallelterminationcontrol), //                 .parallelterminationcontrol
		.dll_pll_locked(wdll_pll_locked),             //      dll_sharing.dll_pll_locked
		.dll_delayctrl(wdll_delayctrl)               //                 .dll_delayctrl
	);
`endif
`ifdef MODULE_SINGLE_DDR2
	`ifdef MODULE_DDR2_A_ENABLE
		wire wddr2aclk_in;
		ALTCLKCTRL_IP	ALTCLKCTRL_IP_DDR2A_inst (
			.inclk ( BOARD_CLK ),
			.outclk ( wddr2aclk_in )
		);	

		MODULE_DDR2_SIP_DRV ddr2a_sip_inst
		(
			.CLK(BOARD_CLK),
			.nRST(wnRST),
			.ddr2_addr(ddr2a_addr),        //   memory 	 .mem_a
			.ddr2_ba(ddr2a_ba),            //            .mem_ba
			.ddr2_ck(ddr2a_ck),            //            .mem_ck
			.ddr2_ckn(ddr2a_ckn),          //            .mem_ck_n
			.ddr2_cke(ddr2a_cke),          //            .mem_cke
			.ddr2_csn(ddr2a_csn),          //            .mem_cs_n
			.ddr2_rasn(ddr2a_rasn),        //            .mem_ras_n
			.ddr2_casn(ddr2a_casn),        //            .mem_cas_n
			.ddr2_wen(ddr2a_wen),          //            .mem_we_n
			.ddr2_dq(ddr2a_dq),            //            .mem_dq
			.ddr2_dqs(ddr2a_dqs),          //            .mem_dqs
			.ddr2_odt(ddr2a_odt),          //            .mem_odt
			.ddr2_oct_rzqin(ddr2a_oct_rzqin)
		);
	`endif
	`ifdef MODULE_DDR2_B_ENABLE
		wire wddr2bclk_in;
		ALTCLKCTRL_IP	ALTCLKCTRL_IP_DDR2B_inst (
			.inclk ( BOARD_CLK ),
			.outclk ( wddr2bclk_in )
		);
		MODULE_DDR2_SIP_DRV ddr2b_sip_inst
		(
			.CLK(BOARD_CLK),
			.nRST(wnRST),
			.ddr2_addr(ddr2b_addr),         //   memory  .mem_a
			.ddr2_ba(ddr2b_ba),             //           .mem_ba
			.ddr2_ck(ddr2b_ck),             //           .mem_ck
			.ddr2_ckn(ddr2b_ckn),           //           .mem_ck_n
			.ddr2_cke(ddr2b_cke),           //           .mem_cke
			.ddr2_csn(ddr2b_csn),           //           .mem_cs_n
			.ddr2_rasn(ddr2b_rasn),         //           .mem_ras_n
			.ddr2_casn(ddr2b_casn),         //           .mem_cas_n
			.ddr2_wen(ddr2b_wen),           //           .mem_we_n
			.ddr2_dq(ddr2b_dq),             //           .mem_dq
			.ddr2_dqs(ddr2b_dqs),           //           .mem_dqs
			.ddr2_odt(ddr2b_odt),           //           .mem_odt
			.ddr2_oct_rzqin(ddr2a_oct_rzqin)
		);
	`endif
`endif


///////////////////////////////////////////////////////////////////////////////
//// TARNSCEIVER 
`ifdef MODULE_SFP_A_ENABLE
	// SFP A
	TRANSCEIVER_INTERFACE SFPA
	(
		.CLK(wbCLK),
		.nRST(wnRST),
		.SFP_RX(SFPA_RX), 
		.SFP_TD(SFPA_TD), 
		.SFP_CLK(wbCLK), 
//		.SFP_CLK_OUT(wSFPA_CLK_OUT), 
		.SFP_TXDisable(SFPA_TXDisable), 
		.SFP_TXFault(SFPA_TXFault), 
		.SFP_LOS(SFPA_LOS), 
		.SFP_MOD0(SFPA_MOD0), 
		.SFP_MOD1(SFPA_MOD1), 
		.SFP_MOD2(SFPA_MOD2)
	);
`endif
`ifdef MODULE_SFP_B_ENABLE
	// SFP B
	TRANSCEIVER_INTERFACE SFPB
	(
		.CLK(wbCLK),
		.nRST(wnRST),
		.SFP_RX(SFPB_RX), 
		.SFP_TD(SFPB_TD), 
		.SFP_CLK(wbCLK), 
//		.SFP_CLK_OUT(wSFPB_CLK_OUT), 
		.SFP_TXDisable(SFPB_TXDisable), 
		.SFP_TXFault(SFPB_TXFault), 
		.SFP_LOS(SFPB_LOS), 
		.SFP_MOD0(SFPB_MOD0), 
		.SFP_MOD1(SFPB_MOD1), 
		.SFP_MOD2(SFPB_MOD2)
	);
`endif

/////////////////////////////////////////////////////////////////////////////////////
//// RF CTL
`ifdef MODULE_RF_CHA_ENABLE
//// CHA
	RF_CH_CTL  rf_ctl_cha_inst
	(
		.CLK(wbCLK),
		.nRST(wnRST),
		.CH_AMP1_THR(CHA_AMP1_THR), 
		.CH_AMP1_BYPASS(CHA_AMP1_BYPASS), 
		.CH_AMP2_THR(CHA_AMP2_THR), 
		.CH_AMP2_BYPASS(CHA_AMP2_BYPASS), 
		.CH_5201_CS(CHA_5201_CS), 
		.CH_5201_LATCH(CHA_5201_LATCH), 
		.CH_5201_SCLK(CHA_5201_SCLK), 
		.CH_5201_SDIO(CHA_5201_SDIO)
	);
`endif
//// CHB
`ifdef MODULE_RF_CHB_ENABLE
	RF_CH_CTL  rf_ctl_chb_inst
	(
		.CLK(wbCLK),
		.nRST(wnRST),
		.CH_AMP1_THR(CHB_AMP1_THR), 
		.CH_AMP1_BYPASS(CHB_AMP1_BYPASS), 
		.CH_AMP2_THR(CHB_AMP2_THR), 
		.CH_AMP2_BYPASS(CHB_AMP2_BYPASS), 
		.CH_5201_CS(CHB_5201_CS), 
		.CH_5201_LATCH(CHB_5201_LATCH),
		.CH_5201_SCLK(CHB_5201_SCLK), 
		.CH_5201_SDIO(CHB_5201_SDIO)
	);
`endif
//// CHC
`ifdef MODULE_RF_CHC_ENABLE
	RF_CH_CTL  rf_ctl_chc_inst
	(
		.CLK(wbCLK),
		.nRST(wnRST),
		.CH_AMP1_THR(CHC_AMP1_THR), 
		.CH_AMP1_BYPASS(CHC_AMP1_BYPASS), 
		.CH_AMP2_THR(CHC_AMP2_THR), 
		.CH_AMP2_BYPASS(CHC_AMP2_BYPASS), 
		.CH_5201_CS(CHC_5201_CS), 
		.CH_5201_LATCH(CHC_5201_LATCH),
		.CH_5201_SCLK(CHC_5201_SCLK), 
		.CH_5201_SDIO(CHC_5201_SDIO)
	);
`endif
//// CHD
`ifdef MODULE_RF_CHD_ENABLE
	RF_CH_CTL  rf_ctl_chd_inst
	(
		.CLK(wbCLK),
		.nRST(wnRST),
		.CH_AMP1_THR(CHD_AMP1_THR), 
		.CH_AMP1_BYPASS(CHD_AMP1_BYPASS), 
		.CH_AMP2_THR(CHD_AMP2_THR), 
		.CH_AMP2_BYPASS(CHD_AMP2_BYPASS), 
		.CH_5201_CS(CHD_5201_CS), 
		.CH_5201_LATCH(CHD_5201_LATCH),
		.CH_5201_SCLK(CHD_5201_SCLK), 
		.CH_5201_SDIO(CHD_5201_SDIO)
	);
`endif
	
//// AD9653
`ifdef MODULE_AD9653_ENABLE
	MODULE_AD9653_DRV module_ad9653_drv_inst
	(
		.CLK(EXT_CLK),
		.nRST(wnRST),
		.AD_CLK(AD_CLK),
		.AD_SYNC(AD_SYNC), 
		.AD_CSB(AD_CSB),
		.AD_SCLK(AD_SCLK), 
		.AD_SDIO(AD_SDIO), 
		.AD_FCO(AD_FCO), 
		.AD_DCO(AD_DCO), 
	
		.AD_CHA_D0(AD_CHA_D0),
		.AD_CHA_D1(AD_CHA_D1), 
		.AD_CHB_D0(AD_CHB_D0), 
		.AD_CHB_D1(AD_CHB_D1), 
		.AD_CHC_D0(AD_CHC_D0),
		.AD_CHC_D1(AD_CHC_D1), 
		.AD_CHD_D0(AD_CHD_D0), 
		.AD_CHD_D1(AD_CHD_D1)
	);
`endif

/////////////////////////////////////////////////////////////////////////////////////
//// PEX8311
`ifdef MODULE_PEX8311_ENABLE
	MODULE_PEX8311_DRV pex8311_ctl_tst_inst
	(
		.CLK(wbCLK),
		.nRST(wnRST),
		.PEX8311_LD(PEX8311_LD),
		.PEX8311_DP(PEX8311_DP),
		.PEX8311_LA(PEX8311_LA), 
		.PEX8311_LBE(PEX8311_LBE),
		.PEX8311_LRESET(PEX8311_LRESET),
		.PEX8311_ADS(PEX8311_ADS),
		.PEX8311_BLAST(PEX8311_BLAST),
		.PEX8311_REAY(PEX8311_REAY),
		.PEX8311_LSERR(PEX8311_LSERR), 
		.PEX8311_EOT(PEX8311_EOT), 
		.PEX8311_BIGEND(PEX8311_BIGEND), 
		.PEX8311_BREQI(PEX8311_BREQI),
		.PEX8311_BREQO(PEX8311_BREQO),
		.PEX8311_LLOCKO(PEX8311_LLOCKO), 
		.PEX8311_LLOCKI(PEX8311_LLOCKI), 
		.PEX8311_WAIT(PEX8311_WAIT),
		.PEX8311_CCS(PEX8311_CCS),
		.PEX8311_LWR(PEX8311_LWR), 
		.PEX8311_BTERM(PEX8311_BTERM),
		.PEX8311_LINTO(PEX8311_LINTO),
		.PEX8311_LINTI(PEX8311_LINTI), 
		.PEX8311_DREQ(PEX8311_DREQ), 
		.PEX8311_DACK(PEX8311_DACK) 
	);
`endif

		
endmodule

