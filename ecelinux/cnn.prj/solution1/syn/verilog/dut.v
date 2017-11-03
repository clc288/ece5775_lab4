// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="dut,hls_ip_2016_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.090000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=70,HLS_SYN_DSP=4,HLS_SYN_FF=922,HLS_SYN_LUT=1177}" *)

module dut (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        strm_in_V_V_dout,
        strm_in_V_V_empty_n,
        strm_in_V_V_read,
        strm_out_V_V_din,
        strm_out_V_V_full_n,
        strm_out_V_V_write
);

parameter    ap_ST_st1_fsm_0 = 17'b1;
parameter    ap_ST_st2_fsm_1 = 17'b10;
parameter    ap_ST_st3_fsm_2 = 17'b100;
parameter    ap_ST_st4_fsm_3 = 17'b1000;
parameter    ap_ST_st5_fsm_4 = 17'b10000;
parameter    ap_ST_st6_fsm_5 = 17'b100000;
parameter    ap_ST_st7_fsm_6 = 17'b1000000;
parameter    ap_ST_st8_fsm_7 = 17'b10000000;
parameter    ap_ST_st9_fsm_8 = 17'b100000000;
parameter    ap_ST_st10_fsm_9 = 17'b1000000000;
parameter    ap_ST_st11_fsm_10 = 17'b10000000000;
parameter    ap_ST_st12_fsm_11 = 17'b100000000000;
parameter    ap_ST_st13_fsm_12 = 17'b1000000000000;
parameter    ap_ST_st14_fsm_13 = 17'b10000000000000;
parameter    ap_ST_st15_fsm_14 = 17'b100000000000000;
parameter    ap_ST_st16_fsm_15 = 17'b1000000000000000;
parameter    ap_ST_st17_fsm_16 = 17'b10000000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_const_lv10_0 = 10'b0000000000;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_E = 32'b1110;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv8_1 = 8'b1;
parameter    ap_const_lv8_20 = 8'b100000;
parameter    ap_const_lv8_40 = 8'b1000000;
parameter    ap_const_lv4_5 = 4'b101;
parameter    ap_const_lv4_3 = 4'b11;
parameter    ap_const_lv6_31 = 6'b110001;
parameter    ap_const_lv6_1 = 6'b1;
parameter    ap_const_lv14_0 = 14'b00000000000000;
parameter    ap_const_lv10_240 = 10'b1001000000;
parameter    ap_const_lv10_1 = 10'b1;
parameter    ap_const_lv16_0 = 16'b0000000000000000;
parameter    ap_const_lv32_17 = 32'b10111;
parameter    ap_const_lv32_1E = 32'b11110;
parameter    ap_const_lv8_F2 = 8'b11110010;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] strm_in_V_V_dout;
input   strm_in_V_V_empty_n;
output   strm_in_V_V_read;
output  [31:0] strm_out_V_V_din;
input   strm_out_V_V_full_n;
output   strm_out_V_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg strm_in_V_V_read;
reg strm_out_V_V_write;

