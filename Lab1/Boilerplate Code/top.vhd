----------------------------------------------------------------------------------
-- Company: Universitatea Tehnica din Cluj-Napoca
-- Engineer: S.L. Dr. Ing. Mircea Paul Muresan
-- 
-- Create Date: 25.08.2024 22:50:20
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: UART Zybo
-- Target Devices: Zybo 7000 si Zybo Z20
-- Tool Versions: Vivado 2024

----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity top is
  Port ( clk : in STD_LOGIC;
        led : out std_logic_vector(3 downto 0);
        sw : in std_logic_vector(3 downto 0);
        btn : in std_logic_vector(3 downto 0);
        rx : in STD_LOGIC;
        tx : out STD_LOGIC
        );
end top;

architecture Behavioral of top is

component MPG is
    Port ( en : out STD_LOGIC;
           input : in STD_LOGIC;
           clock : in STD_LOGIC);
end component;

component transmitfsm
    Port ( clk: STD_LOGIC;
           rst : in STD_LOGIC;
           baud_en : in STD_LOGIC;
           tx_en : in STD_LOGIC;
           tx_data : in STD_LOGIC_VECTOR (7 downto 0);
           tx : out STD_LOGIC;
           tx_rdy : out STD_LOGIC);
end component;

component receivefsm
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           baud_en : in STD_LOGIC;
           rx : in STD_LOGIC;
           rx_data : out STD_LOGIC_VECTOR (7 downto 0);
           rx_rdy : out STD_LOGIC);
end component;

-- UART
signal baud_en, baud_en_x16, tx_start, tx_en, tx_rdy, tx_rdy1, rx_rdy, rx_rdy1 : STD_LOGIC;
signal cnt : STD_LOGIC_VECTOR(13 downto 0) := (others => '0');
signal cnt_x16 : STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
signal tx_reg, rx_reg : STD_LOGIC_VECTOR(23 downto 0);
signal tx_digit, rx_digit : STD_LOGIC_VECTOR(5 downto 0);
signal tx_data : STD_LOGIC_VECTOR(7 downto 0);
signal rx_data : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
signal tx_digit_cnt : STD_LOGIC_VECTOR(1 downto 0);
signal rx_digit_cnt : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');

signal en: STD_LOGIC; 

signal transmitionData : std_logic_vector(23 downto 0);


begin


     monopulse1: MPG port map(en, btn(0), clk);
    -- *************** UART Tx ***************
    -- Send on UART  
    
    -- generate baud_en for 125Mhz clock
    process(clk)
    begin
        if rising_edge(clk) then
            if cnt = #Numar then --TO DO de calculat valoarea lui #Numar 
                baud_en <= '1';
                cnt <= (others => '0');
            else
                baud_en <= '0';
                cnt <= cnt + 1;
            end if;
        end if;
    end process;
    
    -- generate tx_start - 1clk period signal marking the UART trasmit 
    -- at the beggining of current instruction; 
    -- initiates the serial tx procedure
    process(clk)
    begin
        if rising_edge(clk) then
            tx_start <= en;  
        end if;
    end process;

    -- load of tx_data
    process(clk)
    begin
        if rising_edge(clk) then
            if tx_start = '1' then
                tx_reg <= transmitionData;
            end if;
        end if;
    end process;
    
    -- generate tx_en
    process(clk)
    begin
        if rising_edge(clk) then
            if tx_start = '1' then
                tx_en <= '1';
            elsif baud_en = '1' and tx_digit_cnt = 3 then
                tx_en <= '0';
            end if;
        end if;
    end process;

    -- generate tx_digit_cnt
    process(clk)
    begin
        if rising_edge(clk) then
            tx_rdy1 <= tx_rdy; -- 1 clk delay 
            if tx_start = '1' then 
                tx_digit_cnt <= (others => '0');
            elsif tx_rdy = '1' and tx_rdy1 = '0' then
                tx_digit_cnt <= tx_digit_cnt + 1;
            end if;
        end if;
    end process;
    
    -- digit selection
    with tx_digit_cnt select
       tx_digit <= tx_reg(23 downto 18) when "00",
                tx_reg(17 downto 12) when "01",
                tx_reg(11 downto 6)  when "10",
                tx_reg(5 downto 0)   when "11",
                (others => 'X') when others;
    
    -- digit conversion to ASCII
    with tx_digit select
        tx_data <= x"30" when "000000", -- '0'
                   x"31" when "000001", -- '1'
                   x"32" when "000010", -- '2'
                   x"33" when "000011", -- '3'
                   x"34" when "000100", -- '4'
                   x"35" when "000101", -- '5'
                   --TO DO De definit restul secventei
                   x"39" when "001001", -- '9'
                   x"41" when "001010", -- 'A'
                   x"42" when "001011", -- 'B'
                   x"43" when "001100", -- 'C'
                   --TO DO De definit restul secventei
                   x"5A" when "100011", -- 'Z'
                   (others => 'X') when others;
    
    -- UART transmit
    inst_TFSM: transmitfsm port map(clk, '0', baud_en, tx_en, tx_data, tx, tx_rdy);

    -- *************** UART Rx ***************
 
    -- generate baud_en x 16 for 125Mhz clock
    process(clk)
    begin
        if rising_edge(clk) then
            if cnt_x16 = #Numar2 then --TO DO de calculat valoarea lui #Numar 2
                baud_en_x16 <= '1';
                cnt_x16 <= (others => '0');
            else
                baud_en_x16 <= '0';
                cnt_x16 <= cnt_x16 + 1;
            end if;
        end if;
    end process;
    
    -- UART receive
    inst_RFSM: receivefsm port map(clk, '0', baud_en_x16, rx, rx_data, rx_rdy);

    -- digit conversion from ASCII
    with rx_data select
       rx_digit <= "000000" when x"30", -- '0'
                "000001" when x"31", -- '1'
                "000010" when x"32", -- '2'
                "000011" when x"33", -- '3'
                "000100" when x"34", -- '4'
                "000101" when x"35", -- '5'
				   --TO DO De definit restul secventei
                "001001" when x"39", -- '9'
                "001010" when x"41", -- 'A'
                "001011" when x"42", -- 'B'
                "001100" when x"43", -- 'C'
                   --TO DO De definit restul secventei
                "100011" when x"5A", -- 'Z'
                (others => 'X') when others;
                  
    -- generate rx_digit_cnt & rx_reg
    process(clk)
    begin
        if rising_edge(clk) then
            rx_rdy1 <= rx_rdy; -- 1 clk delay 
            if rx_rdy = '1' and rx_rdy1 = '0' then
               case rx_digit_cnt is
                    when "00" => rx_reg(23 downto 18) <= rx_digit; -- 6 biți
                    when "01" => rx_reg(17 downto 12) <= rx_digit; -- 6 biți
                    when "10" => rx_reg(11 downto 6)  <= rx_digit; -- 6 biți
                    when "11" => rx_reg(5 downto 0)   <= rx_digit; -- 6 biți
                    when others => rx_reg(5 downto 0) <= (others => 'X');
                end case;
                rx_digit_cnt <= rx_digit_cnt + 1;
            end if;
        end if;
    end process;

transmitionData <= B"010110_010110_011001_000001" when sw(1) = '1' else rx_reg;

end Behavioral;
