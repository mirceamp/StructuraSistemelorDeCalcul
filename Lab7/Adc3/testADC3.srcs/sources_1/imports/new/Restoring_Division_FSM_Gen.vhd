library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity RestoringDivision is
    generic (
        N : integer := 12
    );
    port (
        clk        : in  std_logic;
        resetare   : in  std_logic;
        start      : in  std_logic;
        dividend   : in  std_logic_vector(N-1 downto 0);
        divisor    : in  std_logic_vector(N-1 downto 0);
        quotient   : out std_logic_vector(N-1 downto 0);
        remainder  : out std_logic_vector(N downto 0);
        gata       : out std_logic
    );
end entity RestoringDivision;

architecture Behavioral of RestoringDivision is
    type state_type is (S_ASTEPTARE, S_CALCUL, S_FINAL);
    signal state  : state_type;
    signal A      : std_logic_vector(N downto 0);
    signal M      : std_logic_vector(N downto 0); -- Semnal pe N+1 biți pentru M
    signal Q      : std_logic_vector(N-1 downto 0); -- Q pe N biți
    signal contor : integer range 0 to N;

begin
    process(clk, resetare)
        variable A_prim, A_partial : std_logic_vector(N downto 0); -- Variabile pentru A
        variable Q_partial :  std_logic_vector(N-1 downto 0);
        variable currentCont : integer range 0 to N;
    begin
        if resetare = '1' then
            -- Reset everything
            state     <= S_ASTEPTARE;
            M         <= (others => '0');
            Q         <= (others => '0');
            gata      <= '0';
            contor    <= N;
        elsif rising_edge(clk) then
            case state is
                when S_ASTEPTARE =>
                    if start = '1' then
                        -- Load divisor and extend its sign to N+1 bits
                        M <= (not('0' & divisor)) + 1; -- Extinderea pe N+1 biți
                        Q <= dividend;
                        A <= (others => '0'); -- Initialize A to zero
                        contor <= N; -- Initialize counter
                        state  <= S_CALCUL;
                    end if;

                when S_CALCUL =>
                    currentCont := contor;
                    Q_partial := Q;
                    -- Shift A left and bring down MSB of Q
                    A_prim := A(N-1 downto 0) & Q_partial(N-1); -- Shift left A și concatenarea MSB din Q
                    Q_partial(N-1 downto 1) := Q_partial(N-2 downto 0);    -- Shift left Q

                    A_partial := A_prim; -- Store A before subtraction

                    -- Subtract M from A using 2's complement
                    A_prim := A_prim + M;

                    -- If A < 0, restore A and set LSB of Q to 0
                    if A_prim(N) = '1' then
                        A_prim := A_partial; -- Restore A
                        Q_partial(0) := '0';    -- Set LSB of Q to 0
                    else
                        Q_partial(0) := '1';    -- Set LSB of Q to 1
                    end if;

                    -- Decrease counter
                    currentCont := currentCont - 1;
                    
                     A <= A_prim;
                     Q <= Q_partial;
                     contor <= currentCont;
                    -- Check if calculation is complete
                    if currentCont = 0 then
                        state <= S_FINAL;
                    end if;

                when S_FINAL =>
                    -- Output quotient and remainder
                    quotient  <= Q;
                    remainder <= A;
                    gata      <= '1';
                    state     <= S_ASTEPTARE;

            end case;
        end if;
    end process;

end architecture Behavioral;
