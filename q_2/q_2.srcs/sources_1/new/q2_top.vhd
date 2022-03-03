library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity q2_top is
    Port ( Y : out STD_LOGIC;
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC);
end q2_top;

architecture Behavioral of q2_top is

begin
Y<=((A AND B) OR C) AND D;
end Behavioral;
