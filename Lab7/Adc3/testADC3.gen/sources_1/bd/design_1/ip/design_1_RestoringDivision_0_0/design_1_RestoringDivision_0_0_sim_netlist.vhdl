-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Oct 18 12:20:08 2024
-- Host        : DESKTOP-46511SM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_RestoringDivision_0_0/design_1_RestoringDivision_0_0_sim_netlist.vhdl
-- Design      : design_1_RestoringDivision_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_RestoringDivision_0_0_RestoringDivision is
  port (
    quotient : out STD_LOGIC_VECTOR ( 11 downto 0 );
    remainder : out STD_LOGIC_VECTOR ( 12 downto 0 );
    gata : out STD_LOGIC;
    resetare : in STD_LOGIC;
    start : in STD_LOGIC;
    clk : in STD_LOGIC;
    divisor : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dividend : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_RestoringDivision_0_0_RestoringDivision : entity is "RestoringDivision";
end design_1_RestoringDivision_0_0_RestoringDivision;

architecture STRUCTURE of design_1_RestoringDivision_0_0_RestoringDivision is
  signal \A[12]_i_1_n_0\ : STD_LOGIC;
  signal \A[12]_i_2_n_0\ : STD_LOGIC;
  signal \A_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal L : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal M : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \M[11]_i_2_n_0\ : STD_LOGIC;
  signal \M[11]_i_3_n_0\ : STD_LOGIC;
  signal \M[11]_i_4_n_0\ : STD_LOGIC;
  signal \M[11]_i_5_n_0\ : STD_LOGIC;
  signal \M[3]_i_2_n_0\ : STD_LOGIC;
  signal \M[3]_i_3_n_0\ : STD_LOGIC;
  signal \M[3]_i_4_n_0\ : STD_LOGIC;
  signal \M[7]_i_2_n_0\ : STD_LOGIC;
  signal \M[7]_i_3_n_0\ : STD_LOGIC;
  signal \M[7]_i_4_n_0\ : STD_LOGIC;
  signal \M[7]_i_5_n_0\ : STD_LOGIC;
  signal M_0 : STD_LOGIC;
  signal \M_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \M_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \M_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \M_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \M_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \M_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \M_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \M_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \M_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \M_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \M_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \M_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \M_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \M_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \M_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \M_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \M_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \M_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \M_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \M_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \M_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \M_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \M_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \M_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \M_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \Q[0]_i_1_n_0\ : STD_LOGIC;
  signal \Q[10]_i_1_n_0\ : STD_LOGIC;
  signal \Q[11]_i_1_n_0\ : STD_LOGIC;
  signal \Q[11]_i_2_n_0\ : STD_LOGIC;
  signal \Q[1]_i_1_n_0\ : STD_LOGIC;
  signal \Q[2]_i_1_n_0\ : STD_LOGIC;
  signal \Q[3]_i_1_n_0\ : STD_LOGIC;
  signal \Q[4]_i_1_n_0\ : STD_LOGIC;
  signal \Q[5]_i_1_n_0\ : STD_LOGIC;
  signal \Q[6]_i_1_n_0\ : STD_LOGIC;
  signal \Q[7]_i_1_n_0\ : STD_LOGIC;
  signal \Q[8]_i_1_n_0\ : STD_LOGIC;
  signal \Q[9]_i_1_n_0\ : STD_LOGIC;
  signal \Q_reg_n_0_[0]\ : STD_LOGIC;
  signal \Q_reg_n_0_[10]\ : STD_LOGIC;
  signal \Q_reg_n_0_[1]\ : STD_LOGIC;
  signal \Q_reg_n_0_[2]\ : STD_LOGIC;
  signal \Q_reg_n_0_[3]\ : STD_LOGIC;
  signal \Q_reg_n_0_[4]\ : STD_LOGIC;
  signal \Q_reg_n_0_[5]\ : STD_LOGIC;
  signal \Q_reg_n_0_[6]\ : STD_LOGIC;
  signal \Q_reg_n_0_[7]\ : STD_LOGIC;
  signal \Q_reg_n_0_[8]\ : STD_LOGIC;
  signal \Q_reg_n_0_[9]\ : STD_LOGIC;
  signal contor : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \contor[0]_i_1_n_0\ : STD_LOGIC;
  signal \contor[1]_i_1_n_0\ : STD_LOGIC;
  signal \contor_reg_n_0_[0]\ : STD_LOGIC;
  signal \contor_reg_n_0_[1]\ : STD_LOGIC;
  signal \contor_reg_n_0_[2]\ : STD_LOGIC;
  signal \contor_reg_n_0_[3]\ : STD_LOGIC;
  signal \^gata\ : STD_LOGIC;
  signal gata_i_1_n_0 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal in5 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \quotient[11]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_M_reg[12]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_M_reg[12]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_plusOp_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \A[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \A[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \A[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \A[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \A[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \A[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \A[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \A[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \A[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \A[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \A[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \A[9]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "s_asteptare:001,s_calcul:010,s_final:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "s_asteptare:001,s_calcul:010,s_final:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "s_asteptare:001,s_calcul:010,s_final:100,";
  attribute SOFT_HLUTNM of \Q[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \contor[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \contor[1]_i_1\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__2\ : label is 35;
begin
  gata <= \^gata\;
\A[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L(0),
      I1 => p_0_in,
      I2 => \plusOp_inferred__0/i__carry_n_7\,
      O => in5(0)
    );
\A[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L(10),
      I1 => p_0_in,
      I2 => \plusOp_inferred__0/i__carry__1_n_5\,
      O => in5(10)
    );
\A[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L(11),
      I1 => p_0_in,
      I2 => \plusOp_inferred__0/i__carry__1_n_4\,
      O => in5(11)
    );
\A[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => resetare,
      I1 => start,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \A[12]_i_1_n_0\
    );
\A[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => start,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => resetare,
      O => \A[12]_i_2_n_0\
    );
\A[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in,
      I1 => L(12),
      O => in5(12)
    );
\A[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L(1),
      I1 => p_0_in,
      I2 => \plusOp_inferred__0/i__carry_n_6\,
      O => in5(1)
    );
\A[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L(2),
      I1 => p_0_in,
      I2 => \plusOp_inferred__0/i__carry_n_5\,
      O => in5(2)
    );
\A[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L(3),
      I1 => p_0_in,
      I2 => \plusOp_inferred__0/i__carry_n_4\,
      O => in5(3)
    );
\A[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L(4),
      I1 => p_0_in,
      I2 => \plusOp_inferred__0/i__carry__0_n_7\,
      O => in5(4)
    );
\A[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L(5),
      I1 => p_0_in,
      I2 => \plusOp_inferred__0/i__carry__0_n_6\,
      O => in5(5)
    );
\A[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L(6),
      I1 => p_0_in,
      I2 => \plusOp_inferred__0/i__carry__0_n_5\,
      O => in5(6)
    );
\A[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L(7),
      I1 => p_0_in,
      I2 => \plusOp_inferred__0/i__carry__0_n_4\,
      O => in5(7)
    );
\A[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L(8),
      I1 => p_0_in,
      I2 => \plusOp_inferred__0/i__carry__1_n_7\,
      O => in5(8)
    );
\A[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => L(9),
      I1 => p_0_in,
      I2 => \plusOp_inferred__0/i__carry__1_n_6\,
      O => in5(9)
    );
\A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \A[12]_i_2_n_0\,
      D => in5(0),
      Q => L(1),
      R => \A[12]_i_1_n_0\
    );
\A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \A[12]_i_2_n_0\,
      D => in5(10),
      Q => L(11),
      R => \A[12]_i_1_n_0\
    );
\A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \A[12]_i_2_n_0\,
      D => in5(11),
      Q => L(12),
      R => \A[12]_i_1_n_0\
    );
\A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \A[12]_i_2_n_0\,
      D => in5(12),
      Q => \A_reg_n_0_[12]\,
      R => \A[12]_i_1_n_0\
    );
\A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \A[12]_i_2_n_0\,
      D => in5(1),
      Q => L(2),
      R => \A[12]_i_1_n_0\
    );
\A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \A[12]_i_2_n_0\,
      D => in5(2),
      Q => L(3),
      R => \A[12]_i_1_n_0\
    );
\A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \A[12]_i_2_n_0\,
      D => in5(3),
      Q => L(4),
      R => \A[12]_i_1_n_0\
    );
\A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \A[12]_i_2_n_0\,
      D => in5(4),
      Q => L(5),
      R => \A[12]_i_1_n_0\
    );
\A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \A[12]_i_2_n_0\,
      D => in5(5),
      Q => L(6),
      R => \A[12]_i_1_n_0\
    );
\A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \A[12]_i_2_n_0\,
      D => in5(6),
      Q => L(7),
      R => \A[12]_i_1_n_0\
    );
\A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \A[12]_i_2_n_0\,
      D => in5(7),
      Q => L(8),
      R => \A[12]_i_1_n_0\
    );
\A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \A[12]_i_2_n_0\,
      D => in5(8),
      Q => L(9),
      R => \A[12]_i_1_n_0\
    );
\A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \A[12]_i_2_n_0\,
      D => in5(9),
      Q => L(10),
      R => \A[12]_i_1_n_0\
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => start,
      I3 => \FSM_onehot_state[2]_i_2_n_0\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCDDCCC8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => start,
      I3 => \FSM_onehot_state[2]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEA0000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => start,
      I3 => \FSM_onehot_state[2]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[1]\,
      I2 => \contor_reg_n_0_[0]\,
      I3 => \contor_reg_n_0_[3]\,
      I4 => \contor_reg_n_0_[2]\,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => resetare,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => resetare,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => resetare,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
\M[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(11),
      O => \M[11]_i_2_n_0\
    );
\M[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(10),
      O => \M[11]_i_3_n_0\
    );
\M[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(9),
      O => \M[11]_i_4_n_0\
    );
\M[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(8),
      O => \M[11]_i_5_n_0\
    );
\M[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => start,
      O => M_0
    );
\M[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(3),
      O => \M[3]_i_2_n_0\
    );
\M[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(2),
      O => \M[3]_i_3_n_0\
    );
\M[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(1),
      O => \M[3]_i_4_n_0\
    );
\M[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(7),
      O => \M[7]_i_2_n_0\
    );
\M[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(6),
      O => \M[7]_i_3_n_0\
    );
\M[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(5),
      O => \M[7]_i_4_n_0\
    );
\M[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => divisor(4),
      O => \M[7]_i_5_n_0\
    );
\M_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => M_0,
      CLR => resetare,
      D => \M_reg[3]_i_1_n_7\,
      Q => M(0)
    );
\M_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => M_0,
      CLR => resetare,
      D => \M_reg[11]_i_1_n_5\,
      Q => M(10)
    );
