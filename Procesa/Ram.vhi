
-- VHDL Instantiation Created from source file Ram.vhd -- 12:39:22 10/06/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Ram
	PORT(
		dire : IN std_logic_vector(3 downto 0);
		clk : IN std_logic;
		rw : IN std_logic;
		entra : IN std_logic_vector(3 downto 0);          
		sale : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_Ram: Ram PORT MAP(
		dire => ,
		clk => ,
		rw => ,
		entra => ,
		sale => 
	);


