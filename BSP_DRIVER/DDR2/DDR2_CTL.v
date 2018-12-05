////////////////////////////////////////////////////////////////////////////////////////////////
////   DDR2_CTL_TST.v
////                                                        
////   DDR2 ctrl tst demo
/////////////////////////////////////////////////////////////////////////
////                  ZHAOCHAO
////                    2017-11-08
/////////////////////////////////////////////////////////////////////////
////
module DDR2_CTL
(
	CLK,
	nRST,
	soft_reset_n, afi_clk, afi_half_clk, afi_reset_n, afi_reset_export_n, avl_ready, avl_burstbegin, avl_addr, avl_rdata_valid,
	avl_rdata, avl_wdata, avl_be, avl_read_req, avl_write_req, avl_size, local_init_done, local_cal_success, local_cal_fail,
	mp_cmd_clk_0_clk, mp_cmd_reset_n_0_reset_n, mp_rfifo_clk_0_clk, mp_rfifo_reset_n_0_reset_n, mp_wfifo_clk_0_clk, mp_wfifo_reset_n_0_reset_n,
	
	);

	
	input  wire CLK;
	input  wire nRST;
		
	output wire [0:0]  soft_reset_n;       //       soft_reset.reset_n
	input  wire [0:0]  afi_clk;            //          afi_clk.clk
	input  wire [0:0]  afi_half_clk;       //     afi_half_clk.clk
	input  wire [0:0]  afi_reset_n;        //        afi_reset.reset_n
	input  wire [0:0]  afi_reset_export_n; // afi_reset_export.reset_n
	input  wire [0:0]  avl_ready;          //              avl.waitrequest_n
	output wire [0:0]  avl_burstbegin;     //                 .beginbursttransfer
	output wire [23:0] avl_addr;           //                 .address
	input  wire [0:0]  avl_rdata_valid;    //                 .readdatavalid
	input  wire [63:0] avl_rdata;          //                 .readdata
	output wire [63:0] avl_wdata;          //                 .writedata
	output wire [3:0]  avl_be;             //                 .byteenable
	output wire [0:0]  avl_read_req;       //                 .read
	output wire [0:0]  avl_write_req;      //                 .write
	output wire [0:0]  avl_size;           //                 .burstcount
	input  wire [0:0]  local_init_done;    //           status.local_init_done
	input  wire [0:0]  local_cal_success;  //                 .local_cal_success
	input  wire [0:0]  local_cal_fail;     //                 .local_cal_fail
	output wire        mp_cmd_clk_0_clk;           //       mp_cmd_clk_0.clk
	output wire        mp_cmd_reset_n_0_reset_n;   //   mp_cmd_reset_n_0.reset_n
	output wire        mp_rfifo_clk_0_clk;         //     mp_rfifo_clk_0.clk
	output wire        mp_rfifo_reset_n_0_reset_n; // mp_rfifo_reset_n_0.reset_n
	output wire        mp_wfifo_clk_0_clk;         //     mp_wfifo_clk_0.clk
	output wire        mp_wfifo_reset_n_0_reset_n; // mp_wfifo_reset_n_0.reset_n
	
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
