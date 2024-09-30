-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Sep 26 03:20:24 2024
-- Host        : DESKTOP-46511SM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/MMP/IntreruperiExterne3/IntreruperiExterne3.gen/sources_1/bd/design_1/ip/design_1_inmultitor_shift_add_0_0/design_1_inmultitor_shift_add_0_0_stub.vhdl
-- Design      : design_1_inmultitor_shift_add_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_inmultitor_shift_add_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    resetare : in STD_LOGIC;
    start : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rezultat : out STD_LOGIC_VECTOR ( 8 downto 0 );
    gata : out STD_LOGIC
  );

end design_1_inmultitor_shift_add_0_0;

architecture stub of design_1_inmultitor_shift_add_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetare,start,a[3:0],b[3:0],rezultat[8:0],gata";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "inmultitor_shift_add,Vivado 2024.1";
begin
end;
