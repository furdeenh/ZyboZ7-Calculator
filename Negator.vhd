----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2024 09:11:08 PM
-- Design Name: 
-- Module Name: Negator - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity Negator is
    Port (
        RegisterIn : in std_logic_vector(7 downto 0); -- Input from register to be negated
        Result : out std_logic_vector(7 downto 0) -- Output for negated result
    );
end Negator;

architecture Behavioral of Negator is
begin
    process(RegisterIn)
    begin
        Result <= std_logic_vector(not unsigned(RegisterIn) + 1); -- Compute two's complement (negate) and store result
    end process;
end Behavioral;
