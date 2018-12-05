////////////////////////////////////////////////////////////////////////////////////////////////
////   PEX8311_CTL_TST.v
////                                                        
////   PEX8311 ctrl tst demo module
/////////////////////////////////////////////////////////////////////////
////                  ZHAOCHAO
////                    2017-11-08
/////////////////////////////////////////////////////////////////////////
////
module MODULE_PEX8311_DRV 
(
	CLK,
	nRST,
	PEX8311_LD, PEX8311_DP, PEX8311_LA, PEX8311_LBE, PEX8311_LRESET, PEX8311_ADS, PEX8311_BLAST, PEX8311_REAY,
	PEX8311_LSERR, PEX8311_EOT, PEX8311_BIGEND, PEX8311_BREQI, PEX8311_BREQO, PEX8311_LLOCKO, PEX8311_LLOCKI, PEX8311_WAIT, PEX8311_CCS,
	PEX8311_LWR, PEX8311_BTERM, PEX8311_LINTO, PEX8311_LINTI, PEX8311_DREQ, PEX8311_DACK
	);
	
	input  wire CLK;
	input  wire nRST;
		
	input  wire [32:0] PEX8311_LD;
	output wire [3:0]  PEX8311_DP;
	output wire [32:0] PEX8311_LA; 
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
	
	
	
endmodule