\M_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => M_0,
      CLR => resetare,
      D => \M_reg[11]_i_1_n_4\,
      Q => M(11)
    );
\M_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_reg[7]_i_1_n_0\,
      CO(3) => \M_reg[11]_i_1_n_0\,
      CO(2) => \M_reg[11]_i_1_n_1\,
      CO(1) => \M_reg[11]_i_1_n_2\,
      CO(0) => \M_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \M_reg[11]_i_1_n_4\,
      O(2) => \M_reg[11]_i_1_n_5\,
      O(1) => \M_reg[11]_i_1_n_6\,
      O(0) => \M_reg[11]_i_1_n_7\,
      S(3) => \M[11]_i_2_n_0\,
      S(2) => \M[11]_i_3_n_0\,
      S(1) => \M[11]_i_4_n_0\,
      S(0) => \M[11]_i_5_n_0\
    );
\M_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => M_0,
      CLR => resetare,
      D => \M_reg[12]_i_2_n_7\,
      Q => M(12)
    );
\M_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_reg[11]_i_1_n_0\,
      CO(3 downto 0) => \NLW_M_reg[12]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_M_reg[12]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => \M_reg[12]_i_2_n_7\,
      S(3 downto 0) => B"0001"
    );
\M_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => M_0,
      CLR => resetare,
      D => \M_reg[3]_i_1_n_6\,
      Q => M(1)
    );
