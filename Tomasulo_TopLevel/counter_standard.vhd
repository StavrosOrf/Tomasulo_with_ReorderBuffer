----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:59:12 12/02/2018 
-- Design Name: 
-- Module Name:    counter_standard - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

-- This is a normal synchronous counter 
-- which counts by 4 ,when enable = 1
entity counter_standard is 
    Port ( en : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end counter_standard;

architecture Behavioral of counter_standard is
signal tmp : STD_LOGIC_VECTOR (31 downto 0) := std_logic_vector(to_unsigned(0,32));
begin
process(clk,reset,en,tmp)
begin
	if reset /= '1' then
		if clk'event and clk='1' and en = '1' then	
			tmp <= tmp + std_logic_vector(to_unsigned(4,32));
		else
			tmp <= tmp;
		end if;
	else
		tmp <= std_logic_vector(to_unsigned(0,32));
	end if;
	
end process;
output <= tmp;


end Behavioral;

