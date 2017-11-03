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

#include "dut_mac_muladd_16s_16s_30ns_30_1.h"

namespace ap_rtl {

struct dut_perform_conv : public sc_module {
    // Port declarations 23
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > input_V_address0;
    sc_out< sc_logic > input_V_ce0;
    sc_in< sc_lv<16> > input_V_q0;
    sc_out< sc_lv<10> > output_V_address0;
    sc_out< sc_logic > output_V_ce0;
    sc_out< sc_logic > output_V_we0;
    sc_out< sc_lv<16> > output_V_d0;
    sc_in< sc_lv<16> > output_V_q0;
    sc_out< sc_lv<15> > weight_V_address0;
    sc_out< sc_logic > weight_V_ce0;
    sc_in< sc_lv<16> > weight_V_q0;
    sc_out< sc_lv<6> > bias_V_address0;
    sc_out< sc_logic > bias_V_ce0;
    sc_in< sc_lv<16> > bias_V_q0;
    sc_in< sc_lv<8> > M;
    sc_in< sc_lv<8> > N;
    sc_in< sc_lv<4> > O;


    // Module declarations
    dut_perform_conv(sc_module_name name);
    SC_HAS_PROCESS(dut_perform_conv);

    ~dut_perform_conv();

    sc_trace_file* mVcdFile;

