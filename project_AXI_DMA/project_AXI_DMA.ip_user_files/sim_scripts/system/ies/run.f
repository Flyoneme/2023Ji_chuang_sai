-makelib ies_lib/xilinx_vip -sv \
  "D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "D:/vivado/fix_vivado/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/vivado/fix_vivado/Vivado/2018.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/vivado/fix_vivado/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/vivado/fix_vivado/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/lib_pkg_v1_0_2 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/lib_fifo_v1_0_11 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_srl_fifo_v1_0_2 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/axi_datamover_v5_1_18 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/1150/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_sg_v4_1_9 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/16f3/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib ies_lib/axi_dma_v7_1_17 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/74cf/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_dma_0_0/sim/system_axi_dma_0_0.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_protocol_checker_v2_0_2 -sv \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/3755/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_vip_v1_1_2 -sv \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/725c/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_4 -sv \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/axis_infrastructure_v1_1_0 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axis_data_fifo_v1_1_17 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/36f8/hdl/axis_data_fifo_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axis_data_fifo_0_0/sim/system_axis_data_fifo_0_0.v" \
-endlib
-makelib ies_lib/xlconcat_v2_1_1 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xlconcat_0_0/sim/system_xlconcat_0_0.v" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_rst_ps7_0_100M_0/sim/system_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/786b/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_10/sim/bd_44e3_s00a2s_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_16/sim/bd_44e3_s01a2s_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/92d2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_20/sim/bd_44e3_m00s2a_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/258c/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_26/sim/bd_44e3_m00e_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_21/sim/bd_44e3_m00arn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_22/sim/bd_44e3_m00rn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_23/sim/bd_44e3_m00awn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_24/sim/bd_44e3_m00wn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_25/sim/bd_44e3_m00bn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_17/sim/bd_44e3_sawn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_18/sim/bd_44e3_swn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_19/sim/bd_44e3_sbn_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/8ad6/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_13/sim/bd_44e3_s01mmu_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0f5f/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_14/sim/bd_44e3_s01tr_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/925a/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_15/sim/bd_44e3_s01sic_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_11/sim/bd_44e3_sarn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_12/sim/bd_44e3_srn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_7/sim/bd_44e3_s00mmu_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_8/sim/bd_44e3_s00tr_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_9/sim/bd_44e3_s00sic_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/1b0c/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_2/sim/bd_44e3_arsw_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_3/sim/bd_44e3_rsw_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_4/sim/bd_44e3_awsw_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_5/sim/bd_44e3_wsw_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_6/sim/bd_44e3_bsw_0.sv" \
-endlib
-makelib ies_lib/xlconstant_v1_1_4 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/2fc9/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_0/sim/bd_44e3_one_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_1/sim/bd_44e3_psr_aclk_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/sim/bd_44e3.v" \
  "../../../bd/system/ip/system_axi_smc_0/sim/system_axi_smc_0.v" \
  "../../../bd/system/ip/system_axis_data_fifo_0_1/sim/system_axis_data_fifo_0_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_dma_1_0/sim/system_axi_dma_1_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xlconcat_0_1/sim/system_xlconcat_0_1.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_16 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0cde/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_15 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/d114/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_17 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/d293/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
-endlib
-makelib ies_lib/util_vector_logic_v2_0_1 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_util_vector_logic_0_0/sim/system_util_vector_logic_0_0.v" \
  "../../../bd/system/ip/system_key_debounce_0_1/sim/system_key_debounce_0_1.v" \
  "../../../bd/system/ip/system_util_vector_logic_0_2/sim/system_util_vector_logic_0_2.v" \
  "../../../bd/system/ipshared/42bd/hdl/data_status_v1_0_M0_AXI.v" \
  "../../../bd/system/ipshared/42bd/hdl/data_status_v1_0.v" \
  "../../../bd/system/ip/system_data_status_0_1/sim/system_data_status_0_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_10/sim/bd_8562_s00a2s_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_16/sim/bd_8562_s01a2s_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_20/sim/bd_8562_m00s2a_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_26/sim/bd_8562_m00e_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_21/sim/bd_8562_m00arn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_22/sim/bd_8562_m00rn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_23/sim/bd_8562_m00awn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_24/sim/bd_8562_m00wn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_25/sim/bd_8562_m00bn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_17/sim/bd_8562_sawn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_18/sim/bd_8562_swn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_19/sim/bd_8562_sbn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_13/sim/bd_8562_s01mmu_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_14/sim/bd_8562_s01tr_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_15/sim/bd_8562_s01sic_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_11/sim/bd_8562_sarn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_12/sim/bd_8562_srn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_7/sim/bd_8562_s00mmu_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_8/sim/bd_8562_s00tr_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_9/sim/bd_8562_s00sic_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_2/sim/bd_8562_arsw_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_3/sim/bd_8562_rsw_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_4/sim/bd_8562_awsw_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_5/sim/bd_8562_wsw_0.sv" \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_6/sim/bd_8562_bsw_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_0/sim/bd_8562_one_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_1/sim/bd_8562_psr_aclk_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc_2/bd_0/sim/bd_8562.v" \
  "../../../bd/system/ip/system_axi_smc_2/sim/system_axi_smc_2.v" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc1_0/bd_0/ip/ip_5/sim/bd_b049_s00a2s_0.sv" \
  "../../../bd/system/ip/system_axi_smc1_0/bd_0/ip/ip_11/sim/bd_b049_m00s2a_0.sv" \
  "../../../bd/system/ip/system_axi_smc1_0/bd_0/ip/ip_12/sim/bd_b049_m00e_0.sv" \
  "../../../bd/system/ip/system_axi_smc1_0/bd_0/ip/ip_6/sim/bd_b049_sarn_0.sv" \
  "../../../bd/system/ip/system_axi_smc1_0/bd_0/ip/ip_7/sim/bd_b049_srn_0.sv" \
  "../../../bd/system/ip/system_axi_smc1_0/bd_0/ip/ip_8/sim/bd_b049_sawn_0.sv" \
  "../../../bd/system/ip/system_axi_smc1_0/bd_0/ip/ip_9/sim/bd_b049_swn_0.sv" \
  "../../../bd/system/ip/system_axi_smc1_0/bd_0/ip/ip_10/sim/bd_b049_sbn_0.sv" \
  "../../../bd/system/ip/system_axi_smc1_0/bd_0/ip/ip_2/sim/bd_b049_s00mmu_0.sv" \
  "../../../bd/system/ip/system_axi_smc1_0/bd_0/ip/ip_3/sim/bd_b049_s00tr_0.sv" \
  "../../../bd/system/ip/system_axi_smc1_0/bd_0/ip/ip_4/sim/bd_b049_s00sic_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc1_0/bd_0/ip/ip_0/sim/bd_b049_one_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc1_0/bd_0/ip/ip_1/sim/bd_b049_psr_aclk_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc1_0/bd_0/sim/bd_b049.v" \
  "../../../bd/system/ip/system_axi_smc1_0/sim/system_axi_smc1_0.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_16 \
  "../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/1229/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
  "../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
  "../../../bd/system/sim/system.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

