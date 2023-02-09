library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity test_mult3 is
end test_mult3;

architecture zezinho of test_mult3 is
    signal SX: std_logic_vector(3 downto 0);
    signal SY: std_logic_vector(4 downto 0);
    signal contador: std_logic_vector(3 downto 0):= "0000";
    
    component mult3 is
    port (X:  in std_logic_vector(3 downto 0);
          Y:  out std_logic_vector(4 downto 0));
    end component;

begin
    DET : mult3 port map (X => SX, Y => SY);
    SX <= contador;
    process
     constant period: time := 10 ns;
     begin
         for k in 1 to 8 loop
            wait for period;
            contador <= contador + '1';
         end loop;
         wait;
    end process;    
end zezinho;
    