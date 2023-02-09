library ieee;
use ieee.std_logic_1164.all;

entity topo is
port( A: in std_logic_vector(7 downto 0);
      key : in std_logic;
      HEX0, HEX1, HEX2: out std_logic_vector(6 downto 0)
    );
end topo;

architecture rtl of topo is

signal S1,S2: std_logic_vector(7 downto 0 );
signal S3: std_logic_vector(11 downto 0);
signal saida: std_logic_vector(11 downto 0);
signal A3: std_logic_vector (11 downto 0);

component bcd7seg is
port (bcd_in:  in std_logic_vector(3 downto 0);
      out_7seg:  out std_logic_vector(6 downto 0)
     );
end component;

component binbcd is
    port (
        bin_in: in std_logic_vector (7 downto 0);
        bcd_out: out std_logic_vector (11 downto 0)
    );
end component;


component soma8 is
port (A:  in std_logic_vector(7 downto 0);
      B:  in std_logic_vector(7 downto 0);
      S:  out std_logic_vector(7 downto 0)
     );
end component;

begin

    Soma8bits: soma8 port map (A, A, S1);
    Soma32bits: soma8 port map (S1, "00100000", S2);
    conversor: binbcd port map (S2,S3);
    Aparabcd: binbcd port map (A, A3);

    saida <= A3 when key = '1' else
            S3;
            

   display2: bcd7seg port map (saida (11 downto 8), HEX2);
   display1: bcd7seg port map (saida (7 downto 4), HEX1);
   display0: bcd7seg port map (saida (3 downto 0), HEX0);


end rtl;