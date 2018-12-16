----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:22:19 10/24/2018 
-- Design Name: 
-- Module Name:    Arithmetic_Control - Behavioral 
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

entity Arithmetic_Control is
Port ( 
			  --Inputs
			  Qj1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Qk1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Qj2 : in  STD_LOGIC_VECTOR (4 downto 0);
			  Qk2 : in  STD_LOGIC_VECTOR (4 downto 0);
			  Qj3 : in  STD_LOGIC_VECTOR (4 downto 0);
           Qk3 : in  STD_LOGIC_VECTOR (4 downto 0);
			  Clk : in  STD_LOGIC;
			  Reset : in  STD_LOGIC;
			  Busy1 : in  STD_LOGIC;
           Busy2 : in  STD_LOGIC;
			  Busy3 : in  STD_LOGIC;
           L_Grand : in  STD_LOGIC;
			  --Outputs
           L_Request : out  STD_LOGIC;
           WrEn1 : out  STD_LOGIC;
           WrEn2 : out  STD_LOGIC;
			  WrEn3 : out  STD_LOGIC;
           Sel : out  STD_LOGIC_VECTOR (1 downto 0);
			  RST_En : out  STD_LOGIC);
end Arithmetic_Control;

architecture Behavioral of Arithmetic_Control is

type state is (ex_state,wait1_state,wait2_state,wait3_state);

signal current_state,next_state:state;
	begin
		process(current_state,Qj1,Qk1,Qj2,Qk2,Busy1,Busy2,L_Grand,Reset,Qj3,Qk3,Busy3)
			begin 
			
			case current_state is 
				when ex_state => 
					L_Request<='0';
					RST_En <='0';
					WrEn2<='0';
					WrEn3<='0';
					if Qj1 = "00000" and Qk1 = "00000"  and Busy1 = '1' then -- Reservation Station 1
							Sel <= "00" ; 
							WrEn1 <='1';
							next_state <= wait1_state;

					elsif Qj2 = "00000" and Qk2 = "00000"  and Busy2 = '1' then -- Reservation Station 2
							
							Sel <= "01" ; 
							WrEn1 <='1';
							next_state <= wait1_state;
							
					elsif Qj3 = "00000" and Qk3 = "00000"  and Busy3 = '1' then -- Reservation Station 3
							
							Sel <= "10" ; 
							WrEn1 <='1';
							next_state <= wait1_state;
					else 
						
							WrEn1 <='0';
							next_state <= ex_state;
					end if;	
					
				when wait1_state => 
					WrEn1 <='0';
					WrEn2 <='1';
					L_Request <='0';
				
				next_state <= wait2_state;
				
				when wait2_state => 
					WrEn1 <='0';
					WrEn2 <='0';
					L_Request <='1';
					WrEn3 <='1';
				next_state <= wait3_state;
				
				when wait3_state => 
					if L_Grand = '1' then
						L_Request <='0';
						WrEn1 <='0';
						WrEn2 <='0';
						WrEn3 <='0';
						RST_En <='1';
						next_state <= ex_state;
					elsif L_Grand = '0' then
						L_Request <='1';
						WrEn1 <='0';
						WrEn2 <='0';
						WrEn3 <='0';
						next_state <= wait2_state;
					end if;
					
			end case;
end process;
process(Clk,Reset)
	  begin
	    if Reset='1' then
		    current_state <= ex_state;
		 elsif (Clk'EVENT and Clk='1') then
		    current_state <= next_state;
		 end if;
	end process;




end Behavioral;


