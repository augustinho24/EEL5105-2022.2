library IEEE;
use IEEE.Std_Logic_1164.all;

entity meiosomador is
port ( A,B: in std_logic;
        S,Cout: out std_logic
        );
end meiosomador;

architecture arch of meiosomador is
begin
    S <= A xor B;
    Cout <= A and B
    ;
end arch;
    