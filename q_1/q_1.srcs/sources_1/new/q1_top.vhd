library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity q1_top is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           Q : out STD_LOGIC);
end q1_top;

architecture Behavioral of q1_top is

begin
Q<= (A OR B) AND (B) AND (C OR D);

end Behavioral;
