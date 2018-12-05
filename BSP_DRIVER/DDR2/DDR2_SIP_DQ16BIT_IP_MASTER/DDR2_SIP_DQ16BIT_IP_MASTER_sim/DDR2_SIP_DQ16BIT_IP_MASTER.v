// DDR2_SIP_DQ16BIT_IP_MASTER.v

// Generated using ACDS version 15.0 145

`timescale 1 ps / 1 ps
module DDR2_SIP_DQ16BIT_IP_MASTER (
		input  wire        pll_ref_clk,                //      pll_ref_clk.clk
		input  wire        global_reset_n,             //     global_reset.reset_n
		input  wire        soft_reset_n,               //       soft_reset.reset_n
		output wire        afi_clk,                    //          afi_clk.clk
		output wire        afi_half_clk,               //     afi_half_clk.clk
		output wire        afi_reset_n,                //        afi_reset.reset_n
		output wire        afi_reset_export_n,         // afi_reset_export.reset_n
		output wire [12:0] mem_a,                      //           memory.mem_a
		output wire [2:0]  mem_ba,                     //                 .mem_ba
		output wire [0:0]  mem_ck,                     //                 .mem_ck
		output wire [0:0]  mem_ck_n,                   //                 .mem_ck_n
		output wire [0:0]  mem_cke,                    //                 .mem_cke
		output wire [0:0]  mem_cs_n,                   //                 .mem_cs_n
		output wire [0:0]  mem_ras_n,                  //                 .mem_ras_n
		output wire [0:0]  mem_cas_n,                  //                 .mem_cas_n
		output wire [0:0]  mem_we_n,                   //                 .mem_we_n
		inout  wire [15:0] mem_dq,                     //                 .mem_dq
		inout  wire [1:0]  mem_dqs,                    //                 .mem_dqs
		output wire [0:0]  mem_odt,                    //                 .mem_odt
		output wire        avl_ready,                  //              avl.waitrequest_n
		input  wire        avl_burstbegin,             //                 .beginbursttransfer
		input  wire [23:0] avl_addr,                   //                 .address
		output wire        avl_rdata_valid,            //                 .readdatavalid
		output wire [63:0] avl_rdata,                  //                 .readdata
		input  wire [63:0] avl_wdata,                  //                 .writedata
		input  wire        avl_read_req,               //                 .read
		input  wire        avl_write_req,              //                 .write
		input  wire        avl_size,                   //                 .burstcount
		output wire        local_init_done,            //           status.local_init_done
		output wire        local_cal_success,          //                 .local_cal_success
		output wire        local_cal_fail,             //                 .local_cal_fail
		input  wire        oct_rzqin,                  //              oct.rzqin
		output wire [15:0] seriesterminationcontrol,   //      oct_sharing.seriesterminationcontrol
		output wire [15:0] parallelterminationcontrol, //                 .parallelterminationcontrol
		input  wire        dll_pll_locked,             //      dll_sharing.dll_pll_locked
		output wire [6:0]  dll_delayctrl               //                 .dll_delayctrl
	);

	DDR2_SIP_DQ16BIT_IP_MASTER_0002 ddr2_sip_dq16bit_ip_master_inst (
		.pll_ref_clk                (pll_ref_clk),                //      pll_ref_clk.clk
		.global_reset_n             (global_reset_n),             //     global_reset.reset_n
		.soft_reset_n               (soft_reset_n),               //       soft_reset.reset_n
		.afi_clk                    (afi_clk),                    //          afi_clk.clk
		.afi_half_clk               (afi_half_clk),               //     afi_half_clk.clk
		.afi_reset_n                (afi_reset_n),                //        afi_reset.reset_n
		.afi_reset_export_n         (afi_reset_export_n),         // afi_reset_export.reset_n
		.mem_a                      (mem_a),                      //           memory.mem_a
		.mem_ba                     (mem_ba),                     //                 .mem_ba
		.mem_ck                     (mem_ck),                     //                 .mem_ck
		.mem_ck_n                   (mem_ck_n),                   //                 .mem_ck_n
		.mem_cke                    (mem_cke),                    //                 .mem_cke
		.mem_cs_n                   (mem_cs_n),                   //                 .mem_cs_n
		.mem_ras_n                  (mem_ras_n),                  //                 .mem_ras_n
		.mem_cas_n                  (mem_cas_n),                  //                 .mem_cas_n
		.mem_we_n                   (mem_we_n),                   //                 .mem_we_n
		.mem_dq                     (mem_dq),                     //                 .mem_dq
		.mem_dqs                    (mem_dqs),                    //                 .mem_dqs
		.mem_odt                    (mem_odt),                    //                 .mem_odt
		.avl_ready                  (avl_ready),                  //              avl.waitrequest_n
		.avl_burstbegin             (avl_burstbegin),             //                 .beginbursttransfer
		.avl_addr                   (avl_addr),                   //                 .address
		.avl_rdata_valid            (avl_rdata_valid),            //                 .readdatavalid
		.avl_rdata                  (avl_rdata),                  //                 .readdata
		.avl_wdata                  (avl_wdata),                  //                 .writedata
		.avl_read_req               (avl_read_req),               //                 .read
		.avl_write_req              (avl_write_req),              //                 .write
		.avl_size                   (avl_size),                   //                 .burstcount
		.local_init_done            (local_init_done),            //           status.local_init_done
		.local_cal_success          (local_cal_success),          //                 .local_cal_success
		.local_cal_fail             (local_cal_fail),             //                 .local_cal_fail
		.oct_rzqin                  (oct_rzqin),                  //              oct.rzqin
		.seriesterminationcontrol   (seriesterminationcontrol),   //      oct_sharing.seriesterminationcontrol
		.parallelterminationcontrol (parallelterminationcontrol), //                 .parallelterminationcontrol
		.dll_pll_locked             (dll_pll_locked),             //      dll_sharing.dll_pll_locked
		.dll_delayctrl              (dll_delayctrl)               //                 .dll_delayctrl
	);

endmodule