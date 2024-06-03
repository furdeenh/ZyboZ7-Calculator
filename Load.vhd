----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2024 08:59:26 PM
-- Design Name: 
-- Module Name: Load - Behavioral
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

entity ImmediateLoader is
    Port (
        ImmediateInput : in std_logic_vector(3 downto 0); -- Input from 4 switches for immediate value
        RegisterIn : inout std_logic_vector(7 downto 0); -- Input/Output for selected register
        RegisterSelectorOut : in std_logic_vector(7 downto 0) -- Output from register selector
    );
end ImmediateLoader;

architecture Behavioral of ImmediateLoader is
begin
    process(ImmediateInput, RegisterSelectorOut)
    begin
        if ImmediateInput /= "0000" then
            case RegisterSelectorOut is
                when "00000000" =>
                    RegisterIn <= ImmediateInput(3) & ImmediateInput(3) & ImmediateInput(3) & ImmediateInput(3) & ImmediateInput;
                when "00000001" =>
                    RegisterIn <= ImmediateInput(3) & ImmediateInput(3) & ImmediateInput(3) & ImmediateInput(3) & ImmediateInput;
                when "00000010" =>
                    RegisterIn <= ImmediateInput(3) & ImmediateInput(3) & ImmediateInput(3) & ImmediateInput(3) & ImmediateInput;
                when "00000011" =>
                    RegisterIn <= ImmediateInput(3) & ImmediateInput(3) & ImmediateInput(3) & ImmediateInput(3) & ImmediateInput;
                when others =>
                    null; -- Default case (no action)
            end case;
        end if;
    end process;
end Behavioral;