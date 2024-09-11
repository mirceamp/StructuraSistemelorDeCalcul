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

entity MPG is
    Port ( en : out STD_LOGIC;
           input : in STD_LOGIC;
           clock : in STD_LOGIC);
end MPG;

architecture Behavioral of MPG is

signal count_int : STD_LOGIC_VECTOR (17 downto 0) := (others => '0');
signal Q1 : STD_LOGIC := '0';
signal Q2 : STD_LOGIC := '0';
signal Q3 : STD_LOGIC := '0';

begin

    en <= Q2 AND (not Q3);

    process (clock)
    begin
        if clock='1' and clock'event then
            count_int <= count_int + 1;
        end if;
    end process;

    process (clock)
    begin
        if clock'event and clock='1' then
            if count_int(17 downto 0) = "111111111111111111" then
                Q1 <= input;
            end if;
        end if;
    end process;

    process (clock)
    begin
        if clock'event and clock='1' then
            Q2 <= Q1;
            Q3 <= Q2;
        end if;
    end process;

end Behavioral;