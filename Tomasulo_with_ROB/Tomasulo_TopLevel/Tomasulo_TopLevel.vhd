----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:11:33 11/07/2018 
-- Design Name: 
-- Module Name:    Tomasulo_TopLevel - Behavioral 
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
use work.my_Package_VectorV.All;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
 use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Tomasulo_TopLevel is
    Port ( Issue : in  STD_LOGIC;
           FU_type : in  STD_LOGIC_VECTOR (1 downto 0);
           Fop : in  STD_LOGIC_VECTOR (1 downto 0);
           Ri : in  STD_LOGIC_VECTOR (4 downto 0);
           Rj : in  STD_LOGIC_VECTOR (4 downto 0);
           Rk : in  STD_LOGIC_VECTOR (4 downto 0);
           Accepted : out  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC);
end Tomasulo_TopLevel;

architecture Behavioral of Tomasulo_TopLevel is

signal tmp_ba1,tmp_ba2,tmp_ba3,tmp_bl1,tmp_bl2,tmp_issue_out,tmp_accepted,tmp_rst_a1,tmp_rst_a2,tmp_rst_a3,tmp_rst_l1,tmp_rst_l2,tmp_rob_Issue,tmp_accepted_RF,tmp_rob_accepted,tmp_rob_ready: STD_LOGIC;
signal tmp_Reset_rs_Ar,tmp_Reset_rs_Lo,tmp_l_request,tmp_l_grand,tmp_a_grand,tmp_a_request,tmp_Reset_rs_l,tmp_Reset_Sel_ReSt_l,tmp_ld_request,tmp_ld_grand  : STD_LOGIC;


signal tmp_cdbV,tmp_rs_outV,tmp_rt_outV,tmp_a1_vj,tmp_a2_vj,tmp_a3_vj,tmp_l1_vj,tmp_l2_vj,tmp_PC: STD_LOGIC_VECTOR (31 downto 0);
signal tmp_a1_vk,tmp_a2_vk,tmp_a3_vk,tmp_l1_vk,tmp_l2_vk,tmp_a_Vout,tmp_l_Vout,tmp_ld_Vout,tmp_rob_Value_out: STD_LOGIC_VECTOR (31 downto 0);

signal tmp_issueq,tmp_issueDest,tmp_issue_rs,tmp_issue_rt,tmp_cdbQ,tmp_rs_outQ,tmp_rt_outQ : STD_LOGIC_VECTOR (4 downto 0);
signal tmp_a1_qj,tmp_a2_qj,tmp_a3_qj,tmp_l1_qj,tmp_l2_qj,tmp_a_Qout,tmp_l_Qout,tmp_tag_a1,tmp_tag_a2,tmp_tag_a3,tmp_tag_l1,tmp_tag_l2: STD_LOGIC_VECTOR (4 downto 0);
signal tmp_a1_qk,tmp_a2_qk,tmp_a3_qk,tmp_l1_qk,tmp_l2_qk,tmp_ld_Qout,tmp_tag_in,tmp_rob_Rd_out : STD_LOGIC_VECTOR (4 downto 0);

signal tmp_fu_type, tmp_fop_out,tmp_a1_op,tmp_a2_op,tmp_a3_op,tmp_l1_op,tmp_l2_op,tmp_Reset_Sel_ReSt,tmp_op_test,tmp_op2_test: STD_LOGIC_VECTOR (1 downto 0);
signal tmp_RS_dest: STD_LOGIC_VECTOR (2 downto 0);

begin

Inst_Reorder_Buffer : entity work.Reorder_Buffer 
Port map( 
			  --Inputs
			  Exception_Type => std_logic_vector(to_unsigned(0,32)),
			  PC => tmp_PC,
           Rd_in => tmp_issueDest,
			  Issue_input => tmp_rob_Issue,
			  fu_type => FU_type,
			  op => Fop, 			  
			  
			  CDB_V => tmp_cdbV,
           CDB_Q => tmp_cdbQ,
           
			  
			  CLK => clk,
           Reset => reset,
			 
			  --Outputs
           Ready => tmp_rob_ready,
           Rd_out => tmp_rob_Rd_out,
           Value_out => tmp_rob_Value_out,
			  Accepted =>tmp_rob_accepted,
			  Tag_out => tmp_tag_in);

Inst_Pc_counter : entity work.counter_standard  
Port map(  en => tmp_accepted_RF,
           output => tmp_PC,
           clk => clk,
           reset => reset);

