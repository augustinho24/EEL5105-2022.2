library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_exer2 is
    Port ( SEL : in  STD_LOGIC;
           S1   : in  STD_LOGIC_VECTOR (7 downto 0);
           S2   : in  STD_LOGIC_VECTOR (7 downto 0);
           X   : out STD_LOGIC_VECTOR (7 downto 0));
end mux_exer2;

architecture Behavioral of mux_exer2 is
begin
    X <= S1 when (SEL = '1') else S2;
end Behavioral;