LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY AluTest IS
END AluTest;
 
ARCHITECTURE behavior OF AluTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Alu is
    PORT(
         a_s : IN  std_logic_vector(3 downto 0);
         b_s : IN  std_logic_vector(3 downto 0);
         con_s : IN  std_logic_vector(2 downto 0);
         res_s : OUT  std_logic_vector(3 downto 0);
         carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a_s : std_logic_vector(3 downto 0) := (others => '0');
   signal b_s : std_logic_vector(3 downto 0) := (others => '0');
   signal con_s : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal res_s : std_logic_vector(3 downto 0);
   signal carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	
	begin 
		a_s <= "0010" after 200 ns;
		b_s <= "0001" after 300 ns;
		con_s <= "010" after 100 ns;	


END;
