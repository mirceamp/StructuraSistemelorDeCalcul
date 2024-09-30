library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Entitatea inmultitorului shift-and-add
entity inmultitor_shift_add is
  generic (
        N : integer := 4  -- Numărul de biți pentru operanzi
    );
    port (
        clk     : in  std_logic;                     -- Semnal de ceas
        resetare     : in  std_logic;                     -- Semnal de reset
        start   : in  std_logic;                     -- Semnal de start pentru începerea înmulțirii
        a       : in  std_logic_vector(N-1 downto 0);  -- Primul operand
        b       : in  std_logic_vector(N-1 downto 0);  -- Al doilea operand
        rezultat: out std_logic_vector(2*N downto 0);
        gata    : out std_logic                      -- Semnal care indică finalizarea înmulțirii
    );
end entity inmultitor_shift_add;

-- Arhitectura inmultitorului
architecture Behavioral of inmultitor_shift_add is
    type stare_t is (ASTEPTARE, CALCUL, FINALIZARE);  -- Definirea stărilor FSM
    signal stare : stare_t;                           -- Starea curentă a FSM
    signal produs : unsigned(2*N downto 0);           -- Produsul parțial/final cu bit de carry
    signal multiplicand : unsigned(2*N downto 0);     -- Multiplicandul extins la 2*N+1 biți
    signal multiplicator : unsigned(N-1 downto 0);    -- Multiplicatorul
    signal contor : integer range 0 to N;             -- Contor pentru iterații
begin
      process(clk, resetare)
    begin
        if resetare = '1' then  -- Resetare asincronă
            stare <= ASTEPTARE;
            produs <= (others => '0');
            multiplicand <= (others => '0');
            multiplicator <= (others => '0');
            contor <= 0;
            gata <= '0';
        elsif rising_edge(clk) then  -- La fiecare front crescător al ceasului
            case stare is
                when ASTEPTARE =>
                    if start = '1' then  -- Dacă semnalul de start este activ
                        stare <= CALCUL;
                        produs <= (others => '0');
                        multiplicand <= '0' & resize(unsigned(a), 2*N);  -- Adăugăm un bit de carry
                        multiplicator <= unsigned(b);
                        contor <= 0;
                        gata <= '0';
                    end if;
                
                when CALCUL =>
                    if multiplicator(0) = '1' then  -- Dacă bitul curent al multiplicatorului este 1
                        produs <= ('0' & produs(2*N-1 downto 0)) + multiplicand;  -- Adunare cu carry
                    end if;
                    multiplicand <= shift_left(multiplicand, 1);    -- Shiftare stânga multiplicand
                    multiplicator <= shift_right(multiplicator, 1); -- Shiftare dreapta multiplicator
                    contor <= contor + 1;
                    
                    if contor = N-1 then  -- Dacă s-au procesat toți biții
                        stare <= FINALIZARE;
                    end if;
                
                when FINALIZARE =>
                    rezultat <= std_logic_vector(produs);  --
                    gata <= '1';
                    stare <= ASTEPTARE;
            end case;
        end if;
    end process;
end architecture Behavioral;