LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
 
ENTITY AluTest IS
END AluTest;
 
ARCHITECTURE behavior OF AluTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Alu is
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         con : IN  std_logic_vector(2 downto 0);
         res : OUT  std_logic_vector(3 downto 0);
         carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal con : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal res : std_logic_vector(3 downto 0);
   signal carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	
	begin 
		a <= "0010" after 150 ns;
		b <= "0001" after 100 ns;
		con <= "010" after 50 ns;	


END;