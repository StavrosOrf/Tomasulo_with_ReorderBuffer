----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:27:18 10/24/2018 
-- Design Name: 
-- Module Name:    Register_FU - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Register_FU is
    Port ( WrEn_in : in  STD_LOGIC;
			  Clk : in  STD_LOGIC;
           Q : in  STD_LOGIC_VECTOR (4 downto 0);
           V : in  STD_LOGIC_VECTOR (31 downto 0);
			  Rst_enable : in  STD_LOGIC;
			  Rst_sel : in  STD_LOGIC_VECTOR (1 downto 0);
			  Rst_enable_out : out  STD_LOGIC;
			  Rst_sel_out : out  STD_LOGIC_VECTOR (1 downto 0);
			  Rst : in  STD_LOGIC;
           Qout : out  STD_LOGIC_VECTOR (4 downto 0);
           Vout : out  STD_LOGIC_VECTOR (31 downto 0)
          );
end Register_FU;

architecture Behavioral of Register_FU is

begin
	process (Clk,Rst)
	begin
	if Rst = '0' then
 			if WrEn_in = '1' AND (Clk 'event AND Clk = '1')then
				Qout <= Q ;
				Vout <= V ;
				Rst_enable_out <= Rst_enable;
				Rst_sel_out <= Rst_sel;
			end if;
	else 	
			Qout <= std_logic_vector(to_unsigned(0,5));
			Vout <= std_logic_vector(to_unsigned(0,32));
	end if;
	end process;


end Behavioral;

