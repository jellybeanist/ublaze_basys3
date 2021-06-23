library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
USE IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
LIBRARY WORK;
USE WORK.DATA_TYPES.ALL;

entity register_interface is
    port 
    (
        --CLK AND RESET
        CLK                         : IN    STD_LOGIC;
        RST                         : IN    STD_LOGIC;
        
        --EXT REGISTER
        EXT_REG_IF_ADDR             : IN    STD_LOGIC_VECTOR(15 DOWNTO 0);
        EXT_REG_IF_WR_DATA          : IN    STD_LOGIC_VECTOR(31 DOWNTO 0);
        EXT_REG_IF_RD_DATA          : OUT   STD_LOGIC_VECTOR(31 DOWNTO 0);
        EXT_REG_IF_EN               : IN    STD_LOGIC;  
        EXT_REG_IF_WR_EN            : IN    STD_LOGIC_VECTOR(3 DOWNTO 0); 
                           
        CTRL_REGS                   : OUT   CONTROL_REGISTERS
    );
end register_interface;

architecture Behavioral of register_interface is
    
begin

    write_registers_p : process (CLK)
    begin
        if rising_edge(CLK) then
            
            if (EXT_REG_IF_EN = '1' and EXT_REG_IF_WR_EN = "1111") then
                case EXT_REG_IF_ADDR(13 downto 2) is
                    
                    -- UART
                    when x"000" => CTRL_REGS.ext_led_00             <= EXT_REG_IF_WR_DATA;
                    when x"001" => CTRL_REGS.ext_led_01             <= EXT_REG_IF_WR_DATA;
                    when x"002" => CTRL_REGS.ext_led_02             <= EXT_REG_IF_WR_DATA;
                    when x"003" => CTRL_REGS.ext_led_03             <= EXT_REG_IF_WR_DATA;
                    when x"004" => CTRL_REGS.ext_led_04             <= EXT_REG_IF_WR_DATA;
                    when x"005" => CTRL_REGS.ext_led_05             <= EXT_REG_IF_WR_DATA;
                    when x"006" => CTRL_REGS.ext_led_06             <= EXT_REG_IF_WR_DATA;
                    when x"007" => CTRL_REGS.ext_led_07             <= EXT_REG_IF_WR_DATA;
                    when x"008" => CTRL_REGS.ext_led_08             <= EXT_REG_IF_WR_DATA;
                    when x"009" => CTRL_REGS.ext_led_09             <= EXT_REG_IF_WR_DATA;
                    when x"00A" => CTRL_REGS.ext_led_10             <= EXT_REG_IF_WR_DATA;
                    when x"00B" => CTRL_REGS.ext_led_11             <= EXT_REG_IF_WR_DATA;
                    when x"00C" => CTRL_REGS.ext_led_12             <= EXT_REG_IF_WR_DATA;
                    when x"00D" => CTRL_REGS.ext_led_13             <= EXT_REG_IF_WR_DATA;
                    when x"00E" => CTRL_REGS.ext_led_14             <= EXT_REG_IF_WR_DATA;
                    when x"00F" => CTRL_REGS.ext_led_15             <= EXT_REG_IF_WR_DATA;

                    when others => null;
                end case;
            end if;
        end if;
    end process;

end Behavioral;