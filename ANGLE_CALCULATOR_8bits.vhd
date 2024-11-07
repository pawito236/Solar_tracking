library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ANGLE_CALCULATOR_8bits is
    Port (
        reset       : in  STD_LOGIC;
        address_bus : in  STD_LOGIC_VECTOR(1 downto 0);  -- Address for each sensor input (00: RT, 01: RD, 10: LT, 11: LD)
        databus     : in  STD_LOGIC_VECTOR(7 downto 0);  -- Data bus for sensor values
        wr          : in  STD_LOGIC;                     -- Write signal (active on rising edge)
        threshold   : in  STD_LOGIC_VECTOR(6 downto 0);  -- 7-bit threshold input for dynamic tolerance
        rts         : out STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit output for Right Top Sensor
        rds         : out STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit output for Right Down Sensor
        lts         : out STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit output for Left Top Sensor
        lds         : out STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit output for Left Down Sensor
        gx          : out STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit X-axis movement (output)
        gy          : out STD_LOGIC_VECTOR(7 downto 0);  -- 8-bit Y-axis movement (output)
        isdx        : out STD_LOGIC;                     -- Indicates if there is movement in X direction
        isdy        : out STD_LOGIC;                     -- Indicates if there is movement in Y direction
        xDir        : out STD_LOGIC;                     -- X direction (0: left, 1: right)
        yDir        : out STD_LOGIC                       -- Y direction (0: down, 1: up)
    );
end ANGLE_CALCULATOR_8bits;

architecture Behavioral of ANGLE_CALCULATOR_8bits is
    -- Define states for the finite state machine (FSM)
    type state_type is (READ_RT, READ_RD, READ_LT, READ_LD, CALCULATE);
    signal state        : state_type := READ_RT;        -- Current state, initialized to READ_RT

    -- Signals to hold sensor values as integers
    signal rti, rdi, lti, ldi : integer;
    -- Signals for calculated averages and movement deltas
    signal avt, avd, avl, avr  : integer;
    signal dx, dy              : integer;

begin
    process(wr, reset)
    begin
        if reset = '1' then
            -- Reset logic: initialize outputs and set the state to READ_RT
            state <= READ_RT;
            rts <= (others => '0');
            rds <= (others => '0');
            lts <= (others => '0');
            lds <= (others => '0');
            gx <= (others => '0');
            gy <= (others => '0');
            isdx <= '0';
            isdy <= '0';
            xDir <= '0';
            yDir <= '0';
        elsif rising_edge(wr) then
            -- Main FSM to handle sensor data reading and movement calculation
            case state is
                when READ_RT =>
                    -- Read Right Top Sensor (RT) when address is 00 and wr is high
                    if address_bus = "00" then
                        rti <= to_integer(unsigned(databus));
                        rts <= databus;                   -- Update output for RT sensor
                        state <= READ_RD;  -- Move to next state to read Right Down Sensor (RD)
                    end if;

                when READ_RD =>
                    -- Read Right Down Sensor (RD) when address is 01 and wr is high
                    if address_bus = "01" then
                        rdi <= to_integer(unsigned(databus));
                        rds <= databus;                   -- Update output for RD sensor
                        state <= READ_LT;  -- Move to next state to read Left Top Sensor (LT)
                    end if;

                when READ_LT =>
                    -- Read Left Top Sensor (LT) when address is 10 and wr is high
                    if address_bus = "10" then
                        lti <= to_integer(unsigned(databus));
                        lts <= databus;                   -- Update output for LT sensor
                        state <= READ_LD;  -- Move to next state to read Left Down Sensor (LD)
                    end if;

                when READ_LD =>
                    -- Read Left Down Sensor (LD) when address is 11 and wr is high
                    if address_bus = "11" then
                        ldi <= to_integer(unsigned(databus));
                        lds <= databus;                   -- Update output for LD sensor
                        state <= CALCULATE;  -- Move to CALCULATE state once all sensors are read
                    end if;

                when CALCULATE =>
                    -- Calculate averages for top, down, left, and right pairs of sensors
                    avt <= (lti + rti) / 2;
                    avd <= (ldi + rdi) / 2;
                    avl <= (lti + ldi) / 2;
                    avr <= (rti + rdi) / 2;

                    -- Calculate vertical (dy) and horizontal (dx) differences
                    dy <= avt - avd;
                    dx <= avl - avr;
						  gx <= std_logic_vector(to_unsigned(abs(dx), 8));  -- Convert dx to 8-bit output
						  gy <= std_logic_vector(to_unsigned(abs(dy), 8));  -- Convert dy to 8-bit output
                    
						  -- Check and set Y direction and movement
                    if abs(dy) > to_integer(unsigned(threshold)) then
                        if avt > avd then
                            yDir <= '1';  -- Movement is upwards
                        else
                            yDir <= '0';  -- Movement is downwards
                        end if;
                        
                        isdy <= '1';  -- Indicate movement in Y direction
                    else
                        isdy <= '0';
                    end if;

                    -- Check and set X direction and movement
                    if abs(dx) > to_integer(unsigned(threshold)) then
                        if avl > avr then
                            xDir <= '0';  -- Movement is to the left
                        else
                            xDir <= '1';  -- Movement is to the right
                        end if;
                        
                        isdx <= '1';  -- Indicate movement in X direction
                    else
                        isdx <= '0';
                    end if;

                    -- Reset state to READ_RT to start reading new sensor data
                    state <= READ_RT;
            end case;
        end if;
    end process;
end Behavioral;