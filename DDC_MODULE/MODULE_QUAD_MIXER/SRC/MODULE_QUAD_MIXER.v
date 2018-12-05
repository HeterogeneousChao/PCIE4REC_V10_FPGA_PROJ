module MODULE_QUAD_MIXER (
	CLK, nRST,
	isConfig,
	Data_Config_In,
	isConfigACK,
	isConfigDone,
	
	configFreqMod,
	configPhasMod,
	configCurPhaInc,
	configCtl,
	
	Data_In,
	Data_Out_I,
	Data_Out_Q,
	
	NCO_Data_Out_I,
	NCO_Data_Out_Q,
	
	Data_In_Valid,
	Data_Out_Valid
);

	/// CLK: 100MHz
	/// Flo: 10MHz
	
	parameter INPUT_WIDTH   	   = 16;
	parameter OUTPUT_WIDTH  	   = 16;
	parameter INPUT_DATA_SHIFT_NUM = 1;

	
	parameter MULT_OUTPUT_WIDTH    =  32;
	
	// NCO PARAMETERS
	parameter NCO_CONFIT_WIDTH  	  = 32;
	parameter NCO_FRE_MOD_WIDTH		  = 32;
	parameter NCO_PHA_MOD_WIDTH    	  = 32;
	parameter NCO_CONFIT_CTL_WIDTH 	  = 4;
	parameter NCO_OUTPUT_WIDTH     	  = 16;
	parameter NCO_ACCUMULATE_WIDTH 	  = 32;
	parameter NCO_ROM_ADDR_WIDTH   	  = 16;
	parameter NCO_ROM_DATA_WIDTH   	  = 16;
	parameter NCO_DATA_OUT_SHIFT   	  = 3;
	parameter NCO_DEFAULT_INC_PHA_MOD = 429496728;		// 10MHz
	
	
	
	input  CLK;
	input  nRST;

	input  isConfig;
	// Data_Config_In[0]: configFreqMod,
	// Data_Config_In[1]: configPhasMod;
	input  [NCO_CONFIT_WIDTH-1:0] 		Data_Config_In;
	
	output isConfigACK;
	output isConfigDone;
	
	input  signed [INPUT_WIDTH-1:0]     Data_In;
	output signed [OUTPUT_WIDTH-1:0]    Data_Out_I;
	output signed [OUTPUT_WIDTH-1:0]    Data_Out_Q;
	
	output signed [OUTPUT_WIDTH-1:0]	NCO_Data_Out_I;
	output signed [OUTPUT_WIDTH-1:0]	NCO_Data_Out_Q;
	
	input  Data_In_Valid;
	output Data_Out_Valid;
	
	input   [NCO_CONFIT_CTL_WIDTH-1:0] configCtl;
	input   [NCO_FRE_MOD_WIDTH-1:0]    configFreqMod;
	input   [NCO_PHA_MOD_WIDTH-1:0]    configPhasMod;
	output  [NCO_ACCUMULATE_WIDTH-1:0] configCurPhaInc;
	
	wire  signed [MULT_OUTPUT_WIDTH-1:0] wData_Out_I;
	wire  signed [MULT_OUTPUT_WIDTH-1:0] wData_Out_Q;
	
	
	wire  signed [NCO_OUTPUT_WIDTH-1:0]  wNCO_Data_Out_Sin;
	wire  signed [NCO_OUTPUT_WIDTH-1:0]  wNCO_Data_Out_Cos;
	//wire NCO_Data_Out_Valid;
	
	
	MODULE_NCO #( 
			.CONFIT_WIDTH(NCO_CONFIT_WIDTH),
			.FRE_MOD_WIDTH(NCO_FRE_MOD_WIDTH),
			.PHA_MOD_WIDTH(NCO_PHA_MOD_WIDTH),
			.CONFIT_CTL_WIDTH(NCO_CONFIT_CTL_WIDTH),
			.OUTPUT_WIDTH(NCO_OUTPUT_WIDTH),
			.ACCUMULATE_WIDTH(NCO_ACCUMULATE_WIDTH),
			.ROM_ADDR_WIDTH(NCO_ROM_ADDR_WIDTH),
			.ROM_DATA_WIDTH(NCO_ROM_DATA_WIDTH),
			.DEFAULT_INC_PHA_MOD(NCO_DEFAULT_INC_PHA_MOD)
		)module_nco_inst(
		// parameter CONFIT_WIDTH  		= 32;
		// parameter FRE_MOD_WIDTH			= 32;
		// parameter PHA_MOD_WIDTH    		= 32;
		// parameter CONFIT_CTL_WIDTH 		= 4;
		// parameter OUTPUT_WIDTH     		= 16;
		// parameter ACCUMULATE_WIDTH = 32;
		// parameter ROM_ADDR_WIDTH   = 16;
		// parameter ROM_DATA_WIDTH   = 16;
		// parameter DEFAULT_INC_PHA_MOD = 214748364;		// 5MHz
			.CLK(CLK), .nRST(nRST),
			
			.isConfig(isConfig),
			.Data_Config_In(Data_Config_In),

			.configFreqMod(configFreqMod),
			.configPhasMod(configPhasMod),
			.configCtl(configCtl),
			.isConfigACK(isConfigACK),
			.isConfigDone(isConfigDone),
			
			.configCurPhaInc(configCurPhaInc),
			.dataOutEnable(Data_In_Valid),
			.sin_out(wNCO_Data_Out_Sin),
			.cos_out(wNCO_Data_Out_Cos)
		);
	
	
	reg  signed [INPUT_WIDTH-1:0]     	data_in_reg;	
	reg  signed [INPUT_WIDTH-1:0]     	data_in_shift_reg[(INPUT_DATA_SHIFT_NUM-1):0];	
	reg  signed [NCO_OUTPUT_WIDTH-1:0]  nco_out_sin_reg;
	reg  signed [NCO_OUTPUT_WIDTH-1:0]  nco_out_cos_reg;
	reg  signed [MULT_OUTPUT_WIDTH-1:0] rData_Out_I;
	reg  signed [MULT_OUTPUT_WIDTH-1:0] rData_Out_Q;
	
	
	reg [7:0]ridx_i;
	
	
	// Data_In_Valid negedge, get the data;
	always @( negedge nRST or negedge Data_In_Valid)
		if (!nRST)
			begin
				ridx_i = 8'd0;
				data_in_reg 	<= {INPUT_WIDTH{1'b0}};
				nco_out_sin_reg <= {NCO_OUTPUT_WIDTH{1'b0}};
				nco_out_cos_reg <= {NCO_OUTPUT_WIDTH{1'b0}};
				
				if (INPUT_DATA_SHIFT_NUM != 0)
					begin
						for (ridx_i = 0; ridx_i < (INPUT_DATA_SHIFT_NUM); ridx_i = ridx_i + 1)
							begin
								data_in_shift_reg[ridx_i] <= {INPUT_WIDTH{1'b0}};
							end
					end
			end
		else
			begin
				if (INPUT_DATA_SHIFT_NUM != 0)
					begin
						for (ridx_i = 0; ridx_i < (INPUT_DATA_SHIFT_NUM-1); ridx_i = ridx_i + 1)
							begin
								data_in_shift_reg[ridx_i+1] <= data_in_shift_reg[ridx_i];
							end
						data_in_shift_reg[0] <= Data_In;
						data_in_reg 	<= data_in_shift_reg[INPUT_DATA_SHIFT_NUM-1];
					end
				else
					begin
						data_in_reg <= Data_In;
					end

				nco_out_sin_reg <= wNCO_Data_Out_Sin;
				nco_out_cos_reg <= wNCO_Data_Out_Cos;
			end
			

	// Data_In_Valid posedge, calculate the data;
	always @( negedge nRST or posedge Data_In_Valid)
		if (!nRST)
			begin
				rData_Out_I <= {MULT_OUTPUT_WIDTH{1'b0}};
				rData_Out_Q <= {MULT_OUTPUT_WIDTH{1'b0}};

			end
		else
			begin
				rData_Out_I <= wData_Out_I;
				rData_Out_Q <= wData_Out_Q;
			end
	
	
	reg [3:0]idx_doutValid_cnt_reg;
	
	// set the rData_Out_Valid;
	always @( negedge nRST or posedge Data_In_Valid)
		if (!nRST)
			begin
				idx_doutValid_cnt_reg <= 4'd0;
			end
		else
			begin
				if (idx_doutValid_cnt_reg == INPUT_DATA_SHIFT_NUM + NCO_DATA_OUT_SHIFT)
					begin
						// NULL
					end
				else
					begin
						idx_doutValid_cnt_reg <= idx_doutValid_cnt_reg + 1;
					end
			end
	
	LPM_MULT_IP lpm_mult_ip_inst_i(
		.clock(Data_In_Valid),
		.dataa(data_in_reg),
		.datab(nco_out_cos_reg),
		.result(wData_Out_I));
		
	LPM_MULT_IP lpm_mult_ip_inst_q(
		.clock(Data_In_Valid),
		.dataa(data_in_reg),
		.datab(nco_out_sin_reg),
		.result(wData_Out_Q));
	
	assign NCO_Data_Out_I = nco_out_cos_reg;
	assign NCO_Data_Out_Q = nco_out_sin_reg;

	assign Data_Out_I = ((nRST) ? rData_Out_I[MULT_OUTPUT_WIDTH-1:MULT_OUTPUT_WIDTH-OUTPUT_WIDTH] 
								: {OUTPUT_WIDTH{1'b0}});
	assign Data_Out_Q = ((nRST) ? rData_Out_Q[MULT_OUTPUT_WIDTH-1:MULT_OUTPUT_WIDTH-OUTPUT_WIDTH]
								: {OUTPUT_WIDTH{1'b0}});
				
	assign Data_Out_Valid = ((idx_doutValid_cnt_reg == INPUT_DATA_SHIFT_NUM + NCO_DATA_OUT_SHIFT) ? Data_In_Valid : {1'b0});


endmodule
