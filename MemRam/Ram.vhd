library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ram is
    Port ( dire : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           rw : in  STD_LOGIC;
           entra : in  STD_LOGIC_VECTOR (3 downto 0);
           sale : out  STD_LOGIC_VECTOR (3 downto 0));
end Ram;

architecture Behavioral of Ram is
type celda is array (15 downto 0) of std_logic_vector(3 downto 0);
signal dato:celda;
begin
    process(clk)
    begin
        if falling_edge(clk)then
            
                if(rw='1')then
                    sale<=dato(conv_integer(dire));
                else
                    dato(conv_integer(dire))<=entra;
                end if;
            
            
        end if;
    end process;
end Behavioral;