Inst_CDB : entity work.CDB_module 
Port map( 
			  V_Ld => tmp_ld_Vout,
           V_A => tmp_a_Vout,
           V_Log => tmp_l_Vout,
			  
           Q_Ld => tmp_ld_Qout,
           Q_A => tmp_a_Qout,
           Q_Log => tmp_l_Qout,
			  
           R_Ld => tmp_ld_request,
           R_A => tmp_a_request,
           R_Log => tmp_l_request,
			  
			  
			 -- Outputs
           G_Ld => tmp_ld_grand,
           G_A => tmp_a_grand,
           G_Log => tmp_l_grand,
			  
           Clk => clk,
           Reset => reset,
			  
           CDB_Q => tmp_cdbQ,
           CDB_V => tmp_cdbV);

Inst_FU_logical :entity work.FU_Logical_Top_Level
port  map (
		--Inputs
		Op1 => tmp_l1_op,
		Op2 => tmp_l2_op,
		
		Qj1 => tmp_l1_qj,
      Qk1 => tmp_l1_qk,
      Qj2 => tmp_l2_qj,
		Qk2 => tmp_l2_qk,
		Tag1 => tmp_tag_l1,
      Tag2 => tmp_tag_l2,

		Reset => reset,
		Busy1 => tmp_bl1,
      Busy2 => tmp_bl2,
		
      L_Grand => tmp_l_grand,
		Vj1 => tmp_l1_vj,
		Vk1 => tmp_l1_vk,
		Vj2 => tmp_l2_vj,
		Vk2 => tmp_l2_vk,
		
		Clk => clk,
		--Outputs
		L_Request => tmp_l_request,
		Reset_Rs => tmp_Reset_rs_l,
		Reset_Sel_ReSt => tmp_Reset_Sel_ReSt_l,
		V_out => tmp_l_Vout,
		Q_out => tmp_l_Qout
		
		);
		


Inst_FU_arithmetic :entity work.FU_Arithmetic_Top_Level 
port  map (
		--Inputs
		Op1 => tmp_a1_op,
		Op2 => tmp_a2_op,
		Op3 => tmp_a3_op,
		Qj1 => tmp_a1_qj,
      Qk1 => tmp_a1_qk,
      Qj2 => tmp_a2_qj,
		Qk2 => tmp_a2_qk,
		Qj3 => tmp_a3_qj,
		Qk3 => tmp_a3_qk,
		Tag1 => tmp_tag_a1,
		Tag2 => tmp_tag_a2,
		Tag3 => tmp_tag_a3,
		
		Reset => reset,
		Busy1 => tmp_ba1,
      Busy2 => tmp_ba2,
		Busy3 => tmp_ba3,
      L_Grand => tmp_a_grand,
		Op =>tmp_op_test,
		Vj1 => tmp_a1_vj,
		Vk1 => tmp_a1_vk,
		Vj2 => tmp_a2_vj,
		Vk2 => tmp_a2_vk,
		Vj3 => tmp_a3_vj,
		Vk3 => tmp_a3_vk,
		
		Clk => clk,
		--Outputs
		L_Request => tmp_a_request,
		Reset_Rs => tmp_Reset_rs_Ar,
		Reset_Sel_ReSt => tmp_Reset_Sel_ReSt,
		V_out => tmp_a_Vout,
		Q_out => tmp_a_Qout
		
		);
		


Inst_ReservationStations : entity work.A_L_RS_Module 
Port map ( RsDest => tmp_RS_dest,
           RF_Vj => tmp_rs_outV,
           RF_Vk => tmp_rt_outV,
           RF_Qj => tmp_rs_outQ,
           RF_Qk => tmp_rt_outQ,
           Op => tmp_fop_out,
			  CDB_V =>tmp_cdbV,
           CDB_Q => tmp_cdbQ,
			  Tag => tmp_tag_in, --TAG
			  Ri => Ri,
			  Rj => Rj,
			  Rk => Rk,
			  Reset => reset,
           clk => clk,
			  
			  A1_Tag => tmp_tag_a1,
           A2_Tag => tmp_tag_a2,
           A3_Tag => tmp_tag_a3,
           L1_Tag => tmp_tag_l1,
           L2_Tag => tmp_tag_l2,

           
			  
			  Rst_a1 => tmp_rst_a1,
			  Rst_a2 => tmp_rst_a2,
			  Rst_a3 => tmp_rst_a3,
			  Rst_l1 => tmp_rst_l1,
			  Rst_l2 => tmp_rst_l2,
           
			  ba1 => tmp_ba1,
           ba2 => tmp_ba2,
           ba3 => tmp_ba3,
           bl1 => tmp_bl1,
           bl2 => tmp_bl2,
			  
           A1_Op => tmp_a1_op,
           A2_Op => tmp_a2_op,
           A3_Op => tmp_a3_op,
           L1_Op => tmp_l1_op,
           L2_Op => tmp_l2_op,
			  
           A1_Vj => tmp_a1_vj,
           A2_Vj => tmp_a2_vj,
           A3_Vj => tmp_a3_vj,
           L1_Vj => tmp_l1_vj,
           L2_Vj => tmp_l2_vj,
			  
			  A1_Vk => tmp_a1_vk,
           A2_Vk => tmp_a2_vk,
           A3_Vk => tmp_a3_vk,
           L1_Vk => tmp_l1_vk,
           L2_Vk => tmp_l2_vk,
			  
			  A1_Qj => tmp_a1_qj,
           A2_Qj => tmp_a2_qj,
           A3_Qj => tmp_a3_qj,
           L1_Qj => tmp_l1_qj,
           L2_Qj => tmp_l2_qj,
			  
			  A1_Qk => tmp_a1_qk,
           A2_Qk => tmp_a2_qk,
           A3_Qk => tmp_a3_qk,
           L1_Qk => tmp_l1_qk,
           L2_Qk => tmp_l2_qk
			  
			  );

