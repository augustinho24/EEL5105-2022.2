library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;

entity mux8_1 is 
port (Enable: in std_logic;
      A,B,C,D,E,F,G,H: in std_logic;
      SEL: in std_logic_vector(2 downto 0);
      saida: out std_logic
      );
end mux8_1;

architecture cururu of mux8_1 is
begin

saida <= '0' when Enable = '0' else
         A when SEL = "000" else
         B when SEL = "001" else
         C when SEL = "010" else
         D when SEL = "011" else
         E when SEL = "100" else
         F when SEL = "101" else
         G when SEL = "110" else
         H;
         
end cururu;