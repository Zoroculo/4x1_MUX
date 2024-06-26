library ieee;
use ieee.std_logic_1164.all;

--Use the Gates package already uploaded in my previous repository named AND_using_NAND.
library work;
use work.Gates.all;

entity PART_B is
	port(In5,In4,In3,In2,S2,S1:in std_logic;
			Y: out std_logic);
end entity;

architecture struct of PART_B is
	--The code of the below component is uploaded in my previous repository named 2x1_MUX.
	component PART_A is
	port(In1,In0,S:in std_logic;
			Y: out std_logic);
	end component;

	signal sig1,sig2: std_logic;
	
begin	

	inst0: PART_A port map (In1=>In3,In0=>In2,S=>S1,Y=>sig1);
	inst1: PART_A port map (In1=>In5,In0=>In4,S=>S1,Y=>sig2);
	inst2: PART_A port map (In1=>sig2,In0=>sig1,S=>S2,Y=>Y);


end architecture;
