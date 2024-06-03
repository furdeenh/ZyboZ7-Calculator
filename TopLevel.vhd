----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2024 09:30:01 PM
-- Design Name: 
-- Module Name: TopLevel - Behavioral
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

entity TopLevel is
    Port (
        -- Inputs
        Switches : in std_logic_vector(7 downto 0); -- Input from switches for operations
        Clock : in std_logic; -- Clock signal
        Button : in std_logic; -- Button signal to trigger operations

        -- Outputs
        Display : out std_logic_vector(7 downto 0); -- Output for seven-segment display
        Skip : out std_logic -- Output to signal skip condition to the next instruction
    );
end TopLevel;

architecture Behavioral of TopLevel is

    -- Signal declarations
    signal immediate_input_signal : std_logic_vector(3 downto 0);
    signal register_in_signal : std_logic_vector(7 downto 0);
    signal register_selector_out_signal : std_logic_vector(7 downto 0);
    -- Component declarations
    component RegisterSelector is
        Port (
            JA : in std_logic_vector(3 downto 0);
            RegisterOut : out std_logic_vector(7 downto 0)
        );
    end component;

    component ImmediateLoader is
        Port (
            ImmediateInput : in std_logic_vector(3 downto 0);
            RegisterIn : inout std_logic_vector(7 downto 0);
            RegisterSelectorOut : in std_logic_vector(7 downto 0)
        );
    end component;

    component Adder is
        Port (
            RegisterA : in std_logic_vector(7 downto 0);
            RegisterB : in std_logic_vector(7 downto 0);
            Result : out std_logic_vector(7 downto 0)
        );
    end component;

    component Negator is
        Port (
            RegisterIn : in std_logic_vector(7 downto 0);
            Result : out std_logic_vector(7 downto 0)
        );
    end component;

    component DisplayController is
        Port (
            RegisterIn : in std_logic_vector(7 downto 0);
            DisplayOut : out std_logic_vector(7 downto 0)
        );
    end component;

    component SkipController is
        Port (
            SkipInput : in std_logic;
            Skip : out std_logic
        );
    end component;

    component Compare is
        Port (
            RegisterA : in std_logic_vector(7 downto 0);
            RegisterB : in std_logic_vector(7 downto 0);
            GreaterThan : out std_logic
        );
    end component;

    -- Internal signals
    signal RegisterA, RegisterB, RegisterC : std_logic_vector(7 downto 0);
    signal ImmediateValue : std_logic_vector(3 downto 0);
    signal SkipFlag : std_logic;

begin
    -- Register Selector instantiation
    RegisterSel : RegisterSelector port map (
        JA => Switches(3 downto 0),
        RegisterOut => RegisterA
    );

    -- Immediate Loader instantiation
    ImmediateLoaderInstance: ImmediateLoader
        port map (
            ImmediateInput => immediate_input_signal,
            RegisterIn => register_in_signal,
            RegisterSelectorOut => register_selector_out_signal
        );

    -- Adder instantiation
    Add : Adder port map (
        RegisterA => RegisterA,
        RegisterB => RegisterB,
        Result => RegisterC
    );

    -- Negator instantiation
    Neg : Negator port map (
        RegisterIn => RegisterA,
        Result => RegisterB
    );

    -- Display Controller instantiation
    DispCtrl : DisplayController port map (
        RegisterIn => RegisterA,
        DisplayOut => Display (7 downto 0)
    );

    -- Skip Controller instantiation
    SkipCtrl : SkipController port map (
        SkipInput => Button,
        Skip => SkipFlag
    );

   
    Comp : Compare port map (
        RegisterA => RegisterA,
        RegisterB => RegisterB,
        GreaterThan => SkipFlag
    );

end Behavioral;
