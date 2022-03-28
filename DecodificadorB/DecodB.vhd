library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DecodB is
    Port ( ramB : in  STD_LOGIC_VECTOR (3 downto 0);
           romB : in  STD_LOGIC_VECTOR (3 downto 0);
           portIn : in  STD_LOGIC_VECTOR (3 downto 0);
           aluB : in  STD_LOGIC_VECTOR (3 downto 0);
           ctrl :in  STD_LOGIC_VECTOR (2 downto 0);
           resB : out  STD_LOGIC_VECTOR (3 downto 0);
			  clk : in  STD_LOGIC);
end DecodB;

architecture Behavioral of DecodB is

signal tmpram,tmprom,tmpportIn,tmpalu,tmpres,tmpB: STD_LOGIC_VECTOR (3 downto 0);

begin
	tmpram (3 downto 0) <= ramB ;
	tmprom (3 downto 0) <= romB ;
	tmpportIn (3 downto 0) <= portIn ;
	tmpalu (3 downto 0) <= aluB ;
	process(clk)
	begin
		if falling_Edge(clk)then  
		
				case ctrl is
					when "000" => --RAM
						tmpB <= tmpram;
						
					when "001" =>--ROM
						tmpB <= tmprom;
						
					when "010" =>--PORTIN
						tmpB <= tmpportIn;
						
					when "011" =>--ALU
						tmpB <= tmpalu;
						
					when "100" =>--SALIDA
						tmpres<=tmpB;
						
					when others =>
						tmpres <= tmpres;
				end case;
		end if;
	end process;
	resB<=tmpres(3 downto 0);
end Behavioral;
