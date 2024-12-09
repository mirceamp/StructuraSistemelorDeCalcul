----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2024 16:27:17
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
--  Port ( );
end top;

architecture Behavioral of top is

signal clk_0 : std_logic;
signal clk_1 : std_logic;
signal clk_2 : std_logic;
signal clk_3 : std_logic;

signal rst_0 : std_logic;
signal rst_1 : std_logic;
signal rst_2 : std_logic;
signal rst_3 : std_logic;
------------------------------------------------------------------------
--Declaram porturile de interfatare pt fiecare controller de la 0 la 3
------------------------------------------------------------------------
--Controller 0
--BRAM PORT A, PS access through software
signal bram_porta_0_addr: std_logic_vector(12 downto 0);
signal bram_porta_0_din : std_logic_vector(31 downto 0);
signal bram_porta_0_dout : std_logic_vector(31 downto 0);
signal bram_porta_0_en : std_logic;
signal bram_porta_0_we : std_logic_vector(3 downto 0);

--BRAM port B PL ACCES
signal bram_portb_0_addr : std_logic_vector(10 downto 0) :=  (others => '0');
signal bram_portb_0_din : std_logic_vector(31 downto 0) := (others => '0');
signal bram_portb_0_we : STD_LOGIC := '0';
signal bram_portb_0_dout : std_logic_vector(31 downto 0);
---------------------------------------------------------------------------------
--Controller 1
--BRAM PORT A, PS access through software
signal bram_porta_1_addr: std_logic_vector(12 downto 0);
signal bram_porta_1_din : std_logic_vector(31 downto 0);
signal bram_porta_1_dout : std_logic_vector(31 downto 0);
signal bram_porta_1_en : std_logic;
signal bram_porta_1_we : std_logic_vector(3 downto 0);

--BRAM port B PL ACCES
signal bram_portb_1_addr : std_logic_vector(10 downto 0) :=  (others => '0');
signal bram_portb_1_din : std_logic_vector(31 downto 0) := (others => '0');
signal bram_portb_1_we : STD_LOGIC := '0';
signal bram_portb_1_dout : std_logic_vector(31 downto 0);
---------------------------------------------------------------------------------
--Controller 2
--BRAM PORT A, PS access through software
signal bram_porta_2_addr: std_logic_vector(12 downto 0);
signal bram_porta_2_din : std_logic_vector(31 downto 0);
signal bram_porta_2_dout : std_logic_vector(31 downto 0);
signal bram_porta_2_en : std_logic;
signal bram_porta_2_we : std_logic_vector(3 downto 0);

--BRAM port B PL ACCES
signal bram_portb_2_addr : std_logic_vector(10 downto 0) :=  (others => '0');
signal bram_portb_2_din : std_logic_vector(31 downto 0) := (others => '0');
signal bram_portb_2_we : STD_LOGIC := '0';
signal bram_portb_2_dout : std_logic_vector(31 downto 0);
---------------------------------------------------------------------------------
--Controller 3
--BRAM PORT A, PS access through software
signal bram_porta_3_addr: std_logic_vector(12 downto 0);
signal bram_porta_3_din : std_logic_vector(31 downto 0);
signal bram_porta_3_dout : std_logic_vector(31 downto 0);
signal bram_porta_3_en : std_logic;
signal bram_porta_3_we : std_logic_vector(3 downto 0);

--BRAM port B PL ACCES
signal bram_portb_3_addr : std_logic_vector(10 downto 0) :=  (others => '0');
signal bram_portb_3_din : std_logic_vector(31 downto 0) := (others => '0');
signal bram_portb_3_we : STD_LOGIC := '0';
signal bram_portb_3_dout : std_logic_vector(31 downto 0);
---------------------------------------------------------------------------------
signal start_conv: std_logic_vector(0 downto 0);
signal finish_conv: std_logic_vector(0 downto 0);

signal finish_conv0 : std_logic := '0';
signal finish_conv1 : std_logic := '0';
signal finish_conv2 : std_logic := '0';
signal finish_conv3 : std_logic := '0';
begin

