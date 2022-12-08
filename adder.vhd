library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity adder is
   generic ( 
      N: integer:=32
   );
   port (
      src1 : IN std_logic_vector (N-1 downto 0);
      src2 : IN std_logic_vector (N-1 downto 0);
      res : OUT std_logic_vector (N-1 downto 0)
   );
end entity adder;

architecture dataflow of adder is
begin
   res <= std_logic_vector(unsigned(src1) + unsigned(src2));
end architecture dataflow;