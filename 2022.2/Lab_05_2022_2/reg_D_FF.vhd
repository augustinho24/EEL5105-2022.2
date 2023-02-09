library ieee;
use ieee.std_logic_1164.all;

entity reg_D_FF is
port( entrada,reset: in std_logic;
      saida: out std_logic;
      saidapar: out std_logic_vector(3 downto 0);
        clock: in std_logic);

end reg_D_FF;

architecture cururu of reg_D_FF is 

signal D1, D2, D3, D4: std_logic;

component D_FF is port (
    CLK: in std_logic;
    D: in std_logic;
    Q: out std_logic);
end component;


begin
    
    dff0: D_FF port map (CLK => clock, D => entrada, Q => D1);
    dff1: D_FF port map (CLK => clock, D => D1, Q => D2);
    dff2: D_FF port map (CLK => clock, D => D2, Q => D3);
    dff3: D_FF port map (CLK => clock, D => D3, Q => D4);
    
    saida <= D4;
    saidapar <= D1 & D2 & D3 & D4;


end cururu;    




      