----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.01.2022 00:36:40
-- Design Name: 
-- Module Name: q4_top - Behavioral
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

entity q4_top is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           Q : out STD_LOGIC);
end q4_top;

architecture Behavioral of q4_top is

begin

process(A,B,C,D,S) begin

    if      (S="00") then
        Q<=A;
    elsif   (S="01") then
        Q<=B;
    elsif   (S="10") then
        Q<=C;
    elsif   (S="11") then
        Q<=D;
    else
        Q<='0';
    end if;

end process;

end Behavioral;
