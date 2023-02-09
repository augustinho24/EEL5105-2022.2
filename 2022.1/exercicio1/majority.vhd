library IEEE;
use IEEE.Std_Logic_1164.all;

entity majority is
port (A: in std_logic;
      B: in std_logic;
      Cin: in std_logic;
      Cout: out std_logic;
      S: out std_logic
      );
end majority;

architecture circuito_logico of majority is
    signal D: std_logic;
begin 
D <= A xor B;
S <= D xor Cin;
Cout <=(D and Cin) or (A and B); 
  
end circuito_logico;