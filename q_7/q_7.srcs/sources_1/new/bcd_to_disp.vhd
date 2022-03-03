library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity bcd_to_disp is
    generic(
    N:integer:=4;
    display:integer:=7
    );
    Port ( bcd_in : in STD_LOGIC_VECTOR (N-1 downto 0);
           disp_out : out STD_LOGIC_VECTOR (display-1 downto 0);
           carry_in : in STD_LOGIC;
           carry_out : out STD_LOGIC);
end bcd_to_disp;

architecture Behavioral of bcd_to_disp is

begin
carry_out<=carry_in;
process(bcd_in,carry_in) begin
if(bcd_in="0000")    then disp_out<="0000001";--0
elsif(bcd_in="0001") then disp_out<="1001111";--1
elsif(bcd_in="0010") then disp_out<="0010010";--2 
elsif(bcd_in="0011") then disp_out<="0000110";--3
elsif(bcd_in="0100") then disp_out<="1001100";--4
elsif(bcd_in="0101") then disp_out<="0100100";--5
elsif(bcd_in="0110") then disp_out<="0100000";--6
elsif(bcd_in="0111") then disp_out<="0001111";--7
elsif(bcd_in="1000") then disp_out<="0000000";--8
elsif(bcd_in="1001") then disp_out<="0000100";--9
else  disp_out<="1111111";
end if;



end process;

end Behavioral;
