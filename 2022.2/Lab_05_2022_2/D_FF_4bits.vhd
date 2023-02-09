library ieee;
use ieee.std_logic_1164.all;
entity D_FF_4bits is port (
    CLK, RST: in std_logic;
    D: in std_logic_vector(3 downto 0);
    Q: out std_logic_vector(3 downto 0));

end D_FF_4bits;
    
architecture jaburu of D_FF_4bits is
begin
    process(CLK,RST)
    begin
        if (RST = '1') then
            Q <= "0000";
        elsif (CLK'event and CLK = '1') then
            Q <= D;
        end if;
    end process;
    
end jaburu;
