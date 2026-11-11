// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Nov  8 02:58:26 2026
// Host        : DESKTOP-46511SM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/MMP/DMA/DMA.gen/sources_1/bd/design_1/ip/design_1_binarizare_axis_0_0/design_1_binarizare_axis_0_0_sim_netlist.v
// Design      : design_1_binarizare_axis_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_binarizare_axis_0_0,binarizare_axis,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "binarizare_axis,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_binarizare_axis_0_0
   (aclk,
    aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    s_axis_tkeep,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    m_axis_tkeep);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TKEEP" *) input [3:0]s_axis_tkeep;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [3:0]m_axis_tkeep;

  wire aresetn;
  wire [24:0]\^m_axis_tdata ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axis_tdata[31] = \^m_axis_tdata [24];
  assign m_axis_tdata[30] = \^m_axis_tdata [24];
  assign m_axis_tdata[29] = \^m_axis_tdata [24];
  assign m_axis_tdata[28] = \^m_axis_tdata [24];
  assign m_axis_tdata[27] = \^m_axis_tdata [24];
  assign m_axis_tdata[26] = \^m_axis_tdata [24];
  assign m_axis_tdata[25] = \^m_axis_tdata [24];
  assign m_axis_tdata[24] = \^m_axis_tdata [24];
  assign m_axis_tdata[23] = \^m_axis_tdata [16];
  assign m_axis_tdata[22] = \^m_axis_tdata [16];
  assign m_axis_tdata[21] = \^m_axis_tdata [16];
  assign m_axis_tdata[20] = \^m_axis_tdata [16];
  assign m_axis_tdata[19] = \^m_axis_tdata [16];
  assign m_axis_tdata[18] = \^m_axis_tdata [16];
  assign m_axis_tdata[17] = \^m_axis_tdata [16];
  assign m_axis_tdata[16] = \^m_axis_tdata [16];
  assign m_axis_tdata[15] = \^m_axis_tdata [8];
  assign m_axis_tdata[14] = \^m_axis_tdata [8];
  assign m_axis_tdata[13] = \^m_axis_tdata [8];
  assign m_axis_tdata[12] = \^m_axis_tdata [8];
  assign m_axis_tdata[11] = \^m_axis_tdata [8];
  assign m_axis_tdata[10] = \^m_axis_tdata [8];
  assign m_axis_tdata[9] = \^m_axis_tdata [8];
  assign m_axis_tdata[8] = \^m_axis_tdata [8];
  assign m_axis_tdata[7] = \^m_axis_tdata [0];
  assign m_axis_tdata[6] = \^m_axis_tdata [0];
  assign m_axis_tdata[5] = \^m_axis_tdata [0];
  assign m_axis_tdata[4] = \^m_axis_tdata [0];
  assign m_axis_tdata[3] = \^m_axis_tdata [0];
  assign m_axis_tdata[2] = \^m_axis_tdata [0];
  assign m_axis_tdata[1] = \^m_axis_tdata [0];
  assign m_axis_tdata[0] = \^m_axis_tdata [0];
  assign m_axis_tkeep[3:0] = s_axis_tkeep;
  assign m_axis_tlast = s_axis_tlast;
  design_1_binarizare_axis_0_0_binarizare_axis U0
       (.m_axis_tdata({\^m_axis_tdata [24],\^m_axis_tdata [16],\^m_axis_tdata [8],\^m_axis_tdata [0]}),
        .s_axis_tdata(s_axis_tdata));
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tvalid_INST_0
       (.I0(s_axis_tvalid),
        .I1(aresetn),
        .O(m_axis_tvalid));
  LUT2 #(
    .INIT(4'h8)) 
    s_axis_tready_INST_0
       (.I0(m_axis_tready),
        .I1(aresetn),
        .O(s_axis_tready));
endmodule

(* ORIG_REF_NAME = "binarizare_axis" *) 
module design_1_binarizare_axis_0_0_binarizare_axis
   (m_axis_tdata,
    s_axis_tdata);
  output [3:0]m_axis_tdata;
  input [31:0]s_axis_tdata;

  wire [3:0]m_axis_tdata;
  wire \m_axis_tdata0_inferred__0/m_axis_tdata[8]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata0_inferred__1/m_axis_tdata[16]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata0_inferred__2/m_axis_tdata[24]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[0]_INST_0_i_1_n_0 ;
  wire [31:0]s_axis_tdata;

  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \m_axis_tdata0_inferred__0/m_axis_tdata[8]_INST_0 
       (.I0(s_axis_tdata[15]),
        .I1(\m_axis_tdata0_inferred__0/m_axis_tdata[8]_INST_0_i_1_n_0 ),
        .I2(s_axis_tdata[9]),
        .I3(s_axis_tdata[11]),
        .I4(s_axis_tdata[10]),
        .O(m_axis_tdata[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata0_inferred__0/m_axis_tdata[8]_INST_0_i_1 
       (.I0(s_axis_tdata[13]),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[14]),
        .O(\m_axis_tdata0_inferred__0/m_axis_tdata[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \m_axis_tdata0_inferred__1/m_axis_tdata[16]_INST_0 
       (.I0(s_axis_tdata[23]),
        .I1(\m_axis_tdata0_inferred__1/m_axis_tdata[16]_INST_0_i_1_n_0 ),
        .I2(s_axis_tdata[17]),
        .I3(s_axis_tdata[19]),
        .I4(s_axis_tdata[18]),
        .O(m_axis_tdata[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata0_inferred__1/m_axis_tdata[16]_INST_0_i_1 
       (.I0(s_axis_tdata[21]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[16]),
        .I3(s_axis_tdata[22]),
        .O(\m_axis_tdata0_inferred__1/m_axis_tdata[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \m_axis_tdata0_inferred__2/m_axis_tdata[24]_INST_0 
       (.I0(s_axis_tdata[31]),
        .I1(\m_axis_tdata0_inferred__2/m_axis_tdata[24]_INST_0_i_1_n_0 ),
        .I2(s_axis_tdata[25]),
        .I3(s_axis_tdata[27]),
        .I4(s_axis_tdata[26]),
        .O(m_axis_tdata[3]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata0_inferred__2/m_axis_tdata[24]_INST_0_i_1 
       (.I0(s_axis_tdata[29]),
        .I1(s_axis_tdata[28]),
        .I2(s_axis_tdata[24]),
        .I3(s_axis_tdata[30]),
        .O(\m_axis_tdata0_inferred__2/m_axis_tdata[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(s_axis_tdata[7]),
        .I1(\m_axis_tdata[0]_INST_0_i_1_n_0 ),
        .I2(s_axis_tdata[1]),
        .I3(s_axis_tdata[3]),
        .I4(s_axis_tdata[2]),
        .O(m_axis_tdata[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[0]_INST_0_i_1 
       (.I0(s_axis_tdata[5]),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[0]),
        .I3(s_axis_tdata[6]),
        .O(\m_axis_tdata[0]_INST_0_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
