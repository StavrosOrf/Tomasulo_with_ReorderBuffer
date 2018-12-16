----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:57:37 11/30/2018 
-- Design Name: 
-- Module Name:    Register_1b - Behavioral 
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

entity Register_6b is
Port ( 
			  clk : in  STD_LOGIC;
			  reset : in STD_LOGIC;
           WrEn : in  STD_LOGIC;
           Din : in  STD_LOGIC_VECTOR(5 downto 0);
           Dout : out  STD_LOGIC_VECTOR(5 downto 0)
			  );

end Register_6b;

architecture Behavioral of Register_6b is

begin
	process (clk,reset,WrEn)
	begin
	if reset = '1' and WrEn ='1' then 
		
			if WrEn = '1' AND (clk'event AND clk = '1')then
				Dout <= Din ;
			end if;
	elsif reset = '0' then
	
			if WrEn = '1' AND (clk'event AND clk = '1')then
				Dout <= Din ;
			end if;
	else
			if (clk'event AND clk = '1')then
				Dout <="000000" ;
			end if;
	end if;
	
	end process;


end Behavioral;
