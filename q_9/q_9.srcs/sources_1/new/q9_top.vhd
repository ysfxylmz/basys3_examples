----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.01.2022 15:46:27
-- Design Name: 
-- Module Name: q9_top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity q9_top is
    Port ( D : in STD_LOGIC;
           EN : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out STD_LOGIC);
end q9_top;

architecture Behavioral of q9_top is

begin
process (D,EN,clk) begin
    if rising_edge(clk) and (EN='1') then
        if(D='1') then
            Q<='1';
        else
            Q<='0';
        end if;
    
    end if;
    
    

end process ;

end Behavioral;
