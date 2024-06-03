----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2024 08:43:41 PM
-- Design Name: 
-- Module Name: Reg - Behavioral
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

entity RegisterSelector is
    Port (
        JA : in std_logic_vector(3 downto 0);
        RegisterOut : out std_logic_vector(7 downto 0)
    );
end RegisterSelector;

architecture Behavioral of RegisterSelector is
    signal R0, R1, R2, R3 : std_logic_vector(7 downto 0); -- Define registers R0-R3

begin
    process(JA)
    begin
        case JA is
            when "0000" =>
                RegisterOut <= R0;
            when "0001" =>
                RegisterOut <= R1;
            when "0010" =>
                RegisterOut <= R2;
            when "0011" =>
                RegisterOut <= R3;
            when others =>
                RegisterOut <= (others => '0'); -- Default case
        end case;
    end process;
end Behavioral;

