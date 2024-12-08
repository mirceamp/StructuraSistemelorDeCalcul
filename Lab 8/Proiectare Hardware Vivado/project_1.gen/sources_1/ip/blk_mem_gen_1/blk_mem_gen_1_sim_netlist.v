// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov  1 17:00:55 2024
// Host        : DESKTOP-46511SM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/MMP/IOT/project_1/project_1.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.698 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48384)
`pragma protect data_block
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
`pragma protect end_protected
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
