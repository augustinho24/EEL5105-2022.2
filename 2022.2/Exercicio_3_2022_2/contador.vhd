library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;

entity contador is port (
  en: in std_logic;
  clr: in std_logic;
  clk: in std_logic;
  S: out std_logic_vector(4 downto 0);
  num1, num0: out std_logic_vector(6 downto 0);
  max: out std_logic);
end contador;

architecture behv of contador is

component bin7seg99 is
    port (
        binaryin: in std_logic_vector (6 downto 0);
        hex1, hex0: out std_logic_vector (6 downto 0)
    );
end component;


    signal S6bits: std_logic_vector(6 downto 0);
    signal cnt: std_logic_vector(4 downto 0) := "00000";

begin
    S6bits <= "00" & cnt;
    b7s: bin7seg99 port map(S6bits, num1, num0);

    max <= '1' when cnt = "10101" else '0';
    
    process(clk, clr)
    begin
        if (clr = '1') then
            cnt <= "00000";
        elsif (clk'event and clk = '1' and en = '1') then
            if (cnt < "10101") then
                cnt <= cnt + "00001";
            end if;
        end if;
    end process;
    S <= cnt;
end behv;
