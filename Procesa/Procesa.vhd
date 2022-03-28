library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Procesa is
    Port ( clk : in  STD_LOGIC;  
			  pentra : in  STD_LOGIC_VECTOR (3 downto 0);
           psale : out  STD_LOGIC_VECTOR (3 downto 0);
			  AluA : out  STD_LOGIC_VECTOR (3 downto 0);
           AluB : out  STD_LOGIC_VECTOR (3 downto 0);
           SalAlu : out  STD_LOGIC_VECTOR (3 downto 0);
			  carryP,zP : out  STD_LOGIC);
end Procesa;

architecture Behavioral of Procesa is
COMPONENT Ports
	PORT(
		enPint : IN std_logic_vector(3 downto 0);
		ctrl : IN std_logic;
		clk : IN std_logic;          
		salePint : OUT std_logic_vector(3 downto 0)
		);
END COMPONENT;
COMPONENT Pout
	PORT(
		enPout : IN std_logic_vector(3 downto 0);
		ctrl : IN std_logic;
		clk : IN std_logic;          
		salePout : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
COMPONENT Wtrabajo
	PORT(
		enW : IN std_logic_vector(3 downto 0);
		ctrl : IN std_logic;
		clk : IN std_logic;          
		saleW : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
COMPONENT Rom
	PORT(
		clk : IN std_logic;
		dire : IN std_logic_vector(3 downto 0);          
		salida : OUT std_logic_vector(23 downto 0)
		);
	END COMPONENT;
COMPONENT Ram
	PORT(
		dire : IN std_logic_vector(3 downto 0);
		clk : IN std_logic;
		rw : IN std_logic;
		entra : IN std_logic_vector(3 downto 0);          
		sale : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
COMPONENT DecodA
	PORT(
		ram : IN std_logic_vector(3 downto 0);
		rom : IN std_logic_vector(3 downto 0);
		portIn : IN std_logic_vector(3 downto 0);
		alu : IN std_logic_vector(3 downto 0);
		ctrl : IN std_logic_vector(2 downto 0);
		clk : IN std_logic;          
		resA : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
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
COMPONENT DecodC
	PORT(
		ramC : OUT std_logic_vector(3 downto 0);
		portOut : OUT std_logic_vector(3 downto 0);
		aluC : OUT std_logic_vector(3 downto 0);
		ctrl : IN std_logic_vector(2 downto 0);
		clk : IN std_logic;          
		entra : IN std_logic_vector(3 downto 0)
		);
	END COMPONENT;
COMPONENT Alu
	PORT(
		a : IN std_logic_vector(3 downto 0);
		b : IN std_logic_vector(3 downto 0);
		ctrl : IN std_logic_vector(2 downto 0);
		clk : IN std_logic;          
		res : OUT std_logic_vector(3 downto 0);
		AluAA : OUT std_logic_vector(3 downto 0);
		AluBB : OUT std_logic_vector(3 downto 0);
		SalAA : OUT std_logic_vector(3 downto 0);
		carry : OUT std_logic;
		z : OUT std_logic
		);
	END COMPONENT;
COMPONENT progCont
	PORT(
		clk : IN std_logic;          
		saled : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;


signal tmp1: std_logic_vector(23 downto 0);
signal tmp2: std_logic_vector(3 downto 0);
signal tmp3: std_logic_vector(3 downto 0);
signal tmp4: std_logic_vector(3 downto 0);
signal tmp5: std_logic_vector(3 downto 0);
signal tmp6: std_logic_vector(3 downto 0);
signal tmp7: std_logic_vector(3 downto 0);
signal tmp8: std_logic_vector(3 downto 0);
signal tmp9: std_logic_vector(3 downto 0);
signal tmp12: std_logic_vector(3 downto 0);
signal tmp13: std_logic_vector(3 downto 0);
signal tmp14: std_logic_vector(3 downto 0);
signal tmp15: std_logic_vector(3 downto 0);
----
signal tmp10: std_logic;
signal tmp11: std_logic;
begin

	Inst_Ports: Ports PORT MAP(
		enPint =>pentra,
		salePint =>tmp2,
		ctrl =>tmp1(0),
		clk =>clk 
	);
	Inst_Pout: Pout PORT MAP(                                                                                                                                                                                                                                                            
		enPout =>tmp3,--Viene del decodificador C de salida
		salePout =>psale ,
		ctrl =>tmp1(1),
		clk =>clk 
	);
	Inst_Wtrabajo: Wtrabajo PORT MAP(
		enW =>tmp12,--Salida del ALU
		saleW =>tmp5,--Una entrada del Decodificador C
		ctrl =>tmp1(14),
		clk =>clk  
	);
	Inst_Rom: Rom PORT MAP(
		clk =>clk,
		dire =>tmp9,
		salida =>tmp1 
	);
	Inst_Ram: Ram PORT MAP(
		dire =>tmp1(19 downto 16),
		clk =>clk,
		rw =>tmp1(15),
		entra =>tmp13,--Viene del Decodificador C
		sale =>tmp6--Va a una entrada del Decodificador A o B 
	);
	Inst_DecodA: DecodA PORT MAP(
		ram =>tmp6,
		rom =>tmp1(23 downto 20),
		portIn =>tmp2,
		alu =>tmp8, --Viene de el decodificador C
		ctrl =>tmp1(4 downto 2),
		resA => tmp14,
		clk => clk
	);
	Inst_DecodB: DecodB PORT MAP(
		ramB =>tmp6,
		romB =>tmp1(23 downto 20),
		portIn =>tmp2,
		aluB =>tmp8, --Viene de el decodificador C
		ctrl =>tmp1(7 downto 5),
		resB => tmp15,
		clk => clk
	);
	Inst_DecodC: DecodC PORT MAP(
		ramC =>tmp13,
		portOut =>tmp3,
		aluC =>tmp8 ,
		ctrl =>tmp1(10 downto 8),
		entra =>tmp5 ,
		clk =>clk 
	);
	Inst_Alu: Alu PORT MAP(
		a =>tmp14 ,
		b => tmp15,
		ctrl =>tmp1(13 downto 11),
		res =>tmp12 ,
		AluAA =>AluA ,
		AluBB =>AluB ,
		SalAA =>SalAlu ,
		clk =>clk ,
		carry =>carryP,
		z =>zP 
	);
	Inst_progCont: progCont PORT MAP(
		clk => clk,
		saled =>tmp9 
	);

end Behavioral;

