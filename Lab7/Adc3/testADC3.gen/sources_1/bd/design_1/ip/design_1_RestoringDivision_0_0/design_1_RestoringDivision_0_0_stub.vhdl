-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Oct 18 12:20:07 2024
-- Host        : DESKTOP-46511SM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/MMP/ADCFinal/Adc3/testADC3.gen/sources_1/bd/design_1/ip/design_1_RestoringDivision_0_0/design_1_RestoringDivision_0_0_stub.vhdl
-- Design      : design_1_RestoringDivision_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_RestoringDivision_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    resetare : in STD_LOGIC;
    start : in STD_LOGIC;
    dividend : in STD_LOGIC_VECTOR ( 11 downto 0 );
    divisor : in STD_LOGIC_VECTOR ( 11 downto 0 );
    quotient : out STD_LOGIC_VECTOR ( 11 downto 0 );
    remainder : out STD_LOGIC_VECTOR ( 12 downto 0 );
    gata : out STD_LOGIC
  );

end design_1_RestoringDivision_0_0;

architecture stub of design_1_RestoringDivision_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetare,start,dividend[11:0],divisor[11:0],quotient[11:0],remainder[12:0],gata";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "RestoringDivision,Vivado 2024.1";
begin
end;
