----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:46:22 10/24/2018 
-- Design Name: 
-- Module Name:    FU_Arithmetic_Top_Level - Behavioral 
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

entity FU_Arithmetic_Top_Level is
port (
		--Inputs from the Logical Reservation Stations
		Op1 : in  STD_LOGIC_VECTOR (1 downto 0);--Operation
		Op2 : in  STD_LOGIC_VECTOR (1 downto 0);
		Op3 : in  STD_LOGIC_VECTOR (1 downto 0);
		Qj1 : in  STD_LOGIC_VECTOR (4 downto 0);--Tag from j1 field in RS
      Qk1 : in  STD_LOGIC_VECTOR (4 downto 0);--Tag from k1 field in RS
      Qj2 : in  STD_LOGIC_VECTOR (4 downto 0);
		Qk2 : in  STD_LOGIC_VECTOR (4 downto 0);
		Qj3 : in  STD_LOGIC_VECTOR (4 downto 0);
		Qk3 : in  STD_LOGIC_VECTOR (4 downto 0);
		Tag1 : in  STD_LOGIC_VECTOR (4 downto 0);--ROB tag which is saved at RS
		Tag2 : in  STD_LOGIC_VECTOR (4 downto 0);
		Tag3 : in  STD_LOGIC_VECTOR (4 downto 0);
		
		Reset : in STD_LOGIC;
		Busy1 : in  STD_LOGIC;-- Busy bit from RS logical 1
      Busy2 : in  STD_LOGIC;
		Busy3 : in  STD_LOGIC;
      L_Grand : in  STD_LOGIC;--Signals which determines if the output is ready to pass the CDB
		Op : in  STD_LOGIC_VECTOR (1 downto 0);--(probably not used)!
		Vj1 : in  STD_LOGIC_VECTOR (31 downto 0);--Value for j field from RS
		Vk1 : in  STD_LOGIC_VECTOR (31 downto 0);--Value for k field from R
		Vj2 : in  STD_LOGIC_VECTOR (31 downto 0);
		Vk2 : in  STD_LOGIC_VECTOR (31 downto 0);
		Vj3 : in  STD_LOGIC_VECTOR (31 downto 0);
		Vk3 : in  STD_LOGIC_VECTOR (31 downto 0);
		
		Clk : in  STD_LOGIC;
		--Outputs
		L_Request :out STD_LOGIC;-- Request to CDB for access
		Reset_Rs :out STD_LOGIC; -- IF we have to reset
		Reset_Sel_ReSt :out STD_LOGIC_VECTOR (1 downto 0); -- WHICH RESERVATION STATION WE WILL RESET  
		V_out :out  STD_LOGIC_VECTOR (31 downto 0);-- Result value which goes to CDB
		Q_out :out  STD_LOGIC_VECTOR (4 downto 0)-- Result tag which goes to CDB
		
		);

end FU_Arithmetic_Top_Level;

architecture Behavioral of FU_Arithmetic_Top_Level is
signal tmp_alu_out,dataReg1Input,dataReg2Input,dataReg3Input,tmp_Vk_Out,tmp_Vj_Out : STD_LOGIC_VECTOR (31 downto 0);	
signal tmp_wren_1,tmp_wren_2,tmp_wren_3,tmp_valid1,tmp_valid,tmp_valid2,tmp_valid3,tmp_control3,tmp_control2,tmp_control:STD_LOGIC ;
signal tmp_sel,tmp_Op_Out: STD_LOGIC_VECTOR (1 downto 0):="00";
signal tagReg1Input,tagReg2Input,tagReg3Input,tmp_tag_Out,tagReg3Out: STD_LOGIC_VECTOR (4 downto 0);	
signal work1,work2,work3 :STD_LOGIC := '1' ;
signal tmp_sel_Reg1out,tmp_sel_Reg2out,tmp_sel_Reg3out,tmp_middle_sel : STD_LOGIC_VECTOR (1 downto 0);	
signal tmp_valid_Reg1out,tmp_valid_Reg2out,tmp_valid_Reg3out,tmp_middle_valid:STD_LOGIC;


begin
--Muxes are used to extract the correct fields from the input
--tmp_sel determines when we choose the RS Arithmetic 1 , 2, 3
Inst_MuxVk :entity work.Mux_4_1_32b
port map ( A => Vk1,
           B => Vk2,
           C => Vk3,
           D => std_logic_vector(to_unsigned(0,32)),
           Sel => tmp_sel,
           Output => tmp_Vk_Out);

Inst_MuxVj :entity work.Mux_4_1_32b
port map ( A => Vj1,
           B => Vj2,
           C => Vj3,
           D => std_logic_vector(to_unsigned(0,32)),
           Sel => tmp_sel,
           Output => tmp_Vj_Out);
			  
Inst_Mux_Tag :entity work.Mux_4x1_5b
port map ( A => Tag1,
           B => Tag2,
           C => Tag3,
           D => "00000",
           Sel => tmp_sel,
           Output => tmp_tag_Out);

Inst_Mux_Op : entity work.Mux_3x1_2b	
Port map ( A => Op1,
           B => Op2,
           C => Op3,
           sel =>tmp_sel,
           Output => tmp_Op_Out);	
			  
--Unit's ALU
Inst_Alu : entity work.A_ALU 
port map(  
			  Op =>tmp_Op_Out,
           A =>tmp_Vj_Out,
           B => tmp_Vk_Out,
           ALU_OUT => tmp_alu_out
);

