library ieee;
use ieee.std_logic_1164.all;

entity somadorcompleto is
port( A,B,Cin: in std_logic;
        S,Cout: out std_logic
        );
end somadorcompleto;

architecture rtl of somadorcompleto is
    signal X,Y,Z: std_logic; 
begin
    X <= A xor B;
    S <= Cin xor X;
    Y <= Cin and X;
    Z <= A and B;
    Cout <= Y or Z;
    
end rtl;