library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use ieee.std_logic_unsigned.all;

entity diviseur is 
port( clk, reset: in std_logic;

diviseur :out std_logic
);
end diviseur;

architecture arch of diviseur is
	
	signal clk_1hz: std_logic;
	
begin 
 process(clk)
    variable count : integer range 0 to 50000000;
	begin 
	
	if (clk'event and clk='1') then
		count:=count+1;
		 if count<25000000 then clk_1hz <='1';
				else if (count>=25000000 and count<50000000) then clk_1hz <= '0';
						else if count=50000000 then count:=0;
							end if;		
				end if;	
		end if;		
		end if;		
		
		diviseur<=clk_1hz;
									
   
    
  
    
 end process;
 
end arch;