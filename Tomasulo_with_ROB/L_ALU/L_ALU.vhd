----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:22:22 10/24/2018 
-- Design Name: 
-- Module Name:    L_ALU - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity L_ALU is
    Port ( Op : in  STD_LOGIC_VECTOR (1 downto 0);
           A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_OUT : out  STD_LOGIC_VECTOR (31 downto 0));
end L_ALU;

architecture Behavioral of L_ALU is
signal output_temp : STD_LOGIC_VECTOR (31 downto 0);



begin

 process(A,B,Op,output_temp)
 BEGIN
	 case Op  is
		when "00" => --or
				output_temp <= A(31 downto 0 ) OR B(31 downto 0 );
		when "01" => --and
				output_temp <= A and B;	
		when "10" => --not
				output_temp <=  not A ;	
		when "11" => --test
				output_temp <= "00000000000000000000000000001000";
		
		when others =>
				output_temp <= "00000000000000000000000000000000";
		end case;
		

end process;	
ALU_OUT <= output_temp;

end Behavioral;

