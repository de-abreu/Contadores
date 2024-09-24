library ieee;

use ieee.std_logic_1164.all;

use ieee.numeric_std.all;

entity parte3 is
   generic(FrequencyHz : integer := 10);
	port (
		 clk : in std_logic;
		 reset : in std_logic;
		 count : out std_logic_vector(7 downto 0);
		 qTest : out std_logic
	);

end entity parte3;

architecture rtl of parte3 is
    signal countr : unsigned(7 downto 0);
	 signal tick:    integer range 0 to FrequencyHz - 1 := 0;
	 
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

    process(clk, tick)
    begin

        if(rising_edge(clk)) then
				if tick = FrequencyHz - 1 then
					tick <= 0;
					countr <= countr + 1;
					if reset = '1' then
						 countr <= (others => '0');
					end if;
				else 
					tick <= tick + 1;
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

end architecture rtl;
