----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:53:58 10/26/2018 
-- Design Name: 
-- Module Name:    A_L_RS_Module - Behavioral 
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

entity A_L_RS_Module is
    Port ( RsDest : in  STD_LOGIC_VECTOR (2 downto 0);
           RF_Vj : in  STD_LOGIC_VECTOR (31 downto 0);
           RF_Vk : in  STD_LOGIC_VECTOR (31 downto 0);
           RF_Qj : in  STD_LOGIC_VECTOR (4 downto 0);
           RF_Qk : in  STD_LOGIC_VECTOR (4 downto 0);
           Op : in  STD_LOGIC_VECTOR (1 downto 0);
			  CDB_V : in  STD_LOGIC_VECTOR (31 downto 0);
           CDB_Q : in  STD_LOGIC_VECTOR (4 downto 0);
			  
			  Reset :in STD_LOGIC;
           clk : in  STD_LOGIC;
			  
			  Rst_a1: in  STD_LOGIC;
			  Rst_a2: in  STD_LOGIC;
			  Rst_a3: in  STD_LOGIC;
			  Rst_l1: in  STD_LOGIC;
			  Rst_l2: in  STD_LOGIC;
           
			  ba1 : out  STD_LOGIC;
           ba2 : out  STD_LOGIC;
           ba3 : out  STD_LOGIC;
           bl1 : out  STD_LOGIC;
           bl2 : out  STD_LOGIC;
			  
           A1_Op : out  STD_LOGIC_VECTOR (1 downto 0);
           A2_Op : out  STD_LOGIC_VECTOR (1 downto 0);
           A3_Op : out  STD_LOGIC_VECTOR (1 downto 0);
           L1_Op : out  STD_LOGIC_VECTOR (1 downto 0);
           L2_Op : out  STD_LOGIC_VECTOR (1 downto 0);
			  
           A1_Vj : out  STD_LOGIC_VECTOR (31 downto 0);
           A2_Vj : out  STD_LOGIC_VECTOR (31 downto 0);
           A3_Vj : out  STD_LOGIC_VECTOR (31 downto 0);
           L1_Vj : out  STD_LOGIC_VECTOR (31 downto 0);
           L2_Vj : out  STD_LOGIC_VECTOR (31 downto 0);
			  
			  A1_Vk : out  STD_LOGIC_VECTOR (31 downto 0);
           A2_Vk : out  STD_LOGIC_VECTOR (31 downto 0);
           A3_Vk : out  STD_LOGIC_VECTOR (31 downto 0);
           L1_Vk : out  STD_LOGIC_VECTOR (31 downto 0);
           L2_Vk : out  STD_LOGIC_VECTOR (31 downto 0);
			  
			  A1_Qj : out  STD_LOGIC_VECTOR (4 downto 0);
           A2_Qj : out  STD_LOGIC_VECTOR (4 downto 0);
           A3_Qj : out  STD_LOGIC_VECTOR (4 downto 0);
           L1_Qj : out  STD_LOGIC_VECTOR (4 downto 0);
           L2_Qj : out  STD_LOGIC_VECTOR (4 downto 0);
			  
			  A1_Qk : out  STD_LOGIC_VECTOR (4 downto 0);
           A2_Qk : out  STD_LOGIC_VECTOR (4 downto 0);
           A3_Qk : out  STD_LOGIC_VECTOR (4 downto 0);
           L1_Qk : out  STD_LOGIC_VECTOR (4 downto 0);
           L2_Qk : out  STD_LOGIC_VECTOR (4 downto 0)
			  
			  );
end A_L_RS_Module;

architecture Behavioral of A_L_RS_Module is

signal issue_a1, issue_a2 , issue_a3 ,issue_l1,issue_l2 : STD_LOGIC;

begin

