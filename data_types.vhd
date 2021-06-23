LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

package data_types is

    type CONTROL_REGISTERS is 
    record
        --LEDS
        ext_led_00              : std_logic_vector(31 downto 0);
        ext_led_01              : std_logic_vector(31 downto 0);
        ext_led_02              : std_logic_vector(31 downto 0);
        ext_led_03              : std_logic_vector(31 downto 0);
        ext_led_04              : std_logic_vector(31 downto 0);
        ext_led_05              : std_logic_vector(31 downto 0);
        ext_led_06              : std_logic_vector(31 downto 0);
        ext_led_07              : std_logic_vector(31 downto 0);
        ext_led_08              : std_logic_vector(31 downto 0);
        ext_led_09              : std_logic_vector(31 downto 0);
        ext_led_10              : std_logic_vector(31 downto 0);
        ext_led_11              : std_logic_vector(31 downto 0);
        ext_led_12              : std_logic_vector(31 downto 0);
        ext_led_13              : std_logic_vector(31 downto 0);
        ext_led_14              : std_logic_vector(31 downto 0);
        ext_led_15              : std_logic_vector(31 downto 0);
        
    end record;
end data_types;

package body data_types is

end data_types;