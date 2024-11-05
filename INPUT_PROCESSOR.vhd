----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:32:01 11/03/2024 
-- Design Name: 
-- Module Name:    INPUT_PROCESSOR - Behavioral 
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

entity INPUT_PROCESSOR is
    Port (
        SENSORXR : in  STD_LOGIC_VECTOR(2 downto 0);
        SENSORYR : in  STD_LOGIC_VECTOR(2 downto 0);
        SENSORXL : in  STD_LOGIC_VECTOR(2 downto 0);
        SENSORYL : in  STD_LOGIC_VECTOR(2 downto 0);
        LEDXR    : out STD_LOGIC;
        LEDYR    : out STD_LOGIC;
        LEDXL    : out STD_LOGIC;
        LEDYL    : out STD_LOGIC
    );
end INPUT_PROCESSOR;

architecture Behavioral of INPUT_PROCESSOR is

begin
    -- Check each sensor for "111" and set LED accordingly
    LEDXR <= '1' when SENSORXR = "111" else '0';
    LEDYR <= '1' when SENSORYR = "111" else '0';
    LEDXL <= '1' when SENSORXL = "111" else '0';
    LEDYL <= '1' when SENSORYL = "111" else '0';

end Behavioral;

