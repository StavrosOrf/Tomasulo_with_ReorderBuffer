----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:02:41 10/26/2018 
-- Design Name: 
-- Module Name:    Reservation_Station - Behavioral 
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

entity Reservation_Station is
    Port ( Vj : in  STD_LOGIC_VECTOR (31 downto 0);
           Vk : in  STD_LOGIC_VECTOR (31 downto 0);
           Qj : in  STD_LOGIC_VECTOR (4 downto 0);
           Qk : in  STD_LOGIC_VECTOR (4 downto 0);
           Busy : in  STD_LOGIC;
			  Tag : in  STD_LOGIC_VECTOR (4 downto 0);
           Op : in  STD_LOGIC_VECTOR (1 downto 0);
           Reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  WrEn_Busy: in  STD_LOGIC;
			  WrEn_Vj: in  STD_LOGIC;
			  WrEn_Vk: in  STD_LOGIC;
			  WrEn_Qj: in  STD_LOGIC;
			  WrEn_Qk: in  STD_LOGIC;
			  WrEn_Op: in  STD_LOGIC;
			  
			  Busy_out : out  STD_LOGIC;
			  tag_out : out  STD_LOGIC_VECTOR (4 downto 0); ---
			  Vj_out : out  STD_LOGIC_VECTOR (31 downto 0);
           Vk_out : out  STD_LOGIC_VECTOR (31 downto 0);
           Qj_out : out  STD_LOGIC_VECTOR (4 downto 0);
           Qk_out : out  STD_LOGIC_VECTOR (4 downto 0);
           Op_out : out  STD_LOGIC_VECTOR (1 downto 0));
end Reservation_Station;

architecture Behavioral of Reservation_Station is
--Here we use a big register with multiple ports as an input because all these values have to pass together
begin
	process (Clk,Reset,WrEn_Busy,WrEn_Vj,WrEn_Vk,WrEn_Qj,WrEn_Qk,WrEn_Op )
	begin
	if Reset = '0' then
 			if WrEn_Busy = '1' AND (Clk 'event AND Clk = '1')then
				Busy_out <= Busy ;
			end if;
			if WrEn_Vj = '1' AND (Clk 'event AND Clk = '1')then
				Vj_out <= Vj ;
			end if;
			if WrEn_Vk = '1' AND (Clk 'event AND Clk = '1')then
				Vk_out <= Vk ;
			end if;
			if WrEn_Qj = '1' AND (Clk 'event AND Clk = '1')then
				Qj_out <= Qj ;
			end if;
			if WrEn_Qk = '1' AND (Clk 'event AND Clk = '1')then
				Qk_out <= Qk ;
			end if;
			if WrEn_Op = '1' AND (Clk 'event AND Clk = '1')then
				tag_out <= Tag;
				Op_out <= Op;
			end if;
		
	elsif  Reset = '1' AND (Clk 'event AND Clk = '1')	then
				Busy_out <= '0';
				Op_out <="00";
				Qk_out <= "00000" ;
				Qj_out <= "00000" ;
				Vk_out <="00000000000000000000000000000000";
				Vj_out <="00000000000000000000000000000000";
				tag_out <="00000";
			
	end if;
	end process;



end Behavioral;

