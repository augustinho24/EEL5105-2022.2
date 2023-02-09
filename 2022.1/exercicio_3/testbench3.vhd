library ieee;
use ieee.std_logic_1164.all;
entity testbench3 is
end testbench3;
architecture tb of testbench3 is

    signal clock, clear, enable : std_logic;
    signal display1, display0, LED:  std_logic_vector (6 downto 0);

    

    component usertop2 is 
        port (clock, clear, enable: in std_logic;
              display1, display0: out std_logic_vector (6 downto 0);
              LED: out std_logic_vector (6 downto 0)
              );
    
    end component;
        
    
    
    
begin
    cont : usertop2 port map (clock => clock, 
                              clear => clear, 
                              enable => enable,
                              display1 => display1,
                              display0 => display0,
                              LED => LED);


    process
        constant period: time := 10 ns;
        begin
            clock <= '0'; clear <= '0'; enable <= '0'; 
            wait for period;
            clock <= '0'; clear <= '0'; enable <= '1'; 
            wait for period;
            clock <= '0'; clear <= '1'; enable <= '0'; 
            wait for period;
            clock <= '0'; clear <= '1'; enable <= '1'; 
            wait for period;
            clock <= '1'; clear <= '0'; enable <= '0'; 
            wait for period;
            clock <= '1'; clear <= '0'; enable <= '1'; 
            wait for period;            
            clock <= '1'; clear <= '1'; enable <= '0'; 
            wait for period;            
            clock <= '1'; clear <= '1'; enable <= '1'; 
            wait for period;            
            
            
            wait;
    end process;

end tb;