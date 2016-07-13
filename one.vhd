----------------------------------------------------------------------------------
---- Company: 
---- Engineer:
----
---- Create Date:   16:05:05 11/24/2015
---- Design Name:   
---- Module Name:   C:/Users/mtech/Desktop/vlsi_proj/sinn/one.vhd
---- Project Name:  sinn
---- Target Device:  
---- Tool versions:  
---- Description:   
---- 
---- VHDL Test Bench Created by ISE for module: sin_cos_module
---- 
---- Dependencies:
---- 
---- Revision:
---- Revision 0.01 - File Created
---- Additional Comments:
----
---- Notes: 
---- This testbench has been automatically generated using types std_logic and
---- std_logic_vector for the ports of the unit under test.  Xilinx recommends
---- that these types always be used for the top-level I/O of a design in order
---- to guarantee that the testbench will bind correctly to the post-implementation 
---- simulation model.
----------------------------------------------------------------------------------
--LIBRARY ieee;
--USE ieee.std_logic_1164.ALL;
--USE IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- 
---- Uncomment the following library declaration if using
---- arithmetic functions with Signed or Unsigned values
----USE ieee.numeric_std.ALL;
-- 
--ENTITY one IS
--END one;
-- 
--ARCHITECTURE behavior OF one IS 
-- 
--    -- Component Declaration for the Unit Under Test (UUT)
-- 
--    COMPONENT sin_cos_module
--    PORT(
--         phase_in : IN  std_logic_vector(9 downto 0);
--         x_out : OUT  std_logic_vector(9 downto 0);
--         y_out : OUT  std_logic_vector(9 downto 0);
--         clk : IN  std_logic
--        );
--    END COMPONENT;
--    
--
--   --Inputs
--   signal phase_in : std_logic_vector(9 downto 0) := (others => '0');
--   signal clk : std_logic := '0';
--
-- 	--Outputs
--   signal x_out : std_logic_vector(9 downto 0);
--   signal y_out : std_logic_vector(9 downto 0);
--
--   -- Clock period definitions
--   constant clk_period : time := 10 ns;
-- 
--BEGIN
-- 
--	-- Instantiate the Unit Under Test (UUT)
--   uut: sin_cos_module PORT MAP (
--          phase_in => phase_in,
--          x_out => x_out,
--          y_out => y_out,
--          clk => clk
--        );
--
--   -- Clock process definitions
--   clk_process :process
--   begin
--		clk <= '0';
--		wait for clk_period/2;
--		clk <= '1';
--		wait for clk_period/2;
--   end process;
-- 
--
--   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	
--
--      wait for clk_period*10;
--		
--		
--	---phase_in<="1001101110";wait for clk_period;
--	phase_in<="0000000000";wait for clk_period;
--	
--	while (phase_in /="0110010010") loop
--	
--	phase_in<=phase_in+"0000011001";wait for clk_period;
--	end loop;
--
--
--      wait;
--   end process;
--
--END;


-- Company: 
-- Engineer:
--
-- Create Date:   16:05:05 11/24/2015
-- Design Name:   
-- Module Name:   C:/Users/mtech/Desktop/vlsi_proj/sinn/one.vhd
-- Project Name:  sinn
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sin_cos_module
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
USE IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY one IS
END one;
 
ARCHITECTURE behavior OF one IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sin_cos_module
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
   uut: sin_cos_module PORT MAP (
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
		
		
	phase_in<="0000000000";wait for clk_period;
	
	while (phase_in <"0110010010") loop
	
	phase_in<=phase_in+"0000000110";wait for clk_period;
	end loop;


      wait;
   end process;
end;

