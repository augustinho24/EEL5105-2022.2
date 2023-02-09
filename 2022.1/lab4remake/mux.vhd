library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
    Port ( SEL : in  STD_LOGIC ;     
           Y   : in  STD_LOGIC_VECTOR (3 downto 0);
           X    :in  STD_LOGIC_VECTOR (3 downto 0);
           Z   : out STD_LOGIC_VECTOR (3 downto 0)
           );
           
end mux;

architecture Behavioral of mux is
begin

Z <= X when SEl = '0' else
     Y when SEL = '1' ;

end Behavioral;