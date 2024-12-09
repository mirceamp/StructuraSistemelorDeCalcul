--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
--Date        : Sun Nov  3 00:29:46 2024
--Host        : DESKTOP-46511SM running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    BRAM_PORTA_0_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    BRAM_PORTA_0_clk : out STD_LOGIC;
    BRAM_PORTA_0_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_0_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_0_en : out STD_LOGIC;
    BRAM_PORTA_0_rst : out STD_LOGIC;
    BRAM_PORTA_0_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTA_1_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    BRAM_PORTA_1_clk : out STD_LOGIC;
    BRAM_PORTA_1_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_1_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_1_en : out STD_LOGIC;
    BRAM_PORTA_1_rst : out STD_LOGIC;
    BRAM_PORTA_1_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTA_2_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    BRAM_PORTA_2_clk : out STD_LOGIC;
    BRAM_PORTA_2_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_2_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_2_en : out STD_LOGIC;
    BRAM_PORTA_2_rst : out STD_LOGIC;
    BRAM_PORTA_2_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTA_3_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    BRAM_PORTA_3_clk : out STD_LOGIC;
    BRAM_PORTA_3_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_3_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_3_en : out STD_LOGIC;
    BRAM_PORTA_3_rst : out STD_LOGIC;
    BRAM_PORTA_3_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    finished_conversion : in STD_LOGIC_VECTOR ( 0 to 0 );
    start_conversion : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    BRAM_PORTA_0_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    BRAM_PORTA_0_clk : out STD_LOGIC;
    BRAM_PORTA_0_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_0_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_0_en : out STD_LOGIC;
    BRAM_PORTA_0_rst : out STD_LOGIC;
    BRAM_PORTA_0_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTA_1_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    BRAM_PORTA_1_clk : out STD_LOGIC;
    BRAM_PORTA_1_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_1_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_1_en : out STD_LOGIC;
    BRAM_PORTA_1_rst : out STD_LOGIC;
    BRAM_PORTA_1_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTA_2_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    BRAM_PORTA_2_clk : out STD_LOGIC;
    BRAM_PORTA_2_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_2_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_2_en : out STD_LOGIC;
    BRAM_PORTA_2_rst : out STD_LOGIC;
    BRAM_PORTA_2_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAM_PORTA_3_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    BRAM_PORTA_3_clk : out STD_LOGIC;
    BRAM_PORTA_3_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_3_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORTA_3_en : out STD_LOGIC;
    BRAM_PORTA_3_rst : out STD_LOGIC;
    BRAM_PORTA_3_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    start_conversion : out STD_LOGIC_VECTOR ( 0 to 0 );
    finished_conversion : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      BRAM_PORTA_0_addr(12 downto 0) => BRAM_PORTA_0_addr(12 downto 0),
      BRAM_PORTA_0_clk => BRAM_PORTA_0_clk,
      BRAM_PORTA_0_din(31 downto 0) => BRAM_PORTA_0_din(31 downto 0),
      BRAM_PORTA_0_dout(31 downto 0) => BRAM_PORTA_0_dout(31 downto 0),
      BRAM_PORTA_0_en => BRAM_PORTA_0_en,
      BRAM_PORTA_0_rst => BRAM_PORTA_0_rst,
      BRAM_PORTA_0_we(3 downto 0) => BRAM_PORTA_0_we(3 downto 0),
      BRAM_PORTA_1_addr(12 downto 0) => BRAM_PORTA_1_addr(12 downto 0),
      BRAM_PORTA_1_clk => BRAM_PORTA_1_clk,
      BRAM_PORTA_1_din(31 downto 0) => BRAM_PORTA_1_din(31 downto 0),
      BRAM_PORTA_1_dout(31 downto 0) => BRAM_PORTA_1_dout(31 downto 0),
      BRAM_PORTA_1_en => BRAM_PORTA_1_en,
      BRAM_PORTA_1_rst => BRAM_PORTA_1_rst,
      BRAM_PORTA_1_we(3 downto 0) => BRAM_PORTA_1_we(3 downto 0),
      BRAM_PORTA_2_addr(12 downto 0) => BRAM_PORTA_2_addr(12 downto 0),
      BRAM_PORTA_2_clk => BRAM_PORTA_2_clk,
      BRAM_PORTA_2_din(31 downto 0) => BRAM_PORTA_2_din(31 downto 0),
      BRAM_PORTA_2_dout(31 downto 0) => BRAM_PORTA_2_dout(31 downto 0),
      BRAM_PORTA_2_en => BRAM_PORTA_2_en,
      BRAM_PORTA_2_rst => BRAM_PORTA_2_rst,
      BRAM_PORTA_2_we(3 downto 0) => BRAM_PORTA_2_we(3 downto 0),
      BRAM_PORTA_3_addr(12 downto 0) => BRAM_PORTA_3_addr(12 downto 0),
      BRAM_PORTA_3_clk => BRAM_PORTA_3_clk,
      BRAM_PORTA_3_din(31 downto 0) => BRAM_PORTA_3_din(31 downto 0),
      BRAM_PORTA_3_dout(31 downto 0) => BRAM_PORTA_3_dout(31 downto 0),
      BRAM_PORTA_3_en => BRAM_PORTA_3_en,
      BRAM_PORTA_3_rst => BRAM_PORTA_3_rst,
      BRAM_PORTA_3_we(3 downto 0) => BRAM_PORTA_3_we(3 downto 0),
      finished_conversion(0) => finished_conversion(0),
      start_conversion(0) => start_conversion(0)
    );
end STRUCTURE;
