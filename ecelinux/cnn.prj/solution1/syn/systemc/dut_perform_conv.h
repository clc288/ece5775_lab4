// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dut_perform_conv_HH_
#define _dut_perform_conv_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dut_fadd_32ns_32ns_32_5_full_dsp.h"
#include "dut_fmul_32ns_32ns_32_4_max_dsp.h"
#include "dut_fcmp_32ns_32ns_1_1.h"

namespace ap_rtl {

struct dut_perform_conv : public sc_module {
    // Port declarations 23
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<32> > input_r_q0;
    sc_out< sc_lv<10> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<32> > output_r_d0;
    sc_in< sc_lv<32> > output_r_q0;
    sc_out< sc_lv<15> > weight_address0;
    sc_out< sc_logic > weight_ce0;
    sc_in< sc_lv<32> > weight_q0;
    sc_out< sc_lv<6> > bias_address0;
    sc_out< sc_logic > bias_ce0;
    sc_in< sc_lv<32> > bias_q0;
    sc_in< sc_lv<8> > M;
    sc_in< sc_lv<8> > N;
    sc_in< sc_lv<4> > O;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;
    sc_signal< sc_lv<5> > ap_var_for_const2;


    // Module declarations
    dut_perform_conv(sc_module_name name);
    SC_HAS_PROCESS(dut_perform_conv);

    ~dut_perform_conv();

    sc_trace_file* mVcdFile;

