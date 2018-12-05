///////////////////////////////////////////////////////////////////////////////////
////  HBF FIR FILTER PARALLEL
////         					ZHAOCHAO
////									 20180408
///////////////////////////////////////////////////////////////////////////////////////////
////  Modified support multichannel, Max 16 channels;
////							ZHAOCHAO 
////									 20180506
///////////////////////////////////////////////////////////////////////////////////////////
////

module MODULE_MMBF (
	CLK, 
	nRST,

	isConfig,
	isConfigACK,
	isConfigDone,
	Data_Config,
	
	Data_In,
	Data_In_Valid,
	Data_In_ChIdx,
	Data_Out,
	Data_Out_Valid,
	Data_Out_ChIdx
);


	parameter NMHBF_MAX   	      =  5;
	parameter COEFF_WIDTH   	  =  24;
	parameter INPUT_WIDTH   	  =  24;
	parameter OUTPUT_WIDTH  	  =  24;
	parameter DATA_WIDTH   	      =  24;
	parameter FILTER_MAX_ORDER    =  32;
	parameter MULT_OUTPUT_WIDTH   =  49;
	parameter ADDER_OUTPUT_WIDTH  =  54;
	parameter FILTER_MULTER_NUM   =  2;
	parameter MBF_MAX_CHANNELS	  =  2;
	
	parameter DATA_CONFIG_LENGTH = (FILTER_MAX_ORDER+3) * NMHBF_MAX;
	
	input  CLK;
	input  nRST;

	input  isConfig;
	input  [COEFF_WIDTH-1:0]Data_Config;
	
	output isConfigACK;
	output isConfigDone;

	
	input  Data_In_Valid;
	output Data_Out_Valid;
	
	input  [3:0]Data_In_ChIdx;
	output [3:0]Data_Out_ChIdx;
	
	input  [DATA_WIDTH-1:0] Data_In;
	output [DATA_WIDTH-1:0] Data_Out;
	
	
	wire  [NMHBF_MAX-1:0] wisConfigACK;
	wire  [NMHBF_MAX-1:0] wisConfigDone;
	wire  [NMHBF_MAX-1:0] wisConfig;
	
	wire  [NMHBF_MAX-1:0] wMHBF_CTL_Out;
	
	wire signed [(COEFF_WIDTH)*NMHBF_MAX-1:0] wData_Config_Out;
	
	wire [NMHBF_MAX-1:0] wData_Valid;
	wire [3:0]wData_ChIdx[NMHBF_MAX-1:0];
	
	wire signed  [DATA_WIDTH-1:0] wData[NMHBF_MAX-1:0];
	
	
	MMBM_CTL #(
			.NMHBF_MAX(NMHBF_MAX),
			.COEFF_WIDTH(COEFF_WIDTH),
			.FILTER_MAX_ORDER(FILTER_MAX_ORDER)
		) fir_mhbf_ctl(
			// parameter NMHBF_MAX   = 8;
			// parameter COEFF_WIDTH = 32;
			// parameter FILTER_MAX_ORDER   =  32;
			.CLK(CLK), 
			.nRST(nRST),
			
			.isConfig_In(isConfig),
			.isConfigACK_In(isConfigACK),
			.isConfigDone_In(isConfigDone),
			.Data_Config_In(Data_Config),
			
			.isConfig_Out(wisConfig),
			.isConfigACK_Out(wisConfigACK),
			.isConfigDone_Out(wisConfigDone),
			.Data_Config_Out(wData_Config_Out),
			.MHBF_CTL_Out(wMHBF_CTL_Out)
		);
	
	genvar gidx_mult;
		
	generate 

		for(gidx_mult = 0; gidx_mult < NMHBF_MAX; gidx_mult = gidx_mult + 1)
			begin : gen_mult_inst
			
				if (gidx_mult == 0)
					begin
						MODULE_MBF #(
								.NMHBF_MAX(NMHBF_MAX),
								.COEFF_WIDTH(COEFF_WIDTH),
								.INPUT_WIDTH(INPUT_WIDTH),
								.OUTPUT_WIDTH(OUTPUT_WIDTH),
								.DATA_WIDTH(DATA_WIDTH),
								.FILTER_MAX_ORDER(FILTER_MAX_ORDER),
								.MULT_OUTPUT_WIDTH(MULT_OUTPUT_WIDTH),
								.ADDER_OUTPUT_WIDTH(ADDER_OUTPUT_WIDTH),
								.FILTER_MULTER_NUM(FILTER_MULTER_NUM),
								.MBF_MAX_CHANNELS(MBF_MAX_CHANNELS)
							)module_fir_hbf (
							// parameter NMHBF_MAX   	      =  5;
							// parameter COEFF_WIDTH   	  =  24;
							// parameter INPUT_WIDTH   	  =  24;
							// parameter OUTPUT_WIDTH  	  =  24;
							// parameter DATA_WIDTH   	     =  24;
							// parameter FILTER_MAX_ORDER    =  32;
							// parameter MULT_OUTPUT_WIDTH   =  48;
							// parameter ADDER_OUTPUT_WIDTH  =  54;
							// parameter FILTER_MULTER_NUM   =  1;
							// parameter MBF_MAX_CHANNELS	 =  16;
							// parameter MULT_ITERATION_NUM  =  FILTER_MAX_ORDER/2;
							// parameter MBF_DECEF_DATA_OUT_VALID_SHIFT = 2;
							// parameter FIR_SCALE_DATA_OUT_VALID_SHIFT = 3;
							.CLK(CLK), 
							.nRST(nRST),
							.isConfig(wisConfig[gidx_mult]),
							.isConfigACK(wisConfigACK[gidx_mult]),
							.isConfigDone(wisConfigDone[gidx_mult]),
							.Data_Config_In(wData_Config_Out[(COEFF_WIDTH-1) : 0]),
							
							.MHBF_CTL(wMHBF_CTL_Out),
							.MHBF_CTL_idx(gidx_mult),
							
							.Data_In(Data_In),
							.Data_In_Valid(Data_In_Valid),
							.Data_In_ChIdx(Data_In_ChIdx),
							.Data_Out(wData[gidx_mult]),
							.Data_Out_Valid(wData_Valid[gidx_mult]),
							.Data_Out_ChIdx(wData_ChIdx[gidx_mult])
						);
					end
				else
					begin
						MODULE_MBF #(
								.NMHBF_MAX(NMHBF_MAX),
								.COEFF_WIDTH(COEFF_WIDTH),
								.INPUT_WIDTH(INPUT_WIDTH),
								.OUTPUT_WIDTH(OUTPUT_WIDTH),
								.DATA_WIDTH(DATA_WIDTH),
								.FILTER_MAX_ORDER(FILTER_MAX_ORDER),
								.MULT_OUTPUT_WIDTH(MULT_OUTPUT_WIDTH),
								.ADDER_OUTPUT_WIDTH(ADDER_OUTPUT_WIDTH),
								.FILTER_MULTER_NUM(FILTER_MULTER_NUM),
								.MBF_MAX_CHANNELS(MBF_MAX_CHANNELS)
							)module_fir_hbf (
							// parameter NMHBF_MAX   	      =  5;
							// parameter COEFF_WIDTH   	  =  24;
							// parameter INPUT_WIDTH   	  =  24;
							// parameter OUTPUT_WIDTH  	  =  24;
							// parameter DATA_WIDTH   	     =  24;
							// parameter FILTER_MAX_ORDER    =  32;
							// parameter MULT_OUTPUT_WIDTH   =  48;
							// parameter ADDER_OUTPUT_WIDTH  =  54;
							// parameter FILTER_MULTER_NUM   =  1;
							// parameter MBF_MAX_CHANNELS	 =  16;
							// parameter MULT_ITERATION_NUM  =  FILTER_MAX_ORDER/2;
							// parameter MBF_DECEF_DATA_OUT_VALID_SHIFT = 2;
							// parameter FIR_SCALE_DATA_OUT_VALID_SHIFT = 3;
							.CLK(CLK), 
							.nRST(nRST),
							.isConfig(wisConfig[gidx_mult]),
							.isConfigACK(wisConfigACK[gidx_mult]),
							.isConfigDone(wisConfigDone[gidx_mult]),
							.Data_Config_In(wData_Config_Out[((gidx_mult+1)*COEFF_WIDTH)-1 : ((gidx_mult)*COEFF_WIDTH)]),
							
							.MHBF_CTL(wMHBF_CTL_Out),
							.MHBF_CTL_idx(gidx_mult),
							
							.Data_In(wData[gidx_mult-1]),
							.Data_In_Valid(wData_Valid[gidx_mult-1]),
							.Data_In_ChIdx(wData_ChIdx[gidx_mult-1]),
							.Data_Out(wData[gidx_mult]),
							.Data_Out_Valid(wData_Valid[gidx_mult]),
							.Data_Out_ChIdx(wData_ChIdx[gidx_mult])
						);
					end
			end

	endgenerate
	
	assign Data_Out = wData[NMHBF_MAX-1];
	assign Data_Out_Valid = wData_Valid[NMHBF_MAX-1];
	assign Data_Out_ChIdx = wData_ChIdx[NMHBF_MAX-1];
	

endmodule
