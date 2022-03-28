library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DecodC is
    Port ( ramC : out  STD_LOGIC_VECTOR (3 downto 0);
           portOut : out  STD_LOGIC_VECTOR (3 downto 0);
           aluC : out  STD_LOGIC_VECTOR (3 downto 0);
           ctrl :in  STD_LOGIC_VECTOR (2 downto 0);
           entra : in  STD_LOGIC_VECTOR (3 downto 0);
			  clk : in  STD_LOGIC);
end DecodC;

architecture Behavioral of DecodC is
signal tmpsal: STD_LOGIC_VECTOR (3 downto 0);

begin
	process(clk)
	begin
		if falling_Edge(clk)then  
			tmpsal<=entra;
				case ctrl is
					when "000" => --RAM
						ramC<=tmpsal;
						
					when "001" =>--PortSalida
						portOut<=tmpsal;
						
					when "010" =>--Alu
						aluC <= tmpsal;
				
					when others =>
						tmpsal <= tmpsal;
				end case;
		end if;
	end process;
end Behavioral;


