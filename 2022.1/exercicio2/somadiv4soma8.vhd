library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_arith.all; 
use IEEE.std_logic_unsigned.all;

entity somadiv4soma8 is
port (c:  in std_logic;
      X:  in std_logic_vector(7 downto 0);
      D: out std_logic_vector(6 downto 0);
      E: out std_logic_vector(6 downto 0);
      F: out std_logic_vector(6 downto 0)
     );
end somadiv4soma8;

architecture mysoma8 of somadiv4soma8 is

signal 


component soma8 is
port (A:  in std_logic_vector(7 downto 0);
      B:  in std_logic_vector(7 downto 0);
      S2:  out std_logic_vector(7 downto 0)
     );
end component;
    
component bcd7seg is
port (bcd_in:  in std_logic_vector(3 downto 0);
      out_7seg:  out std_logic_vector(6 downto 0)
     );
end bcd7seg;


component binbcd is
port (bin_in:  in std_logic_vector(7 downto 0);
      bcd_out:  out std_logic_vector(12 downto 0)
     );
    end component;
component div4 is
port (A:  in std_logic_vector(7 downto 0);
      S2:  out std_logic_vector(7 downto 0)
     );
end component;    
begin

entity mux_exer2 is
    Port ( SEL : in  STD_LOGIC;
           S1   : in  STD_LOGIC_VECTOR (7 downto 0);
           S2   : in  STD_LOGIC_VECTOR (7 downto 0);
           X   : out STD_LOGIC_VECTOR (7 downto 0));
end mux_exer2;


    X <= S1 + S2;
end mysoma8;