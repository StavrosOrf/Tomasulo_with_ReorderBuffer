----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:57:49 05/07/2018 
-- Design Name: 
-- Module Name:    Mux_Reg - Behavioral 
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
use work.my_Package_VectorV.All;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_Reg is
Port ( 
           Input : in  Array_of_RegV;
			  Sel : in  STD_LOGIC_VECTOR (4 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end Mux_Reg;

architecture Behavioral of Mux_Reg is

begin

	Output <= Input(to_integer(unsigned(Sel))) ;

end Behavioral;

