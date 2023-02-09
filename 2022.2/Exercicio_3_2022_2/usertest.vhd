library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity usertest is
end usertest;

architecture tb of usertest is

    signal meuclock: std_logic := '0';
    signal Sen: std_logic := '1'; 
    signal Sclr: std_logic :='0';
    signal SS: std_logic_vector(4 downto 0);
    signal Snum0, Snum1: std_logic_vector(6 downto 0);
    signal Smax: std_logic;
    
    
    signal cnt: std_logic_vector(4 downto 0) := "00000";
    
    component contador is port (
      en: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      S: out std_logic_vector(4 downto 0);
      num1, num0: out std_logic_vector(6 downto 0);
      max: out std_logic);
    end component;

begin
    
    DUT : contador port map (clk => meuclock, en => Sen, clr => Sclr, S => SS, num1 => Snum1, num0 => Snum0, max => Smax);
    meuclock <= not meuclock after 5 ns;
    
     process 
 
     constant period: time := 10 ns;

     begin
         for k in 1 to 30 loop
            wait for period;
            cnt <= cnt + "00001";
         end loop;
         wait;
    end process;    
end tb;
    
    