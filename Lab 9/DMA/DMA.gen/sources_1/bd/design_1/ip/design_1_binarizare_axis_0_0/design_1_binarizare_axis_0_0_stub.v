// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Nov  8 02:58:26 2026
// Host        : DESKTOP-46511SM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/MMP/DMA/DMA.gen/sources_1/bd/design_1/ip/design_1_binarizare_axis_0_0/design_1_binarizare_axis_0_0_stub.v
// Design      : design_1_binarizare_axis_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "binarizare_axis,Vivado 2024.1" *)
module design_1_binarizare_axis_0_0(aclk, aresetn, s_axis_tdata, s_axis_tvalid, 
  s_axis_tready, s_axis_tlast, s_axis_tkeep, m_axis_tdata, m_axis_tvalid, m_axis_tready, 
  m_axis_tlast, m_axis_tkeep)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tready,s_axis_tlast,s_axis_tkeep[3:0],m_axis_tdata[31:0],m_axis_tvalid,m_axis_tready,m_axis_tlast,m_axis_tkeep[3:0]" */;
  input aclk;
  input aresetn;
  input [31:0]s_axis_tdata;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
  input [3:0]s_axis_tkeep;
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;
  output [3:0]m_axis_tkeep;
endmodule
