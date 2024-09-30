// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Sep 26 03:20:24 2024
// Host        : DESKTOP-46511SM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/MMP/IntreruperiExterne3/IntreruperiExterne3.gen/sources_1/bd/design_1/ip/design_1_inmultitor_shift_add_0_0/design_1_inmultitor_shift_add_0_0_stub.v
// Design      : design_1_inmultitor_shift_add_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "inmultitor_shift_add,Vivado 2024.1" *)
module design_1_inmultitor_shift_add_0_0(clk, resetare, start, a, b, rezultat, gata)
/* synthesis syn_black_box black_box_pad_pin="resetare,start,a[3:0],b[3:0],rezultat[8:0],gata" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input resetare;
  input start;
  input [3:0]a;
  input [3:0]b;
  output [8:0]rezultat;
  output gata;
endmodule
