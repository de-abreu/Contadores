library ieee;
use ieee.std_logic_1164.all;

entity tFlipFlop is
    port (
        clk:    in  std_logic;
        reset:  in  std_logic;
        t:      in  std_logic;
        q:      out std_logic
    );
end entity tFlipFlop;

architecture behavioral of tFlipFlop is
    signal q_reg:   std_logic;
    signal q_next:  std_logic;
begin

T_FF:
    process (clk, reset)
    begin
        if reset = '1' then
            q_reg <= '0'; 
        elsif rising_edge(clk)  then 
            q_reg <= q_next;
        end if;
    end process;

INPUT_MUX:    
    q_next <=     q_reg  when t = '0' else 
              not q_reg;
OUTPUT:
    q  <= q_reg;

end architecture;