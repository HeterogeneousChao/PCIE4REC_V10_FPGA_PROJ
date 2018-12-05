///////////////////////////////////////////////////////////////////////////////////
////  NCO QUAD SIGNAL GENERATE
////					    NCO FUN
////         					ZHAOCHAO
////									 20180416
///////////////////////////////////////////////////////////////////////////////////////////
////

module NCO_INIT_CONFIG(
	CLK, nRST,
	
	isConfig,
	isConfigACK,
	isConfigDone,
	Data_Config_In,
	
	configFreqMod,
	configPhasMod,
	configCtl_ctl,
	isConfigACK_ctl,
	isConfigDone_ctl
);

	parameter CONFIT_WIDTH  		= 32;
	parameter FRE_MOD_WIDTH			= 32;
	parameter PHA_MOD_WIDTH    		= 32;
	parameter CONFIT_CTL_WIDTH 		= 4;
	parameter OUTPUT_WIDTH     		= 16;
	
	
	input  CLK;
	input  nRST;
	
	input  isConfig;
	// Data_Config_In[0]: configFreqMod,
	// Data_Config_In[1]: configPhasMod;
	input  [CONFIT_WIDTH-1:0] Data_Config_In;
	output isConfigACK;
	output isConfigDone;
	
	input  isConfigACK_ctl;
	input  isConfigDone_ctl;
// configCtl[0]: update freqMod, 		 configCtl[1]: update phaMod with inc, 
// configCtl[2]: update phaMod refresh,  configCtl[3]: get current pha inc,  
	output [1:0] configCtl_ctl; // init mod freq and pha;
	output  [FRE_MOD_WIDTH-1:0]  configFreqMod;
	output  [PHA_MOD_WIDTH-1:0]	 configPhasMod;

	reg  [FRE_MOD_WIDTH-1:0] 	 rconfigFreqMod;
	reg  [PHA_MOD_WIDTH-1:0]	 rconfigPhasMod;
	
	reg  risConfigACK;
	reg  risConfigDone;
	
	reg [1:0] rconfigCtl_ctl; // init mod freq and pha;
	
// NCO_Config_Data[0]: configFreqMod, NCO_Config_Data[1]: configPhasMod;
	reg [CONFIT_WIDTH-1:0]  NCO_Config_Data[1:0]; 
	reg [3:0] state_idx_reg;
	reg [2:0] config_idx_reg;
	
	always @(posedge CLK or negedge nRST)
		if (!nRST)
			begin
				state_idx_reg  <= 4'd0;
				
				config_idx_reg <= 3'd0;
				risConfigACK   <= 1'b0;
				risConfigDone  <= 1'b0;

				rconfigCtl_ctl  <= 2'b00;
				rconfigFreqMod <= {FRE_MOD_WIDTH{1'b0}};
				rconfigPhasMod <= {PHA_MOD_WIDTH{1'b0}};
			end
		else
			case (state_idx_reg)
				4'd0:	
					if (isConfig)
						begin
							risConfigACK <= 1'b1;
							state_idx_reg <= 4'd1;
						end
				4'd1:
					if (config_idx_reg == 3'd2)
						begin
							config_idx_reg <= 3'd0;
							rconfigCtl_ctl <= 2'b01;
							state_idx_reg  <= state_idx_reg + 4'd1;
						end
					else
						begin
							NCO_Config_Data[config_idx_reg] <= Data_Config_In;
							config_idx_reg <= config_idx_reg + 1;
						end
				4'd2:
					begin
						rconfigCtl_ctl <= 2'b10;
						rconfigFreqMod <= NCO_Config_Data[0];
						rconfigPhasMod <= NCO_Config_Data[1];
					
						state_idx_reg <= state_idx_reg + 4'd1;
					end
				4'd3:
					begin
						rconfigCtl_ctl <= 2'b00;
						risConfigACK   <= 1'b1;
						state_idx_reg  <= state_idx_reg + 4'd1;
					end
				4'd4:		// Normal Work state
					begin
						if (isConfig)
							begin
								state_idx_reg  <= 4'd1;
							end
					end	
					
				default:
					// NULL
					state_idx_reg <= 4'd0;
			endcase
			
			
	assign configCtl_ctl = rconfigCtl_ctl;
	assign isConfigACK   = risConfigACK;		
	assign isConfigDone  = isConfigDone_ctl;
	
	assign configFreqMod = rconfigFreqMod;
	assign configPhasMod = rconfigPhasMod;
	

endmodule