(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_32;
wire   [15:0] w_conv1_q0;
wire   [15:0] b_conv1_q0;
wire   [15:0] w_conv2_q0;
wire   [15:0] b_conv2_q0;
reg    strm_in_V_V_blk_n;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_88;
reg    strm_out_V_V_blk_n;
reg    ap_sig_cseq_ST_st17_fsm_16;
reg    ap_sig_97;
reg   [31:0] tmp_V_2_reg_342;
reg    ap_sig_103;
wire   [48:0] p_Result_s_fu_211_p3;
reg   [48:0] p_Result_s_reg_347;
wire   [5:0] i_3_fu_228_p2;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_117;
wire   [9:0] i_4_fu_265_p2;
reg   [9:0] i_4_reg_363;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_126;
wire   [63:0] tmp_32_i_fu_271_p1;
reg   [63:0] tmp_32_i_reg_368;
wire   [0:0] exitcond_i_fu_259_p2;
wire   [15:0] mem_conv1_V_q0;
reg   [15:0] mem_conv1_V_load_reg_378;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_143;
wire   [0:0] tmp_33_i_fu_276_p2;
reg   [0:0] tmp_33_i_reg_383;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_154;
wire   [31:0] p_Result_1_fu_306_p5;
reg   [31:0] p_Result_1_reg_393;
reg    ap_sig_cseq_ST_st14_fsm_13;
reg    ap_sig_165;
wire   [9:0] i_2_fu_331_p2;
reg   [9:0] i_2_reg_401;
reg    ap_sig_cseq_ST_st16_fsm_15;
reg    ap_sig_175;
wire   [0:0] exitcond_fu_325_p2;
reg   [9:0] mem_conv1_V_address0;
reg    mem_conv1_V_ce0;
reg    mem_conv1_V_we0;
reg   [15:0] mem_conv1_V_d0;
reg   [9:0] mem_conv2_V_address0;
reg    mem_conv2_V_ce0;
wire   [15:0] mem_conv2_V_q0;
reg   [9:0] output_V_assign_address0;
reg    output_V_assign_ce0;
reg    output_V_assign_we0;
wire   [31:0] output_V_assign_d0;
wire   [31:0] output_V_assign_q0;
wire    grp_dut_perform_conv_fu_183_ap_start;
wire    grp_dut_perform_conv_fu_183_ap_done;
wire    grp_dut_perform_conv_fu_183_ap_idle;
wire    grp_dut_perform_conv_fu_183_ap_ready;
wire   [9:0] grp_dut_perform_conv_fu_183_input_V_address0;
wire    grp_dut_perform_conv_fu_183_input_V_ce0;
reg   [15:0] grp_dut_perform_conv_fu_183_input_V_q0;
wire   [9:0] grp_dut_perform_conv_fu_183_output_V_address0;
wire    grp_dut_perform_conv_fu_183_output_V_ce0;
wire    grp_dut_perform_conv_fu_183_output_V_we0;
wire   [15:0] grp_dut_perform_conv_fu_183_output_V_d0;
reg   [15:0] grp_dut_perform_conv_fu_183_output_V_q0;
wire   [14:0] grp_dut_perform_conv_fu_183_weight_V_address0;
wire    grp_dut_perform_conv_fu_183_weight_V_ce0;
reg   [15:0] grp_dut_perform_conv_fu_183_weight_V_q0;
wire   [5:0] grp_dut_perform_conv_fu_183_bias_V_address0;
wire    grp_dut_perform_conv_fu_183_bias_V_ce0;
reg   [15:0] grp_dut_perform_conv_fu_183_bias_V_q0;
reg   [7:0] grp_dut_perform_conv_fu_183_M;
reg   [7:0] grp_dut_perform_conv_fu_183_N;
reg   [3:0] grp_dut_perform_conv_fu_183_O;
reg   [5:0] bvh_d_index_reg_150;
wire   [0:0] exitcond5_i_fu_222_p2;
reg   [9:0] i2_i_reg_161;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_247;
reg    ap_sig_cseq_ST_st15_fsm_14;
reg    ap_sig_257;
reg   [9:0] i_reg_172;
reg    ap_reg_grp_dut_perform_conv_fu_183_ap_start;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_275;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_283;
wire   [63:0] tmp_i_fu_234_p1;
wire   [63:0] tmp_fu_337_p1;
wire   [15:0] tmp_31_i_cast_fu_254_p1;
wire  signed [31:0] grp_fu_204_p0;
wire   [16:0] tmp_16_fu_207_p1;
wire   [31:0] index_assign_i_cast3_fu_218_p1;
wire   [0:0] tmp_17_fu_239_p3;
wire   [14:0] tmp_i_22_fu_246_p3;
wire   [31:0] grp_fu_204_p1;
wire   [31:0] res_V_1_fu_286_p1;
wire   [7:0] exp_V_fu_290_p4;
wire   [7:0] exp_V_2_fu_300_p2;
reg   [16:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 17'b1;
#0 ap_reg_grp_dut_perform_conv_fu_183_ap_start = 1'b0;
end

dut_w_conv1 #(
    .DataWidth( 16 ),
    .AddressRange( 18432 ),
    .AddressWidth( 15 ))
w_conv1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_dut_perform_conv_fu_183_weight_V_address0),
    .ce0(grp_dut_perform_conv_fu_183_weight_V_ce0),
    .q0(w_conv1_q0)
);

dut_b_conv1 #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
b_conv1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_dut_perform_conv_fu_183_bias_V_address0),
    .ce0(grp_dut_perform_conv_fu_183_bias_V_ce0),
    .q0(b_conv1_q0)
);

