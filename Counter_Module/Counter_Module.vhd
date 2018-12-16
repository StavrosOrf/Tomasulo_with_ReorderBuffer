----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:30:59 11/30/2018 
-- Design Name: 
-- Module Name:    Counter_Module - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter_Module is
    Port ( input : in  STD_LOGIC_VECTOR (4 downto 0);
           output : out  STD_LOGIC_VECTOR (4 downto 0));
end Counter_Module;

architecture Behavioral of Counter_Module is

begin

process(input)
begin
		if (input = "11110") then
			output<= "00001";
		else
		output<= input +"00001";
		end if;
end process;
		
end Behavioral;