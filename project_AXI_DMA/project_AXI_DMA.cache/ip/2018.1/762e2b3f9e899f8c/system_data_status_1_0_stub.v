// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Apr  6 10:41:45 2023
// Host        : DESKTOP-RI36TSC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_data_status_1_0_stub.v
// Design      : system_data_status_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "data_status_v1_0,Vivado 2018.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(m0_axi_awid, m0_axi_awaddr, m0_axi_awlen, 
  m0_axi_awsize, m0_axi_awburst, m0_axi_awlock, m0_axi_awcache, m0_axi_awprot, m0_axi_awqos, 
  m0_axi_awvalid, m0_axi_awready, m0_axi_wdata, m0_axi_wstrb, m0_axi_wlast, m0_axi_wvalid, 
  m0_axi_wready, m0_axi_bid, m0_axi_bresp, m0_axi_bvalid, m0_axi_bready, m0_axi_arid, 
  m0_axi_araddr, m0_axi_arlen, m0_axi_arsize, m0_axi_arburst, m0_axi_arlock, m0_axi_arcache, 
  m0_axi_arprot, m0_axi_arqos, m0_axi_arvalid, m0_axi_arready, m0_axi_rid, m0_axi_rdata, 
  m0_axi_rresp, m0_axi_rlast, m0_axi_rvalid, m0_axi_rready, m0_axi_aclk, m0_axi_aresetn, 
  m0_axi_init_axi_txn, m0_axi_txn_done, m0_axi_error)
/* synthesis syn_black_box black_box_pad_pin="m0_axi_awid[0:0],m0_axi_awaddr[31:0],m0_axi_awlen[7:0],m0_axi_awsize[2:0],m0_axi_awburst[1:0],m0_axi_awlock,m0_axi_awcache[3:0],m0_axi_awprot[2:0],m0_axi_awqos[3:0],m0_axi_awvalid,m0_axi_awready,m0_axi_wdata[31:0],m0_axi_wstrb[3:0],m0_axi_wlast,m0_axi_wvalid,m0_axi_wready,m0_axi_bid[0:0],m0_axi_bresp[1:0],m0_axi_bvalid,m0_axi_bready,m0_axi_arid[0:0],m0_axi_araddr[31:0],m0_axi_arlen[7:0],m0_axi_arsize[2:0],m0_axi_arburst[1:0],m0_axi_arlock,m0_axi_arcache[3:0],m0_axi_arprot[2:0],m0_axi_arqos[3:0],m0_axi_arvalid,m0_axi_arready,m0_axi_rid[0:0],m0_axi_rdata[31:0],m0_axi_rresp[1:0],m0_axi_rlast,m0_axi_rvalid,m0_axi_rready,m0_axi_aclk,m0_axi_aresetn,m0_axi_init_axi_txn,m0_axi_txn_done,m0_axi_error" */;
  output [0:0]m0_axi_awid;
  output [31:0]m0_axi_awaddr;
  output [7:0]m0_axi_awlen;
  output [2:0]m0_axi_awsize;
  output [1:0]m0_axi_awburst;
  output m0_axi_awlock;
  output [3:0]m0_axi_awcache;
  output [2:0]m0_axi_awprot;
  output [3:0]m0_axi_awqos;
  output m0_axi_awvalid;
  input m0_axi_awready;
  output [31:0]m0_axi_wdata;
  output [3:0]m0_axi_wstrb;
  output m0_axi_wlast;
  output m0_axi_wvalid;
  input m0_axi_wready;
  input [0:0]m0_axi_bid;
  input [1:0]m0_axi_bresp;
  input m0_axi_bvalid;
  output m0_axi_bready;
  output [0:0]m0_axi_arid;
  output [31:0]m0_axi_araddr;
  output [7:0]m0_axi_arlen;
  output [2:0]m0_axi_arsize;
  output [1:0]m0_axi_arburst;
  output m0_axi_arlock;
  output [3:0]m0_axi_arcache;
  output [2:0]m0_axi_arprot;
  output [3:0]m0_axi_arqos;
  output m0_axi_arvalid;
  input m0_axi_arready;
  input [0:0]m0_axi_rid;
  input [31:0]m0_axi_rdata;
  input [1:0]m0_axi_rresp;
  input m0_axi_rlast;
  input m0_axi_rvalid;
  output m0_axi_rready;
  input m0_axi_aclk;
  input m0_axi_aresetn;
  input m0_axi_init_axi_txn;
  output m0_axi_txn_done;
  output m0_axi_error;
endmodule
