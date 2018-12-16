----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:38:03 05/07/2018 
-- Design Name: 
-- Module Name:    Mux_2x1 - Behavioral 
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

entity Mux_2x1_Q is
   Port (  
	        A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Sel : in  STD_LOGIC;
           Output : out  STD_LOGIC
			  );
end Mux_2x1_Q;

architecture Behavioral of Mux_2x1_Q is

begin

Output <= A when Sel='0' else
			 B;

end Behavioral;

