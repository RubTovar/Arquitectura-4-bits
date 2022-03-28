library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Rom is
    Port ( clk : in  STD_LOGIC;
           dire : in  STD_LOGIC_VECTOR (3 downto 0);
           salida : out  STD_LOGIC_VECTOR (23 downto 0));
end Rom;

architecture Behavioral of Rom is

begin
process(clk)
begin 
	if falling_edge(clk)then
		case dire is
		when "0000" =>
			salida<= "000000000000011111111100";
		when "0001" =>
			salida<= "001100000000011100101001";
		when "0010" =>
			salida<= "001100000000011110010000";
		when "0011" =>
			salida<= "000000000001011111111100";
		when "0100" =>
			salida<= "000000000000011111111100";
		when "0101" =>
			salida<= "000000000100011111111100";
		when "0110" =>
			salida<= "101000000000001011111100";
		when "0111" =>
			salida<= "101000000000001011111100";
		when "1000" =>
			salida<= "101000000000011100101100";
		when "1001" =>
			salida<= "000000000000011110010000";
		when "1010" =>
			salida<= "000000000000111111111100";
		when "1011" =>
			salida<= "000000000000011111111100";
		when "1100" =>
			salida<= "000000000100011111111100";
		when "1101" =>
			salida<= "000000000000000111111100";
		when "1110" =>
			salida<= "000000000000000111111110";
		when "1111" =>
			salida<= "000000000000011111111110";
		when others =>
			salida<= "111111111111111111111111";
		end case;
	end if;
end process;

end Behavioral;

