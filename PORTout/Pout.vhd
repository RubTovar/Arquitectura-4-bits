library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Pout is
    Port ( enPout : in  STD_LOGIC_VECTOR (3 downto 0);
           salePout : out  STD_LOGIC_VECTOR (3 downto 0);
			  ctrl : in STD_LOGIC;
			  clk : in  STD_LOGIC);
end Pout;
architecture Behavioral of Pout is

signal tmp: STD_LOGIC_VECTOR (3 downto 0);

begin
	process(clk)
	begin
		if falling_Edge(clk)then  
			case ctrl is
				when '1' => --Trabaja
					salePout <= tmp;				
				when others => --No trabaja
					tmp<=enPout;	
			end case;
		end if;
	end process;
end Behavioral;

