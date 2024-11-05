----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:04:09 11/05/2024 
-- Design Name: 
-- Module Name:    DISPLAY_LIGHT - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DISPLAY_LIGHT is
    Port (
        clk         : in  std_logic;             -- Clock input
        reset       : in  std_logic;             -- Reset signal
        A     : in  std_logic_vector(2 downto 0);  -- 8-bit input A
        B     : in  std_logic_vector(2 downto 0);  -- 8-bit input B
        C     : in  std_logic_vector(2 downto 0);  -- 8-bit input C
        D     : in  std_logic_vector(2 downto 0);  -- 8-bit input D
        --digit_in    : in  std_logic_vector(3 downto 0); -- 4-digit input (3-bit bus for each digit)
        seg         : out std_logic_vector(6 downto 0); -- 7-segment display segments (a-g)
        common      : out std_logic_vector(3 downto 0)  -- Common anode/cathode for each digit
    );
end DISPLAY_LIGHT;

architecture Behavioral of DISPLAY_LIGHT is
    type state_type is (DIGIT0, DIGIT1, DIGIT2, DIGIT3);
    signal state : state_type := DIGIT0;       -- State variable
    signal counter : integer := 0;             -- Counter for display refresh rate
    constant REFRESH_RATE : integer := 20000;  -- Adjust this for display speed

    -- Segment lookup for 0-9 (assuming common cathode configuration)
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
		 "1101111",  -- 9
		 "1110111", -- A
		 "1111100", -- B
		 "0111001", -- C
		 "1011110", -- D
		 "1111001", -- E
		 "1110001"  -- F
	);

begin
    process(clk, reset)
    begin
        if reset = '1' then
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
                
                -- State machine for multiplexing between digits
                case state is
                    when DIGIT0 =>
                        common <= "1110";  -- Activate Digit0
                        seg <= seg_lut(to_integer(unsigned(D))); -- Display Digit0 value
                        state <= DIGIT1;
                        
                    when DIGIT1 =>
                        common <= "1101";  -- Activate Digit1
                        seg <= seg_lut(to_integer(unsigned(C))); -- Display Digit1 value
                        state <= DIGIT2;
                        
                    when DIGIT2 =>
                        common <= "1011";  -- Activate Digit2
                        seg <= seg_lut(to_integer(unsigned(B))); -- Display Digit2 value
                        state <= DIGIT3;
                        
                    when DIGIT3 =>
                        common <= "0111";  -- Activate Digit3
                        seg <= seg_lut(to_integer(unsigned(A))); -- Display Digit3 value
                        state <= DIGIT0;
                        
                    when others =>
                        state <= DIGIT0;
                end case;
            end if;
        end if;
    end process;

end Behavioral;

