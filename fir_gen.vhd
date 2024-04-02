library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fir_gen is

	port(
		clk,rst: in std_logic;
		x: in signed(15 downto 0);
		y: out signed(31 downto 0));
		
end entity;


architecture pablo of fir_gen is 

type vect_coefi is array (0 to 60) of signed (15 downto 0);
signal coefi: vect_coefi := (X"0000", -X"000b", -X"001f", -X"0035", -X"0045", -X"0047", -X"0038", -X"0019", X"000a", X"0026", X"0028", X"0003", -X"0050", -X"00d1", -X"0175", -X"0228", -X"013a", -X"009d", -X"00ce", -X"020c", -X"0432", -X"06af", -X"08ac", -X"0943", -X"07cb", -X"0415", X"0174", X"07dc", X"0dd5", X"1213", X"139f", X"1213", X"0dd5", X"07dc", X"0174", -X"0415", -X"07cb", -X"0943", -X"08ac", -X"06af", -X"0432", -X"020c", -X"00ce", -X"009d", -X"013a", -X"0228", -X"0175", -X"00d1", -X"0050", X"0003", X"0028", X"0026", X"000a", -X"0019", -X"0038", -X"0047", -X"0045", -X"0035", -X"001f", -X"000b", X"0000");
signal delay: vect_coefi; 



begin 

retardo: process (clk,rst)
	begin 
		if (rst='1') then 
			for i in 0 to 60 loop 
				delay(i) <= (others => '0');
			end loop;
			
		elsif rising_edge(clk) then 
			delay(0) <= x;
			for i in 1 to 60 loop
				delay(i) <= delay(i-1);
			end loop;
		end if;
end process;

convol: process(clk, rst)
variable acum: signed (31 downto 0);
	begin 
		if (rst='1') then 
			y <= (others => '0');
			acum := (others => '0');
		elsif rising_edge (clk) then 
			acum := (others => '0');
			for i in 0 to 60 loop
				acum := acum + coefi(i) + delay(i);
			end loop;
			y <= acum;
			
		end if;
end process;
end pablo;		

		
 		

		