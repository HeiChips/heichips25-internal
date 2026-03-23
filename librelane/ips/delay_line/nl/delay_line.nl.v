module delay_line (clk,
    clk_delayed,
    reset,
    sel,
    trim);
 input clk;
 output clk_delayed;
 input reset;
 input [3:0] sel;
 input [23:0] trim;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire net29;
 wire \dstage[0].id.d0 ;
 wire \dstage[0].id.d1 ;
 wire \dstage[0].id.d2 ;
 wire \dstage[0].id.delaybuf0.A ;
 wire \dstage[0].id.delaybuf0.X ;
 wire \dstage[0].id.delayen0.Z ;
 wire \dstage[0].id.delayen0.te_b ;
 wire \dstage[0].id.delayen1.te_b ;
 wire \dstage[10].id.d0 ;
 wire \dstage[10].id.d1 ;
 wire \dstage[10].id.d2 ;
 wire \dstage[10].id.delaybuf0.A ;
 wire \dstage[10].id.delaybuf0.X ;
 wire \dstage[10].id.delayen0.Z ;
 wire \dstage[10].id.delayen0.te_b ;
 wire \dstage[10].id.delayen1.te_b ;
 wire \dstage[11].id.d0 ;
 wire \dstage[11].id.d1 ;
 wire \dstage[11].id.d2 ;
 wire \dstage[11].id.delaybuf0.X ;
 wire \dstage[11].id.delayen0.Z ;
 wire \dstage[11].id.delayen0.te_b ;
 wire \dstage[11].id.delayen1.te_b ;
 wire \dstage[1].id.d0 ;
 wire \dstage[1].id.d1 ;
 wire \dstage[1].id.d2 ;
 wire \dstage[1].id.delaybuf0.X ;
 wire \dstage[1].id.delayen0.Z ;
 wire \dstage[1].id.delayen0.te_b ;
 wire \dstage[1].id.delayen1.te_b ;
 wire \dstage[2].id.d0 ;
 wire \dstage[2].id.d1 ;
 wire \dstage[2].id.d2 ;
 wire \dstage[2].id.delaybuf0.X ;
 wire \dstage[2].id.delayen0.Z ;
 wire \dstage[2].id.delayen0.te_b ;
 wire \dstage[2].id.delayen1.te_b ;
 wire \dstage[3].id.d0 ;
 wire \dstage[3].id.d1 ;
 wire \dstage[3].id.d2 ;
 wire \dstage[3].id.delaybuf0.X ;
 wire \dstage[3].id.delayen0.Z ;
 wire \dstage[3].id.delayen0.te_b ;
 wire \dstage[3].id.delayen1.te_b ;
 wire \dstage[4].id.d0 ;
 wire \dstage[4].id.d1 ;
 wire \dstage[4].id.d2 ;
 wire \dstage[4].id.delaybuf0.X ;
 wire \dstage[4].id.delayen0.Z ;
 wire \dstage[4].id.delayen0.te_b ;
 wire \dstage[4].id.delayen1.te_b ;
 wire \dstage[5].id.d0 ;
 wire \dstage[5].id.d1 ;
 wire \dstage[5].id.d2 ;
 wire \dstage[5].id.delaybuf0.X ;
 wire \dstage[5].id.delayen0.Z ;
 wire \dstage[5].id.delayen0.te_b ;
 wire \dstage[5].id.delayen1.te_b ;
 wire \dstage[6].id.d0 ;
 wire \dstage[6].id.d1 ;
 wire \dstage[6].id.d2 ;
 wire \dstage[6].id.delaybuf0.X ;
 wire \dstage[6].id.delayen0.Z ;
 wire \dstage[6].id.delayen0.te_b ;
 wire \dstage[6].id.delayen1.te_b ;
 wire \dstage[7].id.d0 ;
 wire \dstage[7].id.d1 ;
 wire \dstage[7].id.d2 ;
 wire \dstage[7].id.delaybuf0.X ;
 wire \dstage[7].id.delayen0.Z ;
 wire \dstage[7].id.delayen0.te_b ;
 wire \dstage[7].id.delayen1.te_b ;
 wire \dstage[8].id.d0 ;
 wire \dstage[8].id.d1 ;
 wire \dstage[8].id.d2 ;
 wire \dstage[8].id.delaybuf0.X ;
 wire \dstage[8].id.delayen0.Z ;
 wire \dstage[8].id.delayen0.te_b ;
 wire \dstage[8].id.delayen1.te_b ;
 wire \dstage[9].id.d0 ;
 wire \dstage[9].id.d1 ;
 wire \dstage[9].id.d2 ;
 wire \dstage[9].id.delaybuf0.X ;
 wire \dstage[9].id.delayen0.te_b ;
 wire \dstage[9].id.delayen1.te_b ;
 wire \phase_taps[0].genblk1.ibuf_tap_even.X ;
 wire \phase_taps[10].genblk1.ibuf_tap_even.X ;
 wire \phase_taps[11].genblk1.iinv_tap_odd.Y ;
 wire \phase_taps[12].genblk1.ibuf_tap_even.X ;
 wire \phase_taps[1].genblk1.iinv_tap_odd.Y ;
 wire \phase_taps[2].genblk1.ibuf_tap_even.X ;
 wire \phase_taps[3].genblk1.iinv_tap_odd.Y ;
 wire \phase_taps[4].genblk1.ibuf_tap_even.X ;
 wire \phase_taps[5].genblk1.iinv_tap_odd.Y ;
 wire \phase_taps[6].genblk1.ibuf_tap_even.X ;
 wire \phase_taps[7].genblk1.iinv_tap_odd.Y ;
 wire \phase_taps[8].genblk1.ibuf_tap_even.X ;
 wire \phase_taps[9].genblk1.iinv_tap_odd.Y ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire \u_delay_mux.clk_pre ;
 wire \u_delay_mux.gen_clockp_bufs[0].u_one_hot_tribuf.TE_B ;
 wire \u_delay_mux.gen_clockp_bufs[10].u_one_hot_tribuf.TE_B ;
 wire \u_delay_mux.gen_clockp_bufs[11].u_one_hot_tribuf.TE_B ;
 wire \u_delay_mux.gen_clockp_bufs[12].u_one_hot_tribuf.TE_B ;
 wire \u_delay_mux.gen_clockp_bufs[1].u_one_hot_tribuf.TE_B ;
 wire \u_delay_mux.gen_clockp_bufs[2].u_one_hot_tribuf.TE_B ;
 wire \u_delay_mux.gen_clockp_bufs[3].u_one_hot_tribuf.TE_B ;
 wire \u_delay_mux.gen_clockp_bufs[4].u_one_hot_tribuf.TE_B ;
 wire \u_delay_mux.gen_clockp_bufs[5].u_one_hot_tribuf.TE_B ;
 wire \u_delay_mux.gen_clockp_bufs[6].u_one_hot_tribuf.TE_B ;
 wire \u_delay_mux.gen_clockp_bufs[7].u_one_hot_tribuf.TE_B ;
 wire \u_delay_mux.gen_clockp_bufs[8].u_one_hot_tribuf.TE_B ;
 wire \u_delay_mux.gen_clockp_bufs[9].u_one_hot_tribuf.TE_B ;

 sg13g2_decap_8 FILLER_0_0 ();
 sg13g2_decap_4 FILLER_0_107 ();
 sg13g2_fill_2 FILLER_0_111 ();
 sg13g2_decap_8 FILLER_0_117 ();
 sg13g2_decap_8 FILLER_0_124 ();
 sg13g2_decap_8 FILLER_0_131 ();
 sg13g2_decap_8 FILLER_0_138 ();
 sg13g2_decap_8 FILLER_0_14 ();
 sg13g2_decap_8 FILLER_0_145 ();
 sg13g2_fill_2 FILLER_0_152 ();
 sg13g2_decap_8 FILLER_0_21 ();
 sg13g2_fill_2 FILLER_0_49 ();
 sg13g2_fill_1 FILLER_0_51 ();
 sg13g2_decap_8 FILLER_0_7 ();
 sg13g2_decap_8 FILLER_0_73 ();
 sg13g2_fill_1 FILLER_0_80 ();
 sg13g2_decap_4 FILLER_0_85 ();
 sg13g2_decap_8 FILLER_0_96 ();
 sg13g2_decap_4 FILLER_10_11 ();
 sg13g2_decap_8 FILLER_10_111 ();
 sg13g2_decap_8 FILLER_10_118 ();
 sg13g2_decap_8 FILLER_10_125 ();
 sg13g2_decap_4 FILLER_10_132 ();
 sg13g2_decap_8 FILLER_10_141 ();
 sg13g2_decap_4 FILLER_10_148 ();
 sg13g2_fill_2 FILLER_10_152 ();
 sg13g2_decap_8 FILLER_10_28 ();
 sg13g2_decap_8 FILLER_10_35 ();
 sg13g2_decap_8 FILLER_10_4 ();
 sg13g2_decap_8 FILLER_10_67 ();
 sg13g2_decap_8 FILLER_10_74 ();
 sg13g2_decap_4 FILLER_10_81 ();
 sg13g2_fill_1 FILLER_10_85 ();
 sg13g2_decap_8 FILLER_11_0 ();
 sg13g2_decap_8 FILLER_11_106 ();
 sg13g2_decap_8 FILLER_11_113 ();
 sg13g2_decap_8 FILLER_11_120 ();
 sg13g2_fill_2 FILLER_11_127 ();
 sg13g2_fill_1 FILLER_11_129 ();
 sg13g2_decap_8 FILLER_11_29 ();
 sg13g2_fill_2 FILLER_11_36 ();
 sg13g2_fill_2 FILLER_11_63 ();
 sg13g2_fill_1 FILLER_11_65 ();
 sg13g2_decap_4 FILLER_11_7 ();
 sg13g2_fill_2 FILLER_11_78 ();
 sg13g2_fill_1 FILLER_11_80 ();
 sg13g2_decap_8 FILLER_11_99 ();
 sg13g2_decap_8 FILLER_12_0 ();
 sg13g2_fill_1 FILLER_12_11 ();
 sg13g2_decap_4 FILLER_12_112 ();
 sg13g2_fill_2 FILLER_12_116 ();
 sg13g2_fill_2 FILLER_12_148 ();
 sg13g2_fill_1 FILLER_12_15 ();
 sg13g2_decap_8 FILLER_12_33 ();
 sg13g2_fill_1 FILLER_12_40 ();
 sg13g2_decap_8 FILLER_12_49 ();
 sg13g2_decap_8 FILLER_12_56 ();
 sg13g2_fill_1 FILLER_12_63 ();
 sg13g2_decap_8 FILLER_12_69 ();
 sg13g2_decap_4 FILLER_12_7 ();
 sg13g2_fill_2 FILLER_12_76 ();
 sg13g2_decap_8 FILLER_13_105 ();
 sg13g2_decap_8 FILLER_13_112 ();
 sg13g2_decap_8 FILLER_13_119 ();
 sg13g2_fill_1 FILLER_13_126 ();
 sg13g2_decap_8 FILLER_13_33 ();
 sg13g2_fill_1 FILLER_13_4 ();
 sg13g2_fill_2 FILLER_13_40 ();
 sg13g2_fill_2 FILLER_13_67 ();
 sg13g2_decap_8 FILLER_13_79 ();
 sg13g2_decap_4 FILLER_13_86 ();
 sg13g2_fill_1 FILLER_13_90 ();
 sg13g2_decap_4 FILLER_13_95 ();
 sg13g2_fill_1 FILLER_13_99 ();
 sg13g2_decap_8 FILLER_14_102 ();
 sg13g2_decap_8 FILLER_14_109 ();
 sg13g2_decap_8 FILLER_14_116 ();
 sg13g2_fill_1 FILLER_14_12 ();
 sg13g2_decap_4 FILLER_14_123 ();
 sg13g2_fill_2 FILLER_14_127 ();
 sg13g2_decap_8 FILLER_14_147 ();
 sg13g2_decap_8 FILLER_14_26 ();
 sg13g2_decap_8 FILLER_14_33 ();
 sg13g2_fill_1 FILLER_14_40 ();
 sg13g2_decap_8 FILLER_14_51 ();
 sg13g2_decap_8 FILLER_14_58 ();
 sg13g2_decap_4 FILLER_14_65 ();
 sg13g2_fill_2 FILLER_14_69 ();
 sg13g2_decap_4 FILLER_14_75 ();
 sg13g2_fill_2 FILLER_14_79 ();
 sg13g2_decap_4 FILLER_14_8 ();
 sg13g2_fill_1 FILLER_14_85 ();
 sg13g2_fill_1 FILLER_14_90 ();
 sg13g2_decap_8 FILLER_14_95 ();
 sg13g2_fill_1 FILLER_15_11 ();
 sg13g2_decap_4 FILLER_15_116 ();
 sg13g2_fill_2 FILLER_15_120 ();
 sg13g2_fill_1 FILLER_15_128 ();
 sg13g2_decap_8 FILLER_15_142 ();
 sg13g2_decap_4 FILLER_15_149 ();
 sg13g2_fill_1 FILLER_15_153 ();
 sg13g2_fill_2 FILLER_15_30 ();
 sg13g2_fill_1 FILLER_15_32 ();
 sg13g2_decap_8 FILLER_15_4 ();
 sg13g2_decap_8 FILLER_15_41 ();
 sg13g2_decap_8 FILLER_15_48 ();
 sg13g2_decap_8 FILLER_15_55 ();
 sg13g2_decap_8 FILLER_15_62 ();
 sg13g2_decap_8 FILLER_15_69 ();
 sg13g2_decap_8 FILLER_15_76 ();
 sg13g2_decap_8 FILLER_15_83 ();
 sg13g2_fill_1 FILLER_15_90 ();
 sg13g2_decap_4 FILLER_16_0 ();
 sg13g2_decap_8 FILLER_16_106 ();
 sg13g2_decap_8 FILLER_16_113 ();
 sg13g2_decap_4 FILLER_16_120 ();
 sg13g2_fill_1 FILLER_16_149 ();
 sg13g2_fill_2 FILLER_16_4 ();
 sg13g2_decap_8 FILLER_16_47 ();
 sg13g2_decap_8 FILLER_16_54 ();
 sg13g2_decap_8 FILLER_16_61 ();
 sg13g2_decap_8 FILLER_16_68 ();
 sg13g2_decap_4 FILLER_16_75 ();
 sg13g2_fill_2 FILLER_16_79 ();
 sg13g2_decap_4 FILLER_17_101 ();
 sg13g2_fill_1 FILLER_17_105 ();
 sg13g2_decap_8 FILLER_17_114 ();
 sg13g2_decap_4 FILLER_17_121 ();
 sg13g2_decap_8 FILLER_17_44 ();
 sg13g2_decap_8 FILLER_17_51 ();
 sg13g2_decap_8 FILLER_17_58 ();
 sg13g2_decap_4 FILLER_17_65 ();
 sg13g2_fill_1 FILLER_17_8 ();
 sg13g2_decap_8 FILLER_17_94 ();
 sg13g2_fill_1 FILLER_18_0 ();
 sg13g2_decap_8 FILLER_18_100 ();
 sg13g2_decap_8 FILLER_18_107 ();
 sg13g2_decap_8 FILLER_18_114 ();
 sg13g2_decap_8 FILLER_18_121 ();
 sg13g2_fill_2 FILLER_18_128 ();
 sg13g2_decap_8 FILLER_18_146 ();
 sg13g2_fill_1 FILLER_18_153 ();
 sg13g2_decap_8 FILLER_18_33 ();
 sg13g2_decap_8 FILLER_18_40 ();
 sg13g2_decap_8 FILLER_18_47 ();
 sg13g2_decap_8 FILLER_18_54 ();
 sg13g2_decap_8 FILLER_18_86 ();
 sg13g2_decap_8 FILLER_18_93 ();
 sg13g2_decap_8 FILLER_19_106 ();
 sg13g2_fill_1 FILLER_19_11 ();
 sg13g2_decap_8 FILLER_19_113 ();
 sg13g2_decap_8 FILLER_19_120 ();
 sg13g2_decap_8 FILLER_19_127 ();
 sg13g2_decap_8 FILLER_19_134 ();
 sg13g2_decap_8 FILLER_19_141 ();
 sg13g2_decap_4 FILLER_19_148 ();
 sg13g2_decap_8 FILLER_19_15 ();
 sg13g2_fill_2 FILLER_19_152 ();
 sg13g2_decap_8 FILLER_19_22 ();
 sg13g2_decap_8 FILLER_19_29 ();
 sg13g2_decap_8 FILLER_19_36 ();
 sg13g2_decap_8 FILLER_19_4 ();
 sg13g2_decap_8 FILLER_19_43 ();
 sg13g2_decap_8 FILLER_19_50 ();
 sg13g2_decap_8 FILLER_19_57 ();
 sg13g2_decap_8 FILLER_19_64 ();
 sg13g2_decap_8 FILLER_19_71 ();
 sg13g2_decap_8 FILLER_19_78 ();
 sg13g2_decap_8 FILLER_19_85 ();
 sg13g2_decap_8 FILLER_19_92 ();
 sg13g2_decap_8 FILLER_19_99 ();
 sg13g2_decap_8 FILLER_1_0 ();
 sg13g2_decap_8 FILLER_1_101 ();
 sg13g2_fill_2 FILLER_1_108 ();
 sg13g2_fill_1 FILLER_1_110 ();
 sg13g2_decap_8 FILLER_1_114 ();
 sg13g2_decap_8 FILLER_1_121 ();
 sg13g2_decap_8 FILLER_1_128 ();
 sg13g2_decap_8 FILLER_1_135 ();
 sg13g2_decap_8 FILLER_1_14 ();
 sg13g2_decap_8 FILLER_1_142 ();
 sg13g2_decap_4 FILLER_1_149 ();
 sg13g2_fill_1 FILLER_1_153 ();
 sg13g2_decap_8 FILLER_1_21 ();
 sg13g2_decap_4 FILLER_1_28 ();
 sg13g2_fill_2 FILLER_1_32 ();
 sg13g2_fill_2 FILLER_1_51 ();
 sg13g2_fill_1 FILLER_1_53 ();
 sg13g2_fill_1 FILLER_1_57 ();
 sg13g2_decap_8 FILLER_1_7 ();
 sg13g2_decap_4 FILLER_1_78 ();
 sg13g2_fill_2 FILLER_1_95 ();
 sg13g2_decap_8 FILLER_20_0 ();
 sg13g2_decap_8 FILLER_20_102 ();
 sg13g2_decap_8 FILLER_20_109 ();
 sg13g2_decap_8 FILLER_20_116 ();
 sg13g2_decap_8 FILLER_20_123 ();
 sg13g2_decap_8 FILLER_20_130 ();
 sg13g2_decap_8 FILLER_20_137 ();
 sg13g2_decap_8 FILLER_20_14 ();
 sg13g2_decap_8 FILLER_20_144 ();
 sg13g2_fill_2 FILLER_20_151 ();
 sg13g2_fill_1 FILLER_20_153 ();
 sg13g2_decap_8 FILLER_20_21 ();
 sg13g2_decap_8 FILLER_20_28 ();
 sg13g2_decap_8 FILLER_20_35 ();
 sg13g2_decap_8 FILLER_20_42 ();
 sg13g2_decap_8 FILLER_20_49 ();
 sg13g2_decap_8 FILLER_20_56 ();
 sg13g2_decap_8 FILLER_20_63 ();
 sg13g2_decap_8 FILLER_20_7 ();
 sg13g2_decap_8 FILLER_20_70 ();
 sg13g2_decap_4 FILLER_20_77 ();
 sg13g2_decap_8 FILLER_20_95 ();
 sg13g2_decap_8 FILLER_21_0 ();
 sg13g2_fill_1 FILLER_21_103 ();
 sg13g2_decap_8 FILLER_21_117 ();
 sg13g2_decap_8 FILLER_21_124 ();
 sg13g2_decap_8 FILLER_21_131 ();
 sg13g2_decap_8 FILLER_21_138 ();
 sg13g2_decap_8 FILLER_21_14 ();
 sg13g2_decap_8 FILLER_21_145 ();
 sg13g2_fill_2 FILLER_21_152 ();
 sg13g2_decap_8 FILLER_21_21 ();
 sg13g2_decap_8 FILLER_21_28 ();
 sg13g2_decap_8 FILLER_21_35 ();
 sg13g2_decap_8 FILLER_21_42 ();
 sg13g2_decap_8 FILLER_21_49 ();
 sg13g2_decap_8 FILLER_21_56 ();
 sg13g2_decap_8 FILLER_21_63 ();
 sg13g2_decap_8 FILLER_21_7 ();
 sg13g2_decap_4 FILLER_21_70 ();
 sg13g2_fill_2 FILLER_21_74 ();
 sg13g2_decap_8 FILLER_21_89 ();
 sg13g2_decap_8 FILLER_21_96 ();
 sg13g2_decap_8 FILLER_22_0 ();
 sg13g2_fill_2 FILLER_22_104 ();
 sg13g2_decap_8 FILLER_22_119 ();
 sg13g2_decap_8 FILLER_22_126 ();
 sg13g2_decap_8 FILLER_22_133 ();
 sg13g2_decap_8 FILLER_22_14 ();
 sg13g2_decap_8 FILLER_22_140 ();
 sg13g2_decap_8 FILLER_22_147 ();
 sg13g2_decap_8 FILLER_22_21 ();
 sg13g2_decap_8 FILLER_22_28 ();
 sg13g2_decap_8 FILLER_22_35 ();
 sg13g2_decap_8 FILLER_22_42 ();
 sg13g2_decap_8 FILLER_22_49 ();
 sg13g2_decap_8 FILLER_22_56 ();
 sg13g2_decap_8 FILLER_22_63 ();
 sg13g2_decap_8 FILLER_22_7 ();
 sg13g2_decap_4 FILLER_22_70 ();
 sg13g2_fill_1 FILLER_22_74 ();
 sg13g2_decap_4 FILLER_22_95 ();
 sg13g2_decap_8 FILLER_23_0 ();
 sg13g2_decap_8 FILLER_23_126 ();
 sg13g2_decap_8 FILLER_23_133 ();
 sg13g2_decap_8 FILLER_23_14 ();
 sg13g2_decap_8 FILLER_23_140 ();
 sg13g2_decap_8 FILLER_23_147 ();
 sg13g2_decap_8 FILLER_23_21 ();
 sg13g2_decap_8 FILLER_23_28 ();
 sg13g2_decap_8 FILLER_23_35 ();
 sg13g2_decap_8 FILLER_23_42 ();
 sg13g2_decap_8 FILLER_23_49 ();
 sg13g2_decap_8 FILLER_23_56 ();
 sg13g2_decap_8 FILLER_23_63 ();
 sg13g2_decap_8 FILLER_23_7 ();
 sg13g2_decap_8 FILLER_24_0 ();
 sg13g2_decap_8 FILLER_24_121 ();
 sg13g2_decap_8 FILLER_24_128 ();
 sg13g2_decap_8 FILLER_24_135 ();
 sg13g2_decap_8 FILLER_24_14 ();
 sg13g2_decap_8 FILLER_24_142 ();
 sg13g2_decap_4 FILLER_24_149 ();
 sg13g2_fill_1 FILLER_24_153 ();
 sg13g2_decap_8 FILLER_24_21 ();
 sg13g2_decap_8 FILLER_24_28 ();
 sg13g2_decap_8 FILLER_24_35 ();
 sg13g2_decap_8 FILLER_24_42 ();
 sg13g2_decap_8 FILLER_24_49 ();
 sg13g2_decap_8 FILLER_24_56 ();
 sg13g2_decap_8 FILLER_24_63 ();
 sg13g2_decap_8 FILLER_24_7 ();
 sg13g2_decap_4 FILLER_24_70 ();
 sg13g2_fill_2 FILLER_24_74 ();
 sg13g2_decap_4 FILLER_24_94 ();
 sg13g2_fill_1 FILLER_24_98 ();
 sg13g2_decap_8 FILLER_25_0 ();
 sg13g2_fill_1 FILLER_25_100 ();
 sg13g2_decap_8 FILLER_25_109 ();
 sg13g2_decap_8 FILLER_25_116 ();
 sg13g2_decap_8 FILLER_25_123 ();
 sg13g2_decap_8 FILLER_25_130 ();
 sg13g2_decap_8 FILLER_25_137 ();
 sg13g2_decap_8 FILLER_25_14 ();
 sg13g2_decap_8 FILLER_25_144 ();
 sg13g2_fill_2 FILLER_25_151 ();
 sg13g2_fill_1 FILLER_25_153 ();
 sg13g2_decap_8 FILLER_25_21 ();
 sg13g2_decap_8 FILLER_25_28 ();
 sg13g2_decap_8 FILLER_25_35 ();
 sg13g2_decap_8 FILLER_25_42 ();
 sg13g2_decap_8 FILLER_25_49 ();
 sg13g2_decap_8 FILLER_25_56 ();
 sg13g2_decap_8 FILLER_25_63 ();
 sg13g2_decap_8 FILLER_25_7 ();
 sg13g2_fill_1 FILLER_25_70 ();
 sg13g2_decap_8 FILLER_25_79 ();
 sg13g2_decap_8 FILLER_25_89 ();
 sg13g2_decap_4 FILLER_25_96 ();
 sg13g2_decap_8 FILLER_2_0 ();
 sg13g2_decap_8 FILLER_2_126 ();
 sg13g2_decap_8 FILLER_2_133 ();
 sg13g2_decap_8 FILLER_2_14 ();
 sg13g2_decap_8 FILLER_2_140 ();
 sg13g2_decap_8 FILLER_2_147 ();
 sg13g2_decap_4 FILLER_2_21 ();
 sg13g2_decap_8 FILLER_2_7 ();
 sg13g2_decap_8 FILLER_3_0 ();
 sg13g2_decap_8 FILLER_3_136 ();
 sg13g2_decap_8 FILLER_3_14 ();
 sg13g2_decap_8 FILLER_3_143 ();
 sg13g2_decap_4 FILLER_3_150 ();
 sg13g2_decap_8 FILLER_3_21 ();
 sg13g2_decap_8 FILLER_3_28 ();
 sg13g2_fill_2 FILLER_3_35 ();
 sg13g2_fill_2 FILLER_3_53 ();
 sg13g2_fill_1 FILLER_3_60 ();
 sg13g2_decap_8 FILLER_3_7 ();
 sg13g2_fill_1 FILLER_3_77 ();
 sg13g2_fill_2 FILLER_3_83 ();
 sg13g2_decap_8 FILLER_4_0 ();
 sg13g2_fill_1 FILLER_4_118 ();
 sg13g2_decap_8 FILLER_4_126 ();
 sg13g2_decap_8 FILLER_4_133 ();
 sg13g2_decap_8 FILLER_4_14 ();
 sg13g2_decap_8 FILLER_4_140 ();
 sg13g2_decap_8 FILLER_4_147 ();
 sg13g2_decap_8 FILLER_4_21 ();
 sg13g2_decap_8 FILLER_4_28 ();
 sg13g2_decap_8 FILLER_4_35 ();
 sg13g2_decap_8 FILLER_4_42 ();
 sg13g2_decap_8 FILLER_4_49 ();
 sg13g2_decap_8 FILLER_4_56 ();
 sg13g2_decap_8 FILLER_4_63 ();
 sg13g2_decap_8 FILLER_4_7 ();
 sg13g2_decap_8 FILLER_4_70 ();
 sg13g2_decap_8 FILLER_4_77 ();
 sg13g2_decap_8 FILLER_4_84 ();
 sg13g2_decap_4 FILLER_4_91 ();
 sg13g2_fill_2 FILLER_4_95 ();
 sg13g2_decap_8 FILLER_5_0 ();
 sg13g2_decap_8 FILLER_5_100 ();
 sg13g2_decap_8 FILLER_5_107 ();
 sg13g2_decap_8 FILLER_5_114 ();
 sg13g2_decap_8 FILLER_5_121 ();
 sg13g2_decap_8 FILLER_5_128 ();
 sg13g2_decap_8 FILLER_5_135 ();
 sg13g2_decap_8 FILLER_5_14 ();
 sg13g2_decap_8 FILLER_5_142 ();
 sg13g2_decap_4 FILLER_5_149 ();
 sg13g2_fill_1 FILLER_5_153 ();
 sg13g2_decap_8 FILLER_5_21 ();
 sg13g2_decap_8 FILLER_5_28 ();
 sg13g2_decap_8 FILLER_5_35 ();
 sg13g2_decap_8 FILLER_5_42 ();
 sg13g2_decap_8 FILLER_5_49 ();
 sg13g2_decap_8 FILLER_5_56 ();
 sg13g2_fill_1 FILLER_5_63 ();
 sg13g2_decap_8 FILLER_5_7 ();
 sg13g2_decap_8 FILLER_5_72 ();
 sg13g2_decap_8 FILLER_5_79 ();
 sg13g2_fill_1 FILLER_5_86 ();
 sg13g2_decap_8 FILLER_5_93 ();
 sg13g2_decap_8 FILLER_6_0 ();
 sg13g2_decap_8 FILLER_6_108 ();
 sg13g2_decap_4 FILLER_6_115 ();
 sg13g2_fill_2 FILLER_6_119 ();
 sg13g2_decap_8 FILLER_6_126 ();
 sg13g2_decap_8 FILLER_6_133 ();
 sg13g2_decap_8 FILLER_6_14 ();
 sg13g2_decap_8 FILLER_6_140 ();
 sg13g2_decap_8 FILLER_6_147 ();
 sg13g2_decap_8 FILLER_6_21 ();
 sg13g2_decap_8 FILLER_6_28 ();
 sg13g2_decap_8 FILLER_6_35 ();
 sg13g2_decap_8 FILLER_6_42 ();
 sg13g2_decap_8 FILLER_6_49 ();
 sg13g2_decap_8 FILLER_6_56 ();
 sg13g2_decap_8 FILLER_6_63 ();
 sg13g2_decap_8 FILLER_6_7 ();
 sg13g2_decap_8 FILLER_6_70 ();
 sg13g2_decap_8 FILLER_6_77 ();
 sg13g2_decap_8 FILLER_6_84 ();
 sg13g2_decap_8 FILLER_6_91 ();
 sg13g2_fill_2 FILLER_6_98 ();
 sg13g2_decap_8 FILLER_7_0 ();
 sg13g2_decap_8 FILLER_7_100 ();
 sg13g2_decap_8 FILLER_7_107 ();
 sg13g2_fill_2 FILLER_7_11 ();
 sg13g2_decap_8 FILLER_7_114 ();
 sg13g2_decap_8 FILLER_7_121 ();
 sg13g2_decap_8 FILLER_7_26 ();
 sg13g2_decap_8 FILLER_7_33 ();
 sg13g2_decap_8 FILLER_7_40 ();
 sg13g2_decap_8 FILLER_7_47 ();
 sg13g2_decap_8 FILLER_7_54 ();
 sg13g2_decap_8 FILLER_7_61 ();
 sg13g2_decap_4 FILLER_7_7 ();
 sg13g2_decap_8 FILLER_7_93 ();
 sg13g2_decap_8 FILLER_8_0 ();
 sg13g2_decap_8 FILLER_8_101 ();
 sg13g2_decap_8 FILLER_8_108 ();
 sg13g2_fill_1 FILLER_8_11 ();
 sg13g2_decap_4 FILLER_8_115 ();
 sg13g2_fill_2 FILLER_8_119 ();
 sg13g2_fill_1 FILLER_8_15 ();
 sg13g2_fill_1 FILLER_8_33 ();
 sg13g2_decap_8 FILLER_8_39 ();
 sg13g2_decap_4 FILLER_8_46 ();
 sg13g2_fill_2 FILLER_8_50 ();
 sg13g2_decap_8 FILLER_8_58 ();
 sg13g2_decap_8 FILLER_8_65 ();
 sg13g2_decap_4 FILLER_8_7 ();
 sg13g2_decap_4 FILLER_8_72 ();
 sg13g2_decap_8 FILLER_9_101 ();
 sg13g2_decap_8 FILLER_9_108 ();
 sg13g2_decap_8 FILLER_9_121 ();
 sg13g2_fill_1 FILLER_9_128 ();
 sg13g2_fill_1 FILLER_9_132 ();
 sg13g2_fill_1 FILLER_9_149 ();
 sg13g2_decap_8 FILLER_9_35 ();
 sg13g2_fill_2 FILLER_9_4 ();
 sg13g2_decap_4 FILLER_9_42 ();
 sg13g2_fill_2 FILLER_9_46 ();
 sg13g2_fill_1 FILLER_9_6 ();
 sg13g2_decap_8 FILLER_9_73 ();
 sg13g2_decap_8 FILLER_9_80 ();
 sg13g2_decap_8 FILLER_9_87 ();
 sg13g2_decap_8 FILLER_9_94 ();
 sg13g2_nand2_1 _06_ (.Y(\u_delay_mux.gen_clockp_bufs[12].u_one_hot_tribuf.TE_B ),
    .A(net3),
    .B(net4));
 sg13g2_nor2_1 _07_ (.A(net1),
    .B(net2),
    .Y(_00_));
 sg13g2_nor2_1 _08_ (.A(net3),
    .B(net4),
    .Y(_01_));
 sg13g2_nand2_1 _09_ (.Y(\u_delay_mux.gen_clockp_bufs[0].u_one_hot_tribuf.TE_B ),
    .A(_00_),
    .B(_01_));
 sg13g2_nor2b_1 _10_ (.A(net2),
    .B_N(net1),
    .Y(_02_));
 sg13g2_nand2_1 _11_ (.Y(\u_delay_mux.gen_clockp_bufs[1].u_one_hot_tribuf.TE_B ),
    .A(_01_),
    .B(_02_));
 sg13g2_nor2b_1 _12_ (.A(net1),
    .B_N(net2),
    .Y(_03_));
 sg13g2_nand2_1 _13_ (.Y(\u_delay_mux.gen_clockp_bufs[2].u_one_hot_tribuf.TE_B ),
    .A(_01_),
    .B(_03_));
 sg13g2_nand3_1 _14_ (.B(net2),
    .C(_01_),
    .A(net1),
    .Y(\u_delay_mux.gen_clockp_bufs[3].u_one_hot_tribuf.TE_B ));
 sg13g2_nor2b_1 _15_ (.A(net4),
    .B_N(net3),
    .Y(_04_));
 sg13g2_nand2_1 _16_ (.Y(\u_delay_mux.gen_clockp_bufs[4].u_one_hot_tribuf.TE_B ),
    .A(_00_),
    .B(_04_));
 sg13g2_nand2_1 _17_ (.Y(\u_delay_mux.gen_clockp_bufs[5].u_one_hot_tribuf.TE_B ),
    .A(_02_),
    .B(_04_));
 sg13g2_nand2_1 _18_ (.Y(\u_delay_mux.gen_clockp_bufs[6].u_one_hot_tribuf.TE_B ),
    .A(_03_),
    .B(_04_));
 sg13g2_nand3_1 _19_ (.B(net2),
    .C(_04_),
    .A(net1),
    .Y(\u_delay_mux.gen_clockp_bufs[7].u_one_hot_tribuf.TE_B ));
 sg13g2_nor2b_1 _20_ (.A(net3),
    .B_N(net4),
    .Y(_05_));
 sg13g2_nand2_1 _21_ (.Y(\u_delay_mux.gen_clockp_bufs[8].u_one_hot_tribuf.TE_B ),
    .A(_00_),
    .B(_05_));
 sg13g2_nand2_1 _22_ (.Y(\u_delay_mux.gen_clockp_bufs[9].u_one_hot_tribuf.TE_B ),
    .A(_02_),
    .B(_05_));
 sg13g2_nand2_1 _23_ (.Y(\u_delay_mux.gen_clockp_bufs[10].u_one_hot_tribuf.TE_B ),
    .A(_03_),
    .B(_05_));
 sg13g2_nand3_1 _24_ (.B(net2),
    .C(_05_),
    .A(net1),
    .Y(\u_delay_mux.gen_clockp_bufs[11].u_one_hot_tribuf.TE_B ));
 sg13g2_buf_2 \dstage[0].id.delaybuf0.u_buf  (.A(\dstage[0].id.delaybuf0.A ),
    .X(\dstage[0].id.delaybuf0.X ));
 sg13g2_buf_1 \dstage[0].id.delaybuf1.u_buf  (.A(\dstage[0].id.delaybuf0.X ),
    .X(\dstage[0].id.d0 ));
 sg13g2_einvn_4 \dstage[0].id.delayen0.u_einv  (.Z(\dstage[0].id.delayen0.Z ),
    .A(\dstage[0].id.d2 ),
    .TE_B(\dstage[0].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[0].id.delayen0.u_inv_te  (.Y(\dstage[0].id.delayen0.te_b ),
    .A(net5));
 sg13g2_einvn_4 \dstage[0].id.delayen1.u_einv  (.Z(\dstage[0].id.d1 ),
    .A(\dstage[0].id.d0 ),
    .TE_B(\dstage[0].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[0].id.delayen1.u_inv_te  (.Y(\dstage[0].id.delayen1.te_b ),
    .A(net8));
 sg13g2_einvn_8 \dstage[0].id.delayenb0.u_einv  (.A(\dstage[0].id.delaybuf0.X ),
    .Z(\dstage[0].id.delayen0.Z ),
    .TE_B(net5));
 sg13g2_einvn_4 \dstage[0].id.delayenb1.u_einv  (.Z(\dstage[0].id.d1 ),
    .A(\dstage[0].id.delaybuf0.X ),
    .TE_B(net8));
 sg13g2_inv_1 \dstage[0].id.delayint0.u_inv  (.Y(\dstage[0].id.d2 ),
    .A(\dstage[0].id.d1 ));
 sg13g2_buf_2 \dstage[10].id.delaybuf0.u_buf  (.A(\dstage[10].id.delaybuf0.A ),
    .X(\dstage[10].id.delaybuf0.X ));
 sg13g2_buf_1 \dstage[10].id.delaybuf1.u_buf  (.A(\dstage[10].id.delaybuf0.X ),
    .X(\dstage[10].id.d0 ));
 sg13g2_einvn_4 \dstage[10].id.delayen0.u_einv  (.Z(\dstage[10].id.delayen0.Z ),
    .A(\dstage[10].id.d2 ),
    .TE_B(\dstage[10].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[10].id.delayen0.u_inv_te  (.Y(\dstage[10].id.delayen0.te_b ),
    .A(net6));
 sg13g2_einvn_4 \dstage[10].id.delayen1.u_einv  (.Z(\dstage[10].id.d1 ),
    .A(\dstage[10].id.d0 ),
    .TE_B(\dstage[10].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[10].id.delayen1.u_inv_te  (.Y(\dstage[10].id.delayen1.te_b ),
    .A(net19));
 sg13g2_einvn_8 \dstage[10].id.delayenb0.u_einv  (.A(\dstage[10].id.delaybuf0.X ),
    .Z(\dstage[10].id.delayen0.Z ),
    .TE_B(net6));
 sg13g2_einvn_4 \dstage[10].id.delayenb1.u_einv  (.Z(\dstage[10].id.d1 ),
    .A(\dstage[10].id.delaybuf0.X ),
    .TE_B(net19));
 sg13g2_inv_1 \dstage[10].id.delayint0.u_inv  (.Y(\dstage[10].id.d2 ),
    .A(\dstage[10].id.d1 ));
 sg13g2_buf_2 \dstage[11].id.delaybuf0.u_buf  (.A(\dstage[10].id.delayen0.Z ),
    .X(\dstage[11].id.delaybuf0.X ));
 sg13g2_buf_1 \dstage[11].id.delaybuf1.u_buf  (.A(\dstage[11].id.delaybuf0.X ),
    .X(\dstage[11].id.d0 ));
 sg13g2_einvn_4 \dstage[11].id.delayen0.u_einv  (.Z(\dstage[11].id.delayen0.Z ),
    .A(\dstage[11].id.d2 ),
    .TE_B(\dstage[11].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[11].id.delayen0.u_inv_te  (.Y(\dstage[11].id.delayen0.te_b ),
    .A(net7));
 sg13g2_einvn_4 \dstage[11].id.delayen1.u_einv  (.Z(\dstage[11].id.d1 ),
    .A(\dstage[11].id.d0 ),
    .TE_B(\dstage[11].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[11].id.delayen1.u_inv_te  (.Y(\dstage[11].id.delayen1.te_b ),
    .A(net20));
 sg13g2_einvn_8 \dstage[11].id.delayenb0.u_einv  (.A(\dstage[11].id.delaybuf0.X ),
    .Z(\dstage[11].id.delayen0.Z ),
    .TE_B(net7));
 sg13g2_einvn_4 \dstage[11].id.delayenb1.u_einv  (.Z(\dstage[11].id.d1 ),
    .A(\dstage[11].id.delaybuf0.X ),
    .TE_B(net20));
 sg13g2_inv_1 \dstage[11].id.delayint0.u_inv  (.Y(\dstage[11].id.d2 ),
    .A(\dstage[11].id.d1 ));
 sg13g2_buf_2 \dstage[1].id.delaybuf0.u_buf  (.A(\dstage[0].id.delayen0.Z ),
    .X(\dstage[1].id.delaybuf0.X ));
 sg13g2_buf_1 \dstage[1].id.delaybuf1.u_buf  (.A(\dstage[1].id.delaybuf0.X ),
    .X(\dstage[1].id.d0 ));
 sg13g2_einvn_4 \dstage[1].id.delayen0.u_einv  (.Z(\dstage[1].id.delayen0.Z ),
    .A(\dstage[1].id.d2 ),
    .TE_B(\dstage[1].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[1].id.delayen0.u_inv_te  (.Y(\dstage[1].id.delayen0.te_b ),
    .A(net16));
 sg13g2_einvn_4 \dstage[1].id.delayen1.u_einv  (.Z(\dstage[1].id.d1 ),
    .A(\dstage[1].id.d0 ),
    .TE_B(\dstage[1].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[1].id.delayen1.u_inv_te  (.Y(\dstage[1].id.delayen1.te_b ),
    .A(net9));
 sg13g2_einvn_8 \dstage[1].id.delayenb0.u_einv  (.A(\dstage[1].id.delaybuf0.X ),
    .Z(\dstage[1].id.delayen0.Z ),
    .TE_B(net16));
 sg13g2_einvn_4 \dstage[1].id.delayenb1.u_einv  (.Z(\dstage[1].id.d1 ),
    .A(\dstage[1].id.delaybuf0.X ),
    .TE_B(net9));
 sg13g2_inv_1 \dstage[1].id.delayint0.u_inv  (.Y(\dstage[1].id.d2 ),
    .A(\dstage[1].id.d1 ));
 sg13g2_buf_2 \dstage[2].id.delaybuf0.u_buf  (.A(\dstage[1].id.delayen0.Z ),
    .X(\dstage[2].id.delaybuf0.X ));
 sg13g2_buf_1 \dstage[2].id.delaybuf1.u_buf  (.A(\dstage[2].id.delaybuf0.X ),
    .X(\dstage[2].id.d0 ));
 sg13g2_einvn_4 \dstage[2].id.delayen0.u_einv  (.Z(\dstage[2].id.delayen0.Z ),
    .A(\dstage[2].id.d2 ),
    .TE_B(\dstage[2].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[2].id.delayen0.u_inv_te  (.Y(\dstage[2].id.delayen0.te_b ),
    .A(net21));
 sg13g2_einvn_4 \dstage[2].id.delayen1.u_einv  (.Z(\dstage[2].id.d1 ),
    .A(\dstage[2].id.d0 ),
    .TE_B(\dstage[2].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[2].id.delayen1.u_inv_te  (.Y(\dstage[2].id.delayen1.te_b ),
    .A(net10));
 sg13g2_einvn_8 \dstage[2].id.delayenb0.u_einv  (.A(\dstage[2].id.delaybuf0.X ),
    .Z(\dstage[2].id.delayen0.Z ),
    .TE_B(net21));
 sg13g2_einvn_4 \dstage[2].id.delayenb1.u_einv  (.Z(\dstage[2].id.d1 ),
    .A(\dstage[2].id.delaybuf0.X ),
    .TE_B(net10));
 sg13g2_inv_1 \dstage[2].id.delayint0.u_inv  (.Y(\dstage[2].id.d2 ),
    .A(\dstage[2].id.d1 ));
 sg13g2_buf_2 \dstage[3].id.delaybuf0.u_buf  (.A(\dstage[2].id.delayen0.Z ),
    .X(\dstage[3].id.delaybuf0.X ));
 sg13g2_buf_1 \dstage[3].id.delaybuf1.u_buf  (.A(\dstage[3].id.delaybuf0.X ),
    .X(\dstage[3].id.d0 ));
 sg13g2_einvn_4 \dstage[3].id.delayen0.u_einv  (.Z(\dstage[3].id.delayen0.Z ),
    .A(\dstage[3].id.d2 ),
    .TE_B(\dstage[3].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[3].id.delayen0.u_inv_te  (.Y(\dstage[3].id.delayen0.te_b ),
    .A(net22));
 sg13g2_einvn_4 \dstage[3].id.delayen1.u_einv  (.Z(\dstage[3].id.d1 ),
    .A(\dstage[3].id.d0 ),
    .TE_B(\dstage[3].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[3].id.delayen1.u_inv_te  (.Y(\dstage[3].id.delayen1.te_b ),
    .A(net11));
 sg13g2_einvn_8 \dstage[3].id.delayenb0.u_einv  (.A(\dstage[3].id.delaybuf0.X ),
    .Z(\dstage[3].id.delayen0.Z ),
    .TE_B(net22));
 sg13g2_einvn_4 \dstage[3].id.delayenb1.u_einv  (.Z(\dstage[3].id.d1 ),
    .A(\dstage[3].id.delaybuf0.X ),
    .TE_B(net11));
 sg13g2_inv_1 \dstage[3].id.delayint0.u_inv  (.Y(\dstage[3].id.d2 ),
    .A(\dstage[3].id.d1 ));
 sg13g2_buf_2 \dstage[4].id.delaybuf0.u_buf  (.A(\dstage[3].id.delayen0.Z ),
    .X(\dstage[4].id.delaybuf0.X ));
 sg13g2_buf_1 \dstage[4].id.delaybuf1.u_buf  (.A(\dstage[4].id.delaybuf0.X ),
    .X(\dstage[4].id.d0 ));
 sg13g2_einvn_4 \dstage[4].id.delayen0.u_einv  (.Z(\dstage[4].id.delayen0.Z ),
    .A(\dstage[4].id.d2 ),
    .TE_B(\dstage[4].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[4].id.delayen0.u_inv_te  (.Y(\dstage[4].id.delayen0.te_b ),
    .A(net23));
 sg13g2_einvn_4 \dstage[4].id.delayen1.u_einv  (.Z(\dstage[4].id.d1 ),
    .A(\dstage[4].id.d0 ),
    .TE_B(\dstage[4].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[4].id.delayen1.u_inv_te  (.Y(\dstage[4].id.delayen1.te_b ),
    .A(net12));
 sg13g2_einvn_8 \dstage[4].id.delayenb0.u_einv  (.A(\dstage[4].id.delaybuf0.X ),
    .Z(\dstage[4].id.delayen0.Z ),
    .TE_B(net23));
 sg13g2_einvn_4 \dstage[4].id.delayenb1.u_einv  (.Z(\dstage[4].id.d1 ),
    .A(\dstage[4].id.delaybuf0.X ),
    .TE_B(net12));
 sg13g2_inv_1 \dstage[4].id.delayint0.u_inv  (.Y(\dstage[4].id.d2 ),
    .A(\dstage[4].id.d1 ));
 sg13g2_buf_2 \dstage[5].id.delaybuf0.u_buf  (.A(\dstage[4].id.delayen0.Z ),
    .X(\dstage[5].id.delaybuf0.X ));
 sg13g2_buf_1 \dstage[5].id.delaybuf1.u_buf  (.A(\dstage[5].id.delaybuf0.X ),
    .X(\dstage[5].id.d0 ));
 sg13g2_einvn_4 \dstage[5].id.delayen0.u_einv  (.Z(\dstage[5].id.delayen0.Z ),
    .A(\dstage[5].id.d2 ),
    .TE_B(\dstage[5].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[5].id.delayen0.u_inv_te  (.Y(\dstage[5].id.delayen0.te_b ),
    .A(net24));
 sg13g2_einvn_4 \dstage[5].id.delayen1.u_einv  (.Z(\dstage[5].id.d1 ),
    .A(\dstage[5].id.d0 ),
    .TE_B(\dstage[5].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[5].id.delayen1.u_inv_te  (.Y(\dstage[5].id.delayen1.te_b ),
    .A(net13));
 sg13g2_einvn_8 \dstage[5].id.delayenb0.u_einv  (.A(\dstage[5].id.delaybuf0.X ),
    .Z(\dstage[5].id.delayen0.Z ),
    .TE_B(net24));
 sg13g2_einvn_4 \dstage[5].id.delayenb1.u_einv  (.Z(\dstage[5].id.d1 ),
    .A(\dstage[5].id.delaybuf0.X ),
    .TE_B(net13));
 sg13g2_inv_1 \dstage[5].id.delayint0.u_inv  (.Y(\dstage[5].id.d2 ),
    .A(\dstage[5].id.d1 ));
 sg13g2_buf_2 \dstage[6].id.delaybuf0.u_buf  (.A(\dstage[5].id.delayen0.Z ),
    .X(\dstage[6].id.delaybuf0.X ));
 sg13g2_buf_1 \dstage[6].id.delaybuf1.u_buf  (.A(\dstage[6].id.delaybuf0.X ),
    .X(\dstage[6].id.d0 ));
 sg13g2_einvn_4 \dstage[6].id.delayen0.u_einv  (.Z(\dstage[6].id.delayen0.Z ),
    .A(\dstage[6].id.d2 ),
    .TE_B(\dstage[6].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[6].id.delayen0.u_inv_te  (.Y(\dstage[6].id.delayen0.te_b ),
    .A(net25));
 sg13g2_einvn_4 \dstage[6].id.delayen1.u_einv  (.Z(\dstage[6].id.d1 ),
    .A(\dstage[6].id.d0 ),
    .TE_B(\dstage[6].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[6].id.delayen1.u_inv_te  (.Y(\dstage[6].id.delayen1.te_b ),
    .A(net14));
 sg13g2_einvn_8 \dstage[6].id.delayenb0.u_einv  (.A(\dstage[6].id.delaybuf0.X ),
    .Z(\dstage[6].id.delayen0.Z ),
    .TE_B(net25));
 sg13g2_einvn_4 \dstage[6].id.delayenb1.u_einv  (.Z(\dstage[6].id.d1 ),
    .A(\dstage[6].id.delaybuf0.X ),
    .TE_B(net14));
 sg13g2_inv_1 \dstage[6].id.delayint0.u_inv  (.Y(\dstage[6].id.d2 ),
    .A(\dstage[6].id.d1 ));
 sg13g2_buf_2 \dstage[7].id.delaybuf0.u_buf  (.A(\dstage[6].id.delayen0.Z ),
    .X(\dstage[7].id.delaybuf0.X ));
 sg13g2_buf_1 \dstage[7].id.delaybuf1.u_buf  (.A(\dstage[7].id.delaybuf0.X ),
    .X(\dstage[7].id.d0 ));
 sg13g2_einvn_4 \dstage[7].id.delayen0.u_einv  (.Z(\dstage[7].id.delayen0.Z ),
    .A(\dstage[7].id.d2 ),
    .TE_B(\dstage[7].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[7].id.delayen0.u_inv_te  (.Y(\dstage[7].id.delayen0.te_b ),
    .A(net26));
 sg13g2_einvn_4 \dstage[7].id.delayen1.u_einv  (.Z(\dstage[7].id.d1 ),
    .A(\dstage[7].id.d0 ),
    .TE_B(\dstage[7].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[7].id.delayen1.u_inv_te  (.Y(\dstage[7].id.delayen1.te_b ),
    .A(net15));
 sg13g2_einvn_8 \dstage[7].id.delayenb0.u_einv  (.A(\dstage[7].id.delaybuf0.X ),
    .Z(\dstage[7].id.delayen0.Z ),
    .TE_B(net26));
 sg13g2_einvn_4 \dstage[7].id.delayenb1.u_einv  (.Z(\dstage[7].id.d1 ),
    .A(\dstage[7].id.delaybuf0.X ),
    .TE_B(net15));
 sg13g2_inv_1 \dstage[7].id.delayint0.u_inv  (.Y(\dstage[7].id.d2 ),
    .A(\dstage[7].id.d1 ));
 sg13g2_buf_2 \dstage[8].id.delaybuf0.u_buf  (.A(\dstage[7].id.delayen0.Z ),
    .X(\dstage[8].id.delaybuf0.X ));
 sg13g2_buf_1 \dstage[8].id.delaybuf1.u_buf  (.A(\dstage[8].id.delaybuf0.X ),
    .X(\dstage[8].id.d0 ));
 sg13g2_einvn_4 \dstage[8].id.delayen0.u_einv  (.Z(\dstage[8].id.delayen0.Z ),
    .A(\dstage[8].id.d2 ),
    .TE_B(\dstage[8].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[8].id.delayen0.u_inv_te  (.Y(\dstage[8].id.delayen0.te_b ),
    .A(net27));
 sg13g2_einvn_4 \dstage[8].id.delayen1.u_einv  (.Z(\dstage[8].id.d1 ),
    .A(\dstage[8].id.d0 ),
    .TE_B(\dstage[8].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[8].id.delayen1.u_inv_te  (.Y(\dstage[8].id.delayen1.te_b ),
    .A(net17));
 sg13g2_einvn_8 \dstage[8].id.delayenb0.u_einv  (.A(\dstage[8].id.delaybuf0.X ),
    .Z(\dstage[8].id.delayen0.Z ),
    .TE_B(net27));
 sg13g2_einvn_4 \dstage[8].id.delayenb1.u_einv  (.Z(\dstage[8].id.d1 ),
    .A(\dstage[8].id.delaybuf0.X ),
    .TE_B(net17));
 sg13g2_inv_1 \dstage[8].id.delayint0.u_inv  (.Y(\dstage[8].id.d2 ),
    .A(\dstage[8].id.d1 ));
 sg13g2_buf_2 \dstage[9].id.delaybuf0.u_buf  (.A(\dstage[8].id.delayen0.Z ),
    .X(\dstage[9].id.delaybuf0.X ));
 sg13g2_buf_1 \dstage[9].id.delaybuf1.u_buf  (.A(\dstage[9].id.delaybuf0.X ),
    .X(\dstage[9].id.d0 ));
 sg13g2_einvn_4 \dstage[9].id.delayen0.u_einv  (.Z(\dstage[10].id.delaybuf0.A ),
    .A(\dstage[9].id.d2 ),
    .TE_B(\dstage[9].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[9].id.delayen0.u_inv_te  (.Y(\dstage[9].id.delayen0.te_b ),
    .A(net28));
 sg13g2_einvn_4 \dstage[9].id.delayen1.u_einv  (.Z(\dstage[9].id.d1 ),
    .A(\dstage[9].id.d0 ),
    .TE_B(\dstage[9].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[9].id.delayen1.u_inv_te  (.Y(\dstage[9].id.delayen1.te_b ),
    .A(net18));
 sg13g2_einvn_8 \dstage[9].id.delayenb0.u_einv  (.A(\dstage[9].id.delaybuf0.X ),
    .Z(\dstage[10].id.delaybuf0.A ),
    .TE_B(net28));
 sg13g2_einvn_4 \dstage[9].id.delayenb1.u_einv  (.Z(\dstage[9].id.d1 ),
    .A(\dstage[9].id.delaybuf0.X ),
    .TE_B(net18));
 sg13g2_inv_1 \dstage[9].id.delayint0.u_inv  (.Y(\dstage[9].id.d2 ),
    .A(\dstage[9].id.d1 ));
 sg13g2_buf_1 input1 (.A(sel[0]),
    .X(net1));
 sg13g2_buf_1 input10 (.A(trim[14]),
    .X(net10));
 sg13g2_buf_1 input11 (.A(trim[15]),
    .X(net11));
 sg13g2_buf_1 input12 (.A(trim[16]),
    .X(net12));
 sg13g2_buf_1 input13 (.A(trim[17]),
    .X(net13));
 sg13g2_buf_1 input14 (.A(trim[18]),
    .X(net14));
 sg13g2_buf_1 input15 (.A(trim[19]),
    .X(net15));
 sg13g2_buf_1 input16 (.A(trim[1]),
    .X(net16));
 sg13g2_buf_1 input17 (.A(trim[20]),
    .X(net17));
 sg13g2_buf_1 input18 (.A(trim[21]),
    .X(net18));
 sg13g2_buf_1 input19 (.A(trim[22]),
    .X(net19));
 sg13g2_buf_1 input2 (.A(sel[1]),
    .X(net2));
 sg13g2_buf_1 input20 (.A(trim[23]),
    .X(net20));
 sg13g2_buf_1 input21 (.A(trim[2]),
    .X(net21));
 sg13g2_buf_1 input22 (.A(trim[3]),
    .X(net22));
 sg13g2_buf_1 input23 (.A(trim[4]),
    .X(net23));
 sg13g2_buf_1 input24 (.A(trim[5]),
    .X(net24));
 sg13g2_buf_1 input25 (.A(trim[6]),
    .X(net25));
 sg13g2_buf_1 input26 (.A(trim[7]),
    .X(net26));
 sg13g2_buf_1 input27 (.A(trim[8]),
    .X(net27));
 sg13g2_buf_1 input28 (.A(trim[9]),
    .X(net28));
 sg13g2_buf_1 input3 (.A(sel[2]),
    .X(net3));
 sg13g2_buf_1 input4 (.A(sel[3]),
    .X(net4));
 sg13g2_buf_1 input5 (.A(trim[0]),
    .X(net5));
 sg13g2_buf_1 input6 (.A(trim[10]),
    .X(net6));
 sg13g2_buf_1 input7 (.A(trim[11]),
    .X(net7));
 sg13g2_buf_1 input8 (.A(trim[12]),
    .X(net8));
 sg13g2_buf_1 input9 (.A(trim[13]),
    .X(net9));
 sg13g2_buf_1 output29 (.A(net29),
    .X(clk_delayed));
 sg13g2_buf_4 \phase_taps[0].genblk1.ibuf_tap_even.u_buf  (.X(\phase_taps[0].genblk1.ibuf_tap_even.X ),
    .A(\dstage[0].id.delaybuf0.A ));
 sg13g2_buf_4 \phase_taps[10].genblk1.ibuf_tap_even.u_buf  (.X(\phase_taps[10].genblk1.ibuf_tap_even.X ),
    .A(\dstage[10].id.delaybuf0.A ));
 sg13g2_inv_4 \phase_taps[11].genblk1.iinv_tap_odd.u_inv  (.A(\dstage[10].id.delayen0.Z ),
    .Y(\phase_taps[11].genblk1.iinv_tap_odd.Y ));
 sg13g2_buf_4 \phase_taps[12].genblk1.ibuf_tap_even.u_buf  (.X(\phase_taps[12].genblk1.ibuf_tap_even.X ),
    .A(\dstage[11].id.delayen0.Z ));
 sg13g2_inv_4 \phase_taps[1].genblk1.iinv_tap_odd.u_inv  (.A(\dstage[0].id.delayen0.Z ),
    .Y(\phase_taps[1].genblk1.iinv_tap_odd.Y ));
 sg13g2_buf_4 \phase_taps[2].genblk1.ibuf_tap_even.u_buf  (.X(\phase_taps[2].genblk1.ibuf_tap_even.X ),
    .A(\dstage[1].id.delayen0.Z ));
 sg13g2_inv_4 \phase_taps[3].genblk1.iinv_tap_odd.u_inv  (.A(\dstage[2].id.delayen0.Z ),
    .Y(\phase_taps[3].genblk1.iinv_tap_odd.Y ));
 sg13g2_buf_4 \phase_taps[4].genblk1.ibuf_tap_even.u_buf  (.X(\phase_taps[4].genblk1.ibuf_tap_even.X ),
    .A(\dstage[3].id.delayen0.Z ));
 sg13g2_inv_4 \phase_taps[5].genblk1.iinv_tap_odd.u_inv  (.A(\dstage[4].id.delayen0.Z ),
    .Y(\phase_taps[5].genblk1.iinv_tap_odd.Y ));
 sg13g2_buf_4 \phase_taps[6].genblk1.ibuf_tap_even.u_buf  (.X(\phase_taps[6].genblk1.ibuf_tap_even.X ),
    .A(\dstage[5].id.delayen0.Z ));
 sg13g2_inv_4 \phase_taps[7].genblk1.iinv_tap_odd.u_inv  (.A(\dstage[6].id.delayen0.Z ),
    .Y(\phase_taps[7].genblk1.iinv_tap_odd.Y ));
 sg13g2_buf_4 \phase_taps[8].genblk1.ibuf_tap_even.u_buf  (.X(\phase_taps[8].genblk1.ibuf_tap_even.X ),
    .A(\dstage[7].id.delayen0.Z ));
 sg13g2_inv_4 \phase_taps[9].genblk1.iinv_tap_odd.u_inv  (.A(\dstage[8].id.delayen0.Z ),
    .Y(\phase_taps[9].genblk1.iinv_tap_odd.Y ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[0].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[0].genblk1.ibuf_tap_even.X ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[0].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[10].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[10].genblk1.ibuf_tap_even.X ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[10].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[11].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[11].genblk1.iinv_tap_odd.Y ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[11].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[12].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[12].genblk1.ibuf_tap_even.X ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[12].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[1].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[1].genblk1.iinv_tap_odd.Y ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[1].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[2].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[2].genblk1.ibuf_tap_even.X ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[2].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[3].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[3].genblk1.iinv_tap_odd.Y ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[3].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[4].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[4].genblk1.ibuf_tap_even.X ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[4].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[5].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[5].genblk1.iinv_tap_odd.Y ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[5].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[6].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[6].genblk1.ibuf_tap_even.X ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[6].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[7].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[7].genblk1.iinv_tap_odd.Y ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[7].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[8].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[8].genblk1.ibuf_tap_even.X ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[8].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[9].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[9].genblk1.iinv_tap_odd.Y ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[9].u_one_hot_tribuf.TE_B ));
 sg13g2_buf_16 \u_delay_mux.u_clkbuf.u_buf  (.X(net29),
    .A(\u_delay_mux.clk_pre ));
 sg13g2_buf_2 \u_inbuf.u_buf  (.A(clk),
    .X(\dstage[0].id.delaybuf0.A ));
endmodule
