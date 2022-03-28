
-- VHDL Instantiation Created from source file DecodC.vhd -- 10:29:34 10/27/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DecodC
	PORT(
		ramC : IN std_logic_vector(3 downto 0);
		romC : IN std_logic_vector(3 downto 0);
		portIn : IN std_logic_vector(3 downto 0);
		aluC : IN std_logic_vector(3 downto 0);
		ctrl : IN std_logic_vector(2 downto 0);
		clk : IN std_logic;          
		res : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_DecodC: DecodC PORT MAP(
		ramC => ,
		romC => ,
		portIn => ,
		aluC => ,
		ctrl => ,
		res => ,
		clk => 
	);


