--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package my_Package_Vector is

type Array_of_Reg is array(0 to 31) of std_logic_vector (4 downto 0);


end my_Package_Vector;

