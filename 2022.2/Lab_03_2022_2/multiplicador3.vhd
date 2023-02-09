library IEEE;
use IEEE.Std_Logic_1164.all;

entity multiplicador3 is
port (X: in std_logic_vector(3 downto 0);
      Y: out std_logic_vector(4 downto 0));
end multiplicador3;

architecture tata of multiplicador3 is

 signal S: std_logic_vector(4 downto 0);
 
 component somador4bits is
 port (A, B: in std_logic_vector(3 downto 0);
      S: out std_logic_vector(4 downto 0)
      );
 end component;
 
begin

 SUM1: somador4bits port map (X, X, S);
 SUM2: somador4bits port map (X, S(3 downto 0), Y);
 
end tata;