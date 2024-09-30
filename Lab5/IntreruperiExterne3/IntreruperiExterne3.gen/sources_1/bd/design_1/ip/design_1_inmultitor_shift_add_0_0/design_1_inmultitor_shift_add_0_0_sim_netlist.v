// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Sep 26 03:20:24 2024
// Host        : DESKTOP-46511SM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/MMP/IntreruperiExterne3/IntreruperiExterne3.gen/sources_1/bd/design_1/ip/design_1_inmultitor_shift_add_0_0/design_1_inmultitor_shift_add_0_0_sim_netlist.v
// Design      : design_1_inmultitor_shift_add_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_inmultitor_shift_add_0_0,inmultitor_shift_add,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "inmultitor_shift_add,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_inmultitor_shift_add_0_0
   (clk,
    resetare,
    start,
    a,
    b,
    rezultat,
    gata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input resetare;
  input start;
  input [3:0]a;
  input [3:0]b;
  output [8:0]rezultat;
  output gata;

  wire [3:0]a;
  wire [3:0]b;
  wire clk;
  wire gata;
  wire resetare;
  wire [8:0]rezultat;
  wire start;

  design_1_inmultitor_shift_add_0_0_inmultitor_shift_add U0
       (.a(a),
        .b(b),
        .clk(clk),
        .gata(gata),
        .resetare(resetare),
        .rezultat(rezultat),
        .start(start));
endmodule

(* ORIG_REF_NAME = "inmultitor_shift_add" *) 
module design_1_inmultitor_shift_add_0_0_inmultitor_shift_add
   (rezultat,
    gata,
    clk,
    resetare,
    start,
    b,
    a);
  output [8:0]rezultat;
  output gata;
  input clk;
  input resetare;
  input start;
  input [3:0]b;
  input [3:0]a;

  wire \FSM_onehot_stare[0]_i_1_n_0 ;
  wire \FSM_onehot_stare[1]_i_1_n_0 ;
  wire \FSM_onehot_stare[1]_i_2_n_0 ;
  wire \FSM_onehot_stare[2]_i_1_n_0 ;
  wire \FSM_onehot_stare[2]_i_2_n_0 ;
  wire \FSM_onehot_stare_reg_n_0_[0] ;
  wire \FSM_onehot_stare_reg_n_0_[1] ;
  wire \FSM_onehot_stare_reg_n_0_[2] ;
  wire [2:0]SHIFT_RIGHT;
  wire [3:0]a;
  wire [3:0]b;
  wire clk;
  wire [2:1]contor;
  wire \contor[0]_i_1_n_0 ;
  wire \contor[2]_i_1_n_0 ;
  wire \contor_reg_n_0_[0] ;
  wire \contor_reg_n_0_[1] ;
  wire \contor_reg_n_0_[2] ;
  wire gata;
  wire gata_i_1_n_0;
  wire [8:0]in4;
  wire [8:1]in7;
  wire \multiplicand[0]_i_1_n_0 ;
  wire \multiplicand[1]_i_1_n_0 ;
  wire \multiplicand[2]_i_1_n_0 ;
  wire \multiplicand[3]_i_1_n_0 ;
  wire \multiplicand[4]_i_1_n_0 ;
  wire \multiplicand[5]_i_1_n_0 ;
  wire \multiplicand[6]_i_1_n_0 ;
  wire \multiplicand[7]_i_1_n_0 ;
  wire \multiplicand[8]_i_1_n_0 ;
  wire \multiplicand_reg_n_0_[8] ;
  wire [3:0]multiplicator;
  wire \multiplicator_reg_n_0_[0] ;
  wire [8:0]produs;
  wire \produs[0]_i_1_n_0 ;
  wire \produs[1]_i_1_n_0 ;
  wire \produs[2]_i_1_n_0 ;
  wire \produs[3]_i_1_n_0 ;
  wire \produs[3]_i_3_n_0 ;
  wire \produs[3]_i_4_n_0 ;
  wire \produs[3]_i_5_n_0 ;
  wire \produs[3]_i_6_n_0 ;
  wire \produs[4]_i_1_n_0 ;
  wire \produs[5]_i_1_n_0 ;
  wire \produs[6]_i_1_n_0 ;
  wire \produs[7]_i_1_n_0 ;
  wire \produs[7]_i_3_n_0 ;
  wire \produs[7]_i_4_n_0 ;
  wire \produs[7]_i_5_n_0 ;
  wire \produs[7]_i_6_n_0 ;
  wire \produs[8]_i_1_n_0 ;
  wire \produs[8]_i_2_n_0 ;
  wire \produs_reg[3]_i_2_n_0 ;
  wire \produs_reg[3]_i_2_n_1 ;
  wire \produs_reg[3]_i_2_n_2 ;
  wire \produs_reg[3]_i_2_n_3 ;
  wire \produs_reg[7]_i_2_n_0 ;
  wire \produs_reg[7]_i_2_n_1 ;
  wire \produs_reg[7]_i_2_n_2 ;
  wire \produs_reg[7]_i_2_n_3 ;
  wire resetare;
  wire [8:0]rezultat;
  wire rezultat0;
  wire start;
  wire [3:0]\NLW_produs_reg[8]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_produs_reg[8]_i_3_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_stare[0]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[2] ),
        .I1(\FSM_onehot_stare[1]_i_2_n_0 ),
        .I2(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\FSM_onehot_stare[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_stare[1]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[0] ),
        .I1(\FSM_onehot_stare[1]_i_2_n_0 ),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\FSM_onehot_stare[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEFEEEEEEE)) 
    \FSM_onehot_stare[1]_i_2 
       (.I0(\FSM_onehot_stare_reg_n_0_[2] ),
        .I1(\FSM_onehot_stare[2]_i_2_n_0 ),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(\contor_reg_n_0_[1] ),
        .I4(\contor_reg_n_0_[0] ),
        .I5(\contor_reg_n_0_[2] ),
        .O(\FSM_onehot_stare[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0E0E0F0E0E0E0)) 
    \FSM_onehot_stare[2]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[2] ),
        .I1(\FSM_onehot_stare[2]_i_2_n_0 ),
        .I2(\FSM_onehot_stare_reg_n_0_[1] ),
        .I3(\contor_reg_n_0_[1] ),
        .I4(\contor_reg_n_0_[0] ),
        .I5(\contor_reg_n_0_[2] ),
        .O(\FSM_onehot_stare[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_stare[2]_i_2 
       (.I0(\FSM_onehot_stare_reg_n_0_[0] ),
        .I1(start),
        .O(\FSM_onehot_stare[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "asteptare:001,calcul:010,finalizare:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_stare_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_stare[0]_i_1_n_0 ),
        .PRE(resetare),
        .Q(\FSM_onehot_stare_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "asteptare:001,calcul:010,finalizare:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_stare_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetare),
        .D(\FSM_onehot_stare[1]_i_1_n_0 ),
        .Q(\FSM_onehot_stare_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "asteptare:001,calcul:010,finalizare:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_stare_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetare),
        .D(\FSM_onehot_stare[2]_i_1_n_0 ),
        .Q(\FSM_onehot_stare_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contor[0]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[0] ),
        .O(\contor[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \contor[1]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\contor_reg_n_0_[0] ),
        .O(contor[1]));
  LUT3 #(
    .INIT(8'hEA)) 
    \contor[2]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(start),
        .I2(\FSM_onehot_stare_reg_n_0_[0] ),
        .O(\contor[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \contor[2]_i_2 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[2] ),
        .I2(\contor_reg_n_0_[1] ),
        .I3(\contor_reg_n_0_[0] ),
        .O(contor[2]));
  FDCE #(
    .INIT(1'b0)) 
    \contor_reg[0] 
       (.C(clk),
        .CE(\contor[2]_i_1_n_0 ),
        .CLR(resetare),
        .D(\contor[0]_i_1_n_0 ),
        .Q(\contor_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \contor_reg[1] 
       (.C(clk),
        .CE(\contor[2]_i_1_n_0 ),
        .CLR(resetare),
        .D(contor[1]),
        .Q(\contor_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \contor_reg[2] 
       (.C(clk),
        .CE(\contor[2]_i_1_n_0 ),
        .CLR(resetare),
        .D(contor[2]),
        .Q(\contor_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'hBFAA)) 
    gata_i_1
       (.I0(\FSM_onehot_stare_reg_n_0_[2] ),
        .I1(start),
        .I2(\FSM_onehot_stare_reg_n_0_[0] ),
        .I3(gata),
        .O(gata_i_1_n_0));
  FDCE gata_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(resetare),
        .D(gata_i_1_n_0),
        .Q(gata));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[0]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[0] ),
        .I1(a[0]),
        .O(\multiplicand[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \multiplicand[1]_i_1 
       (.I0(a[1]),
        .I1(\FSM_onehot_stare_reg_n_0_[0] ),
        .I2(in7[1]),
        .I3(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\multiplicand[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \multiplicand[2]_i_1 
       (.I0(a[2]),
        .I1(\FSM_onehot_stare_reg_n_0_[0] ),
        .I2(in7[2]),
        .I3(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\multiplicand[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \multiplicand[3]_i_1 
       (.I0(a[3]),
        .I1(\FSM_onehot_stare_reg_n_0_[0] ),
        .I2(in7[3]),
        .I3(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\multiplicand[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[4]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in7[4]),
        .O(\multiplicand[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[5]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in7[5]),
        .O(\multiplicand[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[6]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in7[6]),
        .O(\multiplicand[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[7]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in7[7]),
        .O(\multiplicand[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicand[8]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in7[8]),
        .O(\multiplicand[8]_i_1_n_0 ));
  FDCE \multiplicand_reg[0] 
       (.C(clk),
        .CE(\contor[2]_i_1_n_0 ),
        .CLR(resetare),
        .D(\multiplicand[0]_i_1_n_0 ),
        .Q(in7[1]));
  FDCE \multiplicand_reg[1] 
       (.C(clk),
        .CE(\contor[2]_i_1_n_0 ),
        .CLR(resetare),
        .D(\multiplicand[1]_i_1_n_0 ),
        .Q(in7[2]));
  FDCE \multiplicand_reg[2] 
       (.C(clk),
        .CE(\contor[2]_i_1_n_0 ),
        .CLR(resetare),
        .D(\multiplicand[2]_i_1_n_0 ),
        .Q(in7[3]));
  FDCE \multiplicand_reg[3] 
       (.C(clk),
        .CE(\contor[2]_i_1_n_0 ),
        .CLR(resetare),
        .D(\multiplicand[3]_i_1_n_0 ),
        .Q(in7[4]));
  FDCE \multiplicand_reg[4] 
       (.C(clk),
        .CE(\contor[2]_i_1_n_0 ),
        .CLR(resetare),
        .D(\multiplicand[4]_i_1_n_0 ),
        .Q(in7[5]));
  FDCE \multiplicand_reg[5] 
       (.C(clk),
        .CE(\contor[2]_i_1_n_0 ),
        .CLR(resetare),
        .D(\multiplicand[5]_i_1_n_0 ),
        .Q(in7[6]));
  FDCE \multiplicand_reg[6] 
       (.C(clk),
        .CE(\contor[2]_i_1_n_0 ),
        .CLR(resetare),
        .D(\multiplicand[6]_i_1_n_0 ),
        .Q(in7[7]));
  FDCE \multiplicand_reg[7] 
       (.C(clk),
        .CE(\contor[2]_i_1_n_0 ),
        .CLR(resetare),
        .D(\multiplicand[7]_i_1_n_0 ),
        .Q(in7[8]));
  FDCE \multiplicand_reg[8] 
       (.C(clk),
        .CE(\contor[2]_i_1_n_0 ),
        .CLR(resetare),
        .D(\multiplicand[8]_i_1_n_0 ),
        .Q(\multiplicand_reg_n_0_[8] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \multiplicator[0]_i_1 
       (.I0(b[0]),
        .I1(\FSM_onehot_stare_reg_n_0_[0] ),
        .I2(SHIFT_RIGHT[0]),
        .I3(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(multiplicator[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \multiplicator[1]_i_1 
       (.I0(b[1]),
        .I1(\FSM_onehot_stare_reg_n_0_[0] ),
        .I2(SHIFT_RIGHT[1]),
        .I3(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(multiplicator[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \multiplicator[2]_i_1 
       (.I0(b[2]),
        .I1(\FSM_onehot_stare_reg_n_0_[0] ),
        .I2(SHIFT_RIGHT[2]),
        .I3(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(multiplicator[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \multiplicator[3]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[0] ),
        .I1(b[3]),
        .O(multiplicator[3]));
  FDCE \multiplicator_reg[0] 
       (.C(clk),
        .CE(\contor[2]_i_1_n_0 ),
        .CLR(resetare),
        .D(multiplicator[0]),
        .Q(\multiplicator_reg_n_0_[0] ));
  FDCE \multiplicator_reg[1] 
       (.C(clk),
        .CE(\contor[2]_i_1_n_0 ),
        .CLR(resetare),
        .D(multiplicator[1]),
        .Q(SHIFT_RIGHT[0]));
  FDCE \multiplicator_reg[2] 
       (.C(clk),
        .CE(\contor[2]_i_1_n_0 ),
        .CLR(resetare),
        .D(multiplicator[2]),
        .Q(SHIFT_RIGHT[1]));
  FDCE \multiplicator_reg[3] 
       (.C(clk),
        .CE(\contor[2]_i_1_n_0 ),
        .CLR(resetare),
        .D(multiplicator[3]),
        .Q(SHIFT_RIGHT[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[0]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[0]),
        .O(\produs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[1]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[1]),
        .O(\produs[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[2]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[2]),
        .O(\produs[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[3]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[3]),
        .O(\produs[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \produs[3]_i_3 
       (.I0(produs[3]),
        .I1(in7[4]),
        .O(\produs[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \produs[3]_i_4 
       (.I0(produs[2]),
        .I1(in7[3]),
        .O(\produs[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \produs[3]_i_5 
       (.I0(produs[1]),
        .I1(in7[2]),
        .O(\produs[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \produs[3]_i_6 
       (.I0(produs[0]),
        .I1(in7[1]),
        .O(\produs[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[4]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[4]),
        .O(\produs[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[5]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[5]),
        .O(\produs[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[6]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[6]),
        .O(\produs[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \produs[7]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[7]),
        .O(\produs[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \produs[7]_i_3 
       (.I0(produs[7]),
        .I1(in7[8]),
        .O(\produs[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \produs[7]_i_4 
       (.I0(produs[6]),
        .I1(in7[7]),
        .O(\produs[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \produs[7]_i_5 
       (.I0(produs[5]),
        .I1(in7[6]),
        .O(\produs[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \produs[7]_i_6 
       (.I0(produs[4]),
        .I1(in7[5]),
        .O(\produs[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \produs[8]_i_1 
       (.I0(start),
        .I1(\FSM_onehot_stare_reg_n_0_[0] ),
        .I2(\multiplicator_reg_n_0_[0] ),
        .I3(\FSM_onehot_stare_reg_n_0_[1] ),
        .O(\produs[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \produs[8]_i_2 
       (.I0(\FSM_onehot_stare_reg_n_0_[1] ),
        .I1(in4[8]),
        .O(\produs[8]_i_2_n_0 ));
  FDCE \produs_reg[0] 
       (.C(clk),
        .CE(\produs[8]_i_1_n_0 ),
        .CLR(resetare),
        .D(\produs[0]_i_1_n_0 ),
        .Q(produs[0]));
  FDCE \produs_reg[1] 
       (.C(clk),
        .CE(\produs[8]_i_1_n_0 ),
        .CLR(resetare),
        .D(\produs[1]_i_1_n_0 ),
        .Q(produs[1]));
  FDCE \produs_reg[2] 
       (.C(clk),
        .CE(\produs[8]_i_1_n_0 ),
        .CLR(resetare),
        .D(\produs[2]_i_1_n_0 ),
        .Q(produs[2]));
  FDCE \produs_reg[3] 
       (.C(clk),
        .CE(\produs[8]_i_1_n_0 ),
        .CLR(resetare),
        .D(\produs[3]_i_1_n_0 ),
        .Q(produs[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \produs_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\produs_reg[3]_i_2_n_0 ,\produs_reg[3]_i_2_n_1 ,\produs_reg[3]_i_2_n_2 ,\produs_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(produs[3:0]),
        .O(in4[3:0]),
        .S({\produs[3]_i_3_n_0 ,\produs[3]_i_4_n_0 ,\produs[3]_i_5_n_0 ,\produs[3]_i_6_n_0 }));
  FDCE \produs_reg[4] 
       (.C(clk),
        .CE(\produs[8]_i_1_n_0 ),
        .CLR(resetare),
        .D(\produs[4]_i_1_n_0 ),
        .Q(produs[4]));
  FDCE \produs_reg[5] 
       (.C(clk),
        .CE(\produs[8]_i_1_n_0 ),
        .CLR(resetare),
        .D(\produs[5]_i_1_n_0 ),
        .Q(produs[5]));
  FDCE \produs_reg[6] 
       (.C(clk),
        .CE(\produs[8]_i_1_n_0 ),
        .CLR(resetare),
        .D(\produs[6]_i_1_n_0 ),
        .Q(produs[6]));
  FDCE \produs_reg[7] 
       (.C(clk),
        .CE(\produs[8]_i_1_n_0 ),
        .CLR(resetare),
        .D(\produs[7]_i_1_n_0 ),
        .Q(produs[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \produs_reg[7]_i_2 
       (.CI(\produs_reg[3]_i_2_n_0 ),
        .CO({\produs_reg[7]_i_2_n_0 ,\produs_reg[7]_i_2_n_1 ,\produs_reg[7]_i_2_n_2 ,\produs_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(produs[7:4]),
        .O(in4[7:4]),
        .S({\produs[7]_i_3_n_0 ,\produs[7]_i_4_n_0 ,\produs[7]_i_5_n_0 ,\produs[7]_i_6_n_0 }));
  FDCE \produs_reg[8] 
       (.C(clk),
        .CE(\produs[8]_i_1_n_0 ),
        .CLR(resetare),
        .D(\produs[8]_i_2_n_0 ),
        .Q(produs[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \produs_reg[8]_i_3 
       (.CI(\produs_reg[7]_i_2_n_0 ),
        .CO(\NLW_produs_reg[8]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_produs_reg[8]_i_3_O_UNCONNECTED [3:1],in4[8]}),
        .S({1'b0,1'b0,1'b0,\multiplicand_reg_n_0_[8] }));
  LUT2 #(
    .INIT(4'h2)) 
    \rezultat[8]_i_1 
       (.I0(\FSM_onehot_stare_reg_n_0_[2] ),
        .I1(resetare),
        .O(rezultat0));
  FDRE \rezultat_reg[0] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[0]),
        .Q(rezultat[0]),
        .R(1'b0));
  FDRE \rezultat_reg[1] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[1]),
        .Q(rezultat[1]),
        .R(1'b0));
  FDRE \rezultat_reg[2] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[2]),
        .Q(rezultat[2]),
        .R(1'b0));
  FDRE \rezultat_reg[3] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[3]),
        .Q(rezultat[3]),
        .R(1'b0));
  FDRE \rezultat_reg[4] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[4]),
        .Q(rezultat[4]),
        .R(1'b0));
  FDRE \rezultat_reg[5] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[5]),
        .Q(rezultat[5]),
        .R(1'b0));
  FDRE \rezultat_reg[6] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[6]),
        .Q(rezultat[6]),
        .R(1'b0));
  FDRE \rezultat_reg[7] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[7]),
        .Q(rezultat[7]),
        .R(1'b0));
  FDRE \rezultat_reg[8] 
       (.C(clk),
        .CE(rezultat0),
        .D(produs[8]),
        .Q(rezultat[8]),
        .R(1'b0));
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
