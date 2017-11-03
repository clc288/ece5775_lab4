-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity dut_w_conv1_rom is 
    generic(
             dwidth     : integer := 16; 
             awidth     : integer := 15; 
             mem_size    : integer := 18432
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of dut_w_conv1_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 => "1111011110110111", 1 => "0000110100000110", 2 => "0000100001101001", 
    3 => "0000000010000000", 4 => "1111011111100011", 5 => "0000101001110000", 
    6 => "1111100010001000", 7 => "1111101110111111", 8 => "0000010101110111", 
    9 => "0000001011111000", 10 => "0000000100010001", 11 => "1111011011100001", 
    12 => "0000110111011000", 13 => "0000101110001001", 14 => "0000001000101010", 
    15 => "1111000001001000", 16 => "0000000011111110", 17 => "1111011001111100", 
    18 => "1111010101001011", 19 => "1111010101101011", 20 => "1111110100110110", 
    21 => "0000001101101101", 22 => "0000101000100100", 23 => "0000010110101100", 
    24 => "1111011000101000", 25 => "1111110111101001", 26 => "0000100011010101", 
    27 => "0000001111100111", 28 => "0000001111010011", 29 => "0000010000111011", 
    30 => "0000000011011110", 31 => "0000011110100000", 32 => "1111010010100111", 
    33 => "0000100110100011", 34 => "0000011100001110", 35 => "1111001100001011", 
    36 => "1111010011011100", 37 => "0000001011010011", 38 => "1111110111001010", 
    39 => "0000010001100011", 40 => "1110111001100010", 41 => "1111000001100101", 
    42 => "1111111100110000", 43 => "1111110001001001", 44 => "0000011111111001", 
    45 => "0000010010101101", 46 => "1111101000000100", 47 => "0000111011000001", 
    48 => "1111101101010010", 49 => "0000001100010001", 50 => "1111100111001110", 
    51 => "0000001100101101", 52 => "0000000001100001", 53 => "0000001010011010", 
    54 => "1111010100011100", 55 => "0000010101111110", 56 => "1111001110001011", 
    57 => "1111111110001101", 58 => "0000011010111010", 59 => "1111111100011110", 
    60 => "1111001111110101", 61 => "0000101100000110", 62 => "1111111111100101", 
    63 => "1111011001111101", 64 => "1111101101110111", 65 => "1111011101010000", 
    66 => "1111011101101011", 67 => "1111110100000010", 68 => "0000011011001111", 
    69 => "0000100011100001", 70 => "0000011101101011", 71 => "0000011100000101", 
    72 => "1111010100001010", 73 => "1111001001110111", 74 => "1111111011010010", 
    75 => "0000011000111111", 76 => "0000001011101000", 77 => "1111001000101110", 
    78 => "1111111011011111", 79 => "0000011101011101", 80 => "1111001101010011", 
    81 => "0000001100011110", 82 => "0000001010111011", 83 => "1111100110111010", 
    84 => "0000000100011100", 85 => "1111010001010110", 86 => "0000011111010000", 
    87 => "0000001100011000", 88 => "1110111001101110", 89 => "0000011101001000", 
    90 => "0000010011010010", 91 => "1111111011000001", 92 => "1111101110101000", 
    93 => "0000000111001110", 94 => "1111000001001011", 95 => "1111100101001100", 
    96 => "0000010110001000", 97 => "0000001011110001", 98 => "0000100100000010", 
    99 => "1111110001100000", 100 => "0000010011001001", 101 => "0000001100101100", 
    102 => "1111111001011011", 103 => "0000001010000110", 104 => "1111011001011110", 
    105 => "1111101111100100", 106 => "0000010100000100", 107 => "0000000000001000", 
    108 => "0000001100010001", 109 => "1111110001101101", 110 => "0000010100101111", 
    111 => "0000011000000101", 112 => "1111011011100101", 113 => "1111101011001011", 
    114 => "0000011010110011", 115 => "1110110111110001", 116 => "1111110010100100", 
    117 => "0000011011000111", 118 => "0000011100011110", 119 => "0000001101100010", 
    120 => "1111001000100101", 121 to 122=> "0000010010000110", 123 => "1110111111001000", 
    124 => "1111011101010010", 125 => "1111001000000101", 126 => "0000101100001001", 
    127 => "0000000111100110", 128 => "1111010001111111", 129 => "0000100101110110", 
    130 => "1111101011110101", 131 => "1111110001011011", 132 => "1111111111001001", 
    133 => "0000100000000101", 134 => "0000001000110110", 135 => "0000111010001101", 
    136 => "1111111000000101", 137 => "0000011010101000", 138 => "0000001101100000", 
    139 => "0000011010011101", 140 => "0000001101101110", 141 => "0000000101011000", 
    142 => "1111100010010101", 143 => "0000001001110111", 144 => "0000000101101111", 
    145 => "1111001000101011", 146 => "1111100110010001", 147 => "0000001110111011", 
    148 => "0000111010001111", 149 => "0000001001111100", 150 => "1111110010110010", 
    151 => "0000010101110110", 152 => "1111110001010111", 153 => "0000011111110000", 
    154 => "0000100010111000", 155 => "1111001011100001", 156 => "0000010101010011", 
    157 => "1111111110001111", 158 => "1111000101101011", 159 => "1111101111000100", 
    160 => "1111101000111110", 161 => "0000001000100111", 162 => "0000100101111110", 
    163 => "0000001111111100", 164 => "0000101000001110", 165 => "0000101011110100", 
    166 => "1111000000101010", 167 => "1111101111101110", 168 => "1111111001111110", 
    169 => "0000111010011101", 170 => "1111111010011110", 171 => "0000011101110010", 
    172 => "0000011111101011", 173 => "1111010111000000", 174 => "1111111110101000", 
    175 => "1111100110110010", 176 => "0000100000111110", 177 => "1111110011110100", 
    178 => "1111110010110100", 179 => "0000101011001010", 180 => "0000001111110110", 
    181 => "0000000100111100", 182 => "0000011100011110", 183 => "0000010010000010", 
    184 => "0000001011011011", 185 => "1111110011110110", 186 => "1111110100111100", 
    187 => "1111001000011011", 188 => "1111100000001010", 189 => "0000001010110010", 
    190 => "0000010010011111", 191 => "1110111101010101", 192 => "0000011111101001", 
    193 => "1111001111111110", 194 => "1111110011010101", 195 => "0000010110001001", 
    196 => "1111100000100111", 197 => "0000000010111110", 198 => "0000101000111010", 
    199 => "1111010010110100", 200 => "0000001000000111", 201 => "0000110111010011", 
    202 => "1111111111101010", 203 => "1111111001101111", 204 => "0000011011110100", 
    205 => "1111101101101101", 206 => "1111111010100111", 207 => "0000011000001110", 
    208 => "0000100101110111", 209 => "0000101000011111", 210 => "1111110101110101", 
    211 => "0000111000010111", 212 => "1111100011000001", 213 => "1111110101000011", 
    214 => "1111101001011100", 215 => "0000000101110010", 216 => "0000001111110011", 
    217 => "0000011101000101", 218 => "0000110110101100", 219 => "1111111111010011", 
    220 => "1111101100100000", 221 => "1111110001010000", 222 => "1111110110001000", 
    223 => "1111110110000010", 224 => "1111010101001010", 225 => "0000010101001000", 
    226 => "0000001011000011", 227 => "1111111010111011", 228 => "1111011011101100", 
    229 => "1111101100111011", 230 => "0000101011110100", 231 => "1111110011111111", 
    232 => "0000111110000101", 233 => "1111110010000110", 234 => "1111100101010001", 
    235 => "1111000100000101", 236 => "1111110101111011", 237 => "1111100000010010", 
    238 => "0000010000101101", 239 => "1111100001011101", 240 => "1111111011100101", 
    241 => "0000100100001001", 242 => "1111011110101010", 243 => "1111111100001101", 
    244 => "1111101000100110", 245 => "0000110100000000", 246 => "1111110001110000", 
    247 => "0000101100100010", 248 => "1111100110111000", 249 => "1111101110110101", 
    250 => "0000100011010110", 251 => "0000000001010110", 252 => "1111100011010110", 
    253 => "1110111100110100", 254 => "1111100010100101", 255 => "0000101010110001", 
    256 => "0000011101101101", 257 => "1111111110001001", 258 => "0000000111000100", 
    259 => "0000110111001001", 260 => "0000000010011101", 261 => "1111100111101011", 
    262 => "0000001100100010", 263 => "0000011011010000", 264 => "1111011001011010", 
    265 => "0000100000010101", 266 => "0000010011100001", 267 => "1111101100110001", 
    268 => "0000100000100001", 269 => "0000011011110111", 270 => "1111000001111000", 
    271 => "1111000110001011", 272 => "0000011101111001", 273 => "0000010011011010", 
    274 => "1111111101001000", 275 => "0000000010010010", 276 => "0000000100001001", 
    277 => "0000000100000100", 278 => "0000000111011001", 279 => "0000000101001001", 
    280 => "0000010011011000", 281 => "0000000101011100", 282 => "0000011101010111", 
    283 => "0000010101111000", 284 => "1111110101111101", 285 => "1111111101001111", 
    286 => "0000010010101001", 287 => "1111010000010010", 288 to 18431=> "0000000000000000" );

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

entity dut_w_conv1 is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 18432;
        AddressWidth : INTEGER := 15);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of dut_w_conv1 is
    component dut_w_conv1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    dut_w_conv1_rom_U :  component dut_w_conv1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


