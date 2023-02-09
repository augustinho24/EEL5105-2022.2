library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_FSM1 is
end tb_FSM1;

architecture tb of tb_FSM1 is
    signal Sreset: std_logic := '0';
    signal Sx : std_logic_vector(2 downto 0) := "111";
    signal meuclock : std_logic := '0';
    
    component FSM1 is port (
       clock: in std_logic;
       reset: in std_logic;
       x: out std_logic_vector(2 downto 0) );
    end component;
    
begin
    
    DUT : FSM1 port map (clock => meuclock, reset => Sreset, x => Sx);
    
    meuclock <= not meuclock after 5 ns;
    Sreset <= '1', '0' after 6 ns;
    
    
    process
     constant period: time := 5 ns;
     begin
         for k in 1 to 8 loop
            wait for period;
         end loop;
         wait;
    end process;    
end tb;