library ieee;
use ieee.std_logic_1164.all;

entity FSM1 is port (
  clock,reset: in std_logic;
  B: in std_logic;
  S: out std_logic_vector (1 downto 0));
  
end FSM1;

architecture arch of FSM1 is

  type STATES is (Init, On1,Off1, On2, Off2);
    signal EAtual, PEstado: STATES;
    
begin
 
 process(clock,reset)
    begin
        if (reset = '1') then
            EAtual <= Init;
        elsif (clock'event AND clock = '1') then 
             EAtual <= PEstado;
        end if;
    end process;
    
    process(EAtual,B)
    begin
        case EAtual is
            when Init =>    if (B = '1') then 
                                Pestado <= On1; 
                            else
                                Pestado <= Init;
                            end if;
                                
                            S <= "10";


            when On1 =>     Pestado <= Off1;
                            S <= "01";


            when Off1 =>    Pestado <= On2;
                            S <="00";

 
            when On2 =>     Pestado <= Off2;
                            S <= "01";
 
            when Off2 =>    if (B = '1') then
                                Pestado <= On1; 
                            else
                                Pestado <= Off2;
                            end if;
                            S <= "10"; 
                            

        end case;
    end process;
end arch;