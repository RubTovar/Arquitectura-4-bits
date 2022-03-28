library IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_Alu IS
END TB_Alu;
 
ARCHITECTURE behavior OF TB_Alu IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Alu
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         ctrl : IN  std_logic_vector(2 downto 0);
         res : OUT  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         carry : OUT  std_logic;
         z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal ctrl : std_logic_vector(2 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal res : std_logic_vector(3 downto 0);
   signal carry : std_logic;
   signal z : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Alu PORT MAP (
          a => a,
          b => b,
          ctrl => ctrl,
          res => res,
          clk => clk,
          carry => carry,
          z => z
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
		
		--Resta
		a <= "0001"; b<= "0010"; ctrl<="011"; wait for 60 ns;
		--SUma 
      a <= "1001"; b<= "0001"; ctrl<="010"; wait for 60 ns;
		--OR
		a <= "0100"; b<= "1011"; ctrl<="001"; wait for 60 ns;
		--AND
		a <= "0011"; b<= "1100"; ctrl<="000"; wait for 60 ns;
		--NOT
		a <= "1110";ctrl<="111"; wait for 60 ns;
		--NOP
		ctrl<="110"; wait for 60 ns;
		--ROT I
		a <= "1110"; ctrl<="101"; wait for 60 ns;
		--ROT D
		a <= "1110"; ctrl<="100"; wait for 60 ns;

      wait;
   end process;

END;
