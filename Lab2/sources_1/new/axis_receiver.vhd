library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity axis_receiver is
port(
    clk            : in  std_logic;
    rst_n          : in  std_logic;            -- reset activ LOW

    -- control backpressure (ex. dintr-un switch)
    ready_en       : in  std_logic;            -- '1' = accepta date (TREADY=1), '0' = blocheaza (TREADY=0)

    -- AXI4-Stream Slave (Sink)
    s_axis_tdata   : in  std_logic_vector(7 downto 0);
    s_axis_tvalid  : in  std_logic;
    s_axis_tlast   : in  std_logic;    --pt exercitiile propuse       
    s_axis_tready  : out std_logic;

    -- iesire către placa
    leds           : out std_logic_vector(3 downto 0)
  );
end axis_receiver;

architecture Behavioral of axis_receiver is
    signal leds_r : std_logic_vector(3 downto 0) := (others => '0');
begin
 -- backpressure simplu: TREADY urmeaza ready_en
  s_axis_tready <= ready_en;
  
   process(clk)
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        leds_r <= (others => '0');
      else
        -- Lasam transferul să aiba loc DOAR la handshake: TVALID=1 și TREADY=1
        if (s_axis_tvalid = '1' and ready_en = '1') then
          -- luam nibble-ul jos si adunam 1; aritmetica pe 4 biti face wrap (mod 16)
          leds_r <= std_logic_vector(unsigned(s_axis_tdata(3 downto 0)) + 1);
        end if;
      end if;
    end if;
  end process;

  leds <= leds_r;
end Behavioral;
