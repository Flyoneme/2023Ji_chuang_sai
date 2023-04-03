-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Tue Mar 28 11:47:05 2023
-- Host        : DESKTOP-RI36TSC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {E:/project_AXI_DMA
--               -V1.0/project_AXI_DMA.srcs/sources_1/bd/system/ip/system_key_debounce_0_1/system_key_debounce_0_1_sim_netlist.vhdl}
-- Design      : system_key_debounce_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_key_debounce_0_1_key_debounce is
  port (
    key_flag : out STD_LOGIC;
    key_value : out STD_LOGIC;
    key : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_key_debounce_0_1_key_debounce : entity is "key_debounce";
end system_key_debounce_0_1_key_debounce;

architecture STRUCTURE of system_key_debounce_0_1_key_debounce is
  signal cnt : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal cnt0 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \cnt0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \cnt0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \cnt0_carry__3_n_3\ : STD_LOGIC;
  signal cnt0_carry_i_1_n_0 : STD_LOGIC;
  signal cnt0_carry_i_2_n_0 : STD_LOGIC;
  signal cnt0_carry_i_3_n_0 : STD_LOGIC;
  signal cnt0_carry_i_4_n_0 : STD_LOGIC;
  signal cnt0_carry_n_0 : STD_LOGIC;
  signal cnt0_carry_n_1 : STD_LOGIC;
  signal cnt0_carry_n_2 : STD_LOGIC;
  signal cnt0_carry_n_3 : STD_LOGIC;
  signal cnt1 : STD_LOGIC;
  signal \cnt[19]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[19]_i_6_n_0\ : STD_LOGIC;
  signal key_flag_i_2_n_0 : STD_LOGIC;
  signal key_flag_i_3_n_0 : STD_LOGIC;
  signal key_flag_i_4_n_0 : STD_LOGIC;
  signal key_flag_i_5_n_0 : STD_LOGIC;
  signal key_flag_i_6_n_0 : STD_LOGIC;
  signal key_reg : STD_LOGIC;
  signal \^key_value\ : STD_LOGIC;
  signal key_value_0 : STD_LOGIC;
  signal key_value_i_1_n_0 : STD_LOGIC;
  signal key_value_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \NLW_cnt0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[14]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[15]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[16]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[17]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[18]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[19]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[19]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[19]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[9]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of key_flag_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of key_flag_i_4 : label is "soft_lutpair1";
begin
  key_value <= \^key_value\;
cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt0_carry_n_0,
      CO(2) => cnt0_carry_n_1,
      CO(1) => cnt0_carry_n_2,
      CO(0) => cnt0_carry_n_3,
      CYINIT => cnt(0),
      DI(3 downto 0) => cnt(4 downto 1),
      O(3 downto 0) => cnt0(4 downto 1),
      S(3) => cnt0_carry_i_1_n_0,
      S(2) => cnt0_carry_i_2_n_0,
      S(1) => cnt0_carry_i_3_n_0,
      S(0) => cnt0_carry_i_4_n_0
    );
\cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt0_carry_n_0,
      CO(3) => \cnt0_carry__0_n_0\,
      CO(2) => \cnt0_carry__0_n_1\,
      CO(1) => \cnt0_carry__0_n_2\,
      CO(0) => \cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cnt(8 downto 5),
      O(3 downto 0) => cnt0(8 downto 5),
      S(3) => \cnt0_carry__0_i_1_n_0\,
      S(2) => \cnt0_carry__0_i_2_n_0\,
      S(1) => \cnt0_carry__0_i_3_n_0\,
      S(0) => \cnt0_carry__0_i_4_n_0\
    );
\cnt0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(8),
      O => \cnt0_carry__0_i_1_n_0\
    );
\cnt0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(7),
      O => \cnt0_carry__0_i_2_n_0\
    );
\cnt0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(6),
      O => \cnt0_carry__0_i_3_n_0\
    );
\cnt0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(5),
      O => \cnt0_carry__0_i_4_n_0\
    );
\cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__0_n_0\,
      CO(3) => \cnt0_carry__1_n_0\,
      CO(2) => \cnt0_carry__1_n_1\,
      CO(1) => \cnt0_carry__1_n_2\,
      CO(0) => \cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cnt(12 downto 9),
      O(3 downto 0) => cnt0(12 downto 9),
      S(3) => \cnt0_carry__1_i_1_n_0\,
      S(2) => \cnt0_carry__1_i_2_n_0\,
      S(1) => \cnt0_carry__1_i_3_n_0\,
      S(0) => \cnt0_carry__1_i_4_n_0\
    );
\cnt0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(12),
      O => \cnt0_carry__1_i_1_n_0\
    );
\cnt0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(11),
      O => \cnt0_carry__1_i_2_n_0\
    );
\cnt0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(10),
      O => \cnt0_carry__1_i_3_n_0\
    );
