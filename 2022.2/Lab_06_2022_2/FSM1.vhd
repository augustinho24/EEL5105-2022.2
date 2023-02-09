library ieee;
use ieee.std_logic_1164.all;

entity FSM1 is port (
   clock: in std_logic;
   reset: in std_logic;
   x: out std_logic_vector(2 downto 0) );
end FSM1;

architecture fsm1arq of FSM1 is
   type STATES is (ON_3, ON_2, ON_1, OFF);
   signal EAtual, PEstado: STATES;
begin
    process(clock,reset)
    begin
        if (reset = '1') then
            EAtual <= Off;
        elsif (clock'event AND clock = '1') then 
             EAtual <= PEstado;
        end if;
    end process;
    
    
    process(EAtual)
    begin
    
        case EAtual is
            when ON_3 =>     Pestado <= ON_2;
                             x <= "111"; 
            when ON_2 =>     Pestado <= ON_1;
                            x <= "110";
            when ON_1 =>     Pestado <= OFF;
                            x <= "100";
            when OFF =>     Pestado <= ON_3;
                            x <= "000";
                            
        end case;
    end process;
end fsm1arq;