zynq_ps_interface_inst : entity work.design_1_wrapper
        port map (BRAM_PORTA_0_addr => bram_porta_0_addr,
                  BRAM_PORTA_0_CLK => clk_0,
                  BRAM_PORTA_0_din => bram_porta_0_din,
                  BRAM_PORTA_0_dout => bram_porta_0_dout,
                  BRAM_PORTA_0_en => bram_porta_0_en,
                  BRAM_PORTA_0_rst => rst_0,
                  BRAM_PORTA_0_we => bram_porta_0_we,
                  ------------------------------------------------
                  BRAM_PORTA_1_addr => bram_porta_1_addr,
                  BRAM_PORTA_1_clk => clk_1,
                  BRAM_PORTA_1_din => bram_porta_1_din,
                  BRAM_PORTA_1_dout => bram_porta_1_dout,
                  BRAM_PORTA_1_en => bram_porta_1_en,
                  BRAM_PORTA_1_rst => rst_1,
                  BRAM_PORTA_1_we => bram_porta_1_we,
                  -------------------------------------------------
                  BRAM_PORTA_2_addr => bram_porta_2_addr,
                  BRAM_PORTA_2_clk => clk_2,
                  BRAM_PORTA_2_din => bram_porta_2_din,
                  BRAM_PORTA_2_dout => bram_porta_2_dout,
                  BRAM_PORTA_2_en => bram_porta_2_en,
                  BRAM_PORTA_2_rst => rst_2,
                  BRAM_PORTA_2_we => bram_porta_2_we,
                  --------------------------------------------------
                  BRAM_PORTA_3_addr => bram_porta_3_addr,
                  BRAM_PORTA_3_clk => clk_3,
                  BRAM_PORTA_3_din => bram_porta_3_din,
                  BRAM_PORTA_3_dout => bram_porta_3_dout,
                  BRAM_PORTA_3_en => bram_porta_3_en,
                  BRAM_PORTA_3_rst => rst_3,
                  BRAM_PORTA_3_we => bram_porta_3_we,
                  ---------------------------------------------------
                  finished_conversion => finish_conv,
                  start_conversion => start_conv
                  );
 
 --------------------------------------------------------------------------------------------
 --acum mapam memorile BRAM 
 --Memoria 0
 blk_mem_gen0_inst : entity work.blk_mem_gen_0
     port map(
     --ZYNQ access PS through software
         clka => clk_0,
         ena => bram_porta_0_en,
         wea => bram_porta_0_we(0 downto 0),
         addra => bram_porta_0_addr(12 downto 2),
         dina => bram_porta_0_din,
         douta => bram_porta_0_dout, 
         --PL FABRIC ACCESS
         clkb => clk_0,
         enb => '1',
         web(0) => bram_portb_0_we,
         addrb => bram_portb_0_addr,
         dinb => bram_portb_0_din,
         doutb =>  bram_portb_0_dout 
      );
  --Memoria 1
  blk_mem_gen1_inst : entity work.blk_mem_gen_1
     port map(
     --ZYNQ access PS through software
         clka => clk_1,
         ena => bram_porta_1_en,
         wea => bram_porta_1_we(0 downto 0),
         addra => bram_porta_1_addr(12 downto 2),
         dina => bram_porta_1_din,
         douta => bram_porta_1_dout, 
         --PL FABRIC ACCESS
         clkb => clk_1,
         enb => '1',
         web(0) => bram_portb_1_we,
         addrb => bram_portb_1_addr,
         dinb => bram_portb_1_din,
         doutb => bram_portb_1_dout
      );
     --Memoria 2
       blk_mem_gen2_inst : entity work.blk_mem_gen_2
     port map(
     --ZYNQ access PS through software
         clka => clk_2,
         ena => bram_porta_2_en,
         wea => bram_porta_2_we(0 downto 0),
         addra => bram_porta_2_addr(12 downto 2),
         dina => bram_porta_2_din,
         douta => bram_porta_2_dout, 
         --PL FABRIC ACCESS
         clkb => clk_2,
         enb => '1',
         web(0) => bram_portb_2_we,
         addrb => bram_portb_2_addr,
         dinb => bram_portb_2_din,
         doutb => bram_portb_2_dout
      );
      --Memoria 3
     blk_mem_gen3_inst : entity work.blk_mem_gen_3
     port map(
     --ZYNQ access PS through software
         clka => clk_3,
         ena => bram_porta_3_en,
         wea => bram_porta_3_we(0 downto 0),
         addra => bram_porta_3_addr(12 downto 2),
         dina => bram_porta_3_din,
         douta => bram_porta_3_dout, 
         --PL FABRIC ACCESS
         clkb => clk_3,
         enb => '1',
         web(0) => bram_portb_3_we,
         addrb => bram_portb_3_addr,
         dinb => bram_portb_3_din,
         doutb => bram_portb_3_dout
      );                
-------------------------------------------------------------------------------------   
--procesul de binarizare pentru blocul 0              
process(clk_0, rst_0, start_conv)
    type state_type is (WRITE_DISABLE, WAIT_FOR_READ, READ_AND_BINARIZE, WRITE_ENABLE, INCREMENT_ADDR);
    variable current_state : state_type := WRITE_DISABLE;
    variable octet_0, octet_1, octet_2, octet_3 : std_logic_vector(7 downto 0);
    variable din_temp : std_logic_vector(31 downto 0);