\M_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => M_0,
      CLR => resetare,
      D => \M_reg[3]_i_1_n_5\,
      Q => M(2)
    );
\M_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => M_0,
      CLR => resetare,
      D => \M_reg[3]_i_1_n_4\,
      Q => M(3)
    );
\M_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \M_reg[3]_i_1_n_0\,
      CO(2) => \M_reg[3]_i_1_n_1\,
      CO(1) => \M_reg[3]_i_1_n_2\,
      CO(0) => \M_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \M_reg[3]_i_1_n_4\,
      O(2) => \M_reg[3]_i_1_n_5\,
      O(1) => \M_reg[3]_i_1_n_6\,
      O(0) => \M_reg[3]_i_1_n_7\,
      S(3) => \M[3]_i_2_n_0\,
      S(2) => \M[3]_i_3_n_0\,
      S(1) => \M[3]_i_4_n_0\,
      S(0) => divisor(0)
    );
\M_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => M_0,
      CLR => resetare,
      D => \M_reg[7]_i_1_n_7\,
      Q => M(4)
    );
\M_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => M_0,
      CLR => resetare,
      D => \M_reg[7]_i_1_n_6\,
      Q => M(5)
    );
\M_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => M_0,
      CLR => resetare,
      D => \M_reg[7]_i_1_n_5\,
      Q => M(6)
    );
