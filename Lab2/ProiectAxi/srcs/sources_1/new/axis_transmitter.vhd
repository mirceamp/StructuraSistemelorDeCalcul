library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity axis_transmitter is
  generic( ROM_DEPTH : natural := 16 );
  port (
    clk            : in  std_logic;
    rst_n          : in  std_logic;          -- reset activ LOW
    start          : in  std_logic;          -- impuls 1 tact (de la MPG)

    m_axis_tdata   : out std_logic_vector(7 downto 0);
    m_axis_tvalid  : out std_logic;
    m_axis_tlast   : out std_logic;
    m_axis_tready  : in  std_logic
  );
end entity;

architecture rtl of axis_transmitter is
  -- ROM cu valori pe 4 biti (trimitem pe 8 biti, nibble sus = 0)
  type rom_t is array(0 to 15) of std_logic_vector(3 downto 0);
  constant MEM_ROM : rom_t := (
    0=>x"0",1=>x"1",2=>x"3",3=>x"7",
    4=>x"F",5=>x"2",6=>x"4",7=>x"8",
    8=>x"5",9=>x"A",10=>x"0",11=>x"6",
    12=>x"9",13=>x"C",14=>x"D",15=>x"E"
  );

  -- index în ROM (incrementăm DUPA handshake)
  signal idx      : integer range 0 to ROM_DEPTH-1 := 0;

  -- registre AXI
  signal tdata_r  : std_logic_vector(7 downto 0) := (others=>'0');
  signal tvalid_r : std_logic := '0';
  signal tlast_r  : std_logic := '0';
begin
  m_axis_tdata  <= tdata_r;
  m_axis_tvalid <= tvalid_r;
  m_axis_tlast  <= tlast_r;

  process(clk)
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        idx      <= 0;
        tdata_r  <= (others=>'0');
        tvalid_r <= '0';
        tlast_r  <= '0';

      else
        -- PORNIRE: la fiecare START, daca nu avem un beat în asteptare,
        -- incarcam UN singur beat și setam TVALID=1, TLAST=1
        if (start = '1') and (tvalid_r = '0') then
          tdata_r  <= (7 downto 4 => '0') & MEM_ROM(idx);
          tvalid_r <= '1';
          tlast_r  <= '1';            -- pachet de 1 beat
        end if;

        -- HANDSHAKE: cand FIFO (sau RX) e gata, consumam beat-ul
        if (tvalid_r = '1') and (m_axis_tready = '1') then
          tvalid_r <= '0';
          tlast_r  <= '0';
          -- trecem la urmatoarea valoare din ROM (wrap)
          if idx = ROM_DEPTH-1 then
            idx <= 0;
          else
            idx <= idx + 1;
          end if;
        end if;

      end if;
    end if;
  end process;
end architecture;
