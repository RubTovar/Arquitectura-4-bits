LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ALUTB IS
END ALUTB;
 
ARCHITECTURE behavior OF ALUTB IS 
  
    COMPONENT Alu
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         con : IN  std_logic_vector(2 downto 0);
         res : OUT  std_logic_vector(3 downto 0);
         tmp : INOUT  std_logic_vector(3 downto 0);
         tmpflag : OUT  std_logic_vector(1 downto 0);
         carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal con : std_logic_vector(2 downto 0) := (others => '0');

	--BiDirs
   signal tmp : std_logic_vector(3 downto 0);

 	--Outputs
   signal res : std_logic_vector(3 downto 0);
   signal tmpflag : std_logic_vector(1 downto 0);
   signal carry : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Alu PORT MAP (
          a => a,
          b => b,
          con => con,
          res => res,
          tmp => tmp,
          tmpflag => tmpflag,
          carry => carry
        );
   end process;

END;
