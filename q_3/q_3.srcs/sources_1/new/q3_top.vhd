library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity q3_top is
Port 
(
in_number : in std_logic_vector (9 downto 0);
out_bcd: out std_logic_vector (3 downto 0)
 );
end q3_top;
architecture Behavioral of q3_top is
begin
process (in_number) begin

    if      (in_number="0000000001")    then
        out_bcd<="0000";
    elsif   (in_number="0000000010")    then
        out_bcd<="0001";
    elsif   (in_number="0000000100")    then
        out_bcd<="0010";
    elsif   (in_number="0000001000")    then
        out_bcd<="0011";
    elsif   (in_number="0000010000")    then
        out_bcd<="0100";
    elsif   (in_number="0000100000")    then
        out_bcd<="0101";
    elsif   (in_number="0001000000")    then
        out_bcd<="0110";
    elsif   (in_number="0010000000")    then
        out_bcd<="0111";
    elsif   (in_number="0100000000")    then
        out_bcd<="1000";
    elsif   (in_number="1000000000")    then
        out_bcd<="1001";
   else
       out_bcd<="1111";
    end if;
end process;

end Behavioral;
