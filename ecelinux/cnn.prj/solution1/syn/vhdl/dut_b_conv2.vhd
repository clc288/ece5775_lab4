-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity dut_b_conv2_rom is 
    generic(
             dwidth     : integer := 16; 
             awidth     : integer := 6; 
             mem_size    : integer := 64
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of dut_b_conv2_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 => "0000011011010111", 1 => "0000011011000100", 2 => "0000011011101100", 
    3 => "0000011001010000", 4 => "0000011001111111", 5 => "0000011100010011", 
    6 => "0000010111110011", 7 => "0000011100101111", 8 => "0000011010100010", 
    9 => "0000011001100100", 10 => "0000011110010001", 11 => "0000011100111100", 
    12 => "0000011001110100", 13 => "0000011010010011", 14 => "0000011100000011", 
    15 => "0000011000010000", 16 => "0000011010100001", 17 => "0000011010010010", 
    18 => "0000011011001100", 19 => "0000011010001110", 20 => "0000011101010100", 
    21 => "0000011011101011", 22 => "0000011100001110", 23 => "0000011001001110", 
    24 => "0000011011001011", 25 => "0000011011100110", 26 => "0000011011101011", 
    27 => "0000011001001110", 28 => "0000011010110101", 29 => "0000011010011001", 
    30 => "0000011100010111", 31 => "0000011001111100", 32 => "0000011010111001", 
    33 => "0000011010001011", 34 => "0000011100111001", 35 => "0000011100001000", 
    36 => "0000011011101101", 37 => "0000011001111101", 38 => "0000011010100011", 
    39 => "0000011011111101", 40 => "0000011100000000", 41 => "0000011001111001", 
    42 => "0000011011011010", 43 => "0000011101110000", 44 => "0000011010100111", 
    45 => "0000011011001001", 46 => "0000011010110110", 47 => "0000011010110011", 
    48 => "0000010111001100", 49 => "0000011100010000", 50 => "0000011010111000", 
    51 => "0000011001010011", 52 => "0000011011100000", 53 => "0000011101010111", 
    54 => "0000011110001111", 55 => "0000011100010101", 56 => "0000011011101111", 
    57 => "0000011011110010", 58 => "0000011011101110", 59 => "0000011001100110", 
    60 => "0000011100011110", 61 => "0000011010100011", 62 => "0000011000010111", 
    63 => "0000011000000111" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "block_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "block";

attribute EQUIVALENT_REGISTER_REMOVAL : string;
begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity dut_b_conv2 is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of dut_b_conv2 is
    component dut_b_conv2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    dut_b_conv2_rom_U :  component dut_b_conv2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


