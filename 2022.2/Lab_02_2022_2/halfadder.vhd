library IEEE;
use IEEE.Std_Logic_1164.all;

entity halfadder is
port ( A,B: in std_logic;
        S,C: out std_logic
        );
end halfadder;

architecture arch of halfadder is
begin
    S <= A xor B;
    C <= A and B
    ;
end arch;
    
        
        