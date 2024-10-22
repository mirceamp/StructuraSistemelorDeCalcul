// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Oct 18 12:20:07 2024
// Host        : DESKTOP-46511SM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_RestoringDivision_0_0/design_1_RestoringDivision_0_0_sim_netlist.v
// Design      : design_1_RestoringDivision_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_RestoringDivision_0_0,RestoringDivision,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "RestoringDivision,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_RestoringDivision_0_0
   (clk,
    resetare,
    start,
    dividend,
    divisor,
    quotient,
    remainder,
    gata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input resetare;
  input start;
  input [11:0]dividend;
  input [11:0]divisor;
  output [11:0]quotient;
  output [12:0]remainder;
  output gata;

  wire clk;
  wire [11:0]dividend;
  wire [11:0]divisor;
  wire gata;
  wire [11:0]quotient;
  wire [12:0]remainder;
  wire resetare;
  wire start;

  design_1_RestoringDivision_0_0_RestoringDivision U0
       (.clk(clk),
        .dividend(dividend),
        .divisor(divisor),
        .gata(gata),
        .quotient(quotient),
        .remainder(remainder),
        .resetare(resetare),
        .start(start));
endmodule

(* ORIG_REF_NAME = "RestoringDivision" *) 
module design_1_RestoringDivision_0_0_RestoringDivision
   (quotient,
    remainder,
    gata,
    resetare,
    start,
    clk,
    divisor,
    dividend);
  output [11:0]quotient;
  output [12:0]remainder;
  output gata;
  input resetare;
  input start;
  input clk;
  input [11:0]divisor;
  input [11:0]dividend;

  wire \A[12]_i_1_n_0 ;
  wire \A[12]_i_2_n_0 ;
  wire \A_reg_n_0_[12] ;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [12:0]L;
  wire [12:0]M;
  wire \M[11]_i_2_n_0 ;
  wire \M[11]_i_3_n_0 ;
  wire \M[11]_i_4_n_0 ;
  wire \M[11]_i_5_n_0 ;
  wire \M[3]_i_2_n_0 ;
  wire \M[3]_i_3_n_0 ;
  wire \M[3]_i_4_n_0 ;
  wire \M[7]_i_2_n_0 ;
  wire \M[7]_i_3_n_0 ;
  wire \M[7]_i_4_n_0 ;
  wire \M[7]_i_5_n_0 ;
  wire M_0;
  wire \M_reg[11]_i_1_n_0 ;
  wire \M_reg[11]_i_1_n_1 ;
  wire \M_reg[11]_i_1_n_2 ;
  wire \M_reg[11]_i_1_n_3 ;
  wire \M_reg[11]_i_1_n_4 ;
  wire \M_reg[11]_i_1_n_5 ;
  wire \M_reg[11]_i_1_n_6 ;
  wire \M_reg[11]_i_1_n_7 ;
  wire \M_reg[12]_i_2_n_7 ;
  wire \M_reg[3]_i_1_n_0 ;
  wire \M_reg[3]_i_1_n_1 ;
  wire \M_reg[3]_i_1_n_2 ;
  wire \M_reg[3]_i_1_n_3 ;
  wire \M_reg[3]_i_1_n_4 ;
  wire \M_reg[3]_i_1_n_5 ;
  wire \M_reg[3]_i_1_n_6 ;
  wire \M_reg[3]_i_1_n_7 ;
  wire \M_reg[7]_i_1_n_0 ;
  wire \M_reg[7]_i_1_n_1 ;
  wire \M_reg[7]_i_1_n_2 ;
  wire \M_reg[7]_i_1_n_3 ;
  wire \M_reg[7]_i_1_n_4 ;
  wire \M_reg[7]_i_1_n_5 ;
  wire \M_reg[7]_i_1_n_6 ;
  wire \M_reg[7]_i_1_n_7 ;
  wire \Q[0]_i_1_n_0 ;
  wire \Q[10]_i_1_n_0 ;
  wire \Q[11]_i_1_n_0 ;
  wire \Q[11]_i_2_n_0 ;
  wire \Q[1]_i_1_n_0 ;
  wire \Q[2]_i_1_n_0 ;
  wire \Q[3]_i_1_n_0 ;
  wire \Q[4]_i_1_n_0 ;
  wire \Q[5]_i_1_n_0 ;
  wire \Q[6]_i_1_n_0 ;
  wire \Q[7]_i_1_n_0 ;
  wire \Q[8]_i_1_n_0 ;
  wire \Q[9]_i_1_n_0 ;
  wire \Q_reg_n_0_[0] ;
  wire \Q_reg_n_0_[10] ;
  wire \Q_reg_n_0_[1] ;
  wire \Q_reg_n_0_[2] ;
  wire \Q_reg_n_0_[3] ;
  wire \Q_reg_n_0_[4] ;
  wire \Q_reg_n_0_[5] ;
  wire \Q_reg_n_0_[6] ;
  wire \Q_reg_n_0_[7] ;
  wire \Q_reg_n_0_[8] ;
  wire \Q_reg_n_0_[9] ;
  wire clk;
  wire [3:2]contor;
  wire \contor[0]_i_1_n_0 ;
  wire \contor[1]_i_1_n_0 ;
  wire \contor_reg_n_0_[0] ;
  wire \contor_reg_n_0_[1] ;
  wire \contor_reg_n_0_[2] ;
  wire \contor_reg_n_0_[3] ;
  wire [11:0]dividend;
  wire [11:0]divisor;
  wire gata;
  wire gata_i_1_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [12:0]in5;
  wire p_0_in;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry__0_n_4 ;
  wire \plusOp_inferred__0/i__carry__0_n_5 ;
  wire \plusOp_inferred__0/i__carry__0_n_6 ;
  wire \plusOp_inferred__0/i__carry__0_n_7 ;
  wire \plusOp_inferred__0/i__carry__1_n_0 ;
  wire \plusOp_inferred__0/i__carry__1_n_1 ;
  wire \plusOp_inferred__0/i__carry__1_n_2 ;
  wire \plusOp_inferred__0/i__carry__1_n_3 ;
  wire \plusOp_inferred__0/i__carry__1_n_4 ;
  wire \plusOp_inferred__0/i__carry__1_n_5 ;
  wire \plusOp_inferred__0/i__carry__1_n_6 ;
  wire \plusOp_inferred__0/i__carry__1_n_7 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_4 ;
  wire \plusOp_inferred__0/i__carry_n_5 ;
  wire \plusOp_inferred__0/i__carry_n_6 ;
  wire \plusOp_inferred__0/i__carry_n_7 ;
  wire [11:0]quotient;
  wire \quotient[11]_i_1_n_0 ;
  wire [12:0]remainder;
  wire resetare;
  wire start;
  wire [3:0]\NLW_M_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_M_reg[12]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_plusOp_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_plusOp_inferred__0/i__carry__2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A[0]_i_1 
       (.I0(L[0]),
        .I1(p_0_in),
        .I2(\plusOp_inferred__0/i__carry_n_7 ),
        .O(in5[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A[10]_i_1 
       (.I0(L[10]),
        .I1(p_0_in),
        .I2(\plusOp_inferred__0/i__carry__1_n_5 ),
        .O(in5[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A[11]_i_1 
       (.I0(L[11]),
        .I1(p_0_in),
        .I2(\plusOp_inferred__0/i__carry__1_n_4 ),
        .O(in5[11]));
  LUT4 #(
    .INIT(16'h0040)) 
    \A[12]_i_1 
       (.I0(resetare),
        .I1(start),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\A[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00F8)) 
    \A[12]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(resetare),
        .O(\A[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \A[12]_i_3 
       (.I0(p_0_in),
        .I1(L[12]),
        .O(in5[12]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A[1]_i_1 
       (.I0(L[1]),
        .I1(p_0_in),
        .I2(\plusOp_inferred__0/i__carry_n_6 ),
        .O(in5[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A[2]_i_1 
       (.I0(L[2]),
        .I1(p_0_in),
        .I2(\plusOp_inferred__0/i__carry_n_5 ),
        .O(in5[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A[3]_i_1 
       (.I0(L[3]),
        .I1(p_0_in),
        .I2(\plusOp_inferred__0/i__carry_n_4 ),
        .O(in5[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A[4]_i_1 
       (.I0(L[4]),
        .I1(p_0_in),
        .I2(\plusOp_inferred__0/i__carry__0_n_7 ),
        .O(in5[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A[5]_i_1 
       (.I0(L[5]),
        .I1(p_0_in),
        .I2(\plusOp_inferred__0/i__carry__0_n_6 ),
        .O(in5[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A[6]_i_1 
       (.I0(L[6]),
        .I1(p_0_in),
        .I2(\plusOp_inferred__0/i__carry__0_n_5 ),
        .O(in5[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A[7]_i_1 
       (.I0(L[7]),
        .I1(p_0_in),
        .I2(\plusOp_inferred__0/i__carry__0_n_4 ),
        .O(in5[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A[8]_i_1 
       (.I0(L[8]),
        .I1(p_0_in),
        .I2(\plusOp_inferred__0/i__carry__1_n_7 ),
        .O(in5[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \A[9]_i_1 
       (.I0(L[9]),
        .I1(p_0_in),
        .I2(\plusOp_inferred__0/i__carry__1_n_6 ),
        .O(in5[9]));
  FDRE \A_reg[0] 
       (.C(clk),
        .CE(\A[12]_i_2_n_0 ),
        .D(in5[0]),
        .Q(L[1]),
        .R(\A[12]_i_1_n_0 ));
  FDRE \A_reg[10] 
       (.C(clk),
        .CE(\A[12]_i_2_n_0 ),
        .D(in5[10]),
        .Q(L[11]),
        .R(\A[12]_i_1_n_0 ));
  FDRE \A_reg[11] 
       (.C(clk),
        .CE(\A[12]_i_2_n_0 ),
        .D(in5[11]),
        .Q(L[12]),
        .R(\A[12]_i_1_n_0 ));
  FDRE \A_reg[12] 
       (.C(clk),
        .CE(\A[12]_i_2_n_0 ),
        .D(in5[12]),
        .Q(\A_reg_n_0_[12] ),
        .R(\A[12]_i_1_n_0 ));
  FDRE \A_reg[1] 
       (.C(clk),
        .CE(\A[12]_i_2_n_0 ),
        .D(in5[1]),
        .Q(L[2]),
        .R(\A[12]_i_1_n_0 ));
  FDRE \A_reg[2] 
       (.C(clk),
        .CE(\A[12]_i_2_n_0 ),
        .D(in5[2]),
        .Q(L[3]),
        .R(\A[12]_i_1_n_0 ));
  FDRE \A_reg[3] 
       (.C(clk),
        .CE(\A[12]_i_2_n_0 ),
        .D(in5[3]),
        .Q(L[4]),
        .R(\A[12]_i_1_n_0 ));
  FDRE \A_reg[4] 
       (.C(clk),
        .CE(\A[12]_i_2_n_0 ),
        .D(in5[4]),
        .Q(L[5]),
        .R(\A[12]_i_1_n_0 ));
  FDRE \A_reg[5] 
       (.C(clk),
        .CE(\A[12]_i_2_n_0 ),
        .D(in5[5]),
        .Q(L[6]),
        .R(\A[12]_i_1_n_0 ));
  FDRE \A_reg[6] 
       (.C(clk),
        .CE(\A[12]_i_2_n_0 ),
        .D(in5[6]),
        .Q(L[7]),
        .R(\A[12]_i_1_n_0 ));
  FDRE \A_reg[7] 
       (.C(clk),
        .CE(\A[12]_i_2_n_0 ),
        .D(in5[7]),
        .Q(L[8]),
        .R(\A[12]_i_1_n_0 ));
  FDRE \A_reg[8] 
       (.C(clk),
        .CE(\A[12]_i_2_n_0 ),
        .D(in5[8]),
        .Q(L[9]),
        .R(\A[12]_i_1_n_0 ));
  FDRE \A_reg[9] 
       (.C(clk),
        .CE(\A[12]_i_2_n_0 ),
        .D(in5[9]),
        .Q(L[10]),
        .R(\A[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAAE)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(start),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCDDCCC8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(start),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFEA0000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(start),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\contor_reg_n_0_[0] ),
        .I3(\contor_reg_n_0_[3] ),
        .I4(\contor_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "s_asteptare:001,s_calcul:010,s_final:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(resetare),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "s_asteptare:001,s_calcul:010,s_final:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetare),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "s_asteptare:001,s_calcul:010,s_final:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(resetare),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \M[11]_i_2 
       (.I0(divisor[11]),
        .O(\M[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \M[11]_i_3 
       (.I0(divisor[10]),
        .O(\M[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \M[11]_i_4 
       (.I0(divisor[9]),
        .O(\M[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \M[11]_i_5 
       (.I0(divisor[8]),
        .O(\M[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \M[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start),
        .O(M_0));
  LUT1 #(
    .INIT(2'h1)) 
    \M[3]_i_2 
       (.I0(divisor[3]),
        .O(\M[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \M[3]_i_3 
       (.I0(divisor[2]),
        .O(\M[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \M[3]_i_4 
       (.I0(divisor[1]),
        .O(\M[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \M[7]_i_2 
       (.I0(divisor[7]),
        .O(\M[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \M[7]_i_3 
       (.I0(divisor[6]),
        .O(\M[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \M[7]_i_4 
       (.I0(divisor[5]),
        .O(\M[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \M[7]_i_5 
       (.I0(divisor[4]),
        .O(\M[7]_i_5_n_0 ));
  FDCE \M_reg[0] 
       (.C(clk),
        .CE(M_0),
        .CLR(resetare),
        .D(\M_reg[3]_i_1_n_7 ),
        .Q(M[0]));
  FDCE \M_reg[10] 
       (.C(clk),
        .CE(M_0),
        .CLR(resetare),
        .D(\M_reg[11]_i_1_n_5 ),
        .Q(M[10]));
  FDCE \M_reg[11] 
       (.C(clk),
        .CE(M_0),
        .CLR(resetare),
        .D(\M_reg[11]_i_1_n_4 ),
        .Q(M[11]));
  CARRY4 \M_reg[11]_i_1 
       (.CI(\M_reg[7]_i_1_n_0 ),
        .CO({\M_reg[11]_i_1_n_0 ,\M_reg[11]_i_1_n_1 ,\M_reg[11]_i_1_n_2 ,\M_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\M_reg[11]_i_1_n_4 ,\M_reg[11]_i_1_n_5 ,\M_reg[11]_i_1_n_6 ,\M_reg[11]_i_1_n_7 }),
        .S({\M[11]_i_2_n_0 ,\M[11]_i_3_n_0 ,\M[11]_i_4_n_0 ,\M[11]_i_5_n_0 }));
  FDCE \M_reg[12] 
       (.C(clk),
        .CE(M_0),
        .CLR(resetare),
        .D(\M_reg[12]_i_2_n_7 ),
        .Q(M[12]));
  CARRY4 \M_reg[12]_i_2 
       (.CI(\M_reg[11]_i_1_n_0 ),
        .CO(\NLW_M_reg[12]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_M_reg[12]_i_2_O_UNCONNECTED [3:1],\M_reg[12]_i_2_n_7 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE \M_reg[1] 
       (.C(clk),
        .CE(M_0),
        .CLR(resetare),
        .D(\M_reg[3]_i_1_n_6 ),
        .Q(M[1]));
  FDCE \M_reg[2] 
       (.C(clk),
        .CE(M_0),
        .CLR(resetare),
        .D(\M_reg[3]_i_1_n_5 ),
        .Q(M[2]));
  FDCE \M_reg[3] 
       (.C(clk),
        .CE(M_0),
        .CLR(resetare),
        .D(\M_reg[3]_i_1_n_4 ),
        .Q(M[3]));
  CARRY4 \M_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\M_reg[3]_i_1_n_0 ,\M_reg[3]_i_1_n_1 ,\M_reg[3]_i_1_n_2 ,\M_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\M_reg[3]_i_1_n_4 ,\M_reg[3]_i_1_n_5 ,\M_reg[3]_i_1_n_6 ,\M_reg[3]_i_1_n_7 }),
        .S({\M[3]_i_2_n_0 ,\M[3]_i_3_n_0 ,\M[3]_i_4_n_0 ,divisor[0]}));
  FDCE \M_reg[4] 
       (.C(clk),
        .CE(M_0),
        .CLR(resetare),
        .D(\M_reg[7]_i_1_n_7 ),
        .Q(M[4]));
  FDCE \M_reg[5] 
       (.C(clk),
        .CE(M_0),
        .CLR(resetare),
        .D(\M_reg[7]_i_1_n_6 ),
        .Q(M[5]));
  FDCE \M_reg[6] 
       (.C(clk),
        .CE(M_0),
        .CLR(resetare),
        .D(\M_reg[7]_i_1_n_5 ),
        .Q(M[6]));
  FDCE \M_reg[7] 
       (.C(clk),
        .CE(M_0),
        .CLR(resetare),
        .D(\M_reg[7]_i_1_n_4 ),
        .Q(M[7]));
  CARRY4 \M_reg[7]_i_1 
       (.CI(\M_reg[3]_i_1_n_0 ),
        .CO({\M_reg[7]_i_1_n_0 ,\M_reg[7]_i_1_n_1 ,\M_reg[7]_i_1_n_2 ,\M_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\M_reg[7]_i_1_n_4 ,\M_reg[7]_i_1_n_5 ,\M_reg[7]_i_1_n_6 ,\M_reg[7]_i_1_n_7 }),
        .S({\M[7]_i_2_n_0 ,\M[7]_i_3_n_0 ,\M[7]_i_4_n_0 ,\M[7]_i_5_n_0 }));
  FDCE \M_reg[8] 
       (.C(clk),
        .CE(M_0),
        .CLR(resetare),
        .D(\M_reg[11]_i_1_n_7 ),
        .Q(M[8]));
  FDCE \M_reg[9] 
       (.C(clk),
        .CE(M_0),
        .CLR(resetare),
        .D(\M_reg[11]_i_1_n_6 ),
        .Q(M[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \Q[0]_i_1 
       (.I0(dividend[0]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(p_0_in),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[10]_i_1 
       (.I0(dividend[10]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[9] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \Q[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(start),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\Q[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[11]_i_2 
       (.I0(dividend[11]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[10] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[1]_i_1 
       (.I0(dividend[1]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[2]_i_1 
       (.I0(dividend[2]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[3]_i_1 
       (.I0(dividend[3]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[4]_i_1 
       (.I0(dividend[4]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[5]_i_1 
       (.I0(dividend[5]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[6]_i_1 
       (.I0(dividend[6]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[5] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[7]_i_1 
       (.I0(dividend[7]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[8]_i_1 
       (.I0(dividend[8]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[7] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Q[9]_i_1 
       (.I0(dividend[9]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\Q_reg_n_0_[8] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\Q[9]_i_1_n_0 ));
  FDCE \Q_reg[0] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(resetare),
        .D(\Q[0]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[0] ));
  FDCE \Q_reg[10] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(resetare),
        .D(\Q[10]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[10] ));
  FDCE \Q_reg[11] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(resetare),
        .D(\Q[11]_i_2_n_0 ),
        .Q(L[0]));
  FDCE \Q_reg[1] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(resetare),
        .D(\Q[1]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[1] ));
  FDCE \Q_reg[2] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(resetare),
        .D(\Q[2]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[2] ));
  FDCE \Q_reg[3] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(resetare),
        .D(\Q[3]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[3] ));
  FDCE \Q_reg[4] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(resetare),
        .D(\Q[4]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[4] ));
  FDCE \Q_reg[5] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(resetare),
        .D(\Q[5]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[5] ));
  FDCE \Q_reg[6] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(resetare),
        .D(\Q[6]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[6] ));
  FDCE \Q_reg[7] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(resetare),
        .D(\Q[7]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[7] ));
  FDCE \Q_reg[8] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(resetare),
        .D(\Q[8]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[8] ));
  FDCE \Q_reg[9] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(resetare),
        .D(\Q[9]_i_1_n_0 ),
        .Q(\Q_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \contor[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[0] ),
        .O(\contor[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \contor[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\contor_reg_n_0_[0] ),
        .O(\contor[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEABAAAA)) 
    \contor[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\contor_reg_n_0_[1] ),
        .I2(\contor_reg_n_0_[0] ),
        .I3(\contor_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(contor[2]));
  LUT6 #(
    .INIT(64'hFFFEAAABAAAAAAAA)) 
    \contor[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\contor_reg_n_0_[2] ),
        .I2(\contor_reg_n_0_[0] ),
        .I3(\contor_reg_n_0_[1] ),
        .I4(\contor_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(contor[3]));
  FDCE #(
    .INIT(1'b0)) 
    \contor_reg[0] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(resetare),
        .D(\contor[0]_i_1_n_0 ),
        .Q(\contor_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \contor_reg[1] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .CLR(resetare),
        .D(\contor[1]_i_1_n_0 ),
        .Q(\contor_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b0)) 
    \contor_reg[2] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .D(contor[2]),
        .PRE(resetare),
        .Q(\contor_reg_n_0_[2] ));
  FDPE #(
    .INIT(1'b0)) 
    \contor_reg[3] 
       (.C(clk),
        .CE(\Q[11]_i_1_n_0 ),
        .D(contor[3]),
        .PRE(resetare),
        .Q(\contor_reg_n_0_[3] ));
  LUT2 #(
    .INIT(4'hE)) 
    gata_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(gata),
        .O(gata_i_1_n_0));
  FDCE gata_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(resetare),
        .D(gata_i_1_n_0),
        .Q(gata));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1
       (.I0(L[7]),
        .I1(M[7]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2
       (.I0(L[6]),
        .I1(M[6]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3
       (.I0(L[5]),
        .I1(M[5]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4
       (.I0(L[4]),
        .I1(M[4]),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_1
       (.I0(L[11]),
        .I1(M[11]),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_2
       (.I0(L[10]),
        .I1(M[10]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_3
       (.I0(L[9]),
        .I1(M[9]),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_4
       (.I0(L[8]),
        .I1(M[8]),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_1
       (.I0(L[12]),
        .I1(M[12]),
        .O(i__carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1
       (.I0(L[3]),
        .I1(M[3]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2
       (.I0(L[2]),
        .I1(M[2]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3
       (.I0(L[1]),
        .I1(M[1]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4
       (.I0(L[0]),
        .I1(M[0]),
        .O(i__carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(L[3:0]),
        .O({\plusOp_inferred__0/i__carry_n_4 ,\plusOp_inferred__0/i__carry_n_5 ,\plusOp_inferred__0/i__carry_n_6 ,\plusOp_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(L[7:4]),
        .O({\plusOp_inferred__0/i__carry__0_n_4 ,\plusOp_inferred__0/i__carry__0_n_5 ,\plusOp_inferred__0/i__carry__0_n_6 ,\plusOp_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__1_n_0 ,\plusOp_inferred__0/i__carry__1_n_1 ,\plusOp_inferred__0/i__carry__1_n_2 ,\plusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI(L[11:8]),
        .O({\plusOp_inferred__0/i__carry__1_n_4 ,\plusOp_inferred__0/i__carry__1_n_5 ,\plusOp_inferred__0/i__carry__1_n_6 ,\plusOp_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__2 
       (.CI(\plusOp_inferred__0/i__carry__1_n_0 ),
        .CO(\NLW_plusOp_inferred__0/i__carry__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__2_O_UNCONNECTED [3:1],p_0_in}),
        .S({1'b0,1'b0,1'b0,i__carry__2_i_1_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    \quotient[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(resetare),
        .O(\quotient[11]_i_1_n_0 ));
  FDRE \quotient_reg[0] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(\Q_reg_n_0_[0] ),
        .Q(quotient[0]),
        .R(1'b0));
  FDRE \quotient_reg[10] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(\Q_reg_n_0_[10] ),
        .Q(quotient[10]),
        .R(1'b0));
  FDRE \quotient_reg[11] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(L[0]),
        .Q(quotient[11]),
        .R(1'b0));
  FDRE \quotient_reg[1] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(\Q_reg_n_0_[1] ),
        .Q(quotient[1]),
        .R(1'b0));
  FDRE \quotient_reg[2] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(\Q_reg_n_0_[2] ),
        .Q(quotient[2]),
        .R(1'b0));
  FDRE \quotient_reg[3] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(\Q_reg_n_0_[3] ),
        .Q(quotient[3]),
        .R(1'b0));
  FDRE \quotient_reg[4] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(\Q_reg_n_0_[4] ),
        .Q(quotient[4]),
        .R(1'b0));
  FDRE \quotient_reg[5] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(\Q_reg_n_0_[5] ),
        .Q(quotient[5]),
        .R(1'b0));
  FDRE \quotient_reg[6] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(\Q_reg_n_0_[6] ),
        .Q(quotient[6]),
        .R(1'b0));
  FDRE \quotient_reg[7] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(\Q_reg_n_0_[7] ),
        .Q(quotient[7]),
        .R(1'b0));
  FDRE \quotient_reg[8] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(\Q_reg_n_0_[8] ),
        .Q(quotient[8]),
        .R(1'b0));
  FDRE \quotient_reg[9] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(\Q_reg_n_0_[9] ),
        .Q(quotient[9]),
        .R(1'b0));
  FDRE \remainder_reg[0] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(L[1]),
        .Q(remainder[0]),
        .R(1'b0));
  FDRE \remainder_reg[10] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(L[11]),
        .Q(remainder[10]),
        .R(1'b0));
  FDRE \remainder_reg[11] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(L[12]),
        .Q(remainder[11]),
        .R(1'b0));
  FDRE \remainder_reg[12] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(\A_reg_n_0_[12] ),
        .Q(remainder[12]),
        .R(1'b0));
  FDRE \remainder_reg[1] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(L[2]),
        .Q(remainder[1]),
        .R(1'b0));
  FDRE \remainder_reg[2] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(L[3]),
        .Q(remainder[2]),
        .R(1'b0));
  FDRE \remainder_reg[3] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(L[4]),
        .Q(remainder[3]),
        .R(1'b0));
  FDRE \remainder_reg[4] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(L[5]),
        .Q(remainder[4]),
        .R(1'b0));
  FDRE \remainder_reg[5] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(L[6]),
        .Q(remainder[5]),
        .R(1'b0));
  FDRE \remainder_reg[6] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(L[7]),
        .Q(remainder[6]),
        .R(1'b0));
  FDRE \remainder_reg[7] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(L[8]),
        .Q(remainder[7]),
        .R(1'b0));
  FDRE \remainder_reg[8] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(L[9]),
        .Q(remainder[8]),
        .R(1'b0));
  FDRE \remainder_reg[9] 
       (.C(clk),
        .CE(\quotient[11]_i_1_n_0 ),
        .D(L[10]),
        .Q(remainder[9]),
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
