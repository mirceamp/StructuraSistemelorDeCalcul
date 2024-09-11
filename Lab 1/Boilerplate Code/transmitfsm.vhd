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

entity transmitfsm is
    Port ( clk: in STD_LOGIC;
           rst : in STD_LOGIC;
           baud_en : in STD_LOGIC;
           tx_en : in STD_LOGIC;
           tx_data : in STD_LOGIC_VECTOR (7 downto 0);
           tx : out STD_LOGIC;
           tx_rdy : out STD_LOGIC);
end transmitfsm;

architecture Behavioral of transmitfsm is

type state_type is (idle, start, bits, stop); 
signal state : state_type := idle;
signal bit_cnt : STD_LOGIC_VECTOR(2 downto 0);

begin

-- FSM state transition
--Aici ar trebui implementată logica de tranziție a stărilor FSM, pe baza intrărilor clk și rst.   
--Acesta este locul în care FSM-ul va trece între stările idle, start, bits și stop în funcție de 
--condițiile și semnalele de intrare

    process (clk, rst)
    begin
   --TO DO
   -- De implementat tranzitia de stari a FSM-ului pe baza Figurii  1.3 de la sectiunea 1.3.2
   --din lucrarea de laborator
    end process;
    
    -- FSM outputs
    process(state, tx_data, bit_cnt)
    begin
        case state is
            when idle => tx <= '1'; tx_rdy <= '1'; 
            when start => tx <= '0'; tx_rdy <= '0';
            when bits => tx <= tx_data(conv_integer(bit_cnt));
                         tx_rdy <= '0';
            when stop => tx <= '1'; tx_rdy <= '0'; 
            when others => tx <= 'X'; tx_rdy <= 'X';
        end case;
    end process;

end Behavioral;