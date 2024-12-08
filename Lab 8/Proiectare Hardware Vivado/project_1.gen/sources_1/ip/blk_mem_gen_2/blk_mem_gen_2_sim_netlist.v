// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov  1 17:00:54 2024
// Host        : DESKTOP-46511SM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_2 -prefix
//               blk_mem_gen_2_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_2
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
  blk_mem_gen_2_blk_mem_gen_v8_4_8 U0
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
