library ieee;
use ieee.std_logic_1164.all;

entity reg_D_FF4bits  is
port( entrada,clock,reset: in std_logic;
      saida: out std_logic;
      saidapar: out std_logic_vector(3 downto 0));

end reg_D_FF4bits;

architecture sata of reg_D_FF4bits is 

signal QQ: std_logic_vector(3 downto 0);


begin

    process(clock,reset)
    begin
        if reset = '1' then
            QQ <= "0000";
        elsif (clock'event and clock = '1') then
             QQ <= entrada & QQ(3 downto 1);
             
        end if;
    end process;

    
    saidapar <= QQ;
    saida <= QQ(0);

end sata;    

