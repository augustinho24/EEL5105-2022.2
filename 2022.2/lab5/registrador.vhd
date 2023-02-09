library ieee;
use ieee.std_logic_1164.all;
entity registrador is 
    port (entrada: in std_logic;
          clock: in std_logic;
          saidapar: out std_logic_vector (3 downto 0);
          saidaserial: out std_logic 
          );

end registrador;


architecture behv of registrador is

    signal Q0, Q1, Q2, Q3: std_logic;
    
    
    component D_FF is port (
        CLK: in std_logic;
        D: in std_logic;
        Q: out std_logic );
    end component;

    begin
        dff0: D_FF port map (CLK => clock, D => entrada, Q => Q0);

        dff1: D_FF port map (CLK => clock, D => Q0, Q => Q1);

        dff2: D_FF port map (CLK => clock, D => Q1, Q => Q2);

        dff3: D_FF port map (CLK => clock, D => Q2, Q => Q3);
        
        saidaserial <= Q3;
        saidapar <= Q0& Q1 & Q2 & Q3 ;
        

end behv;
