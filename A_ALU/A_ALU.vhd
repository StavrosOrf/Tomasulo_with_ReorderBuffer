----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:38:38 10/24/2018 
-- Design Name: 
-- Module Name:    A_ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity A_ALU is
Port ( Op : in  STD_LOGIC_VECTOR (1 downto 0);
           A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_OUT : out  STD_LOGIC_VECTOR (31 downto 0));
end A_ALU;

architecture Behavioral of A_ALU is
signal output_temp : STD_LOGIC_VECTOR (31 downto 0);



begin

 process(A,B,Op,output_temp)
 variable temp : STD_LOGIC_VECTOR (32 downto 0);
 BEGIN
 

	 case Op  is
		when "00" => --+
				temp := ('0' & A) + ('0' & B);
				output_temp <= temp(31 downto 0 );
		when "01" => ---
				temp := ('0' & A) -('0' & B);
				output_temp <= temp(31 downto 0);
				
		when "10" => -- <<
				output_temp(0) <= '0';
				output_temp(31 downto 1) <= A(30 downto 0);
		when "11" => -- <<
				output_temp(0) <= '1';
				--output_temp <= std_logic_vector(to_unsigned(5,32));
		when others =>
				output_temp <= "00000000000000000000000000000000";
		end case;
		

end process;	
ALU_OUT <= output_temp;

end Behavioral;


