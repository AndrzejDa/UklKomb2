----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2023 11:30:04
-- Design Name: 
-- Module Name: UklKomb2 - Behavioral
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

entity UklKomb2 is
  Port (sw_i : in std_logic_vector(3 downto 0);
        led7_an_o : out std_logic_vector(3 downto 0);
        led7_seg_o : out std_logic_vector(7 downto 0));
end UklKomb2;

architecture Behavioral of UklKomb2 is

begin
led7_an_o <= "1110";
led7_seg_o(7) <= ((not sw_i(3))and(sw_i(2))and(not sw_i(1))and(not sw_i(0)))
or((not sw_i(3))and(not sw_i(2))and(not sw_i(1))and(sw_i(0)))
or((sw_i(3))and(sw_i(2))and(sw_i(1))and(sw_i(0)))
or((not sw_i(3))and(not sw_i(2))and(sw_i(1))and(not sw_i(0)))
or((sw_i(3))and(not sw_i(2))and(not sw_i(1))and(not sw_i(0)));

led7_seg_o(6) <= '0';

led7_seg_o(5) <= ((sw_i(3))and(sw_i(2))and(not sw_i(1))and(not sw_i(0)))
or((not sw_i(3))and(sw_i(2))and(not sw_i(1))and(sw_i(0)))
or((not sw_i(3))and(not sw_i(2))and(sw_i(1))and(sw_i(0)))
or((sw_i(3))and(not sw_i(2))and(not sw_i(1))and(sw_i(0)))
or((not sw_i(3))and(sw_i(2))and(sw_i(1))and(not sw_i(0)))
or((sw_i(3))and(not sw_i(2))and(sw_i(1))and(not sw_i(0)));

led7_seg_o(4) <= ((not sw_i(3))and(sw_i(2))and(not sw_i(1))and(not sw_i(0)))
or((not sw_i(3))and(not sw_i(2))and(not sw_i(1))and(sw_i(0)))
or((sw_i(3))and(sw_i(2))and(sw_i(1))and(sw_i(0)))
or((not sw_i(3))and(not sw_i(2))and(sw_i(1))and(not sw_i(0)))
or((sw_i(3))and(not sw_i(2))and(not sw_i(1))and(not sw_i(0)));

led7_seg_o(3) <= ((not sw_i(3))and(sw_i(2))and(not sw_i(1))and(not sw_i(0)))
or((not sw_i(3))and(not sw_i(2))and(not sw_i(1))and(sw_i(0)))
or((not sw_i(3))and(not sw_i(2))and(sw_i(1))and(not sw_i(0)))
or((sw_i(3))and(not sw_i(2))and(not sw_i(1))and(not sw_i(0)))
or((sw_i(3))and(sw_i(1))and(sw_i(0)))
or((sw_i(2))and(sw_i(1))and(sw_i(0)))
or((sw_i(3))and(sw_i(2))and(sw_i(1)))
or((sw_i(3))and(sw_i(2))and(sw_i(0)));

led7_seg_o(2) <= ((sw_i(2))and(not sw_i(1)))
or((sw_i(3))and(not sw_i(2)))
or((sw_i(1))and(not sw_i(0)))
or((not sw_i(3))and(sw_i(0)));

led7_seg_o(1) <= ((not sw_i(3))and(not sw_i(2))and(not sw_i(1)))
or ((not sw_i(3))and(not sw_i(1))and(not sw_i(0)))
or ((not sw_i(2))and(not sw_i(1))and(not sw_i(0)))
or ((not sw_i(3))and(not sw_i(2))and(not sw_i(0)));

led7_seg_o(0) <= '1';


end Behavioral;
