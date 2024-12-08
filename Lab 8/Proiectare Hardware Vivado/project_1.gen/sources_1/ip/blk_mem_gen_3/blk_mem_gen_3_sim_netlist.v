// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov  1 17:00:54 2024
// Host        : DESKTOP-46511SM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_3 -prefix
//               blk_mem_gen_3_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_3
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
  blk_mem_gen_3_blk_mem_gen_v8_4_8 U0
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
