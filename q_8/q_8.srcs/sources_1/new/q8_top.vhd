----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.01.2022 15:24:02
-- Design Name: 
-- Module Name: q8_top - Behavioral
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

entity q8_top is
    Port ( D : in STD_LOGIC;
           R : in STD_LOGIC;
           Q : out STD_LOGIC;
           clk : in STD_LOGIC);
end q8_top;

architecture Behavioral of q8_top is

begin
process (D,R,clk) begin
    if rising_edge(clk) then
        if(D='0' and R='0') then
            Q<='0';
        elsif (D='0' and R='1') then
             Q<='0';
        elsif (D='1' and R='0') then 
            Q<='1';
        elsif (D='1' and R='1') then 
            Q<='0';
        end if;
    
    end if;
end process;


end Behavioral;
