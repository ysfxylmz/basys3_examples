----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.01.2022 00:49:00
-- Design Name: 
-- Module Name: q5_top - Behavioral
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

entity q5_top is
    Port ( A : in STD_LOGIC;
           S : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (1 downto 0));
end q5_top;

architecture Behavioral of q5_top is

begin
process(A,S) begin
    if(S='0') then
        Y(0)<=A;
        Y(1)<='0';
    else
        Y(1)<=A;
        Y(0)<='0';
    end if;
    end process;

end Behavioral;
