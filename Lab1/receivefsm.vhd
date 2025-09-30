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

entity receivefsm is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           baud_en : in STD_LOGIC;
           rx : in STD_LOGIC;
           rx_data : out STD_LOGIC_VECTOR (7 downto 0);
           rx_rdy : out STD_LOGIC);
end receivefsm;

architecture Behavioral of receivefsm is

type state_type is (idle, start, bits, waitt, stop);
signal state : state_type := idle; 
signal baud_cnt : STD_LOGIC_VECTOR (3 downto 0);
signal bit_cnt : STD_LOGIC_VECTOR (2 downto 0);

begin

    -- FSM-ul cu tranzitia de stari pentru componenta de receptie
    process(clk, rst)
    begin
        if rst = '1' then
            state <= idle;
        elsif rising_edge(clk) then
            if baud_en = '1' then
                
                case state is
           --TO DO 
           --de implementat tranzitia de stari pentru FSM-ul de receptie pe baza Figurii 1.6 din sectiunea 1.3.3
   
                end case;       
            end if;
        end if;
    end process;

    -- FSM outputs
    process (state)
    begin
        case state is
            when idle => rx_rdy <= '0';
            when start => rx_rdy <='0';
            when bits => rx_rdy <='0'; 
            when stop => rx_rdy <='0';
            when waitt => rx_rdy <='1';
            when others => rx_rdy <='X';
        end case;
    end process;
    
end Behavioral;