----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2024 09:06:03 PM
-- Design Name: 
-- Module Name: Adder - Behavioral
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

entity Adder is
    Port (
        RegisterA : in std_logic_vector(7 downto 0); -- Input from first register
        RegisterB : in std_logic_vector(7 downto 0); -- Input from second register
        Result : out std_logic_vector(7 downto 0) -- Output for result of addition
    );
end Adder;

architecture Behavioral of Adder is
begin
    process(RegisterA, RegisterB)
    begin
        Result <= std_logic_vector(unsigned(RegisterA) + unsigned(RegisterB)); -- Perform addition and store result
    end process;
end Behavioral;
