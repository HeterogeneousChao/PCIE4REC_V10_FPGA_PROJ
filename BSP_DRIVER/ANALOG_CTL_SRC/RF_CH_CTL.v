////////////////////////////////////////////////////////////////////////////////////////////////
////   RF_CH_CTL.v
////                                                        
////   ADL5201 and RF AMP path swith ctrl  
/////////////////////////////////////////////////////////////////////////
////                  						ZHAOCHAO
////                    					2017-11-14
/////////////////////////////////////////////////////////////////////////
////
module RF_CH_CTL 
(
	CLK,
	nRST,
		
	CH_AMP1_THR, CH_AMP1_BYPASS, CH_AMP2_THR, CH_AMP2_BYPASS, CH_5201_CS, CH_5201_SCLK, CH_5201_SDIO, CH_5201_PM, CH_5201_LATCH
	);
	
	input  wire CLK;
	input  wire nRST;
	
	output wire [0:0] CH_AMP1_THR;
	output wire [0:0] CH_AMP1_BYPASS;
	output wire [0:0] CH_AMP2_THR;
	output wire [0:0] CH_AMP2_BYPASS;
	output wire [0:0] CH_5201_CS;
	output wire [0:0] CH_5201_SCLK;
	inout  wire [0:0] CH_5201_SDIO; 
	output wire [0:0] CH_5201_PM;
	output wire [0:0] CH_5201_LATCH;
	
	reg [31:0] rCount;
	//reg rddr2_oct_rzqin;

	
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
	
	assign {CH_AMP1_THR, CH_AMP1_BYPASS, CH_AMP2_THR, CH_AMP2_BYPASS, CH_5201_CS, CH_5201_SCLK, CH_5201_SDIO, CH_5201_PM, CH_5201_LATCH} = rCount[31:23];
	
endmodule

