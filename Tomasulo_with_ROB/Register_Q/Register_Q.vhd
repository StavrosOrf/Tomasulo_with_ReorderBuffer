----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:22:26 10/23/2018 
-- Design Name: 
-- Module Name:    Register_Q - Behavioral 
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


entity Register_Q is
Port ( 
			  clk : in  STD_LOGIC;
			  reset : in STD_LOGIC;
           WrEn : in  STD_LOGIC;
           Din : in  STD_LOGIC_VECTOR (4 downto 0);
           Dout : out  STD_LOGIC_VECTOR (4 downto 0)
			  );
end Register_Q;

architecture Behavioral of Register_Q is

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
				Dout <= "00000" ;
			end if;
	end if;
	
	end process;


end Behavioral;

