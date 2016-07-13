--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:19:47 11/28/2015
-- Design Name:   
-- Module Name:   C:/Users/mtech/poonam_vlsi/vlsi_proj/sinn/modulation_vhdl/test_qpskk.vhd
-- Project Name:  modulation_vhdl
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: modulator
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
use ieee.std_logic_textio.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_qpskk IS
END test_qpskk;
 
ARCHITECTURE behavior OF test_qpskk IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT modulator
    PORT(
         reset : IN  std_logic;
         clock : IN  std_logic;
         input_data : IN  std_logic_vector(1 downto 0);
         modulated_signal : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clock : std_logic := '0';
   signal input_data : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal modulated_signal : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: modulator PORT MAP (
          reset => reset,
          clock => clock,
          input_data => input_data,
          modulated_signal => modulated_signal
        );
		  
		  -----------------------------------
		  clock<=not clock after 10ns;
		  reset<='0'after 5ns;
		  
		  ---------------------------------
		  

   -- got-------------------------------
   tb:process
	variable text_line:line;
	variable i:std_logic_vector(1 downto 0);
	file my_file:TEXT open read_mode is "input.txt";
	file  out_file:text open write_mode is "output.txt";
	
   begin
	
	
	   while not endfile(my_file) loop
		     readline(my_file,text_line);
			  read(text_line,i);
			  input_data<=i;
			  
			  write(text_line,modulated_signal);
			  writeline(out_file,text_line);
			  wait until clock='0';
			  end loop;
			  wait;
			  
			  end process;
			  end;
			  
			  
--	
--		clock <= '0';
--		wait for clock_period/2;
--		clock <= '1';
--		wait for clock_period/2;
--   end process;
-- 
--
--   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for clock_period*10;
--
--      -- insert stimulus here 
--
--      wait;
--   end process;
--
--END;