\cnt0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(9),
      O => \cnt0_carry__1_i_4_n_0\
    );
\cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__1_n_0\,
      CO(3) => \cnt0_carry__2_n_0\,
      CO(2) => \cnt0_carry__2_n_1\,
      CO(1) => \cnt0_carry__2_n_2\,
      CO(0) => \cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => cnt(16 downto 13),
      O(3 downto 0) => cnt0(16 downto 13),
      S(3) => \cnt0_carry__2_i_1_n_0\,
      S(2) => \cnt0_carry__2_i_2_n_0\,
      S(1) => \cnt0_carry__2_i_3_n_0\,
      S(0) => \cnt0_carry__2_i_4_n_0\
    );
\cnt0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(16),
      O => \cnt0_carry__2_i_1_n_0\
    );
\cnt0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(15),
      O => \cnt0_carry__2_i_2_n_0\
    );
\cnt0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(14),
      O => \cnt0_carry__2_i_3_n_0\
    );
\cnt0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(13),
      O => \cnt0_carry__2_i_4_n_0\
    );
\cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__2_n_0\,
      CO(3 downto 2) => \NLW_cnt0_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt0_carry__3_n_2\,
      CO(0) => \cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => cnt(18 downto 17),
      O(3) => \NLW_cnt0_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => cnt0(19 downto 17),
      S(3) => '0',
      S(2) => \cnt0_carry__3_i_1_n_0\,
      S(1) => \cnt0_carry__3_i_2_n_0\,
      S(0) => \cnt0_carry__3_i_3_n_0\
    );
\cnt0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(19),
      O => \cnt0_carry__3_i_1_n_0\
    );
\cnt0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(18),
      O => \cnt0_carry__3_i_2_n_0\
    );
\cnt0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(17),
      O => \cnt0_carry__3_i_3_n_0\
    );
cnt0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(4),
      O => cnt0_carry_i_1_n_0
    );
cnt0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(3),
      O => cnt0_carry_i_2_n_0
    );
cnt0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(2),
      O => cnt0_carry_i_3_n_0
    );
cnt0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(1),
      O => cnt0_carry_i_4_n_0
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => cnt(0),
      I1 => cnt1,
      I2 => key_reg,
      I3 => key,
      O => p_0_in(0)
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => cnt0(10),
      I1 => cnt1,
      I2 => key_reg,
      I3 => key,
      O => p_0_in(10)
    );
\cnt[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => cnt0(11),
      I1 => cnt1,
      I2 => key_reg,
      I3 => key,
      O => p_0_in(11)
    );
\cnt[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => cnt0(12),
      I1 => cnt1,
      I2 => key_reg,
      I3 => key,
      O => p_0_in(12)
    );
\cnt[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => cnt0(13),
      I1 => cnt1,
      I2 => key_reg,
      I3 => key,
      O => p_0_in(13)
    );
\cnt[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F666"
    )
        port map (
      I0 => key_reg,
      I1 => key,
      I2 => cnt0(14),
      I3 => cnt1,
      O => p_0_in(14)
    );
\cnt[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => cnt0(15),
      I1 => cnt1,
      I2 => key_reg,
      I3 => key,
      O => p_0_in(15)
    );
\cnt[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F666"
    )
        port map (
      I0 => key_reg,
      I1 => key,
      I2 => cnt0(16),
      I3 => cnt1,
      O => p_0_in(16)
    );
\cnt[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F666"
    )
        port map (
      I0 => key_reg,
      I1 => key,
      I2 => cnt0(17),
      I3 => cnt1,
      O => p_0_in(17)
    );
\cnt[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F666"
    )
        port map (
      I0 => key_reg,
      I1 => key,
      I2 => cnt0(18),
      I3 => cnt1,
      O => p_0_in(18)
    );
\cnt[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F666"
    )
        port map (
      I0 => key_reg,
      I1 => key,
      I2 => cnt0(19),
      I3 => cnt1,
      O => p_0_in(19)
    );
\cnt[19]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \cnt[19]_i_3_n_0\,
      I1 => \cnt[19]_i_4_n_0\,
      I2 => \cnt[19]_i_5_n_0\,
      I3 => \cnt[19]_i_6_n_0\,
      O => cnt1
    );
\cnt[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(0),
      I2 => cnt(1),
      I3 => cnt(4),
      I4 => cnt(3),
      O => \cnt[19]_i_3_n_0\
    );
\cnt[19]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => cnt(8),
      I1 => cnt(9),
      I2 => cnt(5),
      I3 => cnt(6),
      I4 => cnt(7),
      O => \cnt[19]_i_4_n_0\
    );
\cnt[19]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cnt(12),
      I1 => cnt(11),
      I2 => cnt(10),
      I3 => cnt(14),
      I4 => cnt(13),
      O => \cnt[19]_i_5_n_0\
    );
