library ieee;
use ieee.std_logic_1164.all;

entity usertop is
port( SW: in std_logic_vector(9 downto 0);
      HEX5,HEX4,HEX3,HEX2,HEX1,HEX0: out std_logic_vector(6 downto 0)
);
end usertop;

architecture usb of usertop is

component somador is
port( A,B: in std_logic_vector(3 downto 0);
      S: out std_logic_vector(4 downto 0)
);
end component;

component bin7seg99 is
    port (
        binaryin: in std_logic_vector (6 downto 0);
        hex1, hex0: out std_logic_vector (6 downto 0)
    );
end component;

signal A, B: std_logic_vector(3 downto 0);
signal S1: std_logic_vector (4 downto 0);
signal Aconcat, Bconcat,S1concat: std_logic_vector(6 downto 0);

begin

A <= SW(3 downto 0);
B <= SW(7 downto 4);


Aconcat <= "000"&A;
Bconcat <= "000"&B;
S1concat <= "00"&S1;


som1: somador port map(A, B, S1);
bin1: bin7seg99 port map(Aconcat, HEX5, HEX4);
bin2: bin7seg99 port map(Bconcat, HEX3, HEX2);
bin3: bin7seg99 port map(S1concat, HEX1, HEX0);

end usb;


