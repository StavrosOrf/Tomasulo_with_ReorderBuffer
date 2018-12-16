----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:04:59 05/07/2018 
-- Design Name: 
-- Module Name:    Compare_Module - Behavioral 
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

entity Compare_Module is
Port ( 
           Awr : in  STD_LOGIC_VECTOR(4 DOWNTO 0);
           Ad : in  STD_LOGIC_VECTOR(4 DOWNTO 0);
           WrEn : in  STD_LOGIC;
           Out_compare : out  STD_LOGIC
			  );
end Compare_Module;

architecture Behavioral of Compare_Module is

begin

Out_compare <=  '0' when (Ad=Awr AND Ad= "00000") 
                else
				   ('1' AND WrEn) when Ad=Awr 
					 else
				    '0';

end Behavioral;

