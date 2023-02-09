library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity somador4bits is
port (A, B: in std_logic_vector(3 downto 0);
      S: out std_logic_vector(4 downto 0)
      );
end somador4bits;

architecture arch of somador4bits is

 signal C0,C1,C2: std_logic;
 
component meiosomador is
  port (A: in std_logic;
        B: in std_logic;
        S: out std_logic;
        Cout: out std_logic);
end component;
 
component somadorcompleto is
  port (A: in std_logic;
        B: in std_logic;
        Cin: in std_logic;
        S: out std_logic;
        Cout: out std_logic);
end component;

 begin
 
 HA: meiosomador port map (A(0),B(0),S(0),C0);
 FA1: somadorcompleto port map (A(1),B(1),C0,S(1),C1);
 FA2: somadorcompleto port map (A(2),B(2),C1,S(2),C2);
 FA3: somadorcompleto port map (A(3),B(3),C2,S(3),S(4));
 
 
end arch;

