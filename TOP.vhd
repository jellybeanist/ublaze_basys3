library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
USE IEEE.NUMERIC_STD.ALL;
library UNISIM;
use UNISIM.VComponents.all;
LIBRARY WORK;
USE WORK.DATA_TYPES.ALL;


entity TOP is
    Port 
    ( 
        CLK_100     : IN STD_LOGIC;
        RST         : IN STD_LOGIC;
        
        LED         : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
        SWITCH      : IN STD_LOGIC_VECTOR (15 DOWNTO 0)
              
        
    );
end TOP;

architecture Behavioral of TOP is

    signal i_rst_n : std_logic;
    signal i_rst : std_logic;
    
    signal reg_if_addr : std_logic_vector(15 downto 0);
    signal reg_if_wr_data : std_logic_vector(31 downto 0);
    signal reg_if_rd_data : std_logic_vector(31 downto 0);
    signal reg_if_en : std_logic;
    signal reg_if_wr_en : std_logic_vector(3 downto 0);
    
    signal alive_counter        :   std_logic_vector(31 downto 0) := (others => '0');
    signal i_clk100             :   std_logic   := '0';
    
    signal CTRL_REGS : CONTROL_REGISTERS;
    signal STAT_REGS : STAT_REGISTERS;
    

begin
i_rst       <= RST;
i_rst_n     <= not RST;
i_clk100    <= CLK_100; -- for BASYS 3

U0: process (i_clk100) begin
    if rising_edge(i_clk100) then
        if (alive_counter = 100_000) then
            alive_counter <= (others => '0');
            --i_rst <= '0';
        else
            alive_counter <= alive_counter + 1;
        end if;
    end if;
end process;

    
    LED(0)          <=          CTRL_REGS.ext_led_00(0);
    LED(1)          <=          CTRL_REGS.ext_led_01(0);
    LED(2)          <=          CTRL_REGS.ext_led_02(0);
    LED(3)          <=          CTRL_REGS.ext_led_03(0);
    LED(4)          <=          CTRL_REGS.ext_led_04(0);
    LED(5)          <=          CTRL_REGS.ext_led_05(0);
    LED(6)          <=          CTRL_REGS.ext_led_06(0);
    LED(7)          <=          CTRL_REGS.ext_led_07(0);
    LED(8)          <=          CTRL_REGS.ext_led_08(0);
    LED(9)          <=          CTRL_REGS.ext_led_09(0);
    LED(10)         <=          CTRL_REGS.ext_led_10(0);
    LED(11)         <=          CTRL_REGS.ext_led_11(0);
    LED(12)         <=          CTRL_REGS.ext_led_12(0);
    LED(13)         <=          CTRL_REGS.ext_led_13(0);
    LED(14)         <=          CTRL_REGS.ext_led_14(0);
    LED(15)         <=          CTRL_REGS.ext_led_15(0);
    
    
    STAT_REGS.ext_sw_00(0)                 <=    SWITCH(0); 
    STAT_REGS.ext_sw_01(0)                 <=    SWITCH(1); 
    STAT_REGS.ext_sw_02(0)                 <=    SWITCH(2); 
    STAT_REGS.ext_sw_03(0)                 <=    SWITCH(3); 
    STAT_REGS.ext_sw_04(0)                 <=    SWITCH(4); 
    STAT_REGS.ext_sw_05(0)                 <=    SWITCH(5); 
    STAT_REGS.ext_sw_06(0)                 <=    SWITCH(6); 
    STAT_REGS.ext_sw_07(0)                 <=    SWITCH(7); 
    STAT_REGS.ext_sw_08(0)                 <=    SWITCH(8); 
    STAT_REGS.ext_sw_09(0)                 <=    SWITCH(9); 
    STAT_REGS.ext_sw_10(0)                 <=    SWITCH(10); 
    STAT_REGS.ext_sw_11(0)                 <=    SWITCH(11); 
    STAT_REGS.ext_sw_12(0)                 <=    SWITCH(12); 
    STAT_REGS.ext_sw_13(0)                 <=    SWITCH(13); 
    STAT_REGS.ext_sw_14(0)                 <=    SWITCH(14); 
    STAT_REGS.ext_sw_15(0)                 <=    SWITCH(15); 
    
    U1: entity work.bd_wrapper
    port map
    (
        CLK100 => CLK_100,
        RST_N => i_rst_n,
        REG_IF_addr => reg_if_addr,
        REG_IF_clk => open,
        REG_IF_din => reg_if_wr_data,
        REG_IF_dout => reg_if_rd_data,
        REG_IF_en => reg_if_en,
        REG_IF_rst => open,
        REG_IF_we => reg_if_wr_en
        
    );
    
    U2: entity work.register_interface
    port map
    (
        CLK                 =>  CLK_100,                   
        RST                 =>  RST,               
        
        EXT_REG_IF_ADDR     =>  reg_if_addr,        
        EXT_REG_IF_WR_DATA  =>  reg_if_wr_data,         
        EXT_REG_IF_RD_DATA  =>  reg_if_rd_data,          
        EXT_REG_IF_EN       =>  reg_if_en,        
        EXT_REG_IF_WR_EN    =>  reg_if_wr_en,           
                           
        CTRL_REGS           =>  CTRL_REGS,  
        STAT_REGS           =>  STAT_REGS                 
    );

end Behavioral;    
