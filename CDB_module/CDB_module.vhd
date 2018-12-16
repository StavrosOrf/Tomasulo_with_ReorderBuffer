----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:08:22 10/24/2018 
-- Design Name: 
-- Module Name:    CDB_module - Behavioral 
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

entity CDB_module is

    Port ( 
			 -- Inputs
			  V_Ld : in  STD_LOGIC_VECTOR (31 downto 0); --Current value from load queue(not implemented)
           V_A : in  STD_LOGIC_VECTOR (31 downto 0);  --Current value from Arithmetic Unit
           V_Log : in  STD_LOGIC_VECTOR (31 downto 0); --Current value from Logical Unit
			  
           Q_Ld : in  STD_LOGIC_VECTOR (4 downto 0);--Current tag from load queue(not implemented)
           Q_A : in  STD_LOGIC_VECTOR (4 downto 0);--Current value from Arithmetic Unit
           Q_Log : in  STD_LOGIC_VECTOR (4 downto 0);--Current tag from Logical Unit
			  
			  --Request signals from the correspoding units
           R_Ld : in  STD_LOGIC;
           R_A : in  STD_LOGIC;
           R_Log : in  STD_LOGIC;
			  
			  
			 -- Outputs
			 --Grant signals to the correspoding units
           G_Ld : out  STD_LOGIC;
           G_A : out  STD_LOGIC;
           G_Log : out  STD_LOGIC;
			  
           Clk : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
			  --Common data bus value and tag
           CDB_Q : out  STD_LOGIC_VECTOR (4 downto 0);
           CDB_V : out  STD_LOGIC_VECTOR (31 downto 0));
end CDB_module;

architecture Behavioral of CDB_module is

type state is (Ld_state,A_state,Log_state); -- State signals
signal current_state,next_state,prev_state:state;
-- temporal signals for transferring the values to the outputs
signal tmp_A,tmp_Log,tmp_Ld,tmp_GLd,tmp_GLog,tmp_GA : STD_LOGIC; 
-- CDB controller is implemented as a state machine 
-- which remembers the previous state in order to choose fairly the granted unit
begin
n1 : process(current_state,next_state,prev_state,R_A,R_Log)
 begin
	case current_state is 
			when A_state =>	--A_state is when we grand 
					if R_A ='1' and R_Log ='1' then -- if both units request access,
							if prev_state = Log_state then -- we chack the previous state to determine
								tmp_A <= '1';					-- in which unit to grant access
								tmp_Log <= '0';
								tmp_Ld <= '0';
								next_state <= A_state;
								
								
							elsif(prev_state = A_state) then
								tmp_A <= '0';
								tmp_Log <= '1';
								tmp_Ld <= '0';
								next_state <= Log_state;
							end if;
					end if;
					-- if only one unit is requesting access
					-- it gets it
					if R_A <= '1' and R_Log ='0' then 
								tmp_A <= '1';	
								tmp_Log <= '0';
								tmp_Ld <= '0';
								next_state <= A_state;
					end if;
					if R_A <= '0' and R_Log ='1' then
								tmp_A <= '0';
								tmp_Log <= '1';
								tmp_Ld <= '0';
								next_state <= Log_state;
					end if;
					-- if none is asking for access,reset to zero
					if R_A <= '0' and R_Log ='0' then 
								tmp_A <= '0';
								tmp_Log <= '0';
								tmp_Ld <= '0';
								next_state <= current_state;
					end if;

			--similarly we work for this state					
			when Log_state =>
			
					if R_A ='1' and R_Log ='1' then
							if prev_state = Log_state then
								tmp_A <= '1';
								tmp_Log <= '0';
								tmp_Ld <= '0';
								next_state <= A_state;
							elsif prev_state = A_state then
								tmp_A <= '0';
								tmp_Log <= '1';
								tmp_Ld <= '0';
								next_state <= Log_state;
							end if;
					end if;
					if R_A <= '1' and R_Log ='0' then
								tmp_A <= '1';
								tmp_Log <= '0';
								tmp_Ld <= '0';
								next_state <= A_state;
					end if;
					if R_A <= '0' and R_Log ='1' then
								tmp_A <= '0';
								tmp_Log <= '1';
								tmp_Ld <= '0';
								next_state <= Log_state;
					end if;
					if R_A ='0' and R_Log ='0' then
								tmp_A <= '0';
								tmp_Log <= '0';
								tmp_Ld <= '0';
								next_state <= Log_state;
					end if;
								
			when Ld_state => 
								next_state <= Log_state;
			
			when others => next_state <= Log_state;
			
	end case;
	

end process;


-- This process controls the output of the CDB, according to the output of the previous process
n2:process(Clk,Reset,tmp_Log,tmp_A,tmp_Ld,tmp_GLd,tmp_GLog,tmp_GA,V_A,Q_A,Q_Log,V_Log) 
	  begin
	    if Reset='1' then
			 tmp_GA <= '0';
			 tmp_GLog <= '0';
			 tmp_GLd <= '0';
			 CDB_Q <= "11111";
			 CDB_V <= std_logic_vector(to_unsigned(0,32));
		    current_state <= Log_state;			 
		 elsif (Clk'EVENT and Clk='1') then
		 		
		    tmp_GA <= tmp_A;
			 tmp_GLog <= tmp_Log;
			 tmp_GLd <= tmp_Ld;
			 prev_state <= current_state;
		    current_state <= next_state;
		 end if;
	
				if tmp_GA = '1' then  --if the granted unit is the arithmetic
					CDB_Q <= Q_A;		-- set the output accordinglysss
					CDB_V <= V_A;
				elsif tmp_GLog = '1' then 
					CDB_Q <= Q_Log;
					CDB_V <= V_Log;
				elsif tmp_GLd = '1' then 
					CDB_Q <= Q_Ld;
					CDB_V <= V_Ld;
				else					--When the CDB is empty it has its default values
					CDB_Q <= "11111";  -- 11111 is a Special tag which let us know that CDB is empty
					CDB_V <= V_Ld;	 -- Value is not considerd when Tag is 11111,
										--so it could have any possible value without any affection
				end if;
	end process;
	
G_A <= tmp_GA;
G_Log<= tmp_GLog;
G_Ld<= tmp_GLd;
end Behavioral;


