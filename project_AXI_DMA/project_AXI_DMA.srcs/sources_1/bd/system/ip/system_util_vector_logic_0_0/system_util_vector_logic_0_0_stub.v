// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Mar 28 10:44:20 2023
// Host        : DESKTOP-RI36TSC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top system_util_vector_logic_0_0 -prefix
//               system_util_vector_logic_0_0_ system_util_vector_logic_0_0_stub.v
// Design      : system_util_vector_logic_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2018.1" *)
module system_util_vector_logic_0_0(Op1, Op2, Res)
/* synthesis syn_black_box black_box_pad_pin="Op1[1:0],Op2[1:0],Res[1:0]" */;
  input [1:0]Op1;
  input [1:0]Op2;
  output [1:0]Res;
endmodule