\cnt[19]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => cnt(19),
      I1 => cnt(18),
      I2 => cnt(15),
      I3 => cnt(16),
      I4 => cnt(17),
      O => \cnt[19]_i_6_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => cnt0(1),
      I1 => cnt1,
      I2 => key_reg,
      I3 => key,
      O => p_0_in(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => cnt0(2),
      I1 => cnt1,
      I2 => key_reg,
      I3 => key,
      O => p_0_in(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => cnt0(3),
      I1 => cnt1,
      I2 => key_reg,
      I3 => key,
      O => p_0_in(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => cnt0(4),
      I1 => cnt1,
      I2 => key_reg,
      I3 => key,
      O => p_0_in(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => cnt0(5),
      I1 => cnt1,
      I2 => key_reg,
      I3 => key,
      O => p_0_in(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F666"
    )
        port map (
      I0 => key_reg,
      I1 => key,
      I2 => cnt0(6),
      I3 => cnt1,
      O => p_0_in(6)
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => cnt0(7),
      I1 => cnt1,
      I2 => key_reg,
      I3 => key,
      O => p_0_in(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => cnt0(8),
      I1 => cnt1,
      I2 => key_reg,
      I3 => key,
      O => p_0_in(8)
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F666"
    )
        port map (
      I0 => key_reg,
      I1 => key,
      I2 => cnt0(9),
      I3 => cnt1,
      O => p_0_in(9)
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(0),
      Q => cnt(0)
    );
\cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(10),
      Q => cnt(10)
    );
\cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(11),
      Q => cnt(11)
    );
\cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(12),
      Q => cnt(12)
    );
\cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(13),
      Q => cnt(13)
    );
\cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(14),
      Q => cnt(14)
    );
\cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(15),
      Q => cnt(15)
    );
\cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(16),
      Q => cnt(16)
    );
\cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(17),
      Q => cnt(17)
    );
\cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(18),
      Q => cnt(18)
    );
\cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(19),
      Q => cnt(19)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(1),
      Q => cnt(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(2),
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(3),
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(4),
      Q => cnt(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(5),
      Q => cnt(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(6),
      Q => cnt(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(7),
      Q => cnt(7)
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(8),
      Q => cnt(8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => p_0_in(9),
      Q => cnt(9)
    );
key_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => key_flag_i_2_n_0,
      I1 => key_flag_i_3_n_0,
      I2 => key_flag_i_4_n_0,
      I3 => key_flag_i_5_n_0,
      I4 => key_flag_i_6_n_0,
      O => key_value_0
    );
key_flag_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt(19),
      I1 => cnt(18),
      I2 => cnt(16),
      I3 => cnt(17),
      O => key_flag_i_2_n_0
    );
key_flag_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt(6),
      I1 => cnt(7),
      I2 => cnt(4),
      I3 => cnt(5),
      O => key_flag_i_3_n_0
    );
key_flag_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(3),
      I2 => cnt(0),
      I3 => cnt(1),
      O => key_flag_i_4_n_0
    );
key_flag_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt(14),
      I1 => cnt(15),
      I2 => cnt(12),
      I3 => cnt(13),
      O => key_flag_i_5_n_0
    );
key_flag_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt(10),
      I1 => cnt(11),
      I2 => cnt(8),
      I3 => cnt(9),
      O => key_flag_i_6_n_0
    );
key_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => key_value_i_2_n_0,
      D => key_value_0,
      Q => key_flag
    );
key_reg_reg: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => '1',
      D => key,
      PRE => key_value_i_2_n_0,
      Q => key_reg
    );
key_value_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => key,
      I1 => key_value_0,
      I2 => \^key_value\,
      O => key_value_i_1_n_0
    );
key_value_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sys_rst_n,
      O => key_value_i_2_n_0
    );
key_value_reg: unisim.vcomponents.FDPE
     port map (
      C => sys_clk,
      CE => '1',
      D => key_value_i_1_n_0,
      PRE => key_value_i_2_n_0,
      Q => \^key_value\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_key_debounce_0_1 is
  port (
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    key : in STD_LOGIC;
    key_value : out STD_LOGIC;
    key_flag : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_key_debounce_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_key_debounce_0_1 : entity is "system_key_debounce_0_1,key_debounce,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_key_debounce_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_key_debounce_0_1 : entity is "key_debounce,Vivado 2018.1";
end system_key_debounce_0_1;

architecture STRUCTURE of system_key_debounce_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 sys_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of sys_rst_n : signal is "xilinx.com:signal:reset:1.0 sys_rst_n RST";
  attribute X_INTERFACE_PARAMETER of sys_rst_n : signal is "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW";
begin
inst: entity work.system_key_debounce_0_1_key_debounce
     port map (
      key => key,
      key_flag => key_flag,
      key_value => key_value,
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n
    );
end STRUCTURE;
