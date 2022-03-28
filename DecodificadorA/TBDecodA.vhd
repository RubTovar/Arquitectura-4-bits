LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
 
ENTITY TBDecodA IS
END TBDecodA;
 
ARCHITECTURE behavior OF TBDecodA IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DecodA
    PORT(
         ram : IN  std_logic_vector(3 downto 0);
         rom : IN  std_logic_vector(3 downto 0);
         portA : IN  std_logic_vector(3 downto 0);
         alu : IN  std_logic_vector(3 downto 0);
         ctrl : IN  std_logic_vector(2 downto 0);
         res : OUT  std_logic_vector(3 downto 0);
			clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal ram : std_logic_vector(3 downto 0) := (others => '0');
   signal rom : std_logic_vector(3 downto 0) := (others => '0');
   signal portA : std_logic_vector(3 downto 0) := (others => '0');
   signal alu : std_logic_vector(3 downto 0) := (others => '0');
   signal ctrl : std_logic_vector(2 downto 0) := (others => '0');
	signal clk : std_logic := '0';

 	--Outputs
   signal res : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	  -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DecodA PORT MAP (
          ram => ram,
          rom => rom,
          portA => portA,
          alu => alu,
          ctrl => ctrl,
          res => res,
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
		ram<="0001";ctrl<="000"; wait for 60 ns;
		ctrl<="100"; wait for 65 ns;
		rom<="0101";ctrl<="001"; wait for 70 ns;
		portA<="1010";ctrl<="010"; wait for 80 ns;
		alu<="1111";ctrl<="011"; wait for 90 ns;
		ctrl<="100"; wait for 100 ns;

      wait;
   end process;

END;
