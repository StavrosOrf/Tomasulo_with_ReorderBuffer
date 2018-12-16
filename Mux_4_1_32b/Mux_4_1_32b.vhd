----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:25:22 10/26/2018 
-- Design Name: 
-- Module Name:    Mux_4_1_32b - Behavioral 
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

entity Mux_4_1_32b is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           C : in  STD_LOGIC_VECTOR (31 downto 0);
           D : in  STD_LOGIC_VECTOR (31 downto 0);
           Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
end Mux_4_1_32b;

architecture Behavioral of Mux_4_1_32b is

begin

process(Sel,A,B,C,D)
  begin
      if Sel="00"    then Output <= A;
      elsif Sel="01" then Output <= B;
      elsif Sel="10" then Output <= C;
      elsif Sel="11" then Output <= D;
      end if;
end process;
end Behavioral;

