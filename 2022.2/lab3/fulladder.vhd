library IEEE;
use IEEE.Std_Logic_1164.all;

entity fulladder is
port(A,B,Cin: in std_logic;
    S,Cout: out std_logic
    );
end fulladder;

architecture fal of fulladder is
begin
    S <= (A xor B) xor (Cin);
    Cout <= ((A xor B) and Cin) or (A and B);
end fal;