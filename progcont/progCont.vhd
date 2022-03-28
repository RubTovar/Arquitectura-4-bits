library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity progCont is
    Port ( clk : in  STD_LOGIC;
           saled : out  STD_LOGIC_VECTOR (3 downto 0));
end progCont;

architecture Behavioral of progCont is
signal tmpcont:std_logic_vector(3 downto 0):="0000";
begin
process(clk)
begin
	if falling_edge(clk)then
		if(tmpcont="1111")then
		tmpcont<="0000";
		else
		tmpcont<=tmpcont + "0001";
		end if;
	end if;
end process;
saled<=tmpcont;

end Behavioral;

