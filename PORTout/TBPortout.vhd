LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
 
ENTITY TBPortout IS
END TBPortout;
 
RCHITECTURE behavior OF TBPortout IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Pout
    PORT(
         en : IN  std_logic_vector(3 downto 0);
         sale : OUT  std_logic_vector(3 downto 0);
         ctrl : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal en : std_logic_vector(3 downto 0) := (others => '0');
   signal ctrl : std_logic := '0';

 	--Outputs
   signal sale : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Pout PORT MAP (
          en => en,
          sale => sale,
          ctrl => ctrl
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
