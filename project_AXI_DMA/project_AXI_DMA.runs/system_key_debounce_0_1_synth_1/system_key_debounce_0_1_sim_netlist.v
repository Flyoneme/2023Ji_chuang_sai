// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Apr  6 10:41:47 2023
// Host        : DESKTOP-RI36TSC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_key_debounce_0_1_sim_netlist.v
// Design      : system_key_debounce_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_key_debounce
   (key_flag,
    key_value,
    key,
    sys_clk,
    sys_rst_n);
  output key_flag;
  output key_value;
  input key;
  input sys_clk;
  input sys_rst_n;

  wire [19:0]cnt;
  wire [19:1]cnt0;
  wire cnt0_carry__0_i_1_n_0;
  wire cnt0_carry__0_i_2_n_0;
  wire cnt0_carry__0_i_3_n_0;
  wire cnt0_carry__0_i_4_n_0;
  wire cnt0_carry__0_n_0;
  wire cnt0_carry__0_n_1;
  wire cnt0_carry__0_n_2;
  wire cnt0_carry__0_n_3;
  wire cnt0_carry__1_i_1_n_0;
  wire cnt0_carry__1_i_2_n_0;
  wire cnt0_carry__1_i_3_n_0;
  wire cnt0_carry__1_i_4_n_0;
  wire cnt0_carry__1_n_0;
  wire cnt0_carry__1_n_1;
  wire cnt0_carry__1_n_2;
  wire cnt0_carry__1_n_3;
  wire cnt0_carry__2_i_1_n_0;
  wire cnt0_carry__2_i_2_n_0;
  wire cnt0_carry__2_i_3_n_0;
  wire cnt0_carry__2_i_4_n_0;
  wire cnt0_carry__2_n_0;
  wire cnt0_carry__2_n_1;
  wire cnt0_carry__2_n_2;
  wire cnt0_carry__2_n_3;
  wire cnt0_carry__3_i_1_n_0;
  wire cnt0_carry__3_i_2_n_0;
  wire cnt0_carry__3_i_3_n_0;
  wire cnt0_carry__3_n_2;
  wire cnt0_carry__3_n_3;
  wire cnt0_carry_i_1_n_0;
  wire cnt0_carry_i_2_n_0;
  wire cnt0_carry_i_3_n_0;
  wire cnt0_carry_i_4_n_0;
  wire cnt0_carry_n_0;
  wire cnt0_carry_n_1;
  wire cnt0_carry_n_2;
  wire cnt0_carry_n_3;
  wire cnt1;
  wire \cnt[19]_i_3_n_0 ;
  wire \cnt[19]_i_4_n_0 ;
  wire \cnt[19]_i_5_n_0 ;
  wire \cnt[19]_i_6_n_0 ;
  wire key;
  wire key_flag;
  wire key_flag_i_2_n_0;
  wire key_flag_i_3_n_0;
  wire key_flag_i_4_n_0;
  wire key_flag_i_5_n_0;
  wire key_flag_i_6_n_0;
  wire key_reg;
  wire key_value;
  wire key_value_0;
  wire key_value_i_1_n_0;
  wire key_value_i_2_n_0;
  wire [19:0]p_0_in;
  wire sys_clk;
  wire sys_rst_n;
  wire [3:2]NLW_cnt0_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_cnt0_carry__3_O_UNCONNECTED;

  CARRY4 cnt0_carry
       (.CI(1'b0),
        .CO({cnt0_carry_n_0,cnt0_carry_n_1,cnt0_carry_n_2,cnt0_carry_n_3}),
        .CYINIT(cnt[0]),
        .DI(cnt[4:1]),
        .O(cnt0[4:1]),
        .S({cnt0_carry_i_1_n_0,cnt0_carry_i_2_n_0,cnt0_carry_i_3_n_0,cnt0_carry_i_4_n_0}));
  CARRY4 cnt0_carry__0
       (.CI(cnt0_carry_n_0),
        .CO({cnt0_carry__0_n_0,cnt0_carry__0_n_1,cnt0_carry__0_n_2,cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(cnt[8:5]),
        .O(cnt0[8:5]),
        .S({cnt0_carry__0_i_1_n_0,cnt0_carry__0_i_2_n_0,cnt0_carry__0_i_3_n_0,cnt0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__0_i_1
       (.I0(cnt[8]),
        .O(cnt0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__0_i_2
       (.I0(cnt[7]),
        .O(cnt0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__0_i_3
       (.I0(cnt[6]),
        .O(cnt0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__0_i_4
       (.I0(cnt[5]),
        .O(cnt0_carry__0_i_4_n_0));
  CARRY4 cnt0_carry__1
       (.CI(cnt0_carry__0_n_0),
        .CO({cnt0_carry__1_n_0,cnt0_carry__1_n_1,cnt0_carry__1_n_2,cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(cnt[12:9]),
        .O(cnt0[12:9]),
        .S({cnt0_carry__1_i_1_n_0,cnt0_carry__1_i_2_n_0,cnt0_carry__1_i_3_n_0,cnt0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__1_i_1
       (.I0(cnt[12]),
        .O(cnt0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__1_i_2
       (.I0(cnt[11]),
        .O(cnt0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__1_i_3
       (.I0(cnt[10]),
        .O(cnt0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__1_i_4
       (.I0(cnt[9]),
        .O(cnt0_carry__1_i_4_n_0));
  CARRY4 cnt0_carry__2
       (.CI(cnt0_carry__1_n_0),
        .CO({cnt0_carry__2_n_0,cnt0_carry__2_n_1,cnt0_carry__2_n_2,cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(cnt[16:13]),
        .O(cnt0[16:13]),
        .S({cnt0_carry__2_i_1_n_0,cnt0_carry__2_i_2_n_0,cnt0_carry__2_i_3_n_0,cnt0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__2_i_1
       (.I0(cnt[16]),
        .O(cnt0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__2_i_2
       (.I0(cnt[15]),
        .O(cnt0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__2_i_3
       (.I0(cnt[14]),
        .O(cnt0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__2_i_4
       (.I0(cnt[13]),
        .O(cnt0_carry__2_i_4_n_0));
  CARRY4 cnt0_carry__3
       (.CI(cnt0_carry__2_n_0),
        .CO({NLW_cnt0_carry__3_CO_UNCONNECTED[3:2],cnt0_carry__3_n_2,cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,cnt[18:17]}),
        .O({NLW_cnt0_carry__3_O_UNCONNECTED[3],cnt0[19:17]}),
        .S({1'b0,cnt0_carry__3_i_1_n_0,cnt0_carry__3_i_2_n_0,cnt0_carry__3_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__3_i_1
       (.I0(cnt[19]),
        .O(cnt0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__3_i_2
       (.I0(cnt[18]),
        .O(cnt0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry__3_i_3
       (.I0(cnt[17]),
        .O(cnt0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry_i_1
       (.I0(cnt[4]),
        .O(cnt0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry_i_2
       (.I0(cnt[3]),
        .O(cnt0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry_i_3
       (.I0(cnt[2]),
        .O(cnt0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnt0_carry_i_4
       (.I0(cnt[1]),
        .O(cnt0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4004)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .I1(cnt1),
        .I2(key_reg),
        .I3(key),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \cnt[10]_i_1 
       (.I0(cnt0[10]),
        .I1(cnt1),
        .I2(key_reg),
        .I3(key),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \cnt[11]_i_1 
       (.I0(cnt0[11]),
        .I1(cnt1),
        .I2(key_reg),
        .I3(key),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \cnt[12]_i_1 
       (.I0(cnt0[12]),
        .I1(cnt1),
        .I2(key_reg),
        .I3(key),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \cnt[13]_i_1 
       (.I0(cnt0[13]),
        .I1(cnt1),
        .I2(key_reg),
        .I3(key),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF666)) 
    \cnt[14]_i_1 
       (.I0(key_reg),
        .I1(key),
        .I2(cnt0[14]),
        .I3(cnt1),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \cnt[15]_i_1 
       (.I0(cnt0[15]),
        .I1(cnt1),
        .I2(key_reg),
        .I3(key),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF666)) 
    \cnt[16]_i_1 
       (.I0(key_reg),
        .I1(key),
        .I2(cnt0[16]),
        .I3(cnt1),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF666)) 
    \cnt[17]_i_1 
       (.I0(key_reg),
        .I1(key),
        .I2(cnt0[17]),
        .I3(cnt1),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF666)) 
    \cnt[18]_i_1 
       (.I0(key_reg),
        .I1(key),
        .I2(cnt0[18]),
        .I3(cnt1),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF666)) 
    \cnt[19]_i_1 
       (.I0(key_reg),
        .I1(key),
        .I2(cnt0[19]),
        .I3(cnt1),
        .O(p_0_in[19]));
  LUT4 #(
    .INIT(16'hFBFF)) 
    \cnt[19]_i_2 
       (.I0(\cnt[19]_i_3_n_0 ),
        .I1(\cnt[19]_i_4_n_0 ),
        .I2(\cnt[19]_i_5_n_0 ),
        .I3(\cnt[19]_i_6_n_0 ),
        .O(cnt1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt[19]_i_3 
       (.I0(cnt[2]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .I3(cnt[4]),
        .I4(cnt[3]),
        .O(\cnt[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \cnt[19]_i_4 
       (.I0(cnt[8]),
        .I1(cnt[9]),
        .I2(cnt[5]),
        .I3(cnt[6]),
        .I4(cnt[7]),
        .O(\cnt[19]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt[19]_i_5 
       (.I0(cnt[12]),
        .I1(cnt[11]),
        .I2(cnt[10]),
        .I3(cnt[14]),
        .I4(cnt[13]),
        .O(\cnt[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \cnt[19]_i_6 
       (.I0(cnt[19]),
        .I1(cnt[18]),
        .I2(cnt[15]),
        .I3(cnt[16]),
        .I4(cnt[17]),
        .O(\cnt[19]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \cnt[1]_i_1 
       (.I0(cnt0[1]),
        .I1(cnt1),
        .I2(key_reg),
        .I3(key),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \cnt[2]_i_1 
       (.I0(cnt0[2]),
        .I1(cnt1),
        .I2(key_reg),
        .I3(key),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \cnt[3]_i_1 
       (.I0(cnt0[3]),
        .I1(cnt1),
        .I2(key_reg),
        .I3(key),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \cnt[4]_i_1 
       (.I0(cnt0[4]),
        .I1(cnt1),
        .I2(key_reg),
        .I3(key),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \cnt[5]_i_1 
       (.I0(cnt0[5]),
        .I1(cnt1),
        .I2(key_reg),
        .I3(key),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF666)) 
    \cnt[6]_i_1 
       (.I0(key_reg),
        .I1(key),
        .I2(cnt0[6]),
        .I3(cnt1),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \cnt[7]_i_1 
       (.I0(cnt0[7]),
        .I1(cnt1),
        .I2(key_reg),
        .I3(key),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8008)) 
    \cnt[8]_i_1 
       (.I0(cnt0[8]),
        .I1(cnt1),
        .I2(key_reg),
        .I3(key),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF666)) 
    \cnt[9]_i_1 
       (.I0(key_reg),
        .I1(key),
        .I2(cnt0[9]),
        .I3(cnt1),
        .O(p_0_in[9]));
  FDCE \cnt_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[0]),
        .Q(cnt[0]));
  FDCE \cnt_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[10]),
        .Q(cnt[10]));
  FDCE \cnt_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[11]),
        .Q(cnt[11]));
  FDCE \cnt_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[12]),
        .Q(cnt[12]));
  FDCE \cnt_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[13]),
        .Q(cnt[13]));
  FDCE \cnt_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[14]),
        .Q(cnt[14]));
  FDCE \cnt_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[15]),
        .Q(cnt[15]));
  FDCE \cnt_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[16]),
        .Q(cnt[16]));
  FDCE \cnt_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[17]),
        .Q(cnt[17]));
  FDCE \cnt_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[18]),
        .Q(cnt[18]));
  FDCE \cnt_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[19]),
        .Q(cnt[19]));
  FDCE \cnt_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[1]),
        .Q(cnt[1]));
  FDCE \cnt_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[2]),
        .Q(cnt[2]));
  FDCE \cnt_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[3]),
        .Q(cnt[3]));
  FDCE \cnt_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[4]),
        .Q(cnt[4]));
  FDCE \cnt_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[5]),
        .Q(cnt[5]));
  FDCE \cnt_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[6]),
        .Q(cnt[6]));
  FDCE \cnt_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[7]),
        .Q(cnt[7]));
  FDCE \cnt_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[8]),
        .Q(cnt[8]));
  FDCE \cnt_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(p_0_in[9]),
        .Q(cnt[9]));
  LUT5 #(
    .INIT(32'h00000001)) 
    key_flag_i_1
       (.I0(key_flag_i_2_n_0),
        .I1(key_flag_i_3_n_0),
        .I2(key_flag_i_4_n_0),
        .I3(key_flag_i_5_n_0),
        .I4(key_flag_i_6_n_0),
        .O(key_value_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    key_flag_i_2
       (.I0(cnt[19]),
        .I1(cnt[18]),
        .I2(cnt[16]),
        .I3(cnt[17]),
        .O(key_flag_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    key_flag_i_3
       (.I0(cnt[6]),
        .I1(cnt[7]),
        .I2(cnt[4]),
        .I3(cnt[5]),
        .O(key_flag_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    key_flag_i_4
       (.I0(cnt[2]),
        .I1(cnt[3]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .O(key_flag_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    key_flag_i_5
       (.I0(cnt[14]),
        .I1(cnt[15]),
        .I2(cnt[12]),
        .I3(cnt[13]),
        .O(key_flag_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    key_flag_i_6
       (.I0(cnt[10]),
        .I1(cnt[11]),
        .I2(cnt[8]),
        .I3(cnt[9]),
        .O(key_flag_i_6_n_0));
  FDCE key_flag_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(key_value_i_2_n_0),
        .D(key_value_0),
        .Q(key_flag));
  FDPE key_reg_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(key),
        .PRE(key_value_i_2_n_0),
        .Q(key_reg));
  LUT3 #(
    .INIT(8'hB8)) 
    key_value_i_1
       (.I0(key),
        .I1(key_value_0),
        .I2(key_value),
        .O(key_value_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    key_value_i_2
       (.I0(sys_rst_n),
        .O(key_value_i_2_n_0));
  FDPE key_value_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(key_value_i_1_n_0),
        .PRE(key_value_i_2_n_0),
        .Q(key_value));
endmodule

(* CHECK_LICENSE_TYPE = "system_key_debounce_0_1,key_debounce,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "key_debounce,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (sys_clk,
    sys_rst_n,
    key,
    key_value,
    key_flag);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW" *) input sys_rst_n;
  input key;
  output key_value;
  output key_flag;

  wire key;
  wire key_flag;
  wire key_value;
  wire sys_clk;
  wire sys_rst_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_key_debounce inst
       (.key(key),
        .key_flag(key_flag),
        .key_value(key_value),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
