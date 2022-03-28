
-- VHDL Instantiation Created from source file Alu.vhd -- 20:49:14 10/12/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Alu
	PORT(
		a : IN std_logic_vector(3 downto 0);
		b : IN std_logic_vector(3 downto 0);
		ctrl : IN std_logic_vector(2 downto 0);
		clk : IN std_logic;          
		res : OUT std_logic_vector(3 downto 0);
		carry : OUT std_logic;
		z : OUT std_logic
		);
	END COMPONENT;

	Inst_Alu: Alu PORT MAP(
		a => ,
		b => ,
		ctrl => ,
		res => ,
		clk => ,
		carry => ,
		z => 
	);


