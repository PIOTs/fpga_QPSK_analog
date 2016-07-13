----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:54:25 11/24/2015 
-- Design Name: 
-- Module Name:    sin_cos_module - Behavioral 
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
USE IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sin_cos_module is
 PORT (
    phase_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    x_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    y_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    clk : IN STD_LOGIC
  );
end sin_cos_module;

architecture Behavioral of sin_cos_module is
  COMPONENT sine_wave
    PORT (
    phase_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    x_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    y_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    clk : IN STD_LOGIC
  );
  END COMPONENT;
  
  

begin



u0:sine_wave port map(phase_in,x_out,y_out,clk); 

end Behavioral;