\M_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => M_0,
      CLR => resetare,
      D => \M_reg[7]_i_1_n_4\,
      Q => M(7)
    );
\M_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_reg[3]_i_1_n_0\,
      CO(3) => \M_reg[7]_i_1_n_0\,
      CO(2) => \M_reg[7]_i_1_n_1\,
      CO(1) => \M_reg[7]_i_1_n_2\,
      CO(0) => \M_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \M_reg[7]_i_1_n_4\,
      O(2) => \M_reg[7]_i_1_n_5\,
      O(1) => \M_reg[7]_i_1_n_6\,
      O(0) => \M_reg[7]_i_1_n_7\,
      S(3) => \M[7]_i_2_n_0\,
      S(2) => \M[7]_i_3_n_0\,
      S(1) => \M[7]_i_4_n_0\,
      S(0) => \M[7]_i_5_n_0\
    );
\M_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => M_0,
      CLR => resetare,
      D => \M_reg[11]_i_1_n_7\,
      Q => M(8)
    );
\M_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => M_0,
      CLR => resetare,
      D => \M_reg[11]_i_1_n_6\,
      Q => M(9)
    );
\Q[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => dividend(0),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => p_0_in,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[0]_i_1_n_0\
    );
\Q[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(10),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[9]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[10]_i_1_n_0\
    );
\Q[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => start,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \Q[11]_i_1_n_0\
    );
\Q[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(11),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[10]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[11]_i_2_n_0\
    );
\Q[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(1),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[1]_i_1_n_0\
    );
\Q[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(2),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[2]_i_1_n_0\
    );
\Q[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(3),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[3]_i_1_n_0\
    );
\Q[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(4),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[4]_i_1_n_0\
    );
\Q[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(5),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[4]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[5]_i_1_n_0\
    );
\Q[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(6),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[5]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[6]_i_1_n_0\
    );
\Q[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(7),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[6]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[7]_i_1_n_0\
    );
\Q[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(8),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[7]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[8]_i_1_n_0\
    );
\Q[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => dividend(9),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \Q_reg_n_0_[8]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \Q[9]_i_1_n_0\
    );
\Q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => resetare,
      D => \Q[0]_i_1_n_0\,
      Q => \Q_reg_n_0_[0]\
    );
\Q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => resetare,
      D => \Q[10]_i_1_n_0\,
      Q => \Q_reg_n_0_[10]\
    );
\Q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => resetare,
      D => \Q[11]_i_2_n_0\,
      Q => L(0)
    );
\Q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => resetare,
      D => \Q[1]_i_1_n_0\,
      Q => \Q_reg_n_0_[1]\
    );
