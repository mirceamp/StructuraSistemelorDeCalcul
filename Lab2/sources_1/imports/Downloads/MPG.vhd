-- Monopulse Generator (MPG) robust: sync + debounce + impuls 1 tact
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MPG is
  generic(
    CLK_HZ      : integer := 125_000_000; -- ZYBO Z7: 125 MHz
    DEBOUNCE_MS : integer := 10           -- fereastră de debounce ~10 ms
  );
  port(
    enable : out std_logic;  -- impuls de 1 tact la fiecare apăsare (front ↑)
    btn    : in  std_logic;  -- buton (active-HIGH pe ZYBO/Nexys/Basys)
    clk    : in  std_logic   -- clock
  );
end MPG;

architecture Behavioral of MPG is
  -- numărul de tacte pentru debounce
  constant CNT_MAX : unsigned(31 downto 0) :=
    to_unsigned( (CLK_HZ/1000)*DEBOUNCE_MS, 32 );

  -- sincronizare 2FF la clk (evită metastabilitatea)
  signal s0, s1 : std_logic := '0';

  -- nivel stabil după debounce
  signal db_q      : std_logic := '0';
  signal db_q_prev : std_logic := '0';

  -- contor de debounce (numără DOAR când se schimbă intrarea sincronizată)
  signal db_cnt : unsigned(31 downto 0) := (others=>'0');
begin
  --------------------------------------------------------------------
  -- 1) Sincronizare la clock (două flip-flopuri)
  --------------------------------------------------------------------
  process(clk)
  begin
    if rising_edge(clk) then
      s0 <= btn;
      s1 <= s0;
    end if;
  end process;

  --------------------------------------------------------------------
  -- 2) Debounce: când s1 ≠ db_q, număr până la CNT_MAX apoi accept noul nivel
  --------------------------------------------------------------------
  process(clk)
  begin
    if rising_edge(clk) then
      if s1 /= db_q then
        if db_cnt = CNT_MAX then
          db_q   <= s1;                 -- accept noul nivel stabil
          db_cnt <= (others=>'0');
        else
          db_cnt <= db_cnt + 1;
        end if;
      else
        db_cnt <= (others=>'0');        -- fără schimbare -> reset contor
      end if;
    end if;
  end process;

  --------------------------------------------------------------------
  -- 3) Edge detect (front crescător) pe nivelul debounced -> impuls 1 tact
  --------------------------------------------------------------------
  process(clk)
  begin
    if rising_edge(clk) then
      db_q_prev <= db_q;
    end if;
  end process;

  enable <= '1' when (db_q = '1' and db_q_prev = '0') else '0';
end Behavioral;
