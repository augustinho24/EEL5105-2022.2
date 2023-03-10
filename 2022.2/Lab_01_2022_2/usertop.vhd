library ieee;
use ieee.std_logic_1164.all;

entity usertop is
port(
	KEY: in std_logic_vector(3 downto 0);
	SW: in std_logic_vector(17 downto 0);
	LEDR: out std_logic_vector(17 downto 0);
	HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,HEX6,HEX7	: out std_logic_vector(6 downto 0)
	);
end usertop;

architecture rtl of usertop is
begin
    
    LEDR(0) <= SW(0); 
    LEDR(1) <= SW(1);
    LEDR(2) <= SW(2);
    LEDR(3) <= SW(3);
    
    LEDR(16) <= KEY(0); -- Acionando o KEY(0), desliga o LEDR(16)
    LEDR(17) <= KEY(1); -- Acionando o KEY(1), desliga o LEDR(17)
    
    
    HEX6 <= "1111111";
    HEX5 <= "1111111";
    HEX4 <= "1111111";
    HEX3 <= "1111111"; -- Mostra a letra "U" --  
    HEX2 <= "1111111"; -- Mostra a letra "F" -- 
    HEX1 <= "1000110"; -- Mostra a letra "S" --
    HEX0 <= "1000001"; -- Mostra a letra "C" -- 

end rtl;