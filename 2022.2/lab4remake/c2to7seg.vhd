library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;


entity c2to7seg is 
port(A: in std_logic_vector(3 downto 0);
    HEX2,HEX1,HEX0: out std_logic_vector(6 downto 0));

end c2to7seg;

architecture rtl of c2to7seg is

component compl_2 is
port (X:  in std_logic_vector(3 downto 0);
      Y:  out std_logic_vector(3 downto 0));
end component;

component decod is
port (C:  in std_logic_vector(3 downto 0);
      F:  out std_logic_vector(6 downto 0) );
end component ;

component mux is
    Port ( SEL : in  STD_LOGIC ;     
           Y   : in  STD_LOGIC_VECTOR (3 downto 0);
           X    :in  STD_LOGIC_VECTOR (3 downto 0);
           Z   : out STD_LOGIC_VECTOR (3 downto 0)
           );
           
end component;

signal C2: std_logic;

begin

C2 <= A(3)

HEX2 <= "0111111" when C2 = '1' else
        "1111111";
        
HEX1, HEX0;

end rtl;















