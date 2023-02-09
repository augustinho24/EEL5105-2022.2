library ieee;
use ieee.std_logic_1164.all;
entity testbench is
end testbench;

architecture tb of testbench is
    signal reset, led0, led1, led2 : std_logic;
    signal meuclock: std_logic := '0';
   
    
    
    component usertop is port (
      clock,reset: in std_logic;
      led0,led1,led2 : out std_logic );
    end component;
    
    begin
     meuclock <= not meuclock after 5 ns;
    teste : usertop port map  (clock => meuclock, 
                             reset => reset, 
                             led0 => led0, 
                             led1 => led1,
                             led2 => led2);
    
    process
        constant period: time := 10 ns;
        begin
            reset <= '1';
            wait for period;
            reset <= '0';
            wait for period;
            
            wait for period;
            
            wait for period;
            
            wait for period;
            wait;
    end process;

end tb;