library ieee;
use ieee.std_logic_1164.all;

entity parte1PlacaGrande is
    port (
        clk:    in  std_logic;
        reset:  in  std_logic;
        en:     in  std_logic;
        q:      out std_logic_vector (0 to 7);
		  qTeste: out std_logic
    );
end entity;

architecture foo of parte1PlacaGrande is
    component tFlipFlop is
        port (
            clk:    in  std_logic;
            reset:  in  std_logic;
            t:      in  std_logic;
            q:      out std_logic
        );
    end component;

    signal cnt:         std_logic_vector (0 to 7);
    signal t:           std_logic_vector (0 to 7); 
	 
	 component display7seg is 
		port (
			x0: in  std_logic;
			x1: in  std_logic;
			x2: in  std_logic;
			x3: in  std_logic;
			h0 :  out  std_logic;
			h1 :  out  std_logic;
			h2 :  out  std_logic;
			h4 :  out  std_logic;
			h5 :  out  std_logic;
			h6 :  out  std_logic;
			h3 :  out  std_logic
		);
		
		
	end component;
begin

    -- The seven AND gates:
    t <=  (              en,   en and cnt(0), t(1) and cnt(1), t(2) and cnt(2),
            t(3) and cnt(3), t(4) and cnt(4), t(5) and cnt(5), t(6) and cnt(6)
          );

			 
--  The eight tFlipFlops:
tFlipFlop_0:
    component tFlipFlop
        port map (
            clk => clk,
            reset => reset,
            t => t(0),
            q => cnt(0)
        ); 

tFlipFlop_1:
    component tFlipFlop
        port map (
            clk => clk,
            reset => reset,
            t => t(1),
            q => cnt(1)
        ); 

tFlipFlop_2:
    component tFlipFlop
        port map (
            clk => clk,
            reset => reset,
            t => t(2),
            q => cnt(2)
        ); 

tFlipFlop_3:
    component tFlipFlop
        port map (
            clk => clk,
            reset => reset,
            t => t(3),
            q => cnt(3)
        );       

tFlipFlop_4:
    component tFlipFlop
        port map (
            clk => clk,
            reset => reset,
            t => t(4),
            q => cnt(4)
        ); 

tFlipFlop_5:
    component tFlipFlop
        port map (
            clk => clk,
            reset => reset,
            t => t(5),
            q => cnt(5)
        ); 

tFlipFlop_6:
    component tFlipFlop
        port map (
            clk => clk,
            reset => reset,
            t => t(6),
            q => cnt(6)
        ); 

tFlipFlop_7:
    component tFlipFlop
        port map (
            clk => clk,
            reset => reset,
            t => t(7),
            q => cnt(7)
        );
		  

-- The eight tFlipFlops can be expressed with a generate statement instead of individually: 
--
-- COUNTER_GEN:
--     for i in cnt'range generate
-- T_FF:
--         component tFlipFlop
--             port map (
--                 clk => clk,
--                 reset => reset,
--                 t => t(i),
--                 q => cnt(i)
--             );
--     end generate;

displayHex_0:
	component display7seg
		port map (
			x0 => cnt(0),
			x1 => cnt(1),
			x2 => cnt(2),
			x3 => cnt(3),
			h0 => q(0),
			h1 => q(1),
			h2 => q(2),
			h4 => q(4),
			h5 => q(5),
			h6 => q(6),
			h3 => q(3)
		);
		
    -- q <= cnt;
	 qTeste <= clk;
	 
end architecture;