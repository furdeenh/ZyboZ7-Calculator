----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2024 09:22:42 PM
-- Design Name: 
-- Module Name: Skip - Behavioral
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

entity SkipController is
    Port (
        SkipInput : in std_logic; -- Input to trigger skip operation
        Skip : out std_logic -- Output to signal skip condition to the next instruction
    );
end SkipController;


architecture Behavioral of SkipController is
begin
    process(SkipInput)
    begin
        if SkipInput = '1' then
            Skip <= '1'; -- Set skip condition to true
        else
            Skip <= '0'; -- Reset skip condition
        end if;
    end process;
end Behavioral;
