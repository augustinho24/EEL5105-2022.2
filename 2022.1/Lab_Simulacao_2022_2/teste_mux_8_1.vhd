library ieee;
use ieee.std_logic_1164.ALL;
 
entity teste_mux_8_1 is
end teste_mux_8_1;
 
architecture jaburu of teste_mux_8_1 is

signal: contador: std_logic_vector (7 downto 0);
signal: SSEL: std_logic_vector(2 downto 0);
signal: SA,SB,SC,SD,SE,SF,SG,SH,SEnable,SSaida: std_logic;


    component mux8_1 is 
    port (Enable: in std_logic;
          A,B,C,D,E,F,G,H: in std_logic;
          SEL: in std_logic_vector(2 downto 0);
          saida: out std_logic
          );
    end component;
 
begin
    DET : mux8_1 port map (A => SA, B => SB, C => SC, D => SD, E => SE, F => SF, G => SG, H => SH, Enable => SEnable, Saida => SSaida, SEL => SSEL);
    SCin <= contador(0); 
    process
     constant period: time := 100 ns;
     begin
     
         for sel in 1 to 8 loop
            wait for period;
            contador <= contador + '1';
         end loop;
         wait;
    end process;    
end jaburu;
    