dut_w_conv2 #(
    .DataWidth( 16 ),
    .AddressRange( 18432 ),
    .AddressWidth( 15 ))
w_conv2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_dut_perform_conv_fu_183_weight_V_address0),
    .ce0(grp_dut_perform_conv_fu_183_weight_V_ce0),
    .q0(w_conv2_q0)
);

dut_b_conv2 #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
b_conv2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_dut_perform_conv_fu_183_bias_V_address0),
    .ce0(grp_dut_perform_conv_fu_183_bias_V_ce0),
    .q0(b_conv2_q0)
);

dut_mem_conv1_V #(
    .DataWidth( 16 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
mem_conv1_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(mem_conv1_V_address0),
    .ce0(mem_conv1_V_ce0),
    .we0(mem_conv1_V_we0),
    .d0(mem_conv1_V_d0),
    .q0(mem_conv1_V_q0)
);

dut_mem_conv1_V #(
    .DataWidth( 16 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
mem_conv2_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(mem_conv2_V_address0),
    .ce0(mem_conv2_V_ce0),
    .we0(grp_dut_perform_conv_fu_183_output_V_we0),
    .d0(grp_dut_perform_conv_fu_183_output_V_d0),
    .q0(mem_conv2_V_q0)
);

dut_output_V_assign #(
    .DataWidth( 32 ),
    .AddressRange( 576 ),
    .AddressWidth( 10 ))
output_V_assign_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(output_V_assign_address0),
    .ce0(output_V_assign_ce0),
    .we0(output_V_assign_we0),
    .d0(output_V_assign_d0),
    .q0(output_V_assign_q0)
);

dut_perform_conv grp_dut_perform_conv_fu_183(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dut_perform_conv_fu_183_ap_start),
    .ap_done(grp_dut_perform_conv_fu_183_ap_done),
    .ap_idle(grp_dut_perform_conv_fu_183_ap_idle),
    .ap_ready(grp_dut_perform_conv_fu_183_ap_ready),
    .input_V_address0(grp_dut_perform_conv_fu_183_input_V_address0),
    .input_V_ce0(grp_dut_perform_conv_fu_183_input_V_ce0),
    .input_V_q0(grp_dut_perform_conv_fu_183_input_V_q0),
    .output_V_address0(grp_dut_perform_conv_fu_183_output_V_address0),
    .output_V_ce0(grp_dut_perform_conv_fu_183_output_V_ce0),
    .output_V_we0(grp_dut_perform_conv_fu_183_output_V_we0),
    .output_V_d0(grp_dut_perform_conv_fu_183_output_V_d0),
    .output_V_q0(grp_dut_perform_conv_fu_183_output_V_q0),
    .weight_V_address0(grp_dut_perform_conv_fu_183_weight_V_address0),
    .weight_V_ce0(grp_dut_perform_conv_fu_183_weight_V_ce0),
    .weight_V_q0(grp_dut_perform_conv_fu_183_weight_V_q0),
    .bias_V_address0(grp_dut_perform_conv_fu_183_bias_V_address0),
    .bias_V_ce0(grp_dut_perform_conv_fu_183_bias_V_ce0),
    .bias_V_q0(grp_dut_perform_conv_fu_183_bias_V_q0),
    .M(grp_dut_perform_conv_fu_183_M),
    .N(grp_dut_perform_conv_fu_183_N),
    .O(grp_dut_perform_conv_fu_183_O)
);

