----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:35:43 11/28/2018 
-- Design Name: 
-- Module Name:    Reorder_Buffer - Behavioral 
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
use ieee.std_logic_unsigned.all; 
use work.my_Package_Vector_rob.All;
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Reorder_Buffer is
    Port ( 
			  --Inputs
			  PC : in  STD_LOGIC_VECTOR (31 downto 0); -- Number for command priority
           Rd_in : in  STD_LOGIC_VECTOR (4 downto 0); -- The destination Register Rd
           fu_type : in  STD_LOGIC_VECTOR (1 downto 0); -- the type of instruction
			  op : in  STD_LOGIC_VECTOR (1 downto 0); -- the operation of the instruction
			  Issue_input: in  STD_LOGIC; --Tells us whether there is an issue 
			  Exception_Type :in STD_LOGIC_VECTOR(31 downto 0);
			  CDB_V : in  STD_LOGIC_VECTOR (31 downto 0); -- The result from the FU == value
           CDB_Q : in  STD_LOGIC_VECTOR (4 downto 0); -- Tells us in which line of the reorder buffer the CDB_V will be written
           
			  
			  CLK : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
			 
			  --Outputs
           Ready : out  STD_LOGIC;
           Rd_out : out  STD_LOGIC_VECTOR (4 downto 0);
           Value_out : out  STD_LOGIC_VECTOR (31 downto 0);
			  Accepted : out  STD_LOGIC;
			  Tag_out : out  STD_LOGIC_VECTOR (4 downto 0));
end Reorder_Buffer;

architecture Behavioral of Reorder_Buffer is
signal rob_in_issue,rob_in_cdb,temp_rob_cdb : std_logic_vector(105 downto 0):= std_logic_vector(to_unsigned(0,106));
--the rob_in_cdb is temporary signal for extracting the line from Reorder Buffer and passing inputs - CDB_V 
--the rob_in_issue is temporary signal for  passing inputs - CDB_V PC Rd_in

signal commit_pointer,commit_pointer_plus1,commit_pointer_out,tmp_rd_out :std_logic_vector(4 downto 0):= "00000";--:= "11111";		

signal issue_pointer,issue_pointer_out :std_logic_vector(4 downto 0):= "11110";	
																						  
signal tmp_issue_wren,tmp_cdb_wren :std_logic :='0';
signal tmp_correct,tmp_control: std_logic:='0';


-- Initializing Reorder Buffer table
function Init  return Array_of_Reg  is
	variable ram : Array_of_Reg;
	begin
		for i in 0 to 31 loop
			ram(i) := std_logic_vector(to_unsigned(0,106));
		end loop;
	return ram;
end function;

signal ram : Array_of_Reg := Init; --The ROB table

begin


Issue_pointer_Inst : entity work.Counter_Module 
port map ( 
           input => issue_pointer,
           output => issue_pointer_out
			  
			  );	

Commit_pointer_Inst : entity work.Counter_Module 
port map ( 
           input => commit_pointer,
           output => commit_pointer_out
			  
			  );				  


		  
--this process makes the write to a line of Reorder Buffer called from ISSUE 
--and the extraction from the ReorderBuffer and then the rewrite from CDB
process (CLK,Reset,PC,Rd_in,Issue_input,tmp_issue_wren,ram,rob_in_issue,CDB_Q,rob_in_cdb)         
		begin  
			if Reset /= '1' then
				if Issue_input = '1' then
					if tmp_issue_wren = '1' then 
						rob_in_issue(105 downto 104 ) <= fu_type;
						rob_in_issue(103 downto 102 ) <=op;
						rob_in_issue(101 downto 70 ) <= Exception_Type(31 downto 0);
						rob_in_issue(69 downto 38 ) <= PC(31 downto 0);
						rob_in_issue(37 downto 33) <= Rd_in(4 downto 0);
						rob_in_issue(32 downto 1) <= std_logic_vector(to_unsigned(0,32));
						rob_in_issue(0)<= '0'; 
						 --we are pre-increasing the pointer issue,so we use "issue_pointer_out"
						ram(conv_integer(issue_pointer_out))(105 downto 0) <= rob_in_issue(105 downto 0);
					end if;
				
				end if;
				--! we have to check what CDB has as an output when there are no usefull data
				-- make ready bit '1' as the value CDB_V has written to it
				
				if CLK'event and CLK='1'and CDB_Q /= "11111" then
					ram(conv_integer(CDB_Q))(105 downto 0) <= rob_in_cdb(105 downto 0);
				end if;
				
				
				
			else 
				
			end if ;
end process;

rob_in_cdb(105 downto 33) <= ram(conv_integer(CDB_Q))(105 downto 33);
rob_in_cdb(32 downto 1) <= CDB_V;
rob_in_cdb(0)<= '1';	

Value_out<= ram(conv_integer(commit_pointer_out))(32 downto 1);
Ready <= ram(conv_integer(commit_pointer_out))(0);

process(CLK,Issue_input,tmp_rd_out,issue_pointer,issue_pointer_out,commit_pointer_plus1,commit_pointer,commit_pointer_out,ram)

	begin
				--Checking if Rob has available space to write,also setting the control bits
				if (Issue_input = '1' and issue_pointer_out = commit_pointer) or (Issue_input = '0' ) then 
						Tag_out<="11111";
						tmp_issue_wren <='0';
						Accepted <= '0';
				elsif Issue_input = '1' and issue_pointer_out /= commit_pointer  then 
						Tag_out<= issue_pointer_out ;
						tmp_issue_wren <='1';
						Accepted <= '1';
				end if;		
					
				--Synchronous increasing the pointers ,if they have to
				if CLK'event and CLK='1' then	 
					--Issue pointer (pre-increasing)
					if Issue_input = '1' and issue_pointer_out /= commit_pointer  then 
						issue_pointer <= issue_pointer_out;
					end if;
					--Commit pointer (post-increasing)
					--When commit pointer's head ready bit is '1', it will be wirtten in RF at the next clock tick
					if ram(conv_integer(commit_pointer_out))(0) = '1' then
						commit_pointer <= commit_pointer_out;
					end if;
				end if;
				--Asynchronous setting Write destination
				if ram(conv_integer(commit_pointer_out))(0) = '1' then
						tmp_rd_out <= ram(conv_integer(commit_pointer_out))(37 downto 33);
				else 
						tmp_rd_out <= "00000";
				end if;
			
	end process;
	
	Rd_out<=tmp_rd_out;
	
end Behavioral;

