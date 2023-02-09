library ieee;
use ieee.std_logic_1164.all;

entity somador is
port( A,B: in std_logic_vector(3 downto 0);
      S: out std_logic_vector(4 downto 0)
);
end somador;

architecture rtl of somador is
    signal C: std_logic_vector(2 downto 0);
    
    component halfadder is
    port(A,B: in std_logic;
        S,Cout: out std_logic
    );
    end component;
    
    component fulladder is
    port(A,B,Cin: in std_logic;
    S,Cout: out std_logic
    );
    end component;
    
    
begin

HA: halfadder port map (A(0), B(0), S(0), C(0)); 
    
FA1: fulladder port map (A(1), B(1), C(0), S(1), C(1));
    
FA2: fulladder port map (A(2),B(2),C(1), S(2),C(2));
                            
FA3: fulladder port map (A(3),B(3),C(2), S(3), S(4));
end rtl;