Inst_RF : entity work.RF_Top_Level 
Port map ( Rs => tmp_issue_rs,
           Rt => tmp_issue_rt,
			  Rd => tmp_rob_Rd_out,--- V.4
			  wr_en => tmp_rob_ready,--- V.4
           Issue => tmp_issue_out,
           Issue_Valid => tmp_accepted_RF,----------------------
           Issue_Dest => tmp_issueDest,
           CDB_V => tmp_rob_Value_out, --- V.4
           CDB_Q => tmp_cdbQ,
           RST => reset,
           CLK => clk,
           Issue_Q => tmp_issueq,
           RsOut_V => tmp_rs_outV,
           RsOut_Q => tmp_rs_outQ,
           RtOut_V => tmp_rt_outV,
           RtOut_Q => tmp_rt_outQ
);


Inst_issue : entity work.Issue_Module
port map(
			   
			  FU_type => FU_type,
           Fop => Fop,
           
			  Ri => Ri,
           Rj => Rj,
           Rk => Rk ,
           
			  Issue => Issue,
			  Tag_in => tmp_tag_in,
			
           ba1 => tmp_ba1,
           ba2 => tmp_ba2,
           ba3 => tmp_ba3,
           bl1 => tmp_bl1,
           bl2 => tmp_bl2,
			  
			  Issue_out => tmp_issue_out ,
			  IssueQ => tmp_issueq,
			  IssueDest => tmp_issueDest,
			  IssueRs => tmp_issue_rs,
			  IssueRt => tmp_issue_rt,
			  
			  Fop_out => tmp_fop_out,
			  Rs_Dest => tmp_RS_dest,
			  --FU_type_out => tmp_fu_type ,
           Accepted => tmp_accepted );


resets: process(tmp_rob_Issue,tmp_accepted,Issue,tmp_Reset_rs_Ar,tmp_Reset_rs_l,tmp_Reset_Sel_ReSt,tmp_Reset_Sel_ReSt_l,tmp_rst_a1,tmp_rst_a2,tmp_rst_a3,tmp_rst_l1,tmp_rst_l2) -----------------------!!!!!!!!!!!!!!!!!!!!!!!!!!!
begin 

if (tmp_Reset_rs_Ar = '1') then 
	tmp_rst_a1 <= '0';
	tmp_rst_a2 <= '0';
	tmp_rst_a3 <= '0';

	if (tmp_Reset_Sel_ReSt = "00" ) then 
		tmp_rst_a1 <= '1';
	elsif (tmp_Reset_Sel_ReSt = "01" ) then 
		tmp_rst_a2 <= '1';
	elsif (tmp_Reset_Sel_ReSt = "10" ) then 
		tmp_rst_a3 <= '1';
	end if;
else 
	tmp_rst_a1 <= '0';
	tmp_rst_a2 <= '0';
	tmp_rst_a3 <= '0';
end if;
--------------
if (tmp_Reset_rs_l = '1') then 
	tmp_rst_l1 <= '0';
	tmp_rst_l2 <= '0';
	
	if (tmp_Reset_Sel_ReSt_l = '0' ) then 
		tmp_rst_l1 <= '1';
	elsif (tmp_Reset_Sel_ReSt_l = '1' ) then 
		tmp_rst_l2 <= '1';

	end if;
else 
	tmp_rst_l1 <= '0';
	tmp_rst_l2 <= '0';
	
end if;

end process;

tmp_accepted_RF <= tmp_accepted and tmp_rob_accepted ;
tmp_rob_Issue <=  tmp_accepted;
Accepted <= tmp_accepted and tmp_rob_accepted ;

end Behavioral;

