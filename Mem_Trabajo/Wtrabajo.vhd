library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Wtrabajo is
    Port ( enW : in  STD_LOGIC_VECTOR (3 downto 0);
           saleW : out  STD_LOGIC_VECTOR (3 downto 0);
           ctrl : in  STD_LOGIC;
			  clk : in  STD_LOGIC);
end Wtrabajo;

architecture Behavioral of Wtrabajo is
signal tmpW: STD_LOGIC_VECTOR (3 downto 0);

begin
	process(clk)
	begin
		if falling_Edge(clk)then  
			case ctrl is
				when '1' => --Trabaja
					saleW <= tmpW;					
				when others => --No trabaja
					tmpW<=enW;
			end case;
		end if;
	end process;
end Behavioral;

