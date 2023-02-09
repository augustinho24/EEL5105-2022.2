library ieee;
use ieee.std_logic_1164.all;
entity usertop is port (
  clock,reset: in std_logic;
  led0,led1,led2 : out std_logic );
end usertop;
architecture fsm1arq of usertop is
  type STATES is (On3,On2,On1,Off);
    signal EAtual, PEstado: STATES;
begin
 
 process(clock,reset)
    begin
        if (reset = '1') then
            EAtual <= On3;
        elsif (clock'event AND clock = '1') then 
             EAtual <= PEstado;
        end if;
    end process;
    process(EAtual)
    begin
        case EAtual is
            when On3 =>     Pestado <= On2;
                            led2 <= '1';
                            led1 <= '1';
                            led0 <= '1';

            when On2 =>     Pestado <= On1;
                            led2 <= '0';
                            led1 <= '1';
                            led0 <= '1';

            when On1 =>     Pestado <= Off;
 
                            led2 <= '0';
                            led1 <= '0';
                            led0 <= '1';
 
            when Off =>     Pestado <= On3;
             
                            led2 <= '0';
                            led1 <= '0';
                            led0 <= '0'; 
        end case;
    end process;
end fsm1arq;
