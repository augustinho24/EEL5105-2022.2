library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity testfulladder is
end testfulladder;

architecture sus of testfulladder is
    signal SA, SB, SSum, SCin, SCout: std_logic;
    signal contador: std_logic_vector(2 downto 0):= "000";
   component fulladder is
    port( A,B,Cin: in std_logic;
        Sum,Cout: out std_logic
        );
    end component;

begin
    DET : fulladder port map (A => SA, B => SB, Sum => SSum, Cin => SCin, Cout => SCout);
    SCin <= contador(0); 
    SA <= contador(2);
    SB <= contador(1);
    process
     constant period: time := 10 ns;
     begin
         for k in 1 to 8 loop
            wait for period;
            contador <= contador + '1';
         end loop;
         wait;
    end process;    
end sus;
    
    
    