// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Nov  1 16:57:19 2024
// Host        : DESKTOP-46511SM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
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
  (* C_USE_DEFAULT_DATA = "0" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48496)
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
