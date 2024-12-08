// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov  1 17:00:54 2024
// Host        : DESKTOP-46511SM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_0 -prefix
//               blk_mem_gen_0_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48096)
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
