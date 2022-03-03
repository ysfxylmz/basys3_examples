library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity n_bit_adder is
    generic(N:integer:=4);
    Port (  
            A :     in STD_LOGIC_VECTOR (N-1 downto 0);
            B :     in STD_LOGIC_VECTOR (N-1 downto 0);
            C_in :  in STD_LOGIC;
            S_out : out STD_LOGIC_VECTOR (N-1 downto 0);
            C_out : out STD_LOGIC);
end n_bit_adder;

architecture Behavioral of n_bit_adder is
component full_adder is 
 Port (     
        A :     in  STD_LOGIC;
        B :     in  STD_LOGIC;
        C_in :  in  STD_LOGIC;
        C_out : out STD_LOGIC;
        S_out : out STD_LOGIC
       );  
end component;
signal temp:std_logic_vector (N downto 0):= (others => '0');
begin

temp(0)<=C_in;
C_out<=temp(N);
full_gen: for k in 0 to N-1 generate 
full_adder_k:full_adder 
port map
(A=>A(k),B=>B(k),C_in=>temp(k),C_out=>temp(k+1),S_out=>S_out(k));

end generate full_gen;
end Behavioral;
