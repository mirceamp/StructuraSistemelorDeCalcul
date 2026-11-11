
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity binarizare_axis is
    port (
        aclk          : in  std_logic;
        aresetn       : in  std_logic;

        -- Date primite de la DMA (MM2S)
        s_axis_tdata  : in  std_logic_vector(31 downto 0);
        s_axis_tvalid : in  std_logic;
        s_axis_tready : out std_logic;
        s_axis_tlast  : in  std_logic;
        s_axis_tkeep  : in  std_logic_vector(3 downto 0);

        -- Date trimise catre DMA (S2MM)
        m_axis_tdata  : out std_logic_vector(31 downto 0);
        m_axis_tvalid : out std_logic;
        m_axis_tready : in  std_logic;
        m_axis_tlast  : out std_logic;
        m_axis_tkeep  : out std_logic_vector(3 downto 0)
    );
end binarizare_axis;

architecture Behavioral of binarizare_axis is
begin

    -- Binarizare: 4 pixeli de cate 8 biti
    process(s_axis_tdata)
        variable rezultat : std_logic_vector(31 downto 0);
        variable pixel    : unsigned(7 downto 0);
    begin
        rezultat := (others => '0');

        for i in 0 to 3 loop
            pixel := unsigned(
                s_axis_tdata(8*i+7 downto 8*i));

            if pixel > 128 then
                rezultat(8*i+7 downto 8*i) :=
                    x"FF";
            else
                rezultat(8*i+7 downto 8*i) :=
                    x"00";
            end if;
        end loop;

        m_axis_tdata <= rezultat;
    end process;

    -- AXI4-Stream handshake
    s_axis_tready <= m_axis_tready and aresetn;
    m_axis_tvalid <= s_axis_tvalid and aresetn;

    -- Ultimul cuvant din transfer
    m_axis_tlast <= s_axis_tlast;

    -- Octetii valizi
    m_axis_tkeep <= s_axis_tkeep;

end Behavioral;
