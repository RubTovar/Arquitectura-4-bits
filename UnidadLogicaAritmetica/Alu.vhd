library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Alu is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           ctrl : in  STD_LOGIC_VECTOR (2 downto 0);
           res : out  STD_LOGIC_VECTOR (3 downto 0);
			  AluAA : out  STD_LOGIC_VECTOR (3 downto 0);
			  AluBB : out  STD_LOGIC_VECTOR (3 downto 0);
			  SalAA : out  STD_LOGIC_VECTOR (3 downto 0);
			  clk : in  STD_LOGIC;
           carry,z : out  STD_LOGIC);
end Alu;

architecture Behavioral of Alu is

signal tmpa,tmpb,tmpres: STD_LOGIC_VECTOR (4 downto 0);

begin
	tmpa (3 downto 0) <= a ;
	tmpb (3 downto 0) <= b ;
	tmpa(4)<='0';
	tmpb(4)<='0';
	process(clk)
	begin
		if falling_Edge(clk)then  
			case ctrl is
				when "010" => --Suma
					tmpres <= tmpa + tmpb ;
					if(tmpres(4)='1')then 
						carry	<='1';
					else
						carry <='0';
					end if;
					if(tmpres ="00000")then 
						z <='1';
					else
						z <='0';
					end if;
					
				when "000" =>--AND
					tmpres <= tmpa and tmpb;
					carry <='0';
					if(tmpres ="00000")then 
						z <='1';
					else
						z <='0';
					end if;
					
				when "001" =>--OR
					tmpres <= tmpa or tmpb;
					carry <='0';
					if(tmpres ="00000")then 
						z <='1';
					else
						z <='0';
					end if;
					
				when "111" =>--NOT
					tmpres <= NOT tmpa;
					carry <='0';
					if(tmpres ="00000")then 
						z <='1';
					else
						z <='0';
					end if;
					
				when "101" =>--Rot Derecha
					tmpres(3) <= tmpa(2);
					tmpres(2) <= tmpa(1);
					tmpres(1) <= tmpa(0);
					tmpres(0) <= tmpa(3);
					carry <='0';
					
				when "110" =>--Rot Izquierda
					tmpres(3) <= tmpa(0);
					tmpres(2) <= tmpa(3);
					tmpres(1) <= tmpa(2);
					tmpres(0) <= tmpa(1);
					carry <='0';
					
				when "100" =>--NOP
					tmpres <=tmpres;
					carry <='0';
					if(tmpres ="00000")then 
						z <='1';
					else
						z <='0';
					end if;
					
				when "011" =>--Resta 
					tmpres<="00000";
						if(tmpa<tmpb)then
							carry<='1';
							tmpres<=15-(tmpb-(tmpa+"0001"));
							else
							carry<='0';
							tmpres<=tmpa-tmpb;
						end if;
						if(tmpres = "00000")then
							z<='1';
							else
							z<='0';
						end if;
					
				when others =>
					tmpres <= tmpres;
			end case;
		end if;

		
	end process;
res<=tmpres(3 downto 0);
AluAA<=tmpa(3 downto 0);
AluBB<=tmpb(3 downto 0);
SalAA<=tmpres(3 downto 0);
end Behavioral;

