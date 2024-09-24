library ieee;

use ieee.std_logic_1164.all;

use ieee.numeric_std.all;

entity parte4 is

port (
    clk : in std_logic;
    reset : in std_logic;
    count : out std_logic_vector(28 downto 0);
	 qTest : out std_logic;
	 tickTest: out std_logic
);

end entity parte4;

architecture rtl of parte4 is
	 signal tick : integer range 0 to 4 := 0;
    signal countr0 : unsigned(3 downto 0);
	 signal countr1 : unsigned(3 downto 0);
	 signal countr2 : unsigned(3 downto 0);
	 signal countr3 : unsigned(3 downto 0);
	 
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
				tick <= tick + 1;
				report integer'image(tick);
            if reset = '1' then
                countr0 <= (others => '0');
					 countr1 <= (others => '0');
					 countr2 <= (others => '0');
					 countr3 <= (others => '0');
            else 
					countr0 <= "1110";
					countr1 <= "1101";
					countr2 <= "0000";
					countr3 <= "0001";
					if tick mod 4 = 0 then
						countr0 <= "1110";
					   countr1 <= "1101";
					   countr2 <= "0000";
					   countr3 <= "0001";
						tickTest <= '0';
					elsif tick mod 4 = 1 then
						countr0 <= "1101";
					   countr1 <= "0000";
					   countr2 <= "0001";
					   countr3 <= "1110";
						tickTest <= '1';
					elsif tick mod 4 = 2 then
						countr0 <= "0000";
					   countr1 <= "0001";
					   countr2 <= "1110";
					   countr3 <= "1101";
						tickTest <= '0';
					else
						countr0 <= "0001";
					   countr1 <= "1110";
					   countr2 <= "1101";
					   countr3 <= "0000";
						tickTest <= '1';
						-- tick <= 0;
					end if;
			end if;
		end if;

    end process;

    -- count <= std_logic_vector(countr);
	 qTest <= clk;
	 
 displayHex_0:
	component display7seg
		port map (
			x0 => countr0(0),
			x1 => countr0(1),
			x2 => countr0(2),
			x3 => countr0(3),
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
			x0 => countr1(0),
			x1 => countr1(1),
			x2 => countr1(2),
			x3 => countr1(3),
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
			x0 => countr2(0),
			x1 => countr2(1),
			x2 => countr2(2),
			x3 => countr2(3),
			h0 => count(14),
			h1 => count(15),
			h2 => count(16),
			h3 => count(17),
			h4 => count(18),
			h5 => count(19),
			h6 => count(20)
		);

 displayHex_4:
	component display7seg
		port map (
			x0 => countr3(0),
			x1 => countr3(1),
			x2 => countr3(2),
			x3 => countr3(3),
			h0 => count(21),
			h1 => count(22),
			h2 => count(23),
			h3 => count(24),
			h4 => count(25),
			h5 => count(26),
			h6 => count(27)
		);


end architecture rtl;
