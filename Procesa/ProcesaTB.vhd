LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_UNSIGNED.ALL;

 
ENTITY ProcesaTB IS
END ProcesaTB;
 
ARCHITECTURE behavior OF ProcesaTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Procesa
    PORT(
         clk : IN  std_logic;
         pentra : IN  std_logic_vector(3 downto 0);
         psale : OUT  std_logic_vector(3 downto 0);
         carryP : OUT  std_logic;
         zP : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal pentra : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal psale : std_logic_vector(3 downto 0);
   signal carryP : std_logic;
   signal zP : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Procesa PORT MAP (
          clk => clk,
          pentra => pentra,
          psale => psale,
          carryP => carryP,
          zP => zP
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

      wait for clk_period*10;

		pentra <= "0010";wait for 400 ns;

      wait;
   end process;

END;
