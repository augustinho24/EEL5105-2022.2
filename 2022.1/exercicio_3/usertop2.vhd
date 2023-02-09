library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;

entity usertop2 is 
    port (clock, clear, enable: in std_logic;
          display1, display0: out std_logic_vector (6 downto 0);
          LED: out std_logic_vector (6 downto 0)
          );

end usertop2;


architecture behv of usertop2 is

    signal result: std_logic_vector (6 downto 0);


    component contador is 
    port (clock, clear, enable: in std_logic;
          result_soma: out std_logic_vector (6 downto 0)
          );

    end component;

         
    component bin7seg99 is
    port (binaryin: in std_logic_vector (6 downto 0);
          hex1, hex0: out std_logic_vector (6 downto 0)
        );
    end component;
    
    begin
    
    somador: contador port map(clock, clear, enable, result);
    LED <= result;
    displayEn: bin7seg99 port map (result, display1, display0);
    

end behv;
