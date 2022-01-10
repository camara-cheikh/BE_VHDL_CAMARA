library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
  
   entity compteur is
      Port ( clk_50M: in std_logic; 
            raz_n: in std_logic; 
            data_compas: out std_logic_vector(8 downto 0) 
      );
   end compteur;
   
  architecture rtl of compteur is
      signal compteur_up: std_logic_vector(8 downto 0);
 begin
 
 process(clk_50M,raz_n)
 begin
 if(raz_n='1') then
    compteur_up <= "000000000";
 
    elsif (clk_50M' event and clk_50M='1') then
       compteur_up <= compteur_up + 1;
  
    end if;
 end process;
 data_compas <= compteur_up;
 end architecture;