\Q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => resetare,
      D => \Q[2]_i_1_n_0\,
      Q => \Q_reg_n_0_[2]\
    );
\Q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => resetare,
      D => \Q[3]_i_1_n_0\,
      Q => \Q_reg_n_0_[3]\
    );
\Q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => resetare,
      D => \Q[4]_i_1_n_0\,
      Q => \Q_reg_n_0_[4]\
    );
\Q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => resetare,
      D => \Q[5]_i_1_n_0\,
      Q => \Q_reg_n_0_[5]\
    );
\Q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => resetare,
      D => \Q[6]_i_1_n_0\,
      Q => \Q_reg_n_0_[6]\
    );
\Q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => resetare,
      D => \Q[7]_i_1_n_0\,
      Q => \Q_reg_n_0_[7]\
    );
\Q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => resetare,
      D => \Q[8]_i_1_n_0\,
      Q => \Q_reg_n_0_[8]\
    );
\Q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => resetare,
      D => \Q[9]_i_1_n_0\,
      Q => \Q_reg_n_0_[9]\
    );
\contor[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[0]\,
      O => \contor[0]_i_1_n_0\
    );
\contor[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \contor_reg_n_0_[1]\,
      I2 => \contor_reg_n_0_[0]\,
      O => \contor[1]_i_1_n_0\
    );
\contor[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEABAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \contor_reg_n_0_[1]\,
      I2 => \contor_reg_n_0_[0]\,
      I3 => \contor_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => contor(2)
    );
\contor[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAABAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \contor_reg_n_0_[2]\,
      I2 => \contor_reg_n_0_[0]\,
      I3 => \contor_reg_n_0_[1]\,
      I4 => \contor_reg_n_0_[3]\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => contor(3)
    );
\contor_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => resetare,
      D => \contor[0]_i_1_n_0\,
      Q => \contor_reg_n_0_[0]\
    );
\contor_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      CLR => resetare,
      D => \contor[1]_i_1_n_0\,
      Q => \contor_reg_n_0_[1]\
    );
\contor_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      D => contor(2),
      PRE => resetare,
      Q => \contor_reg_n_0_[2]\
    );
\contor_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \Q[11]_i_1_n_0\,
      D => contor(3),
      PRE => resetare,
      Q => \contor_reg_n_0_[3]\
    );
gata_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^gata\,
      O => gata_i_1_n_0
    );
gata_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => resetare,
      D => gata_i_1_n_0,
      Q => \^gata\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(7),
      I1 => M(7),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(6),
      I1 => M(6),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(5),
      I1 => M(5),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(4),
      I1 => M(4),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(11),
      I1 => M(11),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(10),
      I1 => M(10),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(9),
      I1 => M(9),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(8),
      I1 => M(8),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(12),
      I1 => M(12),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(3),
      I1 => M(3),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(2),
      I1 => M(2),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(1),
      I1 => M(1),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => L(0),
      I1 => M(0),
      O => \i__carry_i_4_n_0\
    );
\plusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__0/i__carry_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(3 downto 0),
      O(3) => \plusOp_inferred__0/i__carry_n_4\,
      O(2) => \plusOp_inferred__0/i__carry_n_5\,
      O(1) => \plusOp_inferred__0/i__carry_n_6\,
      O(0) => \plusOp_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\plusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(7 downto 4),
      O(3) => \plusOp_inferred__0/i__carry__0_n_4\,
      O(2) => \plusOp_inferred__0/i__carry__0_n_5\,
      O(1) => \plusOp_inferred__0/i__carry__0_n_6\,
      O(0) => \plusOp_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\plusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(11 downto 8),
      O(3) => \plusOp_inferred__0/i__carry__1_n_4\,
      O(2) => \plusOp_inferred__0/i__carry__1_n_5\,
      O(1) => \plusOp_inferred__0/i__carry__1_n_6\,
      O(0) => \plusOp_inferred__0/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\plusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__1_n_0\,
      CO(3 downto 0) => \NLW_plusOp_inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_plusOp_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => p_0_in,
      S(3 downto 1) => B"000",
      S(0) => \i__carry__2_i_1_n_0\
    );