Inst_L1_Rs : entity work.Reservation_Station_Top_Level
port map(	
			  Op => Op,
			  CDB_V => CDB_V,
           CDB_Q => CDB_Q,
           Reset => Rst_l1 or Reset,
           CLK => clk,
			  Issue => issue_l1,
          -- Issue_Q : in  STD_LOGIC_VECTOR (4 downto 0);
           Rj_V => RF_Vj,
           Rj_Q => RF_Qj,
           Rk_V => RF_Vk,
           Rk_Q => RF_Qk,
			  
			  Busy_out => bl1,
			  Vj_out =>L1_Vj,
           Vk_out =>L1_Vk,
           Qj_out =>L1_Qj,
           Qk_out =>L1_Qk,
           Op_out =>L1_Op
);
Inst_L2_Rs : entity work.Reservation_Station_Top_Level
port map(	
			  Op => Op,
			  CDB_V => CDB_V,
           CDB_Q => CDB_Q,
           Reset => Rst_l2 or Reset,
           CLK => clk,
			  Issue => issue_l2,
          -- Issue_Q : in  STD_LOGIC_VECTOR (4 downto 0);
           Rj_V => RF_Vj,
           Rj_Q => RF_Qj,
           Rk_V => RF_Vk,
           Rk_Q => RF_Qk,
			  
			  Busy_out => bl2,
			  Vj_out =>L2_Vj,
           Vk_out =>L2_Vk,
           Qj_out =>L2_Qj,
           Qk_out =>L2_Qk,
           Op_out =>L2_Op
);
Inst_A1_Rs : entity work.Reservation_Station_Top_Level
port map(	
			  Op => Op,
			  CDB_V => CDB_V,
           CDB_Q => CDB_Q,
           Reset => Rst_a1 or Reset,
           CLK => clk,
			  Issue => issue_a1,
          -- Issue_Q : in  STD_LOGIC_VECTOR (4 downto 0);
           Rj_V => RF_Vj,
           Rj_Q => RF_Qj,
           Rk_V => RF_Vk,
           Rk_Q => RF_Qk,
			  
			  Busy_out => ba1,
			  Vj_out =>A1_Vj,
           Vk_out =>A1_Vk,
           Qj_out =>A1_Qj,
           Qk_out =>A1_Qk,
           Op_out =>A1_Op
);
Inst_A2_Rs : entity work.Reservation_Station_Top_Level
port map(	
			  Op => Op,
			  CDB_V => CDB_V,
           CDB_Q => CDB_Q,
           Reset => Rst_a2 or Reset,
           CLK => clk,
			  Issue => issue_a2,
          -- Issue_Q : in  STD_LOGIC_VECTOR (4 downto 0);
           Rj_V => RF_Vj,
           Rj_Q => RF_Qj,
           Rk_V => RF_Vk,
           Rk_Q => RF_Qk,
			  
			  Busy_out => ba2,
			  Vj_out =>A2_Vj,
           Vk_out =>A2_Vk,
           Qj_out =>A2_Qj,
           Qk_out =>A2_Qk,
           Op_out =>A2_Op
);
Inst_A3_Rs : entity work.Reservation_Station_Top_Level
port map(	
			  Op => Op,
			  CDB_V => CDB_V,
           CDB_Q => CDB_Q,
           Reset => Rst_a3 or Reset,
           CLK => clk,
			  Issue => issue_a3,
          -- Issue_Q : in  STD_LOGIC_VECTOR (4 downto 0);
           Rj_V => RF_Vj,
           Rj_Q => RF_Qj,
           Rk_V => RF_Vk,
           Rk_Q => RF_Qk,
			  
			  Busy_out => ba3,
			  Vj_out =>A3_Vj,
           Vk_out =>A3_Vk,
           Qj_out =>A3_Qj,
           Qk_out =>A3_Qk,
           Op_out =>A3_Op
);



process(issue_a1, issue_a2 , issue_a3 ,issue_l1,issue_l2,RsDest)

begin 


	if RsDest = "001" then
			issue_a1<='1';
			issue_a2<='0';
			issue_a3<='0';
			issue_l1<='0';
			issue_l2<='0';
	elsif RsDest = "010" then
			issue_a1<='0';
			issue_a2<='1';
			issue_a3<='0';
			issue_l1<='0';
			issue_l2<='0';
	elsif RsDest = "011" then
			issue_a1<='0';
			issue_a2<='0';
			issue_a3<='1';
			issue_l1<='0';
			issue_l2<='0';
	elsif RsDest = "100" then
			issue_a1<='0';
			issue_a2<='0';
			issue_a3<='0';
			issue_l1<='1';
			issue_l2<='0';
	elsif RsDest = "101" then
			issue_a1<='0';
			issue_a2<='0';
			issue_a3<='0';
			issue_l1<='0';
			issue_l2<='1';
	else
			issue_a1<='0';
			issue_a2<='0';
			issue_a3<='0';
			issue_l1<='0';
			issue_l2<='0';
	end if;
	
	
end process;



end Behavioral;

