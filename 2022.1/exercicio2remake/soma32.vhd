library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;

entity soma32 is
port (A:  in std_logic_vector(7 downto 0);
     B:  in std_logic_vector(7 downto 0);
        S:  out std_logic_vector(7 downto 0)
     );
end soma32;

architecture mysoma32 of soma32 is
begin
    S <= A + B;
end mysoma32;