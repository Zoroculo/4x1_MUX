-- A DUT entity is used to wrap your design.

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
	-- Instantiate your own top Module component in place of ALU_1
	
component PART_B is
port(In5,In4,In3,In2,S2,S1 : in std_logic; Y : out std_logic);
end component;

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: PART_B port map (In5 => input_vector(5), In4 => input_vector(4),In3 => input_vector(3),In2 => input_vector(2),
												S2 => input_vector(1),S1 => input_vector(0),
												Y => output_vector(0));

end DutWrap;

