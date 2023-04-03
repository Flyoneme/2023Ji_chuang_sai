// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:data_status:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_data_status_0_1 (
  m0_axi_awid,
  m0_axi_awaddr,
  m0_axi_awlen,
  m0_axi_awsize,
  m0_axi_awburst,
  m0_axi_awlock,
  m0_axi_awcache,
  m0_axi_awprot,
  m0_axi_awqos,
  m0_axi_awvalid,
  m0_axi_awready,
  m0_axi_wdata,
  m0_axi_wstrb,
  m0_axi_wlast,
  m0_axi_wvalid,
  m0_axi_wready,
  m0_axi_bid,
  m0_axi_bresp,
  m0_axi_bvalid,
  m0_axi_bready,
  m0_axi_arid,
  m0_axi_araddr,
  m0_axi_arlen,
  m0_axi_arsize,
  m0_axi_arburst,
  m0_axi_arlock,
  m0_axi_arcache,
  m0_axi_arprot,
  m0_axi_arqos,
  m0_axi_arvalid,
  m0_axi_arready,
  m0_axi_rid,
  m0_axi_rdata,
  m0_axi_rresp,
  m0_axi_rlast,
  m0_axi_rvalid,
  m0_axi_rready,
  m0_axi_aclk,
  m0_axi_aresetn,
  m0_axi_init_axi_txn,
  m0_axi_txn_done,
  m0_axi_error
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI AWID" *)
output wire [0 : 0] m0_axi_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI AWADDR" *)
output wire [31 : 0] m0_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI AWLEN" *)
output wire [7 : 0] m0_axi_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI AWSIZE" *)
output wire [2 : 0] m0_axi_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI AWBURST" *)
output wire [1 : 0] m0_axi_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI AWLOCK" *)
output wire m0_axi_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI AWCACHE" *)
output wire [3 : 0] m0_axi_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI AWPROT" *)
output wire [2 : 0] m0_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI AWQOS" *)
output wire [3 : 0] m0_axi_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI AWVALID" *)
output wire m0_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI AWREADY" *)
input wire m0_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI WDATA" *)
output wire [31 : 0] m0_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI WSTRB" *)
output wire [3 : 0] m0_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI WLAST" *)
output wire m0_axi_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI WVALID" *)
output wire m0_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI WREADY" *)
input wire m0_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI BID" *)
input wire [0 : 0] m0_axi_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI BRESP" *)
input wire [1 : 0] m0_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI BVALID" *)
input wire m0_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI BREADY" *)
output wire m0_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI ARID" *)
output wire [0 : 0] m0_axi_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI ARADDR" *)
output wire [31 : 0] m0_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI ARLEN" *)
output wire [7 : 0] m0_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI ARSIZE" *)
output wire [2 : 0] m0_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI ARBURST" *)
output wire [1 : 0] m0_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI ARLOCK" *)
output wire m0_axi_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI ARCACHE" *)
output wire [3 : 0] m0_axi_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI ARPROT" *)
output wire [2 : 0] m0_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI ARQOS" *)
output wire [3 : 0] m0_axi_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI ARVALID" *)
output wire m0_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI ARREADY" *)
input wire m0_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI RID" *)
input wire [0 : 0] m0_axi_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI RDATA" *)
input wire [31 : 0] m0_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI RRESP" *)
input wire [1 : 0] m0_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI RLAST" *)
input wire m0_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI RVALID" *)
input wire m0_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M0_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0,\
 NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M0_AXI RREADY" *)
output wire m0_axi_rready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M0_AXI_CLK, ASSOCIATED_BUSIF M0_AXI, ASSOCIATED_RESET m0_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M0_AXI_CLK CLK" *)
input wire m0_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M0_AXI_RST, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M0_AXI_RST RST" *)
input wire m0_axi_aresetn;
input wire m0_axi_init_axi_txn;
output wire m0_axi_txn_done;
output wire m0_axi_error;

  data_status_v1_0 #(
    .C_M0_AXI_TARGET_SLAVE_BASE_ADDR('H40000000),  // Base address of targeted slave
    .C_M0_AXI_BURST_LEN(16),  // Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
    .C_M0_AXI_ID_WIDTH(1),  // Thread ID Width
    .C_M0_AXI_ADDR_WIDTH(32),  // Width of Address Bus
    .C_M0_AXI_DATA_WIDTH(32),  // Width of Data Bus
    .C_M0_AXI_AWUSER_WIDTH(0),  // Width of User Write Address Bus
    .C_M0_AXI_ARUSER_WIDTH(0),  // Width of User Read Address Bus
    .C_M0_AXI_WUSER_WIDTH(0),  // Width of User Write Data Bus
    .C_M0_AXI_RUSER_WIDTH(0),  // Width of User Read Data Bus
    .C_M0_AXI_BUSER_WIDTH(0)  // Width of User Response Bus
  ) inst (
    .m0_axi_awid(m0_axi_awid),
    .m0_axi_awaddr(m0_axi_awaddr),
    .m0_axi_awlen(m0_axi_awlen),
    .m0_axi_awsize(m0_axi_awsize),
    .m0_axi_awburst(m0_axi_awburst),
    .m0_axi_awlock(m0_axi_awlock),
    .m0_axi_awcache(m0_axi_awcache),
    .m0_axi_awprot(m0_axi_awprot),
    .m0_axi_awqos(m0_axi_awqos),
    .m0_axi_awuser(),
    .m0_axi_awvalid(m0_axi_awvalid),
    .m0_axi_awready(m0_axi_awready),
    .m0_axi_wdata(m0_axi_wdata),
    .m0_axi_wstrb(m0_axi_wstrb),
    .m0_axi_wlast(m0_axi_wlast),
    .m0_axi_wuser(),
    .m0_axi_wvalid(m0_axi_wvalid),
    .m0_axi_wready(m0_axi_wready),
    .m0_axi_bid(m0_axi_bid),
    .m0_axi_bresp(m0_axi_bresp),
    .m0_axi_buser(1'B0),
    .m0_axi_bvalid(m0_axi_bvalid),
    .m0_axi_bready(m0_axi_bready),
    .m0_axi_arid(m0_axi_arid),
    .m0_axi_araddr(m0_axi_araddr),
    .m0_axi_arlen(m0_axi_arlen),
    .m0_axi_arsize(m0_axi_arsize),
    .m0_axi_arburst(m0_axi_arburst),
    .m0_axi_arlock(m0_axi_arlock),
    .m0_axi_arcache(m0_axi_arcache),
    .m0_axi_arprot(m0_axi_arprot),
    .m0_axi_arqos(m0_axi_arqos),
    .m0_axi_aruser(),
    .m0_axi_arvalid(m0_axi_arvalid),
    .m0_axi_arready(m0_axi_arready),
    .m0_axi_rid(m0_axi_rid),
    .m0_axi_rdata(m0_axi_rdata),
    .m0_axi_rresp(m0_axi_rresp),
    .m0_axi_rlast(m0_axi_rlast),
    .m0_axi_ruser(1'B0),
    .m0_axi_rvalid(m0_axi_rvalid),
    .m0_axi_rready(m0_axi_rready),
    .m0_axi_aclk(m0_axi_aclk),
    .m0_axi_aresetn(m0_axi_aresetn),
    .m0_axi_init_axi_txn(m0_axi_init_axi_txn),
    .m0_axi_txn_done(m0_axi_txn_done),
    .m0_axi_error(m0_axi_error)
  );
endmodule
