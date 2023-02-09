library ieee;
use ieee.std_logic_1164.all;

entity usertop is
port(
    c: in std_logic;
	x: in std_logic_vector(7 downto 0);
	display1: out std_logic_vector(6 downto 0);
	display2: out std_logic_vector(6 downto 0);
	display3: out std_logic_vector(6 downto 0)
	);
end usertop;

architecture rtl of usertop is
    signal librasbin, choicebin: std_logic_vector(7 downto 0);
    signal choicebcd: std_logic_vector(11 downto 0);
    signal doisxis, quartoxis: std_logic_vector(7 downto 0);
    component soma8 is
    port (
        A:  in std_logic_vector(7 downto 0);
        B:  in std_logic_vector(7 downto 0);
        S:  out std_logic_vector(7 downto 0)
    );
    end component;
    
    component binbcd is
        port(
            bin_in: in std_logic_vector (7 downto 0);
            bcd_out: out std_logic_vector (11 downto 0) 
        );
    end component;
    
    component bcd7seg is
        port (
            bcd_in:  in std_logic_vector(3 downto 0);
            out_7seg:  out std_logic_vector(6 downto 0)
        );
    end component;
    
    component div4 is
    port(
        A:  in std_logic_vector(7 downto 0);
        S:  out std_logic_vector(7 downto 0)
    );
    end component;
begin


-- Peso em libras
    SOMA1: soma8 port map(x, x, doisxis);
    DIV1: div4 port map(x, quartoxis);
    SOMA2: soma8 port map(doisxis, quartoxis, librasbin);
    
    
-- Mux
    choicebin <= x when c = '0' else
              librasbin when c = '1' else
            "00000000";

-- Converter binbcd

    CONV: binbcd port map(choicebin, choicebcd);    
    
    CON7SEG1: bcd7seg port map(choicebcd(11 downto 8), display3);
    CON7SEG2: bcd7seg port map(choicebcd(7 downto 4), display2);
    CON7SEG3: bcd7seg port map(choicebcd(3 downto 0), display1);

end rtl;