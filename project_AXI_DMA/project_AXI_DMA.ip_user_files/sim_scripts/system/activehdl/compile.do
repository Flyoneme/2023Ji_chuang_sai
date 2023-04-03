vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_2
vlib activehdl/lib_fifo_v1_0_11
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_18
vlib activehdl/axi_sg_v4_1_9
vlib activehdl/axi_dma_v7_1_17
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v2_0_2
vlib activehdl/axi_vip_v1_1_2
vlib activehdl/processing_system7_vip_v1_0_4
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/axis_data_fifo_v1_1_17
vlib activehdl/xlconcat_v2_1_1
vlib activehdl/proc_sys_reset_v5_0_12
vlib activehdl/xlconstant_v1_1_4
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_16
vlib activehdl/axi_data_fifo_v2_1_15
vlib activehdl/axi_crossbar_v2_1_17
vlib activehdl/util_vector_logic_v2_0_1
vlib activehdl/axi_protocol_converter_v2_1_16

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_2 activehdl/fifo_generator_v13_2_2
vmap lib_fifo_v1_0_11 activehdl/lib_fifo_v1_0_11
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_18 activehdl/axi_datamover_v5_1_18
vmap axi_sg_v4_1_9 activehdl/axi_sg_v4_1_9
vmap axi_dma_v7_1_17 activehdl/axi_dma_v7_1_17
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_2 activehdl/axi_protocol_checker_v2_0_2
vmap axi_vip_v1_1_2 activehdl/axi_vip_v1_1_2
vmap processing_system7_vip_v1_0_4 activehdl/processing_system7_vip_v1_0_4
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v1_1_17 activehdl/axis_data_fifo_v1_1_17
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1
vmap proc_sys_reset_v5_0_12 activehdl/proc_sys_reset_v5_0_12
vmap xlconstant_v1_1_4 activehdl/xlconstant_v1_1_4
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_16 activehdl/axi_register_slice_v2_1_16
vmap axi_data_fifo_v2_1_15 activehdl/axi_data_fifo_v2_1_15
vmap axi_crossbar_v2_1_17 activehdl/axi_crossbar_v2_1_17
vmap util_vector_logic_v2_0_1 activehdl/util_vector_logic_v2_0_1
vmap axi_protocol_converter_v2_1_16 activehdl/axi_protocol_converter_v2_1_16

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"D:/vivado/fix_vivado/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/vivado/fix_vivado/Vivado/2018.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/vivado/fix_vivado/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/vivado/fix_vivado/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_11 -93 \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_18 -93 \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/1150/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_9 -93 \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/16f3/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_17 -93 \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/74cf/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_dma_0_0/sim/system_axi_dma_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_2  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/3755/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_2  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/725c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_4  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v1_1_17  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/36f8/hdl/axis_data_fifo_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axis_data_fifo_0_0/sim/system_axis_data_fifo_0_0.v" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconcat_0_0/sim/system_xlconcat_0_0.v" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_rst_ps7_0_100M_0/sim/system_rst_ps7_0_100M_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/786b/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_10/sim/bd_44e3_s00a2s_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_16/sim/bd_44e3_s01a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/92d2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_20/sim/bd_44e3_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/258c/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_26/sim/bd_44e3_m00e_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_21/sim/bd_44e3_m00arn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_22/sim/bd_44e3_m00rn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_23/sim/bd_44e3_m00awn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_24/sim/bd_44e3_m00wn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_25/sim/bd_44e3_m00bn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_17/sim/bd_44e3_sawn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_18/sim/bd_44e3_swn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_19/sim/bd_44e3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/8ad6/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_13/sim/bd_44e3_s01mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0f5f/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_14/sim/bd_44e3_s01tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/925a/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_15/sim/bd_44e3_s01sic_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_11/sim/bd_44e3_sarn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_12/sim/bd_44e3_srn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_7/sim/bd_44e3_s00mmu_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_8/sim/bd_44e3_s00tr_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_9/sim/bd_44e3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/1b0c/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_2/sim/bd_44e3_arsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_3/sim/bd_44e3_rsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_4/sim/bd_44e3_awsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_5/sim/bd_44e3_wsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_6/sim/bd_44e3_bsw_0.sv" \

vlog -work xlconstant_v1_1_4  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/2fc9/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_0/sim/bd_44e3_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_1/sim/bd_44e3_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/sim/bd_44e3.v" \
"../../../bd/system/ip/system_axi_smc_0/sim/system_axi_smc_0.v" \
"../../../bd/system/ip/system_axis_data_fifo_0_1/sim/system_axis_data_fifo_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_dma_1_0/sim/system_axi_dma_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconcat_0_1/sim/system_xlconcat_0_1.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_16  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0cde/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_15  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/d114/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_17  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/d293/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_util_vector_logic_0_0/sim/system_util_vector_logic_0_0.v" \
"../../../bd/system/ip/system_key_debounce_0_1/sim/system_key_debounce_0_1.v" \
"../../../bd/system/ip/system_util_vector_logic_0_2/sim/system_util_vector_logic_0_2.v" \
"../../../bd/system/ipshared/42bd/hdl/data_status_v1_0_M0_AXI.v" \
"../../../bd/system/ipshared/42bd/hdl/data_status_v1_0.v" \
"../../../bd/system/ip/system_data_status_0_1/sim/system_data_status_0_1.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
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

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_0/sim/bd_8562_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_smc_2/bd_0/ip/ip_1/sim/bd_8562_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_2/bd_0/sim/bd_8562.v" \
"../../../bd/system/ip/system_axi_smc_2/sim/system_axi_smc_2.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
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

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc1_0/bd_0/ip/ip_0/sim/bd_b049_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_smc1_0/bd_0/ip/ip_1/sim/bd_b049_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc1_0/bd_0/sim/bd_b049.v" \
"../../../bd/system/ip/system_axi_smc1_0/sim/system_axi_smc1_0.v" \

vlog -work axi_protocol_converter_v2_1_16  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/1229/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/b193/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/0ab1/hdl" "+incdir+../../../../project_AXI_DMA.srcs/sources_1/bd/system/ipshared/cf48/hdl/verilog" "+incdir+D:/vivado/fix_vivado/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