--1st level of output pipeline
Inst_Reg_1 : entity work.Register_FU
port map(
			  WrEn_in => tmp_wren_1,
			  Rst => Reset, 
			  Clk =>Clk,
			  Rst_enable => tmp_middle_valid,
			  Rst_sel => tmp_middle_sel,
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
			  Rst => Reset,   
			  Clk =>Clk,
			  Rst_enable => tmp_valid_Reg1out,
			  Rst_sel => tmp_sel_Reg1out,
			  Rst_enable_out => tmp_valid_Reg2out,
			  Rst_sel_out => tmp_sel_Reg2out,
			  
           Q => tagReg2Input,
           V =>dataReg2Input, 
           Qout =>tagReg3Input,
           Vout =>dataReg3Input		  
);
--3rd level of output pipeline
Inst_Reg_3 : entity work.Register_FU
port map(
			  WrEn_in => tmp_wren_3,
			  Clk =>Clk,
			  Rst => Reset, 
			  Rst_enable => tmp_valid_Reg2out,
			  Rst_sel => tmp_sel_Reg2out,
			  Rst_enable_out => tmp_valid_Reg3out,
			  Rst_sel_out => tmp_sel_Reg3out,
			  
           Q => tagReg3Input,
           V =>dataReg3Input, 
           Qout =>tagReg3Out,
           Vout =>V_out			  
);
--This process controlls which RS will be extracted in order to run the operation through ALU
-- this process also controlls the pipeline of the output ,according to the Grant signal from CDB and if there is any value in the pipeline
process(Qj1,Qk1,Qj2,Qk2,Busy1,Busy2,tmp_valid1,tmp_valid2,tmp_valid3,L_Grand,tagReg2Input,tmp_middle_valid,
dataReg3Input,tmp_alu_out,tmp_tag_out,tmp_control,tmp_control2,tmp_control3,tmp_valid,tmp_wren_3,tmp_wren_1,tmp_wren_2,dataReg1Input,tagReg1Input)
begin 
		--Checking the Qk and Qk fields as well as Busy bit and "work" bit
	  if Qj1 = "00000" and Qk1 = "00000"  and Busy1 = '1' and  work1 = '1' then -- Reservation Station 1
							tmp_sel <= "00" ; -- Setting the muxes control bit
							tmp_valid1 <= '1';
		--Checking the Qk and Qk fields as well as Busy bit and "work" bit					
		elsif Qj2 = "00000" and Qk2 = "00000"  and Busy2 = '1' and  work2 = '1' then -- Reservation Station 2
							
							tmp_sel <= "01" ; -- Setting the muxes control bit
							tmp_valid2 <= '1';
		--Checking the Qk and Qk fields as well as Busy bit and "work" bit					
		elsif Qj3 = "00000" and Qk3 = "00000"  and Busy3 = '1' and  work3 = '1' then -- Reservation Station 2
							
							tmp_sel <= "10" ; -- Setting the muxes control bit
							tmp_valid3 <= '1';
							
		else 
							
							tmp_sel <= "11";
							tmp_valid1 <= '0';
							tmp_valid2 <= '0';
							tmp_valid3 <= '0';
		end if;	
		
		---------------------------------------------------------------------------------------------
		-- Work bit determines if we have available space in the pipeline 
		-- so we can run the operation through ALU
		if tmp_sel_Reg1out ="00" OR tmp_sel_Reg2out ="00"   OR tmp_sel_Reg3out ="00" then
			work1 <= '0';
		ELSE 
			work1 <= '1';
		end if;
		
		if tmp_sel_Reg1out ="01" OR tmp_sel_Reg2out ="01"   OR tmp_sel_Reg3out ="01" then
			work2 <= '0';
		ELSE 
			work2 <= '1';
		end if;

		if tmp_sel_Reg1out ="10" OR tmp_sel_Reg2out ="10"   OR tmp_sel_Reg3out ="10" then
			work3 <= '0';
		ELSE 
			work3 <= '1';
		end if;

		-- this signal becomes 1 when we have a valid result from the ALU
		tmp_valid<= tmp_valid1 OR tmp_valid2 or tmp_valid3 ;
		
		if tmp_valid ='1' then
			dataReg1Input <= tmp_alu_out;
			tagReg1Input <= tmp_tag_out;
			tmp_middle_valid <= tmp_valid ; 
			tmp_middle_sel <= tmp_sel;
		else
			tmp_middle_valid <= '0';
			tmp_middle_sel <= "11";
			dataReg1Input <= "00000000000000000000000000000000";
			tagReg1Input <= "00000";
		end if;
		-----------------------------------------
		--when a stage's tag is 00000 it means that it is empty
		if tagReg2Input = "00000"  then -- if true , first stage is empty
			tmp_control <= '1';
			L_Request <= '0';
		else
			tmp_control <= '0';
			L_Request <= '0';
		end if;
		-----------------------------------------
		
		if tagReg3Input = "00000"  then-- if true , second stage is empty
			tmp_control2 <= '1';
			L_Request <= '0';
		else
			tmp_control2 <= '0';
			L_Request <= '1';
		end if;
		-----------------------------------------	
		if tagReg3Out = "00000" then -- if true , third(last) stage is empty
			tmp_control3 <= '1';
			
		else
			tmp_control3 <= '0';
			if L_Grand = '0' then
				L_Request <= '1';
			end if;
		end if;
		-----------------------------------------
		-- when we have grant from CDB or the pipeline is empty move the result
		--to the next register(stage) of the pipeline
		tmp_wren_1 <= tmp_control or L_Grand or tmp_control2 or tmp_control3;
		tmp_wren_2 <= L_Grand or tmp_control2 or tmp_control3;
		tmp_wren_3 <= tmp_control3 or L_Grand;
		
end process;

Q_out <= tagReg3Out;--Ouput of the 3rd stage
--When a value passes the last stage of the pipeline
--we must reset the bound reservation station
Reset_Rs <=tmp_valid_Reg3out; 
Reset_Sel_ReSt <= tmp_sel_Reg3out;

end Behavioral;





