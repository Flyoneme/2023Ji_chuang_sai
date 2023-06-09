-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Thu Apr  6 10:41:45 2023
-- Host        : DESKTOP-RI36TSC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_data_status_1_0_stub.vhdl
-- Design      : system_data_status_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    m0_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m0_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m0_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m0_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m0_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axi_awlock : out STD_LOGIC;
    m0_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m0_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m0_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m0_axi_awvalid : out STD_LOGIC;
    m0_axi_awready : in STD_LOGIC;
    m0_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m0_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m0_axi_wlast : out STD_LOGIC;
    m0_axi_wvalid : out STD_LOGIC;
    m0_axi_wready : in STD_LOGIC;
    m0_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m0_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axi_bvalid : in STD_LOGIC;
    m0_axi_bready : out STD_LOGIC;
    m0_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m0_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m0_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m0_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m0_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axi_arlock : out STD_LOGIC;
    m0_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m0_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m0_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m0_axi_arvalid : out STD_LOGIC;
    m0_axi_arready : in STD_LOGIC;
    m0_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m0_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m0_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m0_axi_rlast : in STD_LOGIC;
    m0_axi_rvalid : in STD_LOGIC;
    m0_axi_rready : out STD_LOGIC;
    m0_axi_aclk : in STD_LOGIC;
    m0_axi_aresetn : in STD_LOGIC;
    m0_axi_init_axi_txn : in STD_LOGIC;
    m0_axi_txn_done : out STD_LOGIC;
    m0_axi_error : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "m0_axi_awid[0:0],m0_axi_awaddr[31:0],m0_axi_awlen[7:0],m0_axi_awsize[2:0],m0_axi_awburst[1:0],m0_axi_awlock,m0_axi_awcache[3:0],m0_axi_awprot[2:0],m0_axi_awqos[3:0],m0_axi_awvalid,m0_axi_awready,m0_axi_wdata[31:0],m0_axi_wstrb[3:0],m0_axi_wlast,m0_axi_wvalid,m0_axi_wready,m0_axi_bid[0:0],m0_axi_bresp[1:0],m0_axi_bvalid,m0_axi_bready,m0_axi_arid[0:0],m0_axi_araddr[31:0],m0_axi_arlen[7:0],m0_axi_arsize[2:0],m0_axi_arburst[1:0],m0_axi_arlock,m0_axi_arcache[3:0],m0_axi_arprot[2:0],m0_axi_arqos[3:0],m0_axi_arvalid,m0_axi_arready,m0_axi_rid[0:0],m0_axi_rdata[31:0],m0_axi_rresp[1:0],m0_axi_rlast,m0_axi_rvalid,m0_axi_rready,m0_axi_aclk,m0_axi_aresetn,m0_axi_init_axi_txn,m0_axi_txn_done,m0_axi_error";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "data_status_v1_0,Vivado 2018.1";
begin
end;
