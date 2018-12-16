----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:51:40 10/23/2018 
-- Design Name: 
-- Module Name:    Q_Match_Module - Behavioral 
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
use work.my_Package_Vector.All;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Q_Match_Module is
Port ( 
	Input : in  Array_of_Reg;
	CDB_Q : in std_logic_vector(4 downto 0);
	Q_match : out std_logic;
	Q_match_addr : out std_logic_vector(4 downto 0));
	
end Q_Match_Module;

architecture Behavioral of Q_Match_Module is

begin

process(Input,CDB_Q)
begin
		Q_match <= '0';
		Q_match_addr <= "00000";
loopQ :
	for i in 1 to 31 loop
		
			if Input(i)(4 downto 0) = CDB_Q(4 downto 0) then 
				Q_match <= '1';
				Q_match_addr <=  std_logic_vector(to_unsigned(i,5));
	
			end if;
			

end loop ;
end process;


end Behavioral;

