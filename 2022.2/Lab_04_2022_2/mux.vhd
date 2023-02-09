library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;

entity mux is 
port (SEL: in std_logic;
      E0: in std_logic_vector(3 downto 0);
      E1: in std_logic_vector(3 downto 0);
      S0: out std_logic_vector(3 downto 0)
      );
end mux;

architecture zezinho of mux is
begin

S0 <= E0 when SEL = '0' else
      E1 when SEL = '1';
   
end zezinho;