begin
    if rising_edge(clk_0) then
        if rst_0 = '1' then
            bram_portb_0_addr <= (others => '0');
            bram_portb_0_din <= (others => '0');
            bram_portb_0_we <= '0';
            finish_conv0 <= '0';
            current_state := WRITE_DISABLE; -- Reset state to initial
        else
            if start_conv(0) = '1' then
                case current_state is
                    when WRITE_DISABLE =>
                        bram_portb_0_we <= '0';  -- Disable writing to BRAM
                        current_state := WAIT_FOR_READ;  -- New state to wait for data
                    when WAIT_FOR_READ =>
                        current_state := READ_AND_BINARIZE;  -- Move to next state after one cycle

                    when READ_AND_BINARIZE =>
                        -- Extract each byte from bram_portb_0_din
                        octet_0 := bram_portb_0_dout(7 downto 0);
                        octet_1 := bram_portb_0_dout(15 downto 8);
                        octet_2 := bram_portb_0_dout(23 downto 16);
                        octet_3 := bram_portb_0_dout(31 downto 24);
                        
                        -- Apply binarization condition
                        if unsigned(octet_0) > 128 then
                            octet_0 := (others => '1');  -- 255
                        else
                            octet_0 := (others => '0');  -- 0
                        end if;

                        if unsigned(octet_1) > 128 then
                            octet_1 := (others => '1');  -- 255
                        else
                            octet_1 := (others => '0');  -- 0
                        end if;

                        if unsigned(octet_2) > 128 then
                            octet_2 := (others => '1');  -- 255
                        else
                            octet_2 := (others => '0');  -- 0
                        end if;

                        if unsigned(octet_3) > 128 then
                            octet_3 := (others => '1');  -- 255
                        else
                            octet_3 := (others => '0');  -- 0
                        end if;

                        -- Concatenate the binarized bytes and prepare to write
                        din_temp := octet_3 & octet_2 & octet_1 & octet_0;
                        bram_portb_0_din <= din_temp;

                        current_state := WRITE_ENABLE;  -- Move to next state

                    when WRITE_ENABLE =>
                        bram_portb_0_we <= '1';  -- Enable writing to BRAM
                        current_state := INCREMENT_ADDR;  -- Move to next state

                    when INCREMENT_ADDR =>
                        if bram_portb_0_addr /= X"7FF" then
                            -- Increment the address
                            bram_portb_0_addr <= std_logic_vector(unsigned(bram_portb_0_addr) + 1);
                            bram_portb_0_we <= '0';  -- Disable writing after increment
                            finish_conv0 <= '0';  -- Conversion not finished
                            current_state := WRITE_DISABLE;  -- Return to initial state
                        else
                            -- If address reaches max, finish conversion
                            finish_conv0 <= '1';
                            bram_portb_0_we <= '0';
                            bram_portb_0_addr <= (others => '0');
                            current_state := WRITE_DISABLE;  -- Reset to initial state
                        end if;

                end case;
            end if;
        end if;
    end if;
end process;
-------------------------------------------------------------------------------------   
--procesul de binarizare pentru blocul 1        
process(clk_1, rst_1, start_conv)
    type state_type is (WRITE_DISABLE, WAIT_FOR_READ, READ_AND_BINARIZE, WRITE_ENABLE, INCREMENT_ADDR);
    variable current_state : state_type := WRITE_DISABLE;
    variable octet_0, octet_1, octet_2, octet_3 : std_logic_vector(7 downto 0);
    variable din_temp : std_logic_vector(31 downto 0);
