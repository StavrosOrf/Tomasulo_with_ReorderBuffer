----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:03:39 10/24/2018 
-- Design Name: 
-- Module Name:    FU_Logical_Top_Level - Behavioral 
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

entity FU_Logical_Top_Level is
port (
		--Inputs from the Logical Reservation Stations
		Op1 : in  STD_LOGIC_VECTOR (1 downto 0);--Operation
		Op2 : in  STD_LOGIC_VECTOR (1 downto 0);
		Qj1 : in  STD_LOGIC_VECTOR (4 downto 0);--Tag from k1 field in RS
      Qk1 : in  STD_LOGIC_VECTOR (4 downto 0);--Tag from j1 field in RS
      Qj2 : in  STD_LOGIC_VECTOR (4 downto 0);
		Qk2 : in  STD_LOGIC_VECTOR (4 downto 0);
		Tag1 : in  STD_LOGIC_VECTOR (4 downto 0);--ROB tag which is saved at RS
      Tag2 : in  STD_LOGIC_VECTOR (4 downto 0);
		
		Reset : in STD_LOGIC;
		Clk : in  STD_LOGIC;
		
		Busy1 : in  STD_LOGIC; -- Busy bit from RS logical 1
      Busy2 : in  STD_LOGIC;
      L_Grand : in  STD_LOGIC; --Signals which determines if the output is ready to pass the CDB
		Vj1 : in  STD_LOGIC_VECTOR (31 downto 0);--Value for j field from RS
		Vk1 : in  STD_LOGIC_VECTOR (31 downto 0);--Value for k field from RS
		Vj2 : in  STD_LOGIC_VECTOR (31 downto 0);
		Vk2 : in  STD_LOGIC_VECTOR (31 downto 0);
		
		--Outputs
		
		L_Request :out STD_LOGIC;-- Request to CDB for access
		Reset_Rs :out STD_LOGIC; -- IF we have to reset
		Reset_Sel_ReSt :out STD_LOGIC; -- WHICH RESERVATION STATION WE WILL RESET  
		V_out :out  STD_LOGIC_VECTOR (31 downto 0); -- Result value which goes to CDB
		Q_out :out  STD_LOGIC_VECTOR (4 downto 0) -- Result tag which goes to CDB
		
		);
end FU_Logical_Top_Level;		


architecture Behavioral of FU_Logical_Top_Level is
signal tmp_alu_out,tmp_reg1_v_out,tmp_vj_out,tmp_vk_out,dataReg1Input,dataReg2Input: STD_LOGIC_VECTOR (31 downto 0);	
signal tmp_wren_1,tmp_wren_2,tmp_sel,tmp_valid1,tmp_valid2,tmp_valid,tmp_control,tmp_control2:STD_LOGIC ;
signal tmp_sel_out,tmp_sel2_out,tmp_op_out: STD_LOGIC_VECTOR (1 downto 0):="00"; -- tmp_sel
signal tmp_reg1_q_out,tmp_tag_out,tagReg1Input,tagReg2Input,tagReg2Out: STD_LOGIC_VECTOR (4 downto 0);
signal work1,work2:STD_LOGIC := '1' ;
signal tmp_sel_Reg1out,tmp_sel_Reg2out,tmp_sel_Reg1in : STD_LOGIC_VECTOR (1 downto 0):="00";	
signal tmp_valid_Reg1out,tmp_valid_Reg2out,tmp_middle_valid :STD_LOGIC;	

begin
--Unit's ALU
Inst_Alu : entity work.L_ALU
port map(
			  Op => tmp_op_out,
           A =>tmp_vj_out,
           B => tmp_vk_out,
           ALU_OUT => tmp_alu_out
);

--Muxes are used to extract the correct fields from the input
--tmp_sel determines when we choose the RS logical 1 or RS logical 2

Inst_Mux_Op : entity work.Mux_2x1_2b 
port map(  A => Op1,
           B => Op2,
			  PC_Sel => tmp_sel,
           mux_out => tmp_op_out
			  );

Inst_Mux_Vk : entity work.Mux_2x1_32b
port map(  A => Vk1,
           B => Vk2,
			  PC_Sel => tmp_sel,
           mux_out => tmp_vk_out
			  );

Inst_Mux_Vj : entity work.Mux_2x1_32b
port map(  A => Vj1,
           B => Vj2,
			  PC_Sel => tmp_sel,
           mux_out => tmp_vj_out
			  );
			  
Inst_Mux_Tag : entity work.Mux_2x1_5b
port map(  A => Tag1,
           B => Tag2,
			  PC_Sel => tmp_sel,
           mux_out => tmp_tag_out
			  );		  


