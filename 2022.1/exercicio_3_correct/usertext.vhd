library ieee;
use ieee.std_logic_1164.all;

entity usertext is
end usertext;

architecture tb of usertext is

    -- Signal declarations:
    signal clk: std_logic := '0';
    signal enable, clear : std_logic;
    signal value: std_logic_vector(4 downto 0);
    signal num1, num2: std_logic_vector(6 downto 0);
    signal max: std_logic;
    
    -- Component declarations:
    component exercicio3 is port (
        clk, clear, enable: in std_logic;
        max: out std_logic;
        num1, num0: out std_logic_vector(6 downto 0)
      );
    end component;

begin
    
    
    -- Component instantiation and port map:
    DUT : exercicio3 port map (clk, clear, enable, max, num1, num2);
    
    
    
    -- Stimuli:
    clk <= not clk after 5 ns;
    clear <= '1', '0' after 440 ns, '1' after 450 ns;
    enable <= '1', '0' after 500 ns, '1' after 550 ns;
    
end tb;