
-- VHDL Instantiation Created from source file Wtrabajo.vhd -- 12:37:25 10/06/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Wtrabajo
	PORT(
		enW : IN std_logic_vector(3 downto 0);
		ctrl : IN std_logic;
		clk : IN std_logic;          
		saleW : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_Wtrabajo: Wtrabajo PORT MAP(
		enW => ,
		saleW => ,
		ctrl => ,
		clk => 
	);


