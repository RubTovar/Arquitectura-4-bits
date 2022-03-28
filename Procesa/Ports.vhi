
-- VHDL Instantiation Created from source file Ports.vhd -- 12:35:02 10/06/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Ports
	PORT(
		enPint : IN std_logic_vector(3 downto 0);
		ctrl : IN std_logic;
		clk : IN std_logic;          
		salePint : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_Ports: Ports PORT MAP(
		enPint => ,
		salePint => ,
		ctrl => ,
		clk => 
	);


