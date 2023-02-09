library ieee;
use ieee.std_logic_1164.all;

entity exercicio_1 is
port(
	
	A: in std_logic;
    B: in std_logic;
    C: in std_logic;
    D: in std_logic;
    W: out std_logic;
    X: out std_logic;
    Y: out std_logic;
    Z: out std_logic);
    
end exercicio_1;

architecture rtl of exercicio_1 is
begin
    
  X <= (not A and B and not C) or (not A and not B and C) or (not A and not B and D); 
  Y <= (not A and not C) or (not A and not B);
  Z <= ((not A) or (not B and not C) or (not B and C and not D));
  W <= ((not A and B) or (not A and C ) or (C and not D) or (A and not B and not C));
  
  
end rtl;