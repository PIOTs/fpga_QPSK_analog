--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:52:03 11/27/2015
-- Design Name:   
-- Module Name:   C:/Users/mtech/poonam_vlsi/vlsi_proj/sinn/test_nw.vhd
-- Project Name:  sinn
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_one
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_nw IS
END test_nw;
 
ARCHITECTURE behavior OF test_nw IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_one
    PORT(
         phase_in : IN  std_logic_vector(9 downto 0);
         x_out : OUT  std_logic_vector(9 downto 0);
         y_out : OUT  std_logic_vector(9 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal phase_in : std_logic_vector(9 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal x_out : std_logic_vector(9 downto 0);
   signal y_out : std_logic_vector(9 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_one PORT MAP (
          phase_in => phase_in,
          x_out => x_out,
          y_out => y_out,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		
-------------
      

      wait;
   end process;

END;
