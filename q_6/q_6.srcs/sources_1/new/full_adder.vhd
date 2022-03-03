library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           C_out : out STD_LOGIC;
           S_out : out STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

begin

S_out<=C_in xor (A xor B);
-- C-IN XOR (A XOR B)
C_out<=(A and B) or (C_in and (A xor B));
--Co=AB + C-IN (A EX – OR B)

end Behavioral;