\quotient[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => resetare,
      O => \quotient[11]_i_1_n_0\
    );
\quotient_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => \Q_reg_n_0_[0]\,
      Q => quotient(0),
      R => '0'
    );
\quotient_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => \Q_reg_n_0_[10]\,
      Q => quotient(10),
      R => '0'
    );
\quotient_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => L(0),
      Q => quotient(11),
      R => '0'
    );
\quotient_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => \Q_reg_n_0_[1]\,
      Q => quotient(1),
      R => '0'
    );
\quotient_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => \Q_reg_n_0_[2]\,
      Q => quotient(2),
      R => '0'
    );
\quotient_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => \Q_reg_n_0_[3]\,
      Q => quotient(3),
      R => '0'
    );
\quotient_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => \Q_reg_n_0_[4]\,
      Q => quotient(4),
      R => '0'
    );
\quotient_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => \Q_reg_n_0_[5]\,
      Q => quotient(5),
      R => '0'
    );
\quotient_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => \Q_reg_n_0_[6]\,
      Q => quotient(6),
      R => '0'
    );
\quotient_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => \Q_reg_n_0_[7]\,
      Q => quotient(7),
      R => '0'
    );
\quotient_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => \Q_reg_n_0_[8]\,
      Q => quotient(8),
      R => '0'
    );
\quotient_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => \Q_reg_n_0_[9]\,
      Q => quotient(9),
      R => '0'
    );
\remainder_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => L(1),
      Q => remainder(0),
      R => '0'
    );
\remainder_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => L(11),
      Q => remainder(10),
      R => '0'
    );
\remainder_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => L(12),
      Q => remainder(11),
      R => '0'
    );
\remainder_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => \A_reg_n_0_[12]\,
      Q => remainder(12),
      R => '0'
    );
\remainder_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => L(2),
      Q => remainder(1),
      R => '0'
    );
\remainder_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => L(3),
      Q => remainder(2),
      R => '0'
    );
\remainder_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => L(4),
      Q => remainder(3),
      R => '0'
    );
\remainder_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => L(5),
      Q => remainder(4),
      R => '0'
    );
\remainder_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => L(6),
      Q => remainder(5),
      R => '0'
    );
\remainder_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => L(7),
      Q => remainder(6),
      R => '0'
    );
\remainder_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => L(8),
      Q => remainder(7),
      R => '0'
    );
\remainder_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => L(9),
      Q => remainder(8),
      R => '0'
    );
\remainder_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \quotient[11]_i_1_n_0\,
      D => L(10),
      Q => remainder(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_RestoringDivision_0_0 is
  port (
    clk : in STD_LOGIC;
    resetare : in STD_LOGIC;
    start : in STD_LOGIC;
    dividend : in STD_LOGIC_VECTOR ( 11 downto 0 );
    divisor : in STD_LOGIC_VECTOR ( 11 downto 0 );
    quotient : out STD_LOGIC_VECTOR ( 11 downto 0 );
    remainder : out STD_LOGIC_VECTOR ( 12 downto 0 );
    gata : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_RestoringDivision_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_RestoringDivision_0_0 : entity is "design_1_RestoringDivision_0_0,RestoringDivision,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_RestoringDivision_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_RestoringDivision_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_RestoringDivision_0_0 : entity is "RestoringDivision,Vivado 2024.1";
end design_1_RestoringDivision_0_0;

architecture STRUCTURE of design_1_RestoringDivision_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
U0: entity work.design_1_RestoringDivision_0_0_RestoringDivision
     port map (
      clk => clk,
      dividend(11 downto 0) => dividend(11 downto 0),
      divisor(11 downto 0) => divisor(11 downto 0),
      gata => gata,
      quotient(11 downto 0) => quotient(11 downto 0),
      remainder(12 downto 0) => remainder(12 downto 0),
      resetare => resetare,
      start => start
    );
end STRUCTURE;
