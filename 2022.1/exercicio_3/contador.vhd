library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;

entity contador is 
    port (clock, clear, enable: in std_logic;
          result_soma: out std_logic_vector (6 downto 0)
          );

end contador;

architecture sum of contador is

signal result: std_logic_vector(6 downto 0) :="0000000";

begin

process(clock, enable, clear)
        begin
        
            if (clear = '1') then 
                result <= "0000000";
            elsif (enable = '1') then    
                if (clock'event and clock = '1') then
                    if result = "0010101" then
                        result <= "0000000";
                    else    
                        result <= result + "0000001";
                    end if;    
                end if;
            
                
            end if;
        end process;
        
        result_soma <= result;
        
end sum;        