dut_sitofp_32s_32_6 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
dut_sitofp_32s_32_6_U9(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_204_p0),
    .ce(1'b1),
    .dout(grp_fu_204_p1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_dut_perform_conv_fu_183_ap_start <= 1'b0;
    end else begin
        if ((((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == exitcond5_i_fu_222_p2)) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4))) begin
            ap_reg_grp_dut_perform_conv_fu_183_ap_start <= 1'b1;
        end else if ((1'b1 == grp_dut_perform_conv_fu_183_ap_ready)) begin
            ap_reg_grp_dut_perform_conv_fu_183_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(strm_in_V_V_empty_n == 1'b0))) begin
        bvh_d_index_reg_150 <= ap_const_lv6_0;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == exitcond5_i_fu_222_p2))) begin
        bvh_d_index_reg_150 <= i_3_fu_228_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st15_fsm_14)) begin
        i2_i_reg_161 <= i_4_reg_363;
    end else if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~(1'b0 == grp_dut_perform_conv_fu_183_ap_done))) begin
        i2_i_reg_161 <= ap_const_lv10_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ~(exitcond_i_fu_259_p2 == 1'b0))) begin
        i_reg_172 <= ap_const_lv10_0;
    end else if (((1'b1 == ap_sig_cseq_ST_st17_fsm_16) & ~(strm_out_V_V_full_n == 1'b0))) begin
        i_reg_172 <= i_2_reg_401;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st16_fsm_15)) begin
        i_2_reg_401 <= i_2_fu_331_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        i_4_reg_363 <= i_4_fu_265_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        mem_conv1_V_load_reg_378 <= mem_conv1_V_q0;
        tmp_33_i_reg_383 <= tmp_33_i_fu_276_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == tmp_33_i_reg_383) & (1'b1 == ap_sig_cseq_ST_st14_fsm_13))) begin
        p_Result_1_reg_393 <= p_Result_1_fu_306_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(strm_in_V_V_empty_n == 1'b0))) begin
        p_Result_s_reg_347 <= p_Result_s_fu_211_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & (exitcond_i_fu_259_p2 == 1'b0))) begin
        tmp_32_i_reg_368[9 : 0] <= tmp_32_i_fu_271_p1[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_103)) begin
        tmp_V_2_reg_342 <= strm_in_V_V_dout;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st16_fsm_15) & ~(1'b0 == exitcond_fu_325_p2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st16_fsm_15) & ~(1'b0 == exitcond_fu_325_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_165) begin
        ap_sig_cseq_ST_st14_fsm_13 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st14_fsm_13 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_257) begin
        ap_sig_cseq_ST_st15_fsm_14 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st15_fsm_14 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_175) begin
        ap_sig_cseq_ST_st16_fsm_15 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st16_fsm_15 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_97) begin
        ap_sig_cseq_ST_st17_fsm_16 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st17_fsm_16 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_32) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_88) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_117) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_283) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_275) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_247) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_126) begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_143) begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_154) begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        grp_dut_perform_conv_fu_183_M = ap_const_lv8_20;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        grp_dut_perform_conv_fu_183_M = ap_const_lv8_1;
    end else begin
        grp_dut_perform_conv_fu_183_M = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        grp_dut_perform_conv_fu_183_N = ap_const_lv8_40;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        grp_dut_perform_conv_fu_183_N = ap_const_lv8_20;
    end else begin
        grp_dut_perform_conv_fu_183_N = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        grp_dut_perform_conv_fu_183_O = ap_const_lv4_3;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        grp_dut_perform_conv_fu_183_O = ap_const_lv4_5;
    end else begin
        grp_dut_perform_conv_fu_183_O = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        grp_dut_perform_conv_fu_183_bias_V_q0 = b_conv2_q0;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        grp_dut_perform_conv_fu_183_bias_V_q0 = b_conv1_q0;
    end else begin
        grp_dut_perform_conv_fu_183_bias_V_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        grp_dut_perform_conv_fu_183_input_V_q0 = mem_conv2_V_q0;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        grp_dut_perform_conv_fu_183_input_V_q0 = mem_conv1_V_q0;
    end else begin
        grp_dut_perform_conv_fu_183_input_V_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        grp_dut_perform_conv_fu_183_output_V_q0 = mem_conv1_V_q0;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        grp_dut_perform_conv_fu_183_output_V_q0 = mem_conv2_V_q0;
    end else begin
        grp_dut_perform_conv_fu_183_output_V_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        grp_dut_perform_conv_fu_183_weight_V_q0 = w_conv2_q0;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        grp_dut_perform_conv_fu_183_weight_V_q0 = w_conv1_q0;
    end else begin
        grp_dut_perform_conv_fu_183_weight_V_q0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == exitcond5_i_fu_222_p2))) begin
        mem_conv1_V_address0 = tmp_i_fu_234_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        mem_conv1_V_address0 = tmp_32_i_fu_271_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        mem_conv1_V_address0 = grp_dut_perform_conv_fu_183_output_V_address0;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        mem_conv1_V_address0 = grp_dut_perform_conv_fu_183_input_V_address0;
    end else begin
        mem_conv1_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st7_fsm_6) | ((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == exitcond5_i_fu_222_p2)))) begin
        mem_conv1_V_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        mem_conv1_V_ce0 = grp_dut_perform_conv_fu_183_output_V_ce0;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        mem_conv1_V_ce0 = grp_dut_perform_conv_fu_183_input_V_ce0;
    end else begin
        mem_conv1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == exitcond5_i_fu_222_p2))) begin
        mem_conv1_V_d0 = tmp_31_i_cast_fu_254_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        mem_conv1_V_d0 = grp_dut_perform_conv_fu_183_output_V_d0;
    end else begin
        mem_conv1_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == exitcond5_i_fu_222_p2))) begin
        mem_conv1_V_we0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        mem_conv1_V_we0 = grp_dut_perform_conv_fu_183_output_V_we0;
    end else begin
        mem_conv1_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        mem_conv2_V_address0 = grp_dut_perform_conv_fu_183_output_V_address0;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        mem_conv2_V_address0 = grp_dut_perform_conv_fu_183_input_V_address0;
    end else begin
        mem_conv2_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        mem_conv2_V_ce0 = grp_dut_perform_conv_fu_183_output_V_ce0;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        mem_conv2_V_ce0 = grp_dut_perform_conv_fu_183_input_V_ce0;
    end else begin
        mem_conv2_V_ce0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st15_fsm_14)) begin
        output_V_assign_address0 = tmp_32_i_reg_368;
    end else if ((1'b1 == ap_sig_cseq_ST_st16_fsm_15)) begin
        output_V_assign_address0 = tmp_fu_337_p1;
    end else begin
        output_V_assign_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st16_fsm_15) | (1'b1 == ap_sig_cseq_ST_st15_fsm_14))) begin
        output_V_assign_ce0 = 1'b1;
    end else begin
        output_V_assign_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st15_fsm_14)) begin
        output_V_assign_we0 = 1'b1;
    end else begin
        output_V_assign_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0)) | (1'b1 == ap_sig_cseq_ST_st2_fsm_1))) begin
        strm_in_V_V_blk_n = strm_in_V_V_empty_n;
    end else begin
        strm_in_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_103) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(strm_in_V_V_empty_n == 1'b0)))) begin
        strm_in_V_V_read = 1'b1;
    end else begin
        strm_in_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st17_fsm_16)) begin
        strm_out_V_V_blk_n = strm_out_V_V_full_n;
    end else begin
        strm_out_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st17_fsm_16) & ~(strm_out_V_V_full_n == 1'b0))) begin
        strm_out_V_V_write = 1'b1;
    end else begin
        strm_out_V_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~ap_sig_103) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (~(strm_in_V_V_empty_n == 1'b0)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if ((1'b0 == exitcond5_i_fu_222_p2)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st4_fsm_3 : begin
            if (~(1'b0 == grp_dut_perform_conv_fu_183_ap_done)) begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st5_fsm_4 : begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : begin
            if (~(1'b0 == grp_dut_perform_conv_fu_183_ap_done)) begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end else begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end
        end
        ap_ST_st7_fsm_6 : begin
            if (~(exitcond_i_fu_259_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st16_fsm_15;
            end else begin
                ap_NS_fsm = ap_ST_st8_fsm_7;
            end
        end
        ap_ST_st8_fsm_7 : begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        ap_ST_st9_fsm_8 : begin
            ap_NS_fsm = ap_ST_st10_fsm_9;
        end
        ap_ST_st10_fsm_9 : begin
            ap_NS_fsm = ap_ST_st11_fsm_10;
        end
        ap_ST_st11_fsm_10 : begin
            ap_NS_fsm = ap_ST_st12_fsm_11;
        end
        ap_ST_st12_fsm_11 : begin
            ap_NS_fsm = ap_ST_st13_fsm_12;
        end
        ap_ST_st13_fsm_12 : begin
            ap_NS_fsm = ap_ST_st14_fsm_13;
        end
        ap_ST_st14_fsm_13 : begin
            ap_NS_fsm = ap_ST_st15_fsm_14;
        end
        ap_ST_st15_fsm_14 : begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
        end
        ap_ST_st16_fsm_15 : begin
            if (~(1'b0 == exitcond_fu_325_p2)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st17_fsm_16;
            end
        end
        ap_ST_st17_fsm_16 : begin
            if (~(strm_out_V_V_full_n == 1'b0)) begin
                ap_NS_fsm = ap_ST_st16_fsm_15;
            end else begin
                ap_NS_fsm = ap_ST_st17_fsm_16;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_103 = ((ap_start == 1'b0) | (strm_in_V_V_empty_n == 1'b0));
end

always @ (*) begin
    ap_sig_117 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_126 = (1'b1 == ap_CS_fsm[ap_const_lv32_6]);
end

always @ (*) begin
    ap_sig_143 = (1'b1 == ap_CS_fsm[ap_const_lv32_7]);
end

always @ (*) begin
    ap_sig_154 = (1'b1 == ap_CS_fsm[ap_const_lv32_8]);
end

always @ (*) begin
    ap_sig_165 = (1'b1 == ap_CS_fsm[ap_const_lv32_D]);
end

always @ (*) begin
    ap_sig_175 = (1'b1 == ap_CS_fsm[ap_const_lv32_F]);
end

always @ (*) begin
    ap_sig_247 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_257 = (1'b1 == ap_CS_fsm[ap_const_lv32_E]);
end

always @ (*) begin
    ap_sig_275 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_283 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_32 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_88 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_97 = (1'b1 == ap_CS_fsm[ap_const_lv32_10]);
end

assign exitcond5_i_fu_222_p2 = ((bvh_d_index_reg_150 == ap_const_lv6_31) ? 1'b1 : 1'b0);

assign exitcond_fu_325_p2 = ((i_reg_172 == ap_const_lv10_240) ? 1'b1 : 1'b0);

assign exitcond_i_fu_259_p2 = ((i2_i_reg_161 == ap_const_lv10_240) ? 1'b1 : 1'b0);

assign exp_V_2_fu_300_p2 = ($signed(exp_V_fu_290_p4) + $signed(ap_const_lv8_F2));

assign exp_V_fu_290_p4 = {{res_V_1_fu_286_p1[ap_const_lv32_1E : ap_const_lv32_17]}};

assign grp_dut_perform_conv_fu_183_ap_start = ap_reg_grp_dut_perform_conv_fu_183_ap_start;

assign grp_fu_204_p0 = $signed(mem_conv1_V_load_reg_378);

assign i_2_fu_331_p2 = (i_reg_172 + ap_const_lv10_1);

assign i_3_fu_228_p2 = (bvh_d_index_reg_150 + ap_const_lv6_1);

assign i_4_fu_265_p2 = (i2_i_reg_161 + ap_const_lv10_1);

assign index_assign_i_cast3_fu_218_p1 = bvh_d_index_reg_150;

assign output_V_assign_d0 = ((tmp_33_i_reg_383[0:0] === 1'b1) ? ap_const_lv32_0 : p_Result_1_reg_393);

assign p_Result_1_fu_306_p5 = {{res_V_1_fu_286_p1[32'd31 : 32'd31]}, {exp_V_2_fu_300_p2}, {res_V_1_fu_286_p1[32'd22 : 32'd0]}};

assign p_Result_s_fu_211_p3 = {{tmp_16_fu_207_p1}, {tmp_V_2_reg_342}};

assign res_V_1_fu_286_p1 = grp_fu_204_p1;

assign strm_out_V_V_din = output_V_assign_q0;

assign tmp_16_fu_207_p1 = strm_in_V_V_dout[16:0];

assign tmp_17_fu_239_p3 = p_Result_s_reg_347[index_assign_i_cast3_fu_218_p1];

assign tmp_31_i_cast_fu_254_p1 = tmp_i_22_fu_246_p3;

assign tmp_32_i_fu_271_p1 = i2_i_reg_161;

assign tmp_33_i_fu_276_p2 = ((mem_conv1_V_q0 == ap_const_lv16_0) ? 1'b1 : 1'b0);

assign tmp_fu_337_p1 = i_reg_172;

assign tmp_i_22_fu_246_p3 = {{tmp_17_fu_239_p3}, {ap_const_lv14_0}};

assign tmp_i_fu_234_p1 = bvh_d_index_reg_150;

always @ (posedge ap_clk) begin
    tmp_32_i_reg_368[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end

endmodule //dut
