----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:37:06 11/28/2015 
-- Design Name: 
-- Module Name:    modulator - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity modulator is
port(reset:in std_logic;
clock:in std_logic;
input_data:in std_logic_vector(1 downto 0);
modulated_signal:out std_logic_vector(3 downto 0));
end modulator;

architecture Behavioral of modulator is

type state_type is(SS,S0,S1,S2,S3);
signal current_state,next_state:state_type;
signal temp:std_logic_vector(2 downto 0);

begin
state_reg:process(reset,clock) is 
begin
	if(reset='1')then
	current_state<=ss;
	elsif(clock'event and clock='1') then
	current_state<=next_state;
	
	end if;
	end process;
	
logic:process(current_state,input_data) is
begin
case current_state is
	when S0=>temp<="000";
		if input_data="01"then
		next_state<=S1;
		elsif input_data="10"then
		next_state<=S2;
		elsif input_data="11"then
		next_state<=S3;
		end if;
		
		
	when S1=>temp<="001";
		if input_data="00"then
		next_state<=S0;
		elsif input_data="10"then
		next_state<=S2;
		elsif input_data="11"then
		next_state<=S3;
		end if;
		
   when S2=>temp<="010";
		if input_data="01"then
		next_state<=S1;
		elsif input_data="00"then
		next_state<=S0;
		elsif input_data="11"then
		next_state<=S3;
		end if;
	when S3=>temp<="100";
		if input_data="01"then
		next_state<=S1;
		elsif input_data="10"then
		next_state<=S2;
		elsif input_data="00"then
		next_state<=S0;
		end if;
		
	when SS=>temp<="111";
		if input_data="01"then
		next_state<=S1;
		elsif input_data="10"then
		next_state<=S2;
		elsif input_data="00"then
		next_state<=S0;
		elsif input_data="11"then
		next_state<=S3;
		end if;
		
		end case;
		end process;
		
		modulated:process(temp) is
		begin
		
		case temp is
		when "000"=>modulated_signal<="0001";
		when "001"=>modulated_signal<="0010";
		when "010"=>modulated_signal<="0100";
		when "100"=>modulated_signal<="1001";
		when others=>modulated_signal<="1111";
		
		end case;
		end process;
		
		end behavioral;
		
	
