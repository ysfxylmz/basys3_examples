library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity q7_top is
    generic(
        N:integer:=4;
        display:integer:=7);
    Port ( 
           in_num_A_0 : in STD_LOGIC;
           in_num_A_1 : in STD_LOGIC;
           in_num_A_2 : in STD_LOGIC;
           in_num_A_3 : in STD_LOGIC;
           in_num_B_0 : in STD_LOGIC;
           in_num_B_1 : in STD_LOGIC;
           in_num_B_2 : in STD_LOGIC;
           in_num_B_3 : in STD_LOGIC;
           out_display_0 : out STD_LOGIC;
           out_display_1 : out STD_LOGIC;
           out_display_2 : out STD_LOGIC;
           out_display_3 : out STD_LOGIC;
           out_display_4 : out STD_LOGIC;
           out_display_5 : out STD_LOGIC;
           out_display_6 : out STD_LOGIC;
           carry_in : in STD_LOGIC;
           display_anode:out std_logic;
           carry_led_out : out STD_LOGIC);
end q7_top;

architecture Behavioral of q7_top is
component bcd_to_disp is
Port ( 
   bcd_in : in STD_LOGIC_VECTOR (N-1 downto 0);
   disp_out : out STD_LOGIC_VECTOR (display-1 downto 0);
   carry_in : in STD_LOGIC;
   carry_out : out STD_LOGIC
      );

end component;

component n_bit_adder is
Port (  
    A :     in STD_LOGIC_VECTOR (N-1 downto 0);
    B :     in STD_LOGIC_VECTOR (N-1 downto 0);
    C_in :  in STD_LOGIC;
    S_out : out STD_LOGIC_VECTOR (N-1 downto 0);
    C_out : out STD_LOGIC
    );

end component;
signal bcd: std_logic_vector (N-1 downto 0);
signal a_tmp: std_logic_vector (N-1 downto 0);
signal b_tmp: std_logic_vector (N-1 downto 0);
signal disp_tmp: std_logic_vector (6 downto 0);
signal carry_tmp: std_logic;
begin
display_anode<='1';
a_tmp(0)<=in_num_A_0;
a_tmp(1)<=in_num_A_1;
a_tmp(2)<=in_num_A_2;
a_tmp(3)<=in_num_A_3;
b_tmp(0)<=in_num_B_0;
b_tmp(1)<=in_num_B_1;
b_tmp(2)<=in_num_B_2;
b_tmp(3)<=in_num_B_3;
adder:n_bit_adder port map(A=>a_tmp,B=>b_tmp,C_in=>carry_in,S_out=>bcd,C_out=>carry_tmp);
bcdtodisp:bcd_to_disp port map(bcd_in=>bcd,disp_out=>disp_tmp,carry_in=>carry_tmp,carry_out=>carry_led_out);
out_display_0<=disp_tmp(0);
out_display_1<=disp_tmp(1);
out_display_2<=disp_tmp(2);
out_display_3<=disp_tmp(3);
out_display_4<=disp_tmp(4);
out_display_5<=disp_tmp(5);
out_display_6<=disp_tmp(6);
end Behavioral;
