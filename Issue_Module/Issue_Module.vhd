----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:33:04 10/24/2018 
-- Design Name: 
-- Module Name:    Issue_Module - Behavioral 
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

entity Issue_Module is
    Port ( 
	 
			  --System Inputs
			  FU_type : in  STD_LOGIC_VECTOR (1 downto 0);
           Fop : in  STD_LOGIC_VECTOR (1 downto 0);
           
			  Ri : in  STD_LOGIC_VECTOR (4 downto 0);
           Rj : in  STD_LOGIC_VECTOR (4 downto 0);
           Rk : in  STD_LOGIC_VECTOR (4 downto 0);
           
			  Issue : in  STD_LOGIC;
			  --Inputs from entities
			  --Busy bits from Reservation Stations
           ba1 : in  STD_LOGIC;
           ba2 : in  STD_LOGIC;
           ba3 : in  STD_LOGIC;
           bl1 : in  STD_LOGIC;
           bl2 : in  STD_LOGIC;
			  Tag_in : in STD_LOGIC_VECTOR (4 downto 0); --ROB tag-number
			  
			  --Outputs
			  Issue_out : out  STD_LOGIC;
			  IssueQ : out STD_LOGIC_VECTOR (4 downto 0);
			  IssueDest : out STD_LOGIC_VECTOR (4 downto 0);
			  IssueRs : out STD_LOGIC_VECTOR (4 downto 0);
			  IssueRt : out STD_LOGIC_VECTOR (4 downto 0);
			  
			  Fop_out : out   STD_LOGIC_VECTOR (1 downto 0);
			  Rs_Dest : out   STD_LOGIC_VECTOR (2 downto 0);
			  FU_type_out : out  STD_LOGIC_VECTOR (1 downto 0);
           Accepted : out  STD_LOGIC);
end Issue_Module;


architecture Behavioral of Issue_Module is

begin
Fop_out <= Fop;
IssueQ <= Tag_in;
--In this process we check ,which RS is available, in order to write the instruction in it
process(ba1,ba2,ba3,bl1,bl2,FU_type,Issue)
begin

if Issue = '1' then -- Checking ,if there is any instruction available
	if FU_type = "00" then -- Logical RS
		if bl1 = '0' then 	--RS logical 1 busy bit
			Rs_Dest <="100";	--Internal signal for decoding inside the RS unit
			Accepted <= '1';	
			IssueDest <= Ri;	
			IssueRs <= Rj;
			IssueRt <= Rk;
			Issue_Out <= Issue;
		elsif bl2 = '0' then
			Rs_Dest <="101";			
			Accepted <= '1';
			IssueDest <= Ri;
			IssueRs <= Rj;
			IssueRt <= Rk;
			Issue_Out <= Issue;
		else 						-- When there is none Logical Rs available 
			Rs_Dest <="000";	
			IssueDest <= std_logic_vector(to_unsigned(0,5));
			IssueRs <= std_logic_vector(to_unsigned(0,5));
			IssueRt <= std_logic_vector(to_unsigned(0,5));
			Issue_Out <= '0';			
			Accepted <= '0'; --- then dont accept it
		end if;
		
	elsif FU_type = "01" then -- Arithmetic type
	
		if ba1 = '0' then 
			Rs_Dest <="001";		
			Accepted <= '1';
			IssueDest <= Ri;
			IssueRs <= Rj;
			IssueRt <= Rk;
			Issue_Out <= Issue;
		elsif ba2 = '0' then
			Rs_Dest <="010";		
			Accepted <= '1';
			IssueDest <= Ri;
			IssueRs <= Rj;
			IssueRt <= Rk;
			Issue_Out <= Issue;
		elsif ba3 = '0' then
			Rs_Dest <="011";		
			Accepted <= '1';
			IssueDest <= Ri;
			IssueRs <= Rj;
			IssueRt <= Rk;
			Issue_Out <= Issue;
		else 
			Rs_Dest <="000";	
			IssueDest <= std_logic_vector(to_unsigned(0,5));
			IssueRs <= std_logic_vector(to_unsigned(0,5));
			IssueRt <= std_logic_vector(to_unsigned(0,5));
			Issue_Out <= '0';			
			Accepted <= '0';
		end if;
	else -- If code reach here it means we have an unknown instruction exception
		IssueDest <= std_logic_vector(to_unsigned(0,5));
		IssueRs <= std_logic_vector(to_unsigned(0,5));
		IssueRt <= std_logic_vector(to_unsigned(0,5));
		Issue_Out <= '0';			
		Rs_Dest <="000";	
		Accepted <= '0';
		
	end if;
else  -- When thers is no issue signal  reset everything to zero
	IssueDest <= std_logic_vector(to_unsigned(0,5));
	IssueRs <= std_logic_vector(to_unsigned(0,5));
	IssueRt <= std_logic_vector(to_unsigned(0,5));
	Issue_Out <= '0';			
	Rs_Dest <="000";	
	Accepted <= '0';
end if;	

end process;



end Behavioral;