    dut_mac_muladd_16s_16s_30ns_30_1<1,1,16,16,30,30>* dut_mac_muladd_16s_16s_30ns_30_1_U1;
    sc_signal< sc_lv<17> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_34;
    sc_signal< sc_lv<11> > I_cast24_cast_fu_339_p1;
    sc_signal< sc_lv<11> > I_cast24_cast_reg_808;
    sc_signal< sc_lv<8> > I_cast_cast_fu_343_p1;
    sc_signal< sc_lv<8> > I_cast_cast_reg_813;
    sc_signal< sc_lv<8> > ofmap_size_fu_351_p2;
    sc_signal< sc_lv<8> > ofmap_size_reg_818;
    sc_signal< sc_lv<10> > i_1_fu_363_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_90;
    sc_signal< sc_lv<11> > tmp_4_fu_374_p1;
    sc_signal< sc_lv<11> > tmp_4_reg_831;
    sc_signal< sc_lv<1> > exitcond1_fu_357_p2;
    sc_signal< sc_lv<11> > tmp_5_fu_377_p1;
    sc_signal< sc_lv<11> > tmp_5_reg_836;
    sc_signal< sc_lv<7> > tmp_12_fu_380_p1;
    sc_signal< sc_lv<7> > tmp_12_reg_842;
    sc_signal< sc_lv<7> > O_cast4_fu_383_p1;
    sc_signal< sc_lv<7> > O_cast4_reg_847;
    sc_signal< sc_lv<11> > next_mul8_fu_386_p2;
    sc_signal< sc_lv<11> > next_mul8_reg_853;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_112;
    sc_signal< sc_lv<11> > next_mul3_fu_391_p2;
    sc_signal< sc_lv<11> > next_mul3_reg_858;
    sc_signal< sc_lv<7> > n_1_fu_405_p2;
    sc_signal< sc_lv<7> > n_1_reg_866;
    sc_signal< sc_lv<6> > m_1_fu_428_p2;
    sc_signal< sc_lv<6> > m_1_reg_874;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_125;
    sc_signal< sc_lv<8> > tmp_8_fu_434_p2;
    sc_signal< sc_lv<8> > tmp_8_reg_879;
    sc_signal< sc_lv<1> > tmp_6_fu_423_p2;
    sc_signal< sc_lv<16> > tmp5_cast_fu_467_p1;
    sc_signal< sc_lv<16> > tmp5_cast_reg_884;
    sc_signal< sc_lv<11> > x_cast1_fu_471_p1;
    sc_signal< sc_lv<11> > x_cast1_reg_889;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_142;
    sc_signal< sc_lv<3> > x_1_fu_484_p2;
    sc_signal< sc_lv<3> > x_1_reg_898;
    sc_signal< sc_lv<7> > next_mul_fu_490_p2;
    sc_signal< sc_lv<7> > next_mul_reg_903;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_153;
    sc_signal< sc_lv<8> > y_cast1_fu_495_p1;
    sc_signal< sc_lv<8> > y_cast1_reg_908;
    sc_signal< sc_lv<3> > y_1_fu_508_p2;
    sc_signal< sc_lv<3> > y_1_reg_916;
    sc_signal< sc_lv<10> > output_V_addr_2_reg_921;
    sc_signal< sc_lv<1> > exitcond2_fu_503_p2;
    sc_signal< sc_lv<5> > c_cast_fu_534_p1;
    sc_signal< sc_lv<5> > c_cast_reg_926;
    sc_signal< sc_logic > ap_sig_cseq_ST_st7_fsm_6;
    sc_signal< bool > ap_sig_171;
    sc_signal< sc_lv<11> > c_cast1_fu_538_p1;
    sc_signal< sc_lv<11> > c_cast1_reg_931;
    sc_signal< sc_lv<2> > c_1_fu_548_p2;
    sc_signal< sc_lv<2> > c_1_reg_939;
    sc_signal< sc_lv<2> > r_1_fu_568_p2;
    sc_signal< sc_lv<2> > r_1_reg_947;
    sc_signal< sc_logic > ap_sig_cseq_ST_st8_fsm_7;
    sc_signal< bool > ap_sig_184;
    sc_signal< sc_lv<8> > tmp_fu_579_p2;
    sc_signal< sc_lv<8> > tmp_reg_952;
    sc_signal< sc_lv<1> > exitcond4_fu_562_p2;
    sc_signal< sc_lv<16> > w_index_fu_611_p2;
    sc_signal< sc_lv<16> > w_index_reg_957;
    sc_signal< sc_lv<11> > tmp1_fu_619_p2;
    sc_signal< sc_lv<11> > tmp1_reg_962;
    sc_signal< sc_logic > ap_sig_cseq_ST_st9_fsm_8;
    sc_signal< bool > ap_sig_200;
    sc_signal< sc_logic > ap_sig_cseq_ST_st10_fsm_9;
    sc_signal< bool > ap_sig_209;
    sc_signal< sc_lv<16> > input_V_load_reg_977;
    sc_signal< sc_logic > ap_sig_cseq_ST_st11_fsm_10;
    sc_signal< bool > ap_sig_219;
    sc_signal< sc_lv<16> > weight_V_load_reg_982;
    sc_signal< sc_lv<11> > next_mul1_fu_666_p2;
    sc_signal< sc_lv<11> > next_mul1_reg_987;
    sc_signal< sc_logic > ap_sig_cseq_ST_st13_fsm_12;
    sc_signal< bool > ap_sig_229;
    sc_signal< sc_lv<7> > n_2_fu_680_p2;
    sc_signal< sc_lv<7> > n_2_reg_995;
    sc_signal< sc_lv<6> > bias_V_addr_reg_1000;
    sc_signal< sc_lv<1> > tmp_7_fu_675_p2;
    sc_signal< sc_lv<11> > x2_cast9_fu_691_p1;
    sc_signal< sc_lv<11> > x2_cast9_reg_1005;
    sc_signal< sc_logic > ap_sig_cseq_ST_st14_fsm_13;
    sc_signal< bool > ap_sig_246;
    sc_signal< sc_lv<3> > x_2_fu_704_p2;
    sc_signal< sc_lv<3> > x_2_reg_1013;
    sc_signal< sc_lv<3> > y_2_fu_719_p2;
    sc_signal< sc_lv<3> > y_2_reg_1021;
    sc_signal< sc_logic > ap_sig_cseq_ST_st15_fsm_14;
    sc_signal< bool > ap_sig_257;
    sc_signal< sc_lv<7> > next_mul2_fu_725_p2;
    sc_signal< sc_lv<7> > next_mul2_reg_1026;
    sc_signal< sc_lv<1> > exitcond_fu_714_p2;
    sc_signal< sc_lv<10> > output_V_addr_1_reg_1031;
    sc_signal< sc_lv<15> > p_s_fu_766_p3;
    sc_signal< sc_lv<15> > p_s_reg_1036;
    sc_signal< sc_logic > ap_sig_cseq_ST_st16_fsm_15;
    sc_signal< bool > ap_sig_273;
    sc_signal< sc_lv<10> > i_reg_161;
    sc_signal< sc_lv<7> > n_reg_172;
    sc_signal< sc_lv<11> > phi_mul2_reg_183;
    sc_signal< sc_lv<11> > phi_mul7_reg_195;
    sc_signal< sc_lv<6> > m_reg_207;
    sc_signal< sc_lv<1> > tmp_3_fu_400_p2;
    sc_signal< sc_lv<1> > tmp_10_fu_479_p2;
    sc_signal< sc_lv<3> > x_reg_218;
    sc_signal< sc_lv<3> > y_reg_229;
    sc_signal< sc_lv<1> > exitcond3_fu_542_p2;
    sc_signal< sc_lv<7> > phi_mul_reg_240;
    sc_signal< sc_lv<2> > c_reg_251;
    sc_signal< sc_lv<2> > r_reg_262;
    sc_signal< sc_logic > ap_sig_cseq_ST_st12_fsm_11;
    sc_signal< bool > ap_sig_325;
    sc_signal< sc_lv<7> > n1_reg_273;
    sc_signal< sc_lv<1> > tmp_11_fu_699_p2;
    sc_signal< sc_lv<11> > phi_mul1_reg_284;
    sc_signal< sc_lv<3> > x2_reg_296;
    sc_signal< sc_lv<3> > y3_reg_307;
    sc_signal< sc_logic > ap_sig_cseq_ST_st17_fsm_16;
    sc_signal< bool > ap_sig_347;
    sc_signal< sc_lv<7> > phi_mul9_reg_318;
    sc_signal< sc_lv<64> > tmp_1_fu_369_p1;
    sc_signal< sc_lv<64> > tmp_13_fu_529_p1;
    sc_signal< sc_lv<64> > tmp_18_fu_633_p1;
    sc_signal< sc_lv<64> > tmp_19_fu_638_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_686_p1;
    sc_signal< sc_lv<64> > tmp_14_fu_745_p1;
    sc_signal< sc_lv<16> > p_cast_fu_774_p1;
    sc_signal< sc_lv<3> > tmp_2_fu_329_p1;
    sc_signal< sc_lv<3> > I_fu_333_p2;
    sc_signal< sc_lv<4> > ofmap_size_fu_351_p0;
    sc_signal< sc_lv<8> > O_cast2_fu_347_p1;
    sc_signal< sc_lv<4> > ofmap_size_fu_351_p1;
    sc_signal< sc_lv<8> > n_cast_fu_396_p1;
    sc_signal< sc_lv<7> > m_cast_fu_419_p1;
    sc_signal< sc_lv<6> > tmp_8_fu_434_p0;
    sc_signal< sc_lv<3> > tmp_8_fu_434_p1;
    sc_signal< sc_lv<11> > m_cast1_fu_411_p1;
    sc_signal< sc_lv<11> > tmp_9_fu_439_p2;
    sc_signal< sc_lv<14> > p_shl_fu_449_p3;
    sc_signal< sc_lv<15> > tmp_9_cast1_fu_445_p1;
    sc_signal< sc_lv<15> > p_shl_cast_fu_457_p1;
    sc_signal< sc_lv<15> > tmp5_fu_461_p2;
    sc_signal< sc_lv<4> > x_cast_fu_475_p1;
    sc_signal< sc_lv<4> > y_cast_fu_499_p1;
    sc_signal< sc_lv<11> > tmp_13_cast_fu_514_p1;
    sc_signal< sc_lv<11> > tmp2_fu_518_p2;
    sc_signal< sc_lv<11> > o_index_fu_524_p2;
    sc_signal< sc_lv<8> > r_cast_fu_554_p1;
    sc_signal< sc_lv<8> > tmp3_fu_574_p2;
    sc_signal< sc_lv<4> > p_shl1_fu_584_p3;
    sc_signal< sc_lv<5> > p_shl1_cast_fu_592_p1;
    sc_signal< sc_lv<5> > r_cast1_fu_558_p1;
    sc_signal< sc_lv<5> > tmp_17_fu_596_p2;
    sc_signal< sc_lv<5> > tmp6_fu_602_p2;
    sc_signal< sc_lv<16> > tmp6_cast_fu_607_p1;
    sc_signal< sc_lv<3> > tmp1_fu_619_p0;
    sc_signal< sc_lv<8> > tmp1_fu_619_p1;
    sc_signal< sc_lv<11> > tmp4_fu_624_p2;
    sc_signal< sc_lv<11> > i_index_fu_628_p2;
    sc_signal< sc_lv<30> > grp_fu_778_p3;
    sc_signal< sc_lv<8> > n1_cast_fu_671_p1;
    sc_signal< sc_lv<4> > x2_cast_fu_695_p1;
    sc_signal< sc_lv<4> > y3_cast_fu_710_p1;
    sc_signal< sc_lv<11> > tmp_16_cast_fu_730_p1;
    sc_signal< sc_lv<11> > tmp7_fu_734_p2;
    sc_signal< sc_lv<11> > index_fu_740_p2;
    sc_signal< sc_lv<16> > p_Val2_2_fu_750_p2;
    sc_signal< sc_lv<1> > tmp_16_fu_760_p2;
    sc_signal< sc_lv<15> > tmp_15_fu_756_p1;
    sc_signal< sc_lv<30> > grp_fu_778_p2;
    sc_signal< sc_lv<17> > ap_NS_fsm;
    sc_signal< sc_lv<11> > tmp1_fu_619_p10;
    sc_signal< sc_lv<8> > tmp_8_fu_434_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<17> ap_ST_st1_fsm_0;
    static const sc_lv<17> ap_ST_st2_fsm_1;
    static const sc_lv<17> ap_ST_st3_fsm_2;
    static const sc_lv<17> ap_ST_st4_fsm_3;
    static const sc_lv<17> ap_ST_st5_fsm_4;
    static const sc_lv<17> ap_ST_st6_fsm_5;
    static const sc_lv<17> ap_ST_st7_fsm_6;
    static const sc_lv<17> ap_ST_st8_fsm_7;
    static const sc_lv<17> ap_ST_st9_fsm_8;
    static const sc_lv<17> ap_ST_st10_fsm_9;
    static const sc_lv<17> ap_ST_st11_fsm_10;
    static const sc_lv<17> ap_ST_st12_fsm_11;
    static const sc_lv<17> ap_ST_st13_fsm_12;
    static const sc_lv<17> ap_ST_st14_fsm_13;
    static const sc_lv<17> ap_ST_st15_fsm_14;
    static const sc_lv<17> ap_ST_st16_fsm_15;
    static const sc_lv<17> ap_ST_st17_fsm_16;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
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
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<10> ap_const_lv10_320;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<14> ap_const_lv14_0;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<15> ap_const_lv15_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_I_cast24_cast_fu_339_p1();
    void thread_I_cast_cast_fu_343_p1();
    void thread_I_fu_333_p2();
    void thread_O_cast2_fu_347_p1();
    void thread_O_cast4_fu_383_p1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_112();
    void thread_ap_sig_125();
    void thread_ap_sig_142();
    void thread_ap_sig_153();
    void thread_ap_sig_171();
    void thread_ap_sig_184();
    void thread_ap_sig_200();
    void thread_ap_sig_209();
    void thread_ap_sig_219();
    void thread_ap_sig_229();
    void thread_ap_sig_246();
    void thread_ap_sig_257();
    void thread_ap_sig_273();
    void thread_ap_sig_325();
    void thread_ap_sig_34();
    void thread_ap_sig_347();
    void thread_ap_sig_90();
    void thread_ap_sig_cseq_ST_st10_fsm_9();
    void thread_ap_sig_cseq_ST_st11_fsm_10();
    void thread_ap_sig_cseq_ST_st12_fsm_11();
    void thread_ap_sig_cseq_ST_st13_fsm_12();
    void thread_ap_sig_cseq_ST_st14_fsm_13();
    void thread_ap_sig_cseq_ST_st15_fsm_14();
    void thread_ap_sig_cseq_ST_st16_fsm_15();
    void thread_ap_sig_cseq_ST_st17_fsm_16();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_ap_sig_cseq_ST_st7_fsm_6();
    void thread_ap_sig_cseq_ST_st8_fsm_7();
    void thread_ap_sig_cseq_ST_st9_fsm_8();
    void thread_bias_V_address0();
    void thread_bias_V_ce0();
    void thread_c_1_fu_548_p2();
    void thread_c_cast1_fu_538_p1();
    void thread_c_cast_fu_534_p1();
    void thread_exitcond1_fu_357_p2();
    void thread_exitcond2_fu_503_p2();
    void thread_exitcond3_fu_542_p2();
    void thread_exitcond4_fu_562_p2();
    void thread_exitcond_fu_714_p2();
    void thread_grp_fu_778_p2();
    void thread_i_1_fu_363_p2();
    void thread_i_index_fu_628_p2();
    void thread_index_fu_740_p2();
    void thread_input_V_address0();
    void thread_input_V_ce0();
    void thread_m_1_fu_428_p2();
    void thread_m_cast1_fu_411_p1();
    void thread_m_cast_fu_419_p1();
    void thread_n1_cast_fu_671_p1();
    void thread_n_1_fu_405_p2();
    void thread_n_2_fu_680_p2();
    void thread_n_cast_fu_396_p1();
    void thread_next_mul1_fu_666_p2();
    void thread_next_mul2_fu_725_p2();
    void thread_next_mul3_fu_391_p2();
    void thread_next_mul8_fu_386_p2();
    void thread_next_mul_fu_490_p2();
    void thread_o_index_fu_524_p2();
    void thread_ofmap_size_fu_351_p0();
    void thread_ofmap_size_fu_351_p1();
    void thread_ofmap_size_fu_351_p2();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_p_Val2_2_fu_750_p2();
    void thread_p_cast_fu_774_p1();
    void thread_p_s_fu_766_p3();
    void thread_p_shl1_cast_fu_592_p1();
    void thread_p_shl1_fu_584_p3();
    void thread_p_shl_cast_fu_457_p1();
    void thread_p_shl_fu_449_p3();
    void thread_r_1_fu_568_p2();
    void thread_r_cast1_fu_558_p1();
    void thread_r_cast_fu_554_p1();
    void thread_tmp1_fu_619_p0();
    void thread_tmp1_fu_619_p1();
    void thread_tmp1_fu_619_p10();
    void thread_tmp1_fu_619_p2();
    void thread_tmp2_fu_518_p2();
    void thread_tmp3_fu_574_p2();
    void thread_tmp4_fu_624_p2();
    void thread_tmp5_cast_fu_467_p1();
    void thread_tmp5_fu_461_p2();
    void thread_tmp6_cast_fu_607_p1();
    void thread_tmp6_fu_602_p2();
    void thread_tmp7_fu_734_p2();
    void thread_tmp_10_fu_479_p2();
    void thread_tmp_11_fu_699_p2();
    void thread_tmp_12_fu_380_p1();
    void thread_tmp_13_cast_fu_514_p1();
    void thread_tmp_13_fu_529_p1();
    void thread_tmp_14_fu_745_p1();
    void thread_tmp_15_fu_756_p1();
    void thread_tmp_16_cast_fu_730_p1();
    void thread_tmp_16_fu_760_p2();
    void thread_tmp_17_fu_596_p2();
    void thread_tmp_18_fu_633_p1();
    void thread_tmp_19_fu_638_p1();
    void thread_tmp_1_fu_369_p1();
    void thread_tmp_2_fu_329_p1();
    void thread_tmp_3_fu_400_p2();
    void thread_tmp_4_fu_374_p1();
    void thread_tmp_5_fu_377_p1();
    void thread_tmp_6_fu_423_p2();
    void thread_tmp_7_fu_675_p2();
    void thread_tmp_8_fu_434_p0();
    void thread_tmp_8_fu_434_p00();
    void thread_tmp_8_fu_434_p1();
    void thread_tmp_8_fu_434_p2();
    void thread_tmp_9_cast1_fu_445_p1();
    void thread_tmp_9_fu_439_p2();
    void thread_tmp_fu_579_p2();
    void thread_tmp_s_fu_686_p1();
    void thread_w_index_fu_611_p2();
    void thread_weight_V_address0();
    void thread_weight_V_ce0();
    void thread_x2_cast9_fu_691_p1();
    void thread_x2_cast_fu_695_p1();
    void thread_x_1_fu_484_p2();
    void thread_x_2_fu_704_p2();
    void thread_x_cast1_fu_471_p1();
    void thread_x_cast_fu_475_p1();
    void thread_y3_cast_fu_710_p1();
    void thread_y_1_fu_508_p2();
    void thread_y_2_fu_719_p2();
    void thread_y_cast1_fu_495_p1();
    void thread_y_cast_fu_499_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
