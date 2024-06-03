----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2024 09:20:08 PM
-- Design Name: 
-- Module Name: Controller - Behavioral
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

entity DisplayController is
    Port (
        RegisterIn : in std_logic_vector(7 downto 0); -- Input from register to be displayed
        DisplayOut : out std_logic_vector(7 downto 0) -- Output for seven-segment display
    );
end DisplayController;

architecture Behavioral of DisplayController is
begin
    process(RegisterIn)
    begin
        case RegisterIn is
            when "00000000" =>
                DisplayOut <= "00000011"; -- Display '0' on seven-segment display
            when "00000001" =>
                DisplayOut <= "10011111"; -- Display '1' on seven-segment display
            when "00000010" =>
                DisplayOut <= "00100101"; -- Display '2' on seven-segment display
            when "00000011" =>
                DisplayOut <= "00001111"; -- Display '3' on seven-segment display
            when "00000100" =>
                DisplayOut <= "10011001"; -- Display '4' on seven-segment display
            when "00000101" =>
                DisplayOut <= "01001001"; -- Display '5' on seven-segment display
            when "00000110" =>
                DisplayOut <= "01000001"; -- Display '6' on seven-segment display
            when "00000111" =>
                DisplayOut <= "00011111"; -- Display '7' on seven-segment display
            when "00001000" =>
                DisplayOut <= "00000001"; -- Display '8' on seven-segment display
            when "00001001" =>
                DisplayOut <= "00001001"; -- Display '9' on seven-segment display
            when others =>
                DisplayOut <= "11111111"; -- Display nothing (empty) on seven-segment display
        end case;
    end process;
end Behavioral;
