----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:48:00 11/07/2024 
-- Design Name: 
-- Module Name:    DISPLAY_LIGHT_8bits - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DISPLAY_LIGHT_8bits is
    Port (
        clk         : in  std_logic;             -- Clock input
        reset       : in  std_logic;             -- Reset signal
        A           : in  std_logic_vector(7 downto 0);  -- 8-bit input sensor A
        B           : in  std_logic_vector(7 downto 0);  -- 8-bit input sensor B
        C           : in  std_logic_vector(7 downto 0);  -- 8-bit input sensor C
        D           : in  std_logic_vector(7 downto 0);  -- 8-bit input sensor D
        st          : in  std_logic;             -- Selection bit for sensor pair (0: C,D, 1: A,B)
        seg         : out std_logic_vector(6 downto 0);  -- 7-segment display segments (a-g)
        common      : out std_logic_vector(3 downto 0)   -- Common anode/cathode for each digit
    );
end DISPLAY_LIGHT_8bits;

architecture Behavioral of DISPLAY_LIGHT_8bits is
    type state_type is (DIGIT0, DIGIT1, DIGIT2, DIGIT3);
    signal state : state_type := DIGIT0;       -- State variable
    signal counter : integer := 0;             -- Counter for display refresh rate
    constant REFRESH_RATE : integer := 20000;  -- Adjust this for display speed

    -- Segment lookup for 0-9 and A-F (assuming common cathode configuration)
    type seg_lut_type is array (0 to 15) of std_logic_vector(6 downto 0);
    constant seg_lut : seg_lut_type := (
        "0111111", -- 0
        "0000110", -- 1
        "1011011", -- 2
        "1001111", -- 3
        "1100110", -- 4
        "1101101", -- 5
        "1111101", -- 6
        "0000111", -- 7
        "1111111", -- 8
        "1101111", -- 9
        "1110111", -- A
        "1111100", -- B
        "0111001", -- C
        "1011110", -- D
        "1111001", -- E
        "1110001"  -- F
    );

    -- Signals for current 4-bit values to display on each digit
    signal digit0_val, digit1_val, digit2_val, digit3_val : std_logic_vector(3 downto 0);

begin
    process(clk, reset)
    begin
        if reset = '1' then
            -- Reset logic: initialize state, counter, and outputs
            state <= DIGIT0;
            counter <= 0;
            seg <= (others => '1');
            common <= "1111";
        elsif rising_edge(clk) then
            -- Refresh counter for display switching
            if counter < REFRESH_RATE then
                counter <= counter + 1;
            else
                counter <= 0;

                -- Select which pair of sensors to display based on st signal
                if st = '0' then
                    -- Display C and D pair when st = '0'
                    digit0_val <= D(3 downto 0);  -- D lower 4 bits
                    digit1_val <= D(7 downto 4);  -- D upper 4 bits
                    digit2_val <= C(3 downto 0);  -- C lower 4 bits
                    digit3_val <= C(7 downto 4);  -- C upper 4 bits
                else
                    -- Display A and B pair when st = '1'
                    digit0_val <= B(3 downto 0);  -- B lower 4 bits
                    digit1_val <= B(7 downto 4);  -- B upper 4 bits
                    digit2_val <= A(3 downto 0);  -- A lower 4 bits
                    digit3_val <= A(7 downto 4);  -- A upper 4 bits
                end if;

                -- State machine for multiplexing between digits
                case state is
                    when DIGIT0 =>
                        common <= "1110";  -- Activate Digit0
                        seg <= seg_lut(to_integer(unsigned(digit0_val)));  -- Display Digit0 value
                        state <= DIGIT1;

                    when DIGIT1 =>
                        common <= "1101";  -- Activate Digit1
                        seg <= seg_lut(to_integer(unsigned(digit1_val)));  -- Display Digit1 value
                        state <= DIGIT2;

                    when DIGIT2 =>
                        common <= "1011";  -- Activate Digit2
                        seg <= seg_lut(to_integer(unsigned(digit2_val)));  -- Display Digit2 value
                        state <= DIGIT3;

                    when DIGIT3 =>
                        common <= "0111";  -- Activate Digit3
                        seg <= seg_lut(to_integer(unsigned(digit3_val)));  -- Display Digit3 value
                        state <= DIGIT0;

                    when others =>
                        state <= DIGIT0;
                end case;
            end if;
        end if;
    end process;

end Behavioral;