begin
    if rising_edge(clk_1) then
        if rst_1 = '1' then
            bram_portb_1_addr <= (others => '0');
            bram_portb_1_din <= (others => '0');
            bram_portb_1_we <= '0';
            finish_conv1 <= '0';
            current_state := WRITE_DISABLE; -- Reset state to initial
        else
            if start_conv(0) = '1' then
                case current_state is
                    when WRITE_DISABLE =>
                        bram_portb_1_we <= '0';  -- Disable writing to BRAM
                         current_state := WAIT_FOR_READ;  -- New state to wait for data

                    when WAIT_FOR_READ =>
                        current_state := READ_AND_BINARIZE;  -- Move to next state after one cycle

                    when READ_AND_BINARIZE =>
                        -- Extract each byte from bram_portb_0_din
                        octet_0 := bram_portb_1_dout(7 downto 0);
                        octet_1 := bram_portb_1_dout(15 downto 8);
                        octet_2 := bram_portb_1_dout(23 downto 16);
                        octet_3 := bram_portb_1_dout(31 downto 24);
                        
                        -- Apply binarization condition
                        if unsigned(octet_0) > 128 then
                            octet_0 := (others => '1');  -- 255
                        else
                            octet_0 := (others => '0');  -- 0
                        end if;

                        if unsigned(octet_1) > 128 then
                            octet_1 := (others => '1');  -- 255
                        else
                            octet_1 := (others => '0');  -- 0
                        end if;

                        if unsigned(octet_2) > 128 then
                            octet_2 := (others => '1');  -- 255
                        else
                            octet_2 := (others => '0');  -- 0
                        end if;

                        if unsigned(octet_3) > 128 then
                            octet_3 := (others => '1');  -- 255
                        else
                            octet_3 := (others => '0');  -- 0
                        end if;

                        -- Concatenate the binarized bytes and prepare to write
                        din_temp := octet_3 & octet_2 & octet_1 & octet_0;
                        bram_portb_1_din <= din_temp;

                        current_state := WRITE_ENABLE;  -- Move to next state

                    when WRITE_ENABLE =>
                        bram_portb_1_we <= '1';  -- Enable writing to BRAM
                        current_state := INCREMENT_ADDR;  -- Move to next state

                    when INCREMENT_ADDR =>
                        if bram_portb_1_addr /= X"7FF" then
                            -- Increment the address
                            bram_portb_1_addr <= std_logic_vector(unsigned(bram_portb_1_addr) + 1);
                            bram_portb_1_we <= '0';  -- Disable writing after increment
                            finish_conv1 <= '0';  -- Conversion not finished
                            current_state := WRITE_DISABLE;  -- Return to initial state
                        else
                            -- If address reaches max, finish conversion
                            finish_conv1 <= '1';
                            bram_portb_1_we <= '0';
                            bram_portb_1_addr <= (others => '0');
                            current_state := WRITE_DISABLE;  -- Reset to initial state
                        end if;
                end case;
            end if;
        end if;
    end if;
end process;
-------------------------------------------------------------------------------------   
--procesul de binarizare pentru blocul 2
process(clk_2, rst_2, start_conv)
   type state_type is (WRITE_DISABLE, WAIT_FOR_READ, READ_AND_BINARIZE, WRITE_ENABLE, INCREMENT_ADDR);
   variable current_state : state_type := WRITE_DISABLE;
    variable octet_0, octet_1, octet_2, octet_3 : std_logic_vector(7 downto 0);
    variable din_temp : std_logic_vector(31 downto 0);
begin
    if rising_edge(clk_2) then
        if rst_2 = '1' then
            bram_portb_2_addr <= (others => '0');
            bram_portb_2_din <= (others => '0');
            bram_portb_2_we <= '0';
            finish_conv2 <= '0';
            current_state := WRITE_DISABLE; -- Reset state to initial
        else
            if start_conv(0) = '1' then
                case current_state is
                    when WRITE_DISABLE =>
                        bram_portb_2_we <= '0';  -- Disable writing to BRAM
                       current_state := WAIT_FOR_READ;  -- New state to wait for data

                    when WAIT_FOR_READ =>
                        current_state := READ_AND_BINARIZE;  -- Move to next state after one cycle

                    when READ_AND_BINARIZE =>
                        -- Extract each byte from bram_portb_0_din
                        octet_0 := bram_portb_2_dout(7 downto 0);
                        octet_1 := bram_portb_2_dout(15 downto 8);
                        octet_2 := bram_portb_2_dout(23 downto 16);
                        octet_3 := bram_portb_2_dout(31 downto 24);
                        
                        -- Apply binarization condition
                        if unsigned(octet_0) > 128 then
                            octet_0 := (others => '1');  -- 255
                        else
                            octet_0 := (others => '0');  -- 0
                        end if;

                        if unsigned(octet_1) > 128 then
                            octet_1 := (others => '1');  -- 255
                        else
                            octet_1 := (others => '0');  -- 0
                        end if;

                        if unsigned(octet_2) > 128 then
                            octet_2 := (others => '1');  -- 255
                        else
                            octet_2 := (others => '0');  -- 0
                        end if;

                        if unsigned(octet_3) > 128 then
                            octet_3 := (others => '1');  -- 255
                        else
                            octet_3 := (others => '0');  -- 0
                        end if;

                        -- Concatenate the binarized bytes and prepare to write
                        din_temp := octet_3 & octet_2 & octet_1 & octet_0;
                        bram_portb_2_din <= din_temp;

                        current_state := WRITE_ENABLE;  -- Move to next state

                    when WRITE_ENABLE =>
                        bram_portb_2_we <= '1';  -- Enable writing to BRAM
                        current_state := INCREMENT_ADDR;  -- Move to next state

                    when INCREMENT_ADDR =>
                        if bram_portb_2_addr /= X"7FF" then
                            -- Increment the address
                            bram_portb_2_addr <= std_logic_vector(unsigned(bram_portb_2_addr) + 1);
                            bram_portb_2_we <= '0';  -- Disable writing after increment
                            finish_conv2 <= '0';  -- Conversion not finished
                            current_state := WRITE_DISABLE;  -- Return to initial state
                        else
                            -- If address reaches max, finish conversion
                            finish_conv2 <= '1';
                            bram_portb_2_we <= '0';
                            bram_portb_2_addr <= (others => '0');
                            current_state := WRITE_DISABLE;  -- Reset to initial state
                        end if;
                end case;
            end if;
        end if;
    end if;