    dut_fadd_32ns_32ns_32_5_full_dsp<1,5,32,32,32>* dut_fadd_32ns_32ns_32_5_full_dsp_U1;
    dut_fmul_32ns_32ns_32_4_max_dsp<1,4,32,32,32>* dut_fmul_32ns_32ns_32_4_max_dsp_U2;
    dut_fcmp_32ns_32ns_1_1<1,1,32,32,1>* dut_fcmp_32ns_32ns_1_1_U3;
    sc_signal< sc_lv<31> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_48;
    sc_signal< sc_lv<32> > reg_342;
    sc_signal< sc_logic > ap_sig_cseq_ST_st14_fsm_13;
    sc_signal< bool > ap_sig_88;
    sc_signal< sc_logic > ap_sig_cseq_ST_st24_fsm_23;
    sc_signal< bool > ap_sig_95;
    sc_signal< sc_lv<32> > grp_fu_327_p2;
    sc_signal< sc_lv<32> > reg_347;
    sc_signal< sc_logic > ap_sig_cseq_ST_st19_fsm_18;
    sc_signal< bool > ap_sig_105;
    sc_signal< sc_logic > ap_sig_cseq_ST_st29_fsm_28;
    sc_signal< bool > ap_sig_112;
    sc_signal< sc_lv<11> > I_cast24_cast_fu_363_p1;
    sc_signal< sc_lv<11> > I_cast24_cast_reg_821;
    sc_signal< sc_lv<8> > I_cast_cast_fu_367_p1;
    sc_signal< sc_lv<8> > I_cast_cast_reg_826;
    sc_signal< sc_lv<8> > ofmap_size_fu_375_p2;
    sc_signal< sc_lv<8> > ofmap_size_reg_831;
    sc_signal< sc_lv<10> > i_1_fu_387_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_137;
    sc_signal< sc_lv<11> > tmp_4_fu_398_p1;
    sc_signal< sc_lv<11> > tmp_4_reg_844;
    sc_signal< sc_lv<1> > exitcond4_fu_381_p2;
    sc_signal< sc_lv<11> > tmp_5_fu_401_p1;
    sc_signal< sc_lv<11> > tmp_5_reg_849;
    sc_signal< sc_lv<7> > tmp_12_fu_404_p1;
    sc_signal< sc_lv<7> > tmp_12_reg_855;
    sc_signal< sc_lv<7> > O_cast4_fu_407_p1;
    sc_signal< sc_lv<7> > O_cast4_reg_860;
    sc_signal< sc_lv<11> > next_mul8_fu_410_p2;
    sc_signal< sc_lv<11> > next_mul8_reg_866;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_159;
    sc_signal< sc_lv<11> > next_mul3_fu_415_p2;
    sc_signal< sc_lv<11> > next_mul3_reg_871;
    sc_signal< sc_lv<7> > n_1_fu_429_p2;
    sc_signal< sc_lv<7> > n_1_reg_879;
    sc_signal< sc_lv<6> > m_1_fu_452_p2;
    sc_signal< sc_lv<6> > m_1_reg_887;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_172;
    sc_signal< sc_lv<8> > tmp_8_fu_458_p2;
    sc_signal< sc_lv<8> > tmp_8_reg_892;
    sc_signal< sc_lv<1> > tmp_6_fu_447_p2;
    sc_signal< sc_lv<16> > tmp5_cast_fu_491_p1;
    sc_signal< sc_lv<16> > tmp5_cast_reg_897;
    sc_signal< sc_lv<11> > x_cast1_fu_495_p1;
    sc_signal< sc_lv<11> > x_cast1_reg_902;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_189;
    sc_signal< sc_lv<3> > x_1_fu_508_p2;
    sc_signal< sc_lv<3> > x_1_reg_911;
    sc_signal< sc_lv<7> > next_mul_fu_514_p2;
    sc_signal< sc_lv<7> > next_mul_reg_916;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_200;
    sc_signal< sc_lv<8> > y_cast1_fu_519_p1;
    sc_signal< sc_lv<8> > y_cast1_reg_921;
    sc_signal< sc_lv<3> > y_2_fu_532_p2;
    sc_signal< sc_lv<3> > y_2_reg_929;
    sc_signal< sc_lv<10> > output_addr_2_reg_934;
    sc_signal< sc_lv<1> > exitcond3_fu_527_p2;
    sc_signal< sc_lv<5> > c_cast_fu_558_p1;
    sc_signal< sc_lv<5> > c_cast_reg_939;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_218;
    sc_signal< sc_lv<11> > c_cast1_fu_562_p1;
    sc_signal< sc_lv<11> > c_cast1_reg_944;
    sc_signal< sc_lv<2> > c_1_fu_572_p2;
    sc_signal< sc_lv<2> > c_1_reg_952;
    sc_signal< sc_lv<2> > r_1_fu_592_p2;
    sc_signal< sc_lv<2> > r_1_reg_960;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_231;
    sc_signal< sc_lv<8> > tmp_fu_603_p2;
    sc_signal< sc_lv<8> > tmp_reg_965;
    sc_signal< sc_lv<1> > exitcond1_fu_586_p2;
    sc_signal< sc_lv<16> > w_index_fu_635_p2;
    sc_signal< sc_lv<16> > w_index_reg_970;
    sc_signal< sc_lv<11> > tmp1_fu_643_p2;
    sc_signal< sc_lv<11> > tmp1_reg_975;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_247;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_256;
    sc_signal< sc_logic > ap_sig_cseq_ST_st11_fsm_10;
    sc_signal< bool > ap_sig_266;
    sc_signal< sc_lv<32> > grp_fu_331_p2;
    sc_signal< sc_lv<32> > tmp_23_reg_1000;
    sc_signal< sc_lv<11> > next_mul1_fu_666_p2;
    sc_signal< sc_lv<11> > next_mul1_reg_1005;
    sc_signal< sc_logic > ap_sig_cseq_ST_st21_fsm_20;
    sc_signal< bool > ap_sig_278;
    sc_signal< sc_lv<7> > n_2_fu_680_p2;
    sc_signal< sc_lv<7> > n_2_reg_1013;
    sc_signal< sc_lv<6> > bias_addr_reg_1018;
    sc_signal< sc_lv<1> > tmp_7_fu_675_p2;
    sc_signal< sc_lv<11> > x2_cast9_fu_691_p1;
    sc_signal< sc_lv<11> > x2_cast9_reg_1023;
    sc_signal< sc_logic > ap_sig_cseq_ST_st22_fsm_21;
    sc_signal< bool > ap_sig_295;
    sc_signal< sc_lv<3> > x_2_fu_704_p2;
    sc_signal< sc_lv<3> > x_2_reg_1031;
    sc_signal< sc_lv<3> > y_1_fu_719_p2;
    sc_signal< sc_lv<3> > y_1_reg_1039;
    sc_signal< sc_logic > ap_sig_cseq_ST_st23_fsm_22;
    sc_signal< bool > ap_sig_306;
    sc_signal< sc_lv<7> > next_mul2_fu_725_p2;
    sc_signal< sc_lv<7> > next_mul2_reg_1044;
    sc_signal< sc_lv<1> > exitcond_fu_714_p2;
    sc_signal< sc_lv<10> > output_addr_1_reg_1049;
    sc_signal< sc_lv<32> > bias_load_reg_1054;
    sc_signal< sc_lv<32> > biased_1_fu_792_p3;
    sc_signal< sc_lv<32> > biased_1_reg_1059;
    sc_signal< sc_logic > ap_sig_cseq_ST_st30_fsm_29;
    sc_signal< bool > ap_sig_323;
    sc_signal< sc_lv<10> > i_reg_159;
    sc_signal< sc_lv<7> > n_reg_170;
    sc_signal< sc_lv<11> > phi_mul2_reg_181;
    sc_signal< sc_lv<11> > phi_mul7_reg_193;
    sc_signal< sc_lv<6> > m_reg_205;
    sc_signal< sc_lv<1> > tmp_3_fu_424_p2;
    sc_signal< sc_lv<1> > tmp_10_fu_503_p2;
    sc_signal< sc_lv<3> > x_reg_216;
    sc_signal< sc_lv<3> > y_reg_227;
    sc_signal< sc_lv<1> > exitcond2_fu_566_p2;
    sc_signal< sc_lv<7> > phi_mul_reg_238;
    sc_signal< sc_lv<2> > c_reg_249;
    sc_signal< sc_lv<2> > r_reg_260;
    sc_signal< sc_logic > ap_sig_cseq_ST_st20_fsm_19;
    sc_signal< bool > ap_sig_375;
    sc_signal< sc_lv<7> > n1_reg_271;
    sc_signal< sc_lv<1> > tmp_11_fu_699_p2;
    sc_signal< sc_lv<11> > phi_mul1_reg_282;
    sc_signal< sc_lv<3> > x2_reg_294;
    sc_signal< sc_lv<3> > y3_reg_305;
    sc_signal< sc_logic > ap_sig_cseq_ST_st31_fsm_30;
    sc_signal< bool > ap_sig_397;
    sc_signal< sc_lv<7> > phi_mul9_reg_316;
    sc_signal< sc_lv<64> > tmp_1_fu_393_p1;
    sc_signal< sc_lv<64> > tmp_13_fu_553_p1;
    sc_signal< sc_lv<64> > tmp_21_fu_657_p1;
    sc_signal< sc_lv<64> > tmp_22_fu_662_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_686_p1;
    sc_signal< sc_lv<64> > tmp_14_fu_745_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st13_fsm_12;
    sc_signal< bool > ap_sig_415;
    sc_signal< sc_lv<32> > grp_fu_327_p1;
    sc_signal< sc_logic > ap_sig_cseq_ST_st15_fsm_14;
    sc_signal< bool > ap_sig_431;
    sc_signal< sc_logic > ap_sig_cseq_ST_st25_fsm_24;
    sc_signal< bool > ap_sig_438;
    sc_signal< sc_lv<3> > tmp_2_fu_353_p1;
    sc_signal< sc_lv<3> > I_fu_357_p2;
    sc_signal< sc_lv<4> > ofmap_size_fu_375_p0;
    sc_signal< sc_lv<8> > O_cast2_fu_371_p1;
    sc_signal< sc_lv<4> > ofmap_size_fu_375_p1;
    sc_signal< sc_lv<8> > n_cast_fu_420_p1;
    sc_signal< sc_lv<7> > m_cast_fu_443_p1;
    sc_signal< sc_lv<6> > tmp_8_fu_458_p0;
    sc_signal< sc_lv<3> > tmp_8_fu_458_p1;
    sc_signal< sc_lv<11> > m_cast1_fu_435_p1;
    sc_signal< sc_lv<11> > tmp_9_fu_463_p2;
    sc_signal< sc_lv<14> > p_shl_fu_473_p3;
    sc_signal< sc_lv<15> > tmp_9_cast1_fu_469_p1;
    sc_signal< sc_lv<15> > p_shl_cast_fu_481_p1;
    sc_signal< sc_lv<15> > tmp5_fu_485_p2;
    sc_signal< sc_lv<4> > x_cast_fu_499_p1;
    sc_signal< sc_lv<4> > y_cast_fu_523_p1;
    sc_signal< sc_lv<11> > tmp_13_cast_fu_538_p1;
    sc_signal< sc_lv<11> > tmp2_fu_542_p2;
    sc_signal< sc_lv<11> > o_index_fu_548_p2;
    sc_signal< sc_lv<8> > r_cast_fu_578_p1;
    sc_signal< sc_lv<8> > tmp3_fu_598_p2;
    sc_signal< sc_lv<4> > p_shl1_fu_608_p3;
    sc_signal< sc_lv<5> > p_shl1_cast_fu_616_p1;
    sc_signal< sc_lv<5> > r_cast1_fu_582_p1;
    sc_signal< sc_lv<5> > tmp_18_fu_620_p2;
    sc_signal< sc_lv<5> > tmp6_fu_626_p2;
    sc_signal< sc_lv<16> > tmp6_cast_fu_631_p1;
    sc_signal< sc_lv<3> > tmp1_fu_643_p0;
    sc_signal< sc_lv<8> > tmp1_fu_643_p1;
    sc_signal< sc_lv<11> > tmp4_fu_648_p2;
    sc_signal< sc_lv<11> > i_index_fu_652_p2;
    sc_signal< sc_lv<8> > n1_cast_fu_671_p1;
    sc_signal< sc_lv<4> > x2_cast_fu_695_p1;
    sc_signal< sc_lv<4> > y3_cast_fu_710_p1;
    sc_signal< sc_lv<11> > tmp_16_cast_fu_730_p1;
    sc_signal< sc_lv<11> > tmp7_fu_734_p2;
    sc_signal< sc_lv<11> > index_fu_740_p2;
    sc_signal< sc_lv<32> > biased_to_int_fu_750_p1;
    sc_signal< sc_lv<8> > tmp_15_fu_754_p4;
    sc_signal< sc_lv<23> > tmp_16_fu_764_p1;
    sc_signal< sc_lv<1> > notrhs_fu_774_p2;
    sc_signal< sc_lv<1> > notlhs_fu_768_p2;
    sc_signal< sc_lv<1> > tmp_17_fu_780_p2;
    sc_signal< sc_lv<1> > tmp_19_fu_337_p2;
    sc_signal< sc_lv<1> > tmp_20_fu_786_p2;
    sc_signal< sc_lv<31> > ap_NS_fsm;
    sc_signal< sc_lv<11> > tmp1_fu_643_p10;
    sc_signal< sc_lv<8> > tmp_8_fu_458_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<31> ap_ST_st1_fsm_0;
    static const sc_lv<31> ap_ST_st2_fsm_1;
    static const sc_lv<31> ap_ST_st3_fsm_2;
    static const sc_lv<31> ap_ST_st4_fsm_3;
    static const sc_lv<31> ap_ST_st5_fsm_4;
    static const sc_lv<31> ap_ST_st6_fsm_5;
    static const sc_lv<31> ap_ST_st7_fsm_6;
    static const sc_lv<31> ap_ST_st8_fsm_7;
    static const sc_lv<31> ap_ST_st9_fsm_8;
    static const sc_lv<31> ap_ST_st10_fsm_9;
    static const sc_lv<31> ap_ST_st11_fsm_10;
    static const sc_lv<31> ap_ST_st12_fsm_11;
    static const sc_lv<31> ap_ST_st13_fsm_12;
    static const sc_lv<31> ap_ST_st14_fsm_13;
    static const sc_lv<31> ap_ST_st15_fsm_14;
    static const sc_lv<31> ap_ST_st16_fsm_15;
    static const sc_lv<31> ap_ST_st17_fsm_16;
    static const sc_lv<31> ap_ST_st18_fsm_17;
    static const sc_lv<31> ap_ST_st19_fsm_18;
    static const sc_lv<31> ap_ST_st20_fsm_19;
    static const sc_lv<31> ap_ST_st21_fsm_20;
    static const sc_lv<31> ap_ST_st22_fsm_21;
    static const sc_lv<31> ap_ST_st23_fsm_22;
    static const sc_lv<31> ap_ST_st24_fsm_23;
    static const sc_lv<31> ap_ST_st25_fsm_24;
    static const sc_lv<31> ap_ST_st26_fsm_25;
    static const sc_lv<31> ap_ST_st27_fsm_26;
    static const sc_lv<31> ap_ST_st28_fsm_27;
    static const sc_lv<31> ap_ST_st29_fsm_28;
    static const sc_lv<31> ap_ST_st30_fsm_29;
    static const sc_lv<31> ap_ST_st31_fsm_30;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<10> ap_const_lv10_320;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<5> ap_const_lv5_2;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_clk_no_reset_();
    void thread_I_cast24_cast_fu_363_p1();
    void thread_I_cast_cast_fu_367_p1();
    void thread_I_fu_357_p2();
    void thread_O_cast2_fu_371_p1();
    void thread_O_cast4_fu_407_p1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_105();
    void thread_ap_sig_112();
    void thread_ap_sig_137();
    void thread_ap_sig_159();
    void thread_ap_sig_172();
    void thread_ap_sig_189();
    void thread_ap_sig_200();
    void thread_ap_sig_218();
    void thread_ap_sig_231();
    void thread_ap_sig_247();
    void thread_ap_sig_256();
    void thread_ap_sig_266();
    void thread_ap_sig_278();
    void thread_ap_sig_295();
    void thread_ap_sig_306();
    void thread_ap_sig_323();
    void thread_ap_sig_375();
    void thread_ap_sig_397();
    void thread_ap_sig_415();
    void thread_ap_sig_431();
    void thread_ap_sig_438();
    void thread_ap_sig_48();
    void thread_ap_sig_88();
    void thread_ap_sig_95();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st11_fsm_10();
    void thread_ap_sig_cseq_ST_st13_fsm_12();
    void thread_ap_sig_cseq_ST_st14_fsm_13();
    void thread_ap_sig_cseq_ST_st15_fsm_14();
    void thread_ap_sig_cseq_ST_st19_fsm_18();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st20_fsm_19();
    void thread_ap_sig_cseq_ST_st21_fsm_20();
    void thread_ap_sig_cseq_ST_st22_fsm_21();
    void thread_ap_sig_cseq_ST_st23_fsm_22();
    void thread_ap_sig_cseq_ST_st24_fsm_23();
    void thread_ap_sig_cseq_ST_st25_fsm_24();
    void thread_ap_sig_cseq_ST_st29_fsm_28();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st30_fsm_29();
    void thread_ap_sig_cseq_ST_st31_fsm_30();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_bias_address0();
    void thread_bias_ce0();
    void thread_biased_1_fu_792_p3();
    void thread_biased_to_int_fu_750_p1();
    void thread_c_1_fu_572_p2();
    void thread_c_cast1_fu_562_p1();
    void thread_c_cast_fu_558_p1();
    void thread_exitcond1_fu_586_p2();
    void thread_exitcond2_fu_566_p2();
    void thread_exitcond3_fu_527_p2();
    void thread_exitcond4_fu_381_p2();
    void thread_exitcond_fu_714_p2();
    void thread_grp_fu_327_p1();
    void thread_i_1_fu_387_p2();
    void thread_i_index_fu_652_p2();
    void thread_index_fu_740_p2();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_m_1_fu_452_p2();
    void thread_m_cast1_fu_435_p1();
    void thread_m_cast_fu_443_p1();
    void thread_n1_cast_fu_671_p1();
    void thread_n_1_fu_429_p2();
    void thread_n_2_fu_680_p2();
    void thread_n_cast_fu_420_p1();
    void thread_next_mul1_fu_666_p2();
    void thread_next_mul2_fu_725_p2();
    void thread_next_mul3_fu_415_p2();
    void thread_next_mul8_fu_410_p2();
    void thread_next_mul_fu_514_p2();
    void thread_notlhs_fu_768_p2();
    void thread_notrhs_fu_774_p2();
    void thread_o_index_fu_548_p2();
    void thread_ofmap_size_fu_375_p0();
    void thread_ofmap_size_fu_375_p1();
    void thread_ofmap_size_fu_375_p2();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_p_shl1_cast_fu_616_p1();
    void thread_p_shl1_fu_608_p3();
    void thread_p_shl_cast_fu_481_p1();
    void thread_p_shl_fu_473_p3();
    void thread_r_1_fu_592_p2();
    void thread_r_cast1_fu_582_p1();
    void thread_r_cast_fu_578_p1();
    void thread_tmp1_fu_643_p0();
    void thread_tmp1_fu_643_p1();
    void thread_tmp1_fu_643_p10();
    void thread_tmp1_fu_643_p2();
    void thread_tmp2_fu_542_p2();
    void thread_tmp3_fu_598_p2();
    void thread_tmp4_fu_648_p2();
    void thread_tmp5_cast_fu_491_p1();
    void thread_tmp5_fu_485_p2();
    void thread_tmp6_cast_fu_631_p1();
    void thread_tmp6_fu_626_p2();
    void thread_tmp7_fu_734_p2();
    void thread_tmp_10_fu_503_p2();
    void thread_tmp_11_fu_699_p2();
    void thread_tmp_12_fu_404_p1();
    void thread_tmp_13_cast_fu_538_p1();
    void thread_tmp_13_fu_553_p1();
    void thread_tmp_14_fu_745_p1();
    void thread_tmp_15_fu_754_p4();
    void thread_tmp_16_cast_fu_730_p1();
    void thread_tmp_16_fu_764_p1();
    void thread_tmp_17_fu_780_p2();
    void thread_tmp_18_fu_620_p2();
    void thread_tmp_1_fu_393_p1();
    void thread_tmp_20_fu_786_p2();
    void thread_tmp_21_fu_657_p1();
    void thread_tmp_22_fu_662_p1();
    void thread_tmp_2_fu_353_p1();
    void thread_tmp_3_fu_424_p2();
    void thread_tmp_4_fu_398_p1();
    void thread_tmp_5_fu_401_p1();
    void thread_tmp_6_fu_447_p2();
    void thread_tmp_7_fu_675_p2();
    void thread_tmp_8_fu_458_p0();
    void thread_tmp_8_fu_458_p00();
    void thread_tmp_8_fu_458_p1();
    void thread_tmp_8_fu_458_p2();
    void thread_tmp_9_cast1_fu_469_p1();
    void thread_tmp_9_fu_463_p2();
    void thread_tmp_fu_603_p2();
    void thread_tmp_s_fu_686_p1();
    void thread_w_index_fu_635_p2();
    void thread_weight_address0();
    void thread_weight_ce0();
    void thread_x2_cast9_fu_691_p1();
    void thread_x2_cast_fu_695_p1();
    void thread_x_1_fu_508_p2();
    void thread_x_2_fu_704_p2();
    void thread_x_cast1_fu_495_p1();
    void thread_x_cast_fu_499_p1();
    void thread_y3_cast_fu_710_p1();
    void thread_y_1_fu_719_p2();
    void thread_y_2_fu_532_p2();
    void thread_y_cast1_fu_519_p1();
    void thread_y_cast_fu_523_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
