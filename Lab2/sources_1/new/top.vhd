library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity top is
  port(
    clk : in  std_logic;                       
    led : out std_logic_vector(3 downto 0);   
    sw  : in  std_logic_vector(3 downto 0);   
    btn : in  std_logic_vector(3 downto 0)    
  );
end top;

architecture Behavioral of top is

  component MPG is
  generic(
    CLK_HZ      : integer := 125_000_000; -- ZYBO Z7: 125 MHz
    DEBOUNCE_MS : integer := 10        
  );
  port(
    enable : out std_logic;  -- impuls de 1 tact la fiecare apasare 
    btn    : in  std_logic;  -- buton (active-HIGH pe ZYBO/Nexys/Basys)
    clk    : in  std_logic   -- clock
  );
  end component;

  -- AXI4-Stream Data FIFO (single clock, TLAST=Yes, write data count/prog_full active)
component axis_data_fifo_0 is
  port (
    s_axis_aresetn       : in  std_logic;
    s_axis_aclk          : in  std_logic;

    s_axis_tvalid        : in  std_logic;
    s_axis_tready        : out std_logic;
    s_axis_tdata         : in  std_logic_vector(7 downto 0);
    s_axis_tlast         : in  std_logic;

    m_axis_tvalid        : out std_logic;
    m_axis_tready        : in  std_logic;
    m_axis_tdata         : out std_logic_vector(7 downto 0);
    m_axis_tlast         : out std_logic;

    axis_wr_data_count   : out std_logic_vector(31 downto 0);
    prog_full            : out std_logic
  );
end component;

  --------------------------------------------------------------------
  -- Semnale AXI: TX -> FIFO (S side)
  --------------------------------------------------------------------
  signal s_tdata   : std_logic_vector(7 downto 0);
  signal s_tvalid  : std_logic;
  signal s_tready  : std_logic;
  signal s_tlast   : std_logic;

  --------------------------------------------------------------------
  -- Semnale AXI: FIFO -> RX (M side)
  --------------------------------------------------------------------
  signal m_tdata   : std_logic_vector(7 downto 0);
  signal m_tvalid  : std_logic;
  signal m_tready  : std_logic;
  signal m_tlast   : std_logic;

  --------------------------------------------------------------------
  -- Status FIFO
  --------------------------------------------------------------------
  signal fifo_wr_count : std_logic_vector(31 downto 0);
  signal fifo_prog_full: std_logic;

  --------------------------------------------------------------------
  -- LED-uri
  --------------------------------------------------------------------
  signal leds_data  : std_logic_vector(3 downto 0); --care e elementul de la indicele curent din FIFO
  signal leds_level : std_logic_vector(3 downto 0); --cate elemente mai avem in FIFO

  --------------------------------------------------------------------
  -- Control butoane
  --------------------------------------------------------------------
  signal start_pulse : std_logic;  -- un beat de pachet la transmitere (btn0)
  signal rst_pulse   : std_logic;  -- puls MPG pe reset 
  signal rst_n       : std_logic;  -- reset activ LOW 
  signal step_pulse  : std_logic;  -- TREADY un ciclu 
 
begin
  --------------------------------------------------------------------
  -- MPG pentru START (btn0)
  --------------------------------------------------------------------
  mpg_start: MPG
    generic map (
    CLK_HZ      => 125_000_000,  -- ZYBO Z7
    DEBOUNCE_MS => 10
  )
    port map(
      enable    => start_pulse,
      btn => btn(0),
      clk => clk
    );
--------------------------------------------------------------------
  -- MPG pentru RESET (btn1)
  --------------------------------------------------------------------
  mpg_reset: MPG
  generic map (
    CLK_HZ      => 125_000_000,  -- ZYBO Z7
    DEBOUNCE_MS => 10
  )
    port map(
      enable    => rst_pulse,
      btn => btn(1),
      clk => clk
    );
  rst_n <= not rst_pulse;

  --------------------------------------------------------------------
  -- MPG pentru STEP (btn2) -> TREADY un singur ciclu la fiecare apasare
  --------------------------------------------------------------------
  mpg_step: MPG
   generic map (
    CLK_HZ      => 125_000_000,  -- ZYBO Z7
    DEBOUNCE_MS => 10
  )
    port map(
      enable    => step_pulse,
      btn => btn(2),
      clk => clk
    );

  --------------------------------------------------------------------
  -- Transmitter (AXI-Stream Master)
  --------------------------------------------------------------------
  u_tx: entity work.axis_transmitter
    generic map( ROM_DEPTH => 16 )
    port map(
      clk            => clk,
      rst_n          => rst_n,
      start          => start_pulse,
      m_axis_tdata   => s_tdata,
      m_axis_tvalid  => s_tvalid,
      m_axis_tlast   => s_tlast,
      m_axis_tready  => s_tready
    );

  --------------------------------------------------------------------
  -- FIFO (single clock)
  --------------------------------------------------------------------
 u_fifo: axis_data_fifo_0
  port map(
    s_axis_aclk          => clk,
    s_axis_aresetn       => rst_n,

    s_axis_tvalid        => s_tvalid,
    s_axis_tready        => s_tready,
    s_axis_tdata         => s_tdata,
    s_axis_tlast         => s_tlast,

    m_axis_tvalid        => m_tvalid,
    m_axis_tready        => m_tready,
    m_axis_tdata         => m_tdata,
    m_axis_tlast         => m_tlast,

    axis_wr_data_count   => fifo_wr_count,
    prog_full            => fifo_prog_full
  );

  --------------------------------------------------------------------
  -- Receiver (AXI-Stream Slave)
  -- Backpressure "pas cu pas": m_tready = step_pulse (un beat/apasare btn2)
  --------------------------------------------------------------------
  m_tready <= step_pulse;

  u_rx: entity work.axis_receiver
    port map(
      clk            => clk,
      rst_n          => rst_n,
      ready_en       => m_tready,      
      s_axis_tdata   => m_tdata,
      s_axis_tvalid  => m_tvalid,
      s_axis_tlast   => m_tlast,
      s_axis_tready  => open,         
      leds           => leds_data
    );

  --------------------------------------------------------------------
  -- Bargraph pentru nivelul FIFO 
  --------------------------------------------------------------------
  process(fifo_wr_count)
    variable cnt : integer;
  begin
    cnt := to_integer(unsigned(fifo_wr_count(5 downto 0))); 
    if cnt = 0 then
      leds_level <= "0000";
    elsif cnt < 8 then
      leds_level <= "0001";
    elsif cnt < 16 then
      leds_level <= "0011";
    elsif cnt < 24 then
      leds_level <= "0111";
    else
      leds_level <= "1111";
    end if;
  end process;

  --------------------------------------------------------------------
 
  led <= leds_level when sw(2)='1' else leds_data;

end Behavioral;
