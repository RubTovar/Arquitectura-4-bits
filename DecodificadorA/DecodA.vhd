library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DecodA is
    Port ( ram : in  STD_LOGIC_VECTOR (3 downto 0);
           rom : in  STD_LOGIC_VECTOR (3 downto 0);
           portIn : in  STD_LOGIC_VECTOR (3 downto 0);
           alu : in  STD_LOGIC_VECTOR (3 downto 0);
           ctrl :in  STD_LOGIC_VECTOR (2 downto 0);
           resA : out  STD_LOGIC_VECTOR (3 downto 0);
			  clk : in  STD_LOGIC);
end DecodA;

architecture Behavioral of DecodA is

signal tmpram,tmprom,tmpportA,tmpalu,tmpres,tmpA: STD_LOGIC_VECTOR (3 downto 0);

begin
	tmpram (3 downto 0) <= ram ;
	tmprom (3 downto 0) <= rom ;
	tmpportA (3 downto 0) <= portIn ;
	tmpalu (3 downto 0) <= alu ;
	process(clk)
	begin
		if falling_Edge(clk)then  
		
				case ctrl is
					when "000" => --RAM
						tmpA <= tmpram;
						
					when "001" =>--ROM
						tmpA <= tmprom;
						
					when "010" =>--PORTA
						tmpA <= tmpportA;
						
					when "011" =>--ALU
						tmpA <= tmpalu;
						
					when "100" =>--SALIDA
						tmpres<=tmpA;
						
					when others =>
						tmpres <= tmpres;
				end case;
		end if;
	end process;
	resA<=tmpres(3 downto 0);
end Behavioral;

