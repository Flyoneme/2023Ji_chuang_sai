-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Tue Mar 28 11:47:05 2023
-- Host        : DESKTOP-RI36TSC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {E:/project_AXI_DMA
--               -V1.0/project_AXI_DMA.srcs/sources_1/bd/system/ip/system_key_debounce_0_1/system_key_debounce_0_1_stub.vhdl}
-- Design      : system_key_debounce_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_key_debounce_0_1 is
  Port ( 
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    key : in STD_LOGIC;
    key_value : out STD_LOGIC;
    key_flag : out STD_LOGIC
  );

end system_key_debounce_0_1;

architecture stub of system_key_debounce_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sys_clk,sys_rst_n,key,key_value,key_flag";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "key_debounce,Vivado 2018.1";
begin
end;
