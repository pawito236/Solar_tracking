----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:59:05 11/05/2024 
-- Design Name: 
-- Module Name:    MOTOR_DRIVER_MAIN - Behavioral 
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MOTOR_DRIVER_MAIN is
    Port (
        gx         : in  STD_LOGIC;
        gy         : in  STD_LOGIC;
        xDir       : in  STD_LOGIC;
        yDir       : in  STD_LOGIC;
        enXMotor   : out STD_LOGIC;
        enYMotor   : out STD_LOGIC;
        isEnXMotor   : out STD_LOGIC;
        isEnYMotor   : out STD_LOGIC;
        endYD      : in  STD_LOGIC; -- Active LOW
        endYU      : in  STD_LOGIC; -- Active LOW
        endXL      : in  STD_LOGIC; -- Active LOW
        endXR      : in  STD_LOGIC; -- Active LOW
        clk        : in  STD_LOGIC
    );
end MOTOR_DRIVER_MAIN;

architecture Behavioral of MOTOR_DRIVER_MAIN is
    constant CLK_FREQ : integer := 20000000;      -- Clock frequency (20 MHz)
    constant DELAY    : integer := CLK_FREQ / 2000;  -- 0.5 ms delay
    signal counter    : integer := 0;             -- Counter for delay

    signal enX        : STD_LOGIC := '0';
    signal enY        : STD_LOGIC := '0';
    signal switching  : STD_LOGIC := '0';

    type state_type is (IDLE, PREPROCESS, DRIVE);
    signal state : state_type := IDLE;
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if state = IDLE then
                if counter < DELAY then
                    counter <= counter + 1;
                else
                    counter <= 0; -- Reset counter after delay
                    state <= PREPROCESS;
                end if;
                
            elsif state = PREPROCESS then
                
                -- if gx != '0' set enX = '1' to enable x-axis rotation
                if gx /= '0' then
                    enX <= '1';
					 else
						  enX <= '0';
                end if;
                
                -- if gy != '0' set enY = '1' to enable y-axis rotation
                if gy /= '0' then
                    enY <= '1';
					 else
					     enY <= '0';
                end if;    
                
                -- Check edge cases for max rotation
                if endYD = '0' and yDir = '0' and gy /= '0' then -- rotate down, max rotation
                    enY <= '0';
                end if;

                if endYU = '0' and yDir = '1' and gy /= '0' then -- rotate up, max rotation
                    enY <= '0';
                end if;

                if endXR = '0' and xDir = '1' and gx /= '0' then -- rotate right, max rotation
                    enX <= '0';
                end if;

                if endXL = '0' and xDir = '0' and gx /= '0' then -- rotate left, max rotation
                    enX <= '0';
                end if;
                
                -- Toggle switching signal
                if switching = '0' then
                    switching <= '1';
                else
                    switching <= '0';
                end if;
                
                state <= DRIVE;
                
            elsif state = DRIVE then
                if switching = '1' then
                    enXMotor <= enX;
                    enYMotor <= enY;
                else
                    enXMotor <= '0';
                    enYMotor <= '0';
                end if;
					 isEnXMotor <= enX;
					 isEnYMotor <= enY;
                
                state <= IDLE;
            end if;
        end if;
    end process;

end Behavioral;

