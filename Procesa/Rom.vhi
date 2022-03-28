
-- VHDL Instantiation Created from source file Rom.vhd -- 12:38:15 10/06/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Rom
	PORT(
		clk : IN std_logic;
		dire : IN std_logic_vector(3 downto 0);          
		salida : OUT std_logic_vector(19 downto 0)
		);
	END COMPONENT;

	Inst_Rom: Rom PORT MAP(
		clk => ,
		dire => ,
		salida => 
	);


