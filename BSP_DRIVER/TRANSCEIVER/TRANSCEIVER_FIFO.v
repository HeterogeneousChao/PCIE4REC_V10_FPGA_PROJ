module TRANSCEIVER_FIFO(
	CLK,
	nRST,
	
	tx_parallel_data, tx_std_coreclkin, rx_std_coreclkin,    //    rx_std_coreclkin.rx_std_coreclkin
	rx_parallel_data, tx_std_clkout, rx_std_clkout, tx_std_pcfifo_full,
	tx_std_pcfifo_empty, rx_std_pcfifo_full, rx_std_pcfifo_empty
);

	input  wire CLK;
	input  wire nRST;
	
	output  wire [43:0] tx_parallel_data;    //    tx_parallel_data.tx_parallel_data
	output  wire [0:0]  tx_std_coreclkin;    //    tx_std_coreclkin.tx_std_coreclkin
	output  wire [0:0]  rx_std_coreclkin;    //    rx_std_coreclkin.rx_std_coreclkin
	
	input wire [63:0] rx_parallel_data;    //    rx_parallel_data.rx_parallel_data
	input wire [0:0]  tx_std_clkout;       //       tx_std_clkout.tx_std_clkout
	input wire [0:0]  rx_std_clkout;       //       rx_std_clkout.rx_std_clkout
	input wire [0:0]  tx_std_pcfifo_full;  //  tx_std_pcfifo_full.tx_std_pcfifo_full
	input wire [0:0]  tx_std_pcfifo_empty; // tx_std_pcfifo_empty.tx_std_pcfifo_empty
	input wire [0:0]  rx_std_pcfifo_full;  //  rx_std_pcfifo_full.rx_std_pcfifo_full
	input wire [0:0]  rx_std_pcfifo_empty; // rx_std_pcfifo_empty.rx_std_pcfifo_empty
	
	reg [31:0]rCount;
		
	wire [0:0]  wCLK;
	
	wire [15:0] tx_data;
	wire [0:0]  tx_rdreq;
	wire [0:0]  tx_wrreq;
	wire [0:0]  tx_almost_empty;
	wire [0:0]  tx_almost_full;
	wire [0:0]  tx_empty;
	wire [0:0]  tx_full;
	wire [15:0] tx_q;
	wire [8:0]  tx_usedw;
	
	wire [15:0] rx_data;
	wire [0:0]  rx_rdreq;
	wire [0:0]  rx_wrreq;
	wire [0:0]  rx_almost_empty;
	wire [0:0]  rx_almost_full;
	wire [0:0]  rx_empty;
	wire [0:0]  rx_full;
	wire [15:0] rx_q;
	wire [8:0]  rx_usedw;
	
	
	always @( posedge CLK or negedge nRST)
	begin	
		if (!nRST)
			rCount = 32'd0;
		else if ( rCount == 32'd5000)
			rCount = 32'd0;
		else
			rCount = rCount + 1;
		
	end
	
FIFO_SYNC_DQ16BIT_IP sfp_tx_fifo_inst(
	.aclr(nRST),
	.clock(CLK),
	.data(tx_data),
	.rdreq(tx_rdreq),
	.wrreq(tx_wrreq),
	.almost_empty(tx_almost_empty),
	.almost_full(tx_almost_full),
	.empty(tx_empty),
	.full(tx_full),
	.q(tx_q),
	.usedw(tx_usedw)
);
	
FIFO_SYNC_DQ16BIT_IP sfp_rx_fifo_inst(
	.aclr(nRST),
	.clock(CLK),
	.data(rx_data),
	.rdreq(rx_rdreq),
	.wrreq(rx_wrreq),
	.almost_empty(rx_almost_empty),
	.almost_full(rx_almost_full),
	.empty(rx_empty),
	.full(rx_full),
	.q(rx_q),
	.usedw(rx_usedw)
);
	
	
//	assign GXB_CLK_OUT = wCLK;
assign tx_std_coreclkin = CLK;
assign rx_std_coreclkin = CLK;

assign tx_data = rCount[31:16];
assign tx_parallel_data = {{45{1'b0}}, tx_q[15:8], {3{1'b0}}, tx_q[7:0]};
assign rx_data = {rx_parallel_data[23:16], rx_parallel_data[7:0]};
	
endmodule 