--1st level of output pipeline
Inst_Reg_1 : entity work.Register_FU
port map(
			  WrEn_in => tmp_wren_1,
			  Clk =>Clk,
			  Rst => Reset, 
			  Rst_enable => tmp_middle_valid,
			  Rst_sel => tmp_sel_Reg1in,
			  Rst_enable_out => tmp_valid_Reg1out,
			  Rst_sel_out => tmp_sel_Reg1out,
			  
           Q => tagReg1Input, 
           V =>dataReg1Input, 
           Qout =>tagReg2Input, 
           Vout =>dataReg2Input			  
); 
--2nd level of output pipeline
Inst_Reg_2 : entity work.Register_FU
port map(
			  WrEn_in => tmp_wren_2,
			  Clk =>Clk, 
			  Rst => Reset,
			  Rst_enable => tmp_valid_Reg1out,
			  Rst_sel => tmp_sel_Reg1out,
			  Rst_enable_out => tmp_valid_Reg2out,
			  Rst_sel_out => tmp_sel_Reg2out,
			  
           Q => tagReg2Input,
           V =>dataReg2Input, 
           Qout =>tagReg2Out,
           Vout =>V_out			  
);

--This process controlls which RS will be extracted in order to run the operation through ALU
-- this process also controlls the pipeline of the output ,according to the Grant signal from CDB and if there is any value in the pipeline
process(Qj1,Qk1,Qj2,Qk2,Busy1,Busy2,tmp_valid1,tmp_valid2,work1,work2,tmp_sel_Reg2out,tmp_sel_Reg1out,
L_Grand,tagReg2Input,tmp_middle_valid,tmp_alu_out,tmp_tag_out,tmp_control,tmp_control2,tmp_valid,tmp_wren_1,tmp_wren_2,dataReg1Input,tagReg1Input)
begin 
		--Checking the Qk and Qk fields as well as Busy bit and "work" bit
	  if Qj1 = "00000" and Qk1 = "00000"  and Busy1 = '1' and  work1 = '1'  then -- Reservation Station 1
							tmp_sel <= '0' ; -- Setting the muxes control bit
							tmp_valid1 <= '1'; 
		--Checking the Qk and Qk fields as well as Busy bit and "work" bit					
		elsif Qj2 = "00000" and Qk2 = "00000"  and Busy2 = '1' and  work2 = '1'then -- Reservation Station 2
							
							tmp_sel <= '1' ; 
							tmp_valid2 <= '1';
							
		else --DO nothing
							tmp_sel <= '0';
							tmp_valid1 <= '0';
							tmp_valid2 <= '0';
		end if;	
		
		-- Work bit determines if we have available space in the pipeline 
		-- so we can run the operation through ALU
		if tmp_sel_Reg1out ="00" OR tmp_sel_Reg2out ="00"    then
			work1 <= '0';
		ELSE 
			work1 <= '1';
		end if;
		
		if tmp_sel_Reg1out ="01" OR tmp_sel_Reg2out ="01"   then
			work2 <= '0';
		ELSE 
			work2 <= '1';
		end if;
		-- this signal becomes 1 when we have a valid result from the ALU
		tmp_valid<= tmp_valid1 OR tmp_valid2; 
		
		if tmp_valid ='1' then
			dataReg1Input <= tmp_alu_out;
			tagReg1Input <= tmp_tag_out;
			tmp_middle_valid <= tmp_valid ;
			tmp_sel_Reg1in(1) <='0';			
			tmp_sel_Reg1in(0) <=tmp_sel;
		else
			tmp_sel_Reg1in <= "11";
			tmp_middle_valid <= '0';
			dataReg1Input <= "00000000000000000000000000000000";
			tagReg1Input <= "00000";
		end if;
		--when a stage's tag is 00000 it means that it is empty
		if tagReg2Input = "00000"  then -- if true , first stage is empty
			tmp_control <= '1';
			L_Request <= '0';
		else
			tmp_control <= '0';
			L_Request <= '1';
		end if;
		
		if tagReg2Out = "00000" then -- if true , second(last) stage is empty
			tmp_control2 <= '1';
			
		else
			tmp_control2 <= '0';
			if L_Grand = '0' then
				L_Request <= '1';
			end if;
			
		end if;
		

		-- when we have grant from CDB or the pipeline is empty move the result
		--to the next register(stage) of the pipeline
		tmp_wren_1 <= tmp_control or L_Grand or( tmp_control2);
		tmp_wren_2 <= L_Grand or tmp_control2;
		
end process;


Q_out <= tagReg2Out;--Ouput of the 2nd stage
--When a value passes the last stage of the pipeline
--we must reset the bound reservation station
Reset_Rs <=tmp_valid_Reg2out;
Reset_Sel_ReSt <= tmp_sel_Reg2out(0);

end Behavioral;

