----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:09:53 11/05/2024 
-- Design Name: 
-- Module Name:    ANGLE_CALCULATOR_MAIN - Behavioral 
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

entity ANGLE_CALCULATOR_MAIN is
    Port ( rts : in  STD_LOGIC_VECTOR (2 downto 0);   -- `right top sensor
           rds : in  STD_LOGIC_VECTOR (2 downto 0);	-- `right down sensor
           lds : in  STD_LOGIC_VECTOR (2 downto 0);	-- `left down sensor
           lts : in  STD_LOGIC_VECTOR (2 downto 0);	-- `left top sensor
           gx : out  STD_LOGIC_VECTOR (2 downto 0);	-- `how many step x move | diff on x axis
           gy : out  STD_LOGIC_VECTOR (2 downto 0);	-- `how many step y move | diff on y axis
			  isdx : out  STD_LOGIC;
			  isdy : out  STD_LOGIC;
           xDir : out  STD_LOGIC;    						-- 0: left, 1: right
           yDir : out  STD_LOGIC								-- 0: down, 1: up
			 );
end ANGLE_CALCULATOR_MAIN;

architecture Behavioral of ANGLE_CALCULATOR_MAIN is
	constant tolerance : integer := 0;      -- accepted range
	signal resultx : integer;
	signal resulty : integer;
	signal rti : integer;
	signal rdi : integer;
	signal ldi : integer;
	signal lti : integer;
	signal avt : integer;
	signal avd : integer;
	signal avl : integer;
	signal avr : integer;
	signal dx : integer;
	signal dy : integer;
begin
    process(rts, rds, lds, lts)
    begin
        -- Convert SW (4-bit) to integer n
        rti <= to_integer(unsigned(rts));
		  rdi <= to_integer(unsigned(rds));
		  ldi <= to_integer(unsigned(lds));
		  lti <= to_integer(unsigned(lts));
		  
		  avt <= abs((lti+rti)/2);
		  avd <= abs((ldi+rdi)/2);
		  avl <= abs((lti+ldi)/2);
		  avr <= abs((rti+rdi)/2);
		  
		  dy <= avt-avd;
		  dx <= avl-avr;
		  
        -- Check vertical difference against tolerance
        if (dy > tolerance or dy < -tolerance) then
            if avt > avd then		-- top > down, so move up
                --gy <= avt - avd;  
					 yDir <= '1';
            else
                --gy <= avd - avt;  -- down > top, so move down
					 yDir <= '0';
            end if;
				gy <= std_logic_vector(to_unsigned(abs(dy), 3));
				isdy <= '1';
		  else
				gy <= "000";
				isdy <= '0';
        end if;
		  
        -- Check horizontal difference against tolerance
        if (dx > tolerance or dx < -tolerance) then
            if avl > avr then		-- left> right, so rotate left
                --gx <= avl - avr;  
					 xDir <= '0';
            else
                --gx <= avr - avl;  -- right> left, so rotate right
					 xDir <= '1';
            end if;
				
				gx <= std_logic_vector(to_unsigned(abs(dx), 3));
				isdx <= '1';
		  else
				gx <= "000";
				isdx <= '0';
        end if;
		  
        -- Convert gx and gy back to STD_LOGIC_VECTOR
		  --gx <= std_logic_vector(to_unsigned(abs(dx), 3));
		  --gy <= std_logic_vector(to_unsigned(abs(dy), 3));
	 end process;

end Behavioral;

