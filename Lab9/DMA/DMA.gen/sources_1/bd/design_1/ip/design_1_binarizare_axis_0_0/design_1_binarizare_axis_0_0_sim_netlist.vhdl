-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sun Nov  8 02:58:26 2026
-- Host        : DESKTOP-46511SM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/MMP/DMA/DMA.gen/sources_1/bd/design_1/ip/design_1_binarizare_axis_0_0/design_1_binarizare_axis_0_0_sim_netlist.vhdl
-- Design      : design_1_binarizare_axis_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_binarizare_axis_0_0_binarizare_axis is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_binarizare_axis_0_0_binarizare_axis : entity is "binarizare_axis";
end design_1_binarizare_axis_0_0_binarizare_axis;

architecture STRUCTURE of design_1_binarizare_axis_0_0_binarizare_axis is
  signal \m_axis_tdata0_inferred__0/m_axis_tdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata0_inferred__1/m_axis_tdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata0_inferred__2/m_axis_tdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
begin
\m_axis_tdata0_inferred__0/m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => \m_axis_tdata0_inferred__0/m_axis_tdata[8]_INST_0_i_1_n_0\,
      I2 => s_axis_tdata(9),
      I3 => s_axis_tdata(11),
      I4 => s_axis_tdata(10),
      O => m_axis_tdata(1)
    );
\m_axis_tdata0_inferred__0/m_axis_tdata[8]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(8),
      I3 => s_axis_tdata(14),
      O => \m_axis_tdata0_inferred__0/m_axis_tdata[8]_INST_0_i_1_n_0\
    );
\m_axis_tdata0_inferred__1/m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => \m_axis_tdata0_inferred__1/m_axis_tdata[16]_INST_0_i_1_n_0\,
      I2 => s_axis_tdata(17),
      I3 => s_axis_tdata(19),
      I4 => s_axis_tdata(18),
      O => m_axis_tdata(2)
    );
\m_axis_tdata0_inferred__1/m_axis_tdata[16]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(16),
      I3 => s_axis_tdata(22),
      O => \m_axis_tdata0_inferred__1/m_axis_tdata[16]_INST_0_i_1_n_0\
    );
\m_axis_tdata0_inferred__2/m_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => s_axis_tdata(31),
      I1 => \m_axis_tdata0_inferred__2/m_axis_tdata[24]_INST_0_i_1_n_0\,
      I2 => s_axis_tdata(25),
      I3 => s_axis_tdata(27),
      I4 => s_axis_tdata(26),
      O => m_axis_tdata(3)
    );
\m_axis_tdata0_inferred__2/m_axis_tdata[24]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_tdata(29),
      I1 => s_axis_tdata(28),
      I2 => s_axis_tdata(24),
      I3 => s_axis_tdata(30),
      O => \m_axis_tdata0_inferred__2/m_axis_tdata[24]_INST_0_i_1_n_0\
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => \m_axis_tdata[0]_INST_0_i_1_n_0\,
      I2 => s_axis_tdata(1),
      I3 => s_axis_tdata(3),
      I4 => s_axis_tdata(2),
      O => m_axis_tdata(0)
    );
\m_axis_tdata[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(0),
      I3 => s_axis_tdata(6),
      O => \m_axis_tdata[0]_INST_0_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_binarizare_axis_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_binarizare_axis_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_binarizare_axis_0_0 : entity is "design_1_binarizare_axis_0_0,binarizare_axis,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_binarizare_axis_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_binarizare_axis_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_binarizare_axis_0_0 : entity is "binarizare_axis,Vivado 2024.1";
end design_1_binarizare_axis_0_0;

architecture STRUCTURE of design_1_binarizare_axis_0_0 is
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \^s_axis_tkeep\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axis_tlast\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_parameter of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis TKEEP";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_parameter of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis TKEEP";
begin
  \^s_axis_tkeep\(3 downto 0) <= s_axis_tkeep(3 downto 0);
  \^s_axis_tlast\ <= s_axis_tlast;
  m_axis_tdata(31) <= \^m_axis_tdata\(24);
  m_axis_tdata(30) <= \^m_axis_tdata\(24);
  m_axis_tdata(29) <= \^m_axis_tdata\(24);
  m_axis_tdata(28) <= \^m_axis_tdata\(24);
  m_axis_tdata(27) <= \^m_axis_tdata\(24);
  m_axis_tdata(26) <= \^m_axis_tdata\(24);
  m_axis_tdata(25) <= \^m_axis_tdata\(24);
  m_axis_tdata(24) <= \^m_axis_tdata\(24);
  m_axis_tdata(23) <= \^m_axis_tdata\(16);
  m_axis_tdata(22) <= \^m_axis_tdata\(16);
  m_axis_tdata(21) <= \^m_axis_tdata\(16);
  m_axis_tdata(20) <= \^m_axis_tdata\(16);
  m_axis_tdata(19) <= \^m_axis_tdata\(16);
  m_axis_tdata(18) <= \^m_axis_tdata\(16);
  m_axis_tdata(17) <= \^m_axis_tdata\(16);
  m_axis_tdata(16) <= \^m_axis_tdata\(16);
  m_axis_tdata(15) <= \^m_axis_tdata\(8);
  m_axis_tdata(14) <= \^m_axis_tdata\(8);
  m_axis_tdata(13) <= \^m_axis_tdata\(8);
  m_axis_tdata(12) <= \^m_axis_tdata\(8);
  m_axis_tdata(11) <= \^m_axis_tdata\(8);
  m_axis_tdata(10) <= \^m_axis_tdata\(8);
  m_axis_tdata(9) <= \^m_axis_tdata\(8);
  m_axis_tdata(8) <= \^m_axis_tdata\(8);
  m_axis_tdata(7) <= \^m_axis_tdata\(0);
  m_axis_tdata(6) <= \^m_axis_tdata\(0);
  m_axis_tdata(5) <= \^m_axis_tdata\(0);
  m_axis_tdata(4) <= \^m_axis_tdata\(0);
  m_axis_tdata(3) <= \^m_axis_tdata\(0);
  m_axis_tdata(2) <= \^m_axis_tdata\(0);
  m_axis_tdata(1) <= \^m_axis_tdata\(0);
  m_axis_tdata(0) <= \^m_axis_tdata\(0);
  m_axis_tkeep(3 downto 0) <= \^s_axis_tkeep\(3 downto 0);
  m_axis_tlast <= \^s_axis_tlast\;
U0: entity work.design_1_binarizare_axis_0_0_binarizare_axis
     port map (
      m_axis_tdata(3) => \^m_axis_tdata\(24),
      m_axis_tdata(2) => \^m_axis_tdata\(16),
      m_axis_tdata(1) => \^m_axis_tdata\(8),
      m_axis_tdata(0) => \^m_axis_tdata\(0),
      s_axis_tdata(31 downto 0) => s_axis_tdata(31 downto 0)
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => aresetn,
      O => m_axis_tvalid
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tready,
      I1 => aresetn,
      O => s_axis_tready
    );
end STRUCTURE;
