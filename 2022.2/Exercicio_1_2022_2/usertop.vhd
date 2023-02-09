library ieee;
use ieee.std_logic_1164.all;

entity usertop is
port(
	
	A, B, C, D: in std_logic;
    W, X, Y, Z: out std_logic
    );
    
end usertop;

architecture rtl of usertop is
begin
    
  W <= ((A and (not B) and (not C)) or ((not A) and B) or ((not A) and C and (not D)) or (C and (not D))) ; 
  Y <= ((A and (not B) and D) or (B and D) or ((not A) and (not B) and C));
  X <= ((A and (not B)));
  Z <= ((not A) or (A and (not B) and (not C) and (not D)));
  
  
end rtl;