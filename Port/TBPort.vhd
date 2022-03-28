LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
 
ENTITY TBPort IS
END TBPort;
 
ARCHITECTURE behavior OF TBPort IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ports
    PORT(
         en : IN  std_logic_vector(3 downto 0);
         sale : OUT  std_logic_vector(3 downto 0);
         ctrl : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal en : std_logic_vector(3 downto 0) := (others => '0');
   signal ctrl : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal sale : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ports PORT MAP (
          en => en,
          sale => sale,
          ctrl => ctrl,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      en<="0101";ctrl<='0';wait for 60 ns;
      ctrl<='1';wait for 70 ns;

      wait;
   end process;

END;
