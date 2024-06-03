----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2024 09:24:46 PM
-- Design Name: 
-- Module Name: Compare - Behavioral
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

entity Compare is
    Port (
        RegisterA : in std_logic_vector(7 downto 0); -- Input from first register
        RegisterB : in std_logic_vector(7 downto 0); -- Input from second register
        GreaterThan : out std_logic -- Output to signal if RegisterA > RegisterB
    );
end Compare;

architecture Behavioral of Compare is
begin
    process(RegisterA, RegisterB)
    begin
        if unsigned(RegisterA) > unsigned(RegisterB) then
            GreaterThan <= '1'; -- Set flag if RegisterA > RegisterB
        else
            GreaterThan <= '0'; -- Reset flag otherwise
        end if;
    end process;
end Behavioral;
