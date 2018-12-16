----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:24:13 10/23/2018 
-- Design Name: 
-- Module Name:    Mux_2x1_5b - Behavioral 
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

entity Mux_2x1_5b is
Port (     
           A : in  STD_LOGIC_VECTOR (4 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
			  PC_Sel:in STD_LOGIC;
           mux_out : out  STD_LOGIC_VECTOR (4 downto 0)
			  );
end Mux_2x1_5b;

architecture Behavioral of Mux_2x1_5b is

begin

mux_out<= A when PC_Sel='0' else B;

end Behavioral;

