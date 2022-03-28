
-- VHDL Instantiation Created from source file DecodB.vhd -- 20:47:39 10/12/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DecodB
	PORT(
		ramB : IN std_logic_vector(3 downto 0);
		romB : IN std_logic_vector(3 downto 0);
		portIn : IN std_logic_vector(3 downto 0);
		aluB : IN std_logic_vector(3 downto 0);
		ctrl : IN std_logic_vector(2 downto 0);
		clk : IN std_logic;          
		resB : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_DecodB: DecodB PORT MAP(
		ramB => ,
		romB => ,
		portIn => ,
		aluB => ,
		ctrl => ,
		resB => ,
		clk => 
	);


