library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ports is
    Port ( enPint : in  STD_LOGIC_VECTOR (3 downto 0);
           salePint : out  STD_LOGIC_VECTOR (3 downto 0);
           ctrl : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end Ports;
architecture Behavioral of Ports is
signal tmp: STD_LOGIC_VECTOR (3 downto 0);

begin
	process(clk)
	begin
		if falling_Edge(clk)then  
			case ctrl is
				when '1' => --Trabaja
					salePint <= tmp;					
				when others => --No trabaja
					tmp<=enPint;
			end case;
		end if;
	end process;
end Behavioral;

