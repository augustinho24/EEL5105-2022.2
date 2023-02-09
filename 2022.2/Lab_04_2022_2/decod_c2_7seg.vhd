 library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;

entity decod_c2_7seg is 
port (SW: in std_logic_vector(3 downto 0);
      HEX0: out std_logic_vector(6 downto 0);
      LEDR0: out std_logic);
end decod_c2_7seg;

architecture tata of decod_c2_7seg is
signal S, V: std_logic_vector (3 downto 0);

component compl_2 is
port ( X: in std_logic_vector(3 downto 0);
       Y: out std_logic_vector(3 downto 0));
end component;

component mux is 
port (SEL: in std_logic;
      E0: in std_logic_vector(3 downto 0);
      E1: in std_logic_vector(3 downto 0);
      S0: out std_logic_vector(3 downto 0)
      );
end component;

component decod7seg is
port (C: in std_logic_vector(3 downto 0);
      F: out std_logic_vector(6 downto 0));
end component;

begin

C2: compl_2 port map (SW(3 downto 0), S);
Mult: mux port map (SW(3), SW(3 downto 0), S, V);
D7S: decod7seg port map (V, HEX0);
LEDR0 <= SW(3);

end tata;




      
