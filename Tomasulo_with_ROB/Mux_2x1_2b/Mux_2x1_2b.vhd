----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:48:23 10/26/2018 
-- Design Name: 
-- Module Name:    Mux_2x1_2b - Behavioral 
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

entity Mux_2x1_2b is

Port (     
           A : in  STD_LOGIC_VECTOR (1 downto 0);
           B : in  STD_LOGIC_VECTOR (1 downto 0);
			  PC_Sel:in STD_LOGIC;
           mux_out : out  STD_LOGIC_VECTOR (1 downto 0)
			  );
end Mux_2x1_2b;

architecture Behavioral of Mux_2x1_2b is

begin

mux_out<= A when PC_Sel='0' else B;

end Behavioral;