end process;
-------------------------------------------------------------------------------------   
--procesul de binarizare pentru blocul 3
process(clk_3, rst_3, start_conv)
   type state_type is (WRITE_DISABLE, WAIT_FOR_READ, READ_AND_BINARIZE, WRITE_ENABLE, INCREMENT_ADDR);
    variable current_state : state_type := WRITE_DISABLE;
    variable octet_0, octet_1, octet_2, octet_3 : std_logic_vector(7 downto 0);
    variable din_temp : std_logic_vector(31 downto 0);
begin
    if rising_edge(clk_3) then
        if rst_3 = '1' then
            bram_portb_3_addr <= (others => '0');
            bram_portb_3_din <= (others => '0');
            bram_portb_3_we <= '0';
            finish_conv3 <= '0';
            current_state := WRITE_DISABLE; -- Reset state to initial
        else
            if start_conv(0) = '1' then
                case current_state is
                    when WRITE_DISABLE =>
                        bram_portb_3_we <= '0';  -- Disable writing to BRAM
                       current_state := WAIT_FOR_READ;  -- New state to wait for data

                    when WAIT_FOR_READ =>
                        current_state := READ_AND_BINARIZE;  -- Move to next state after one cycle

                    when READ_AND_BINARIZE =>
                        -- Extract each byte from bram_portb_0_din
                        octet_0 := bram_portb_3_dout(7 downto 0);
                        octet_1 := bram_portb_3_dout(15 downto 8);
                        octet_2 := bram_portb_3_dout(23 downto 16);
                        octet_3 := bram_portb_3_dout(31 downto 24);
                        
                        -- Apply binarization condition
                        if unsigned(octet_0) > 128 then
                            octet_0 := (others => '1');  -- 255
                        else
                            octet_0 := (others => '0');  -- 0
                        end if;

                        if unsigned(octet_1) > 128 then
                            octet_1 := (others => '1');  -- 255
                        else
                            octet_1 := (others => '0');  -- 0
                        end if;

                        if unsigned(octet_2) > 128 then
                            octet_2 := (others => '1');  -- 255
                        else
                            octet_2 := (others => '0');  -- 0
                        end if;

                        if unsigned(octet_3) > 128 then
                            octet_3 := (others => '1');  -- 255
                        else
                            octet_3 := (others => '0');  -- 0
                        end if;

                        -- Concatenate the binarized bytes and prepare to write
                        din_temp := octet_3 & octet_2 & octet_1 & octet_0;
                        bram_portb_3_din <= din_temp;

                        current_state := WRITE_ENABLE;  -- Move to next state

                    when WRITE_ENABLE =>
                        bram_portb_3_we <= '1';  -- Enable writing to BRAM
                        current_state := INCREMENT_ADDR;  -- Move to next state

                    when INCREMENT_ADDR =>
                        if bram_portb_3_addr /= X"7FF" then
                            -- Increment the address
                            bram_portb_3_addr <= std_logic_vector(unsigned(bram_portb_3_addr) + 1);
                            bram_portb_3_we <= '0';  -- Disable writing after increment
                            finish_conv3 <= '0';  -- Conversion not finished
                            current_state := WRITE_DISABLE;  -- Return to initial state
                        else
                            -- If address reaches max, finish conversion
                            finish_conv3 <= '1';
                            bram_portb_3_we <= '0';
                            bram_portb_3_addr <= (others => '0');
                            current_state := WRITE_DISABLE;  -- Reset to initial state
                        end if;
                end case;
            end if;
        end if;
    end if;
end process;
        
finish_conv(0) <= finish_conv3 and finish_conv2 and finish_conv1 and finish_conv0;
 
end Behavioral;
