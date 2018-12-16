----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:53:24 10/26/2018 
-- Design Name: 
-- Module Name:    Mux_3x1_2b - Behavioral 
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

entity Mux_3x1_2b is
Port ( 	  A : in  STD_LOGIC_VECTOR (1 downto 0);
           B : in  STD_LOGIC_VECTOR (1 downto 0);
			  C : in  STD_LOGIC_VECTOR (1 downto 0);
			  sel : in  STD_LOGIC_VECTOR(1 downto 0);
           Output : out  STD_LOGIC_VECTOR (1 downto 0));
end Mux_3x1_2b;

architecture Behavioral of Mux_3x1_2b is

begin
process(sel,A,B,C)
begin
		if sel="00"    then Output <= A;
      elsif sel="01" then Output <= B;
      elsif sel="10" then Output <= C;
      
		end if;
end process;
end Behavioral;

