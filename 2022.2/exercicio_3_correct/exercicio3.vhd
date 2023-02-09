library ieee;
use ieee.std_logic_1164.all;

entity exercicio3 is
port(
    clk, clear, enable: in std_logic;
    max: out std_logic := '0';
    num1, num0: out std_logic_vector(6 downto 0)
    );
end exercicio3;

architecture rtl of exercicio3 is
    component bin7seg is
    port (
        binaryin: in std_logic_vector (6 downto 0);
        hex1, hex0: out std_logic_vector (6 downto 0)
    );
    end component;

    component soma5 is
    port(
      A:  in std_logic_vector(4 downto 0);
      B:  in std_logic_vector(4 downto 0);
      S:  out std_logic_vector(4 downto 0)
     );
     end component;
    signal value, valueP: std_logic_vector(4 downto 0) := "00000";
    signal value6bits: std_logic_vector(6 downto 0);
begin
    
    somador1: soma5 port map(value, "00001", valueP);
    value6bits <= "00" & value;
    b7s: bin7seg port map(value6bits, num1, num0);
    
    
    max <= '1' when value = "10101" else '0';
    
    
    process(clk, clear)
    begin
        if (clear = '0') then
            value <= "00000";
        elsif (clk'event and clk = '1' and enable = '1') then
            if (value < "10101") then
                value <= valueP;
            end if;
        end if;
        
    end process;
end rtl;