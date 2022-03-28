
-- VHDL Instantiation Created from source file DecodA.vhd -- 20:47:58 10/12/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DecodA
	PORT(
		ram : IN std_logic_vector(3 downto 0);
		rom : IN std_logic_vector(3 downto 0);
		portIn : IN std_logic_vector(3 downto 0);
		alu : IN std_logic_vector(3 downto 0);
		ctrl : IN std_logic_vector(2 downto 0);
		clk : IN std_logic;          
		res : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_DecodA: DecodA PORT MAP(
		ram => ,
		rom => ,
		portIn => ,
		alu => ,
		ctrl => ,
		res => ,
		clk => 
	);


