----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:27:30 10/23/2018 
-- Design Name: 
-- Module Name:    Mux_Reg_Q - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use work.my_Package_Vector.All;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_Reg_Q is
Port ( 
           Input : in  Array_of_Reg;
			  Sel : in  STD_LOGIC_VECTOR (4 downto 0);
           Output : out  STD_LOGIC_VECTOR (4 downto 0)
			  );
end Mux_Reg_Q;

architecture Behavioral of Mux_Reg_Q is

begin

	Output <= Input(to_integer(unsigned(Sel))) ;

end Behavioral;

