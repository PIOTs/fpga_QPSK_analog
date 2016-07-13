--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:19:37 11/24/2015
-- Design Name:   
-- Module Name:   C:/Users/mtech/Desktop/vlsi_proj/sinn/sine_test.vhd
-- Project Name:  sinn
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sine_wave
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
 
ENTITY sine_test IS
END sine_test;
 
ARCHITECTURE behavior OF sine_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sine_wave
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
   uut: sine_wave PORT MAP (
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

      wait for clk_period*10;
-- phase_in<="0001100100";wait for clk_period*10;0.781
-- phase_in<="0010000000";wait for clk_period*10;0.5
--	phase_in<="0110010010";wait for clk_period*10;3.14
--	phase_in<="0000000000";wait for clk_period*10;0
-- phase_in<="1001101110";wait for clk_period*10;-3.14

   --start-----
	phase_in<="1001101110";wait for clk_period;
	
	while (phase_in /="0110010010") loop
	
	phase_in<=phase_in+"0000011001";
	end loop;



	 
      wait;
   end process;

END;
