library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
port( A,B,Cin: in std_logic;
        Sum,Cout: out std_logic
        );
end fulladder;

architecture rtl of fulladder is
    signal X,Y,Z: std_logic; 
begin
    X <= A xor B;
    Sum <= Cin xor X;
    Y <= Cin and X;
    Z <= A and B;
    Cout <= Y or Z;
    
end rtl;