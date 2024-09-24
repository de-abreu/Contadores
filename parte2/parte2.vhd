library ieee;

use ieee.std_logic_1164.all;

use ieee.numeric_std.all;

entity parte2 is

port (
    clk : in std_logic;
    reset : in std_logic;
    count : out std_logic_vector(21 downto 0);
	 qTest : out std_logic
);

end entity parte2;

architecture rtl of parte2 is
    signal countr : unsigned(21 downto 0);
	 
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

    process(clk)
    begin

        if(rising_edge(clk)) then
            countr <= countr + 1;
            if reset = '1' then
                countr <= (others => '0');
            end if;
        end if;

    end process;

    -- count <= std_logic_vector(countr);
	 qTest <= clk;
	 
 displayHex_0:
	component display7seg
		port map (
			x0 => countr(0),
			x1 => countr(1),
			x2 => countr(2),
			x3 => countr(3),
			h0 => count(0),
			h1 => count(1),
			h2 => count(2),
			h3 => count(3),
			h4 => count(4),
			h5 => count(5),
			h6 => count(6)
		);

		
 displayHex_2:
	component display7seg
		port map (
			x0 => countr(4),
			x1 => countr(5),
			x2 => countr(6),
			x3 => countr(7),
			h0 => count(7),
			h1 => count(8),
			h2 => count(9),
			h3 => count(10),
			h4 => count(11),
			h5 => count(12),
			h6 => count(13)
		);

 displayHex_3:
	component display7seg
		port map (
			x0 => countr(8),
			x1 => countr(9),
			x2 => countr(10),
			x3 => countr(11),
			h0 => count(14),
			h1 => count(15),
			h2 => count(16),
			h3 => count(17),
			h4 => count(18),
			h5 => count(19),
			h6 => count(20)
		);


end architecture rtl;
