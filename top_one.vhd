----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:02:18 11/26/2015 
-- Design Name: 
-- Module Name:    top_one - Behavioral 
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

entity top_one is
PORT (
    ab: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    x_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    y_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    clk : IN STD_LOGIC
  );
end top_one;

architecture Behavioral of top_one is
COMPONENT sin_cos_module
    PORT (
    phase_in : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    x_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    y_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    clk : IN STD_LOGIC
  );
  END COMPONENT;
  
COMPONENT addr_use
  PORT (
    a : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END COMPONENT;
  
  signal buff: std_logic_vector(9 downto 0);
  signal buffa: std_logic_vector(9 downto 0);
  signal i: std_logic;


begin

buff<="0000000000";
--
--	while (buff <="0110010010") loop
--	
--	buff<=buff+"0000000110";
--	phase_in<=buff;
--	end loop;
--
--process(clk,buff)
--begin
--
--   if(buff <="0110010010")then
--	buff<=buff+"0000000110";
--	phase_in<=buff;
--	end if;
--
--end process;
--process(clk)
--begin
--	
--	  a0:addr_use port map(buff,"0000000110",clk,'1',buff);
--     b0:sin_cos_module port map(buff,x_out,y_out,clk);
--	  
--end process;

--buff<="0000000000";
--process(clk)
--begin
--
--
--  
--	
--gen1:	if(buff <"0110010010") then
--	
--	buff<=buff+"0000000110";
--	 
--	end if;
----	b0:sin_cos_module port map(buff,x_out,y_out,clk);
--	
--end process;
----
--aa:for i in 0 to 1 generate
--
--	  a0:addr_use port map(buff,"0000000110",clk,'1',buff);
--     b0:sin_cos_module port map(buff,x_out,y_out,clk);
--
--end generate aa;
--buff<="0000000000";
--process(clk,buff)
--begin
--
--if(clk'event and clk='1') then
--	if(buff<="0110010010") then
--	a:addr_use port map(buff,"0000000110",clk,1,s);
--	b:sin_cos_module port map(s,x_out,y_out,clk);
--	buff<=s;
--end if;
--end if;
--
--end process;	


--process(clk,buff)
--begin
--if(clk'event and clk='1') then
--
--
--end if;
----end process;
--
--a:addr_use port map(buff,"0000000110",clk,1,s);


aa:for i in 1  to 5 generate
   
   p:addr_use port map(buffa,"0000000110",clk,'1',buff);
   q:sin_cos_module port map(buff,x_out,y_out,clk);
	buffa<=buff;
	

end generate;


--a:addr_use port map(buff,"0000000110",clk,1,buff);


--
--process(clk,buff)
--   begin
--   if(clk'event and clk='1') then
--       b:sin_cos_module port map(buff,x_out,y_out,clk); 
--		a<=buff;
--		b<="0000000110";
--     -- buff<=s;
--  end if;
--   end process;

--
--if(buff<="0110010010") then
--a:addr_use port map(buff,"0000000110",clk,1,buff);
--b:sin_cos_module port map(buff,x_out,y_out,clk);
--buff<=s;
--end if;
 	

end Behavioral;

