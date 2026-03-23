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
 wire net31;
 wire \dstage[0].id.delaybuf0.A ;
 wire \dstage[0].id.delayen0.Z ;
 wire \dstage[0].id.delayen0.te_b ;
 wire \dstage[0].id.delayen1.te_b ;
 wire \dstage[10].id.d1 ;
 wire net46;
 wire \dstage[10].id.delaybuf0.A ;
 wire \dstage[10].id.delayen0.Z ;
 wire \dstage[10].id.delayen0.te_b ;
 wire \dstage[10].id.delayen1.te_b ;
 wire \dstage[11].id.d1 ;
 wire \dstage[0].id.delayen0.Z_regs ;
 wire \dstage[11].id.delayen0.Z ;
 wire \dstage[11].id.delayen0.te_b ;
 wire \dstage[11].id.delayen1.te_b ;
 wire \dstage[1].id.d1 ;
 wire net33;
 wire \dstage[1].id.delayen0.Z ;
 wire \dstage[1].id.delayen0.te_b ;
 wire \dstage[1].id.delayen1.te_b ;
 wire \dstage[2].id.d0 ;
 wire \dstage[2].id.d1 ;
 wire net34;
 wire \dstage[2].id.delayen0.Z ;
 wire \dstage[2].id.delayen0.te_b ;
 wire \dstage[2].id.delayen1.te_b ;
 wire \dstage[3].id.d1 ;
 wire net36;
 wire net60;
 wire \dstage[3].id.delayen0.Z ;
 wire \dstage[3].id.delayen0.te_b ;
 wire \dstage[3].id.delayen1.te_b ;
 wire \dstage[4].id.d0 ;
 wire \dstage[4].id.d1 ;
 wire net37;
 wire \dstage[4].id.delayen0.Z ;
 wire \dstage[4].id.delayen0.te_b ;
 wire \dstage[4].id.delayen1.te_b ;
 wire \dstage[5].id.d1 ;
 wire net39;
 wire net49;
 wire \dstage[5].id.delayen0.Z ;
 wire \dstage[5].id.delayen0.te_b ;
 wire \dstage[5].id.delayen1.te_b ;
 wire \dstage[6].id.d1 ;
 wire net40;
 wire \dstage[6].id.delayen0.Z ;
 wire \dstage[6].id.delayen0.te_b ;
 wire \dstage[6].id.delayen1.te_b ;
 wire \dstage[7].id.d1 ;
 wire net42;
 wire \dstage[7].id.delayen0.Z ;
 wire \dstage[7].id.delayen0.te_b ;
 wire \dstage[7].id.delayen1.te_b ;
 wire \dstage[8].id.d1 ;
 wire net43;
 wire \dstage[8].id.delayen0.Z ;
 wire \dstage[8].id.delayen0.te_b ;
 wire \dstage[8].id.delayen1.te_b ;
 wire \dstage[9].id.d1 ;
 wire net45;
 wire \dstage[9].id.delayen0.te_b ;
 wire \dstage[9].id.delayen1.te_b ;
 wire \phase_taps[0].genblk1.ibuf_tap_even.X ;
 wire \phase_taps[10].genblk1.ibuf_tap_even.X ;
 wire net47;
 wire \phase_taps[12].genblk1.ibuf_tap_even.X ;
 wire net32;
 wire \phase_taps[2].genblk1.ibuf_tap_even.X ;
 wire net35;
 wire \phase_taps[4].genblk1.ibuf_tap_even.X ;
 wire net38;
 wire \phase_taps[6].genblk1.ibuf_tap_even.X ;
 wire net41;
 wire \phase_taps[8].genblk1.ibuf_tap_even.X ;
 wire net44;
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
 wire net30;
 wire \dstage[2].id.delayen0.Z_regs ;
 wire \dstage[4].id.delayen0.Z_regs ;
 wire \dstage[6].id.delayen0.Z_regs ;
 wire \dstage[8].id.delayen0.Z_regs ;
 wire \dstage[10].id.delayen0.Z_regs ;
 wire \clknet_0_dstage[0].id.delaybuf0.A ;
 wire \clknet_1_0__leaf_dstage[0].id.delaybuf0.A ;
 wire \clknet_1_1__leaf_dstage[0].id.delaybuf0.A ;
 wire \clknet_0_dstage[0].id.delaybuf0.X ;
 wire \clknet_1_0__leaf_dstage[0].id.delaybuf0.X ;
 wire \clknet_1_1__leaf_dstage[0].id.delaybuf0.X ;
 wire \clknet_0_dstage[0].id.delayen0.Z_regs ;
 wire \clknet_1_0__leaf_dstage[0].id.delayen0.Z_regs ;
 wire \clknet_0_dstage[1].id.delaybuf0.X ;
 wire net59;
 wire \clknet_1_1__leaf_dstage[1].id.delaybuf0.X ;
 wire net51;
 wire \clknet_1_0__leaf_dstage[1].id.delayen0.Z ;
 wire net56;
 wire net55;
 wire net54;
 wire \clknet_1_1__leaf_dstage[2].id.delaybuf0.X ;
 wire \clknet_0_dstage[2].id.delayen0.Z_regs ;
 wire \clknet_1_0__leaf_dstage[2].id.delayen0.Z_regs ;
 wire \clknet_0_dstage[3].id.delaybuf0.X ;
 wire net61;
 wire \clknet_1_1__leaf_dstage[3].id.delaybuf0.X ;
 wire net52;
 wire net53;
 wire \clknet_1_1__leaf_dstage[3].id.delayen0.Z ;
 wire \clknet_0_dstage[4].id.delaybuf0.X ;
 wire \clknet_1_0__leaf_dstage[4].id.delaybuf0.X ;
 wire \clknet_1_1__leaf_dstage[4].id.delaybuf0.X ;
 wire \clknet_0_dstage[4].id.delayen0.Z_regs ;
 wire \clknet_1_0__leaf_dstage[4].id.delayen0.Z_regs ;
 wire \clknet_0_dstage[5].id.delaybuf0.X ;
 wire net62;
 wire \clknet_1_1__leaf_dstage[5].id.delaybuf0.X ;
 wire net50;
 wire \clknet_1_1__leaf_dstage[5].id.delayen0.Z ;
 wire \clknet_1_1__leaf_dstage[6].id.delaybuf0.X ;
 wire \clknet_0_dstage[6].id.delayen0.Z_regs ;
 wire \clknet_1_0__leaf_dstage[6].id.delayen0.Z_regs ;
 wire \clknet_0_dstage[7].id.delaybuf0.X ;
 wire \clknet_1_0__leaf_dstage[7].id.delaybuf0.X ;
 wire \clknet_1_1__leaf_dstage[7].id.delaybuf0.X ;
 wire \clknet_0_dstage[7].id.delayen0.Z ;
 wire \clknet_1_0__leaf_dstage[7].id.delayen0.Z ;
 wire \clknet_1_1__leaf_dstage[7].id.delayen0.Z ;
 wire \clknet_0_dstage[8].id.delaybuf0.X ;
 wire \clknet_1_0__leaf_dstage[8].id.delaybuf0.X ;
 wire \clknet_1_1__leaf_dstage[8].id.delaybuf0.X ;
 wire net58;
 wire net57;
 wire \clknet_0_dstage[8].id.delayen0.Z_regs ;
 wire \clknet_1_0__leaf_dstage[8].id.delayen0.Z_regs ;
 wire \clknet_0_dstage[9].id.delaybuf0.X ;
 wire \clknet_1_0__leaf_dstage[9].id.delaybuf0.X ;
 wire \clknet_1_1__leaf_dstage[9].id.delaybuf0.X ;
 wire \clknet_0_dstage[10].id.delaybuf0.A ;
 wire \clknet_1_0__leaf_dstage[10].id.delaybuf0.A ;
 wire \clknet_1_1__leaf_dstage[10].id.delaybuf0.A ;
 wire \clknet_0_dstage[10].id.delaybuf0.X ;
 wire \clknet_1_0__leaf_dstage[10].id.delaybuf0.X ;
 wire \clknet_1_1__leaf_dstage[10].id.delaybuf0.X ;
 wire \clknet_0_dstage[10].id.delayen0.Z_regs ;
 wire \clknet_1_0__leaf_dstage[10].id.delayen0.Z_regs ;
 wire \clknet_1_0__leaf_dstage[11].id.delaybuf0.X ;
 wire \clknet_1_1__leaf_dstage[11].id.delaybuf0.X ;

 sg13g2_decap_8 FILLER_0_100 ();
 sg13g2_decap_8 FILLER_0_107 ();
 sg13g2_decap_8 FILLER_0_114 ();
 sg13g2_decap_8 FILLER_0_93 ();
 sg13g2_fill_1 FILLER_10_133 ();
 sg13g2_fill_2 FILLER_10_151 ();
 sg13g2_fill_1 FILLER_10_153 ();
 sg13g2_fill_2 FILLER_11_133 ();
 sg13g2_decap_4 FILLER_11_4 ();
 sg13g2_fill_2 FILLER_11_80 ();
 sg13g2_fill_1 FILLER_11_82 ();
 sg13g2_fill_1 FILLER_12_0 ();
 sg13g2_decap_8 FILLER_12_110 ();
 sg13g2_decap_8 FILLER_12_117 ();
 sg13g2_fill_2 FILLER_12_48 ();
 sg13g2_decap_8 FILLER_13_100 ();
 sg13g2_decap_8 FILLER_13_107 ();
 sg13g2_decap_8 FILLER_13_114 ();
 sg13g2_decap_4 FILLER_13_121 ();
 sg13g2_fill_2 FILLER_13_129 ();
 sg13g2_fill_1 FILLER_13_153 ();
 sg13g2_decap_8 FILLER_13_18 ();
 sg13g2_decap_8 FILLER_13_25 ();
 sg13g2_fill_2 FILLER_13_32 ();
 sg13g2_fill_1 FILLER_13_34 ();
 sg13g2_decap_8 FILLER_14_144 ();
 sg13g2_fill_2 FILLER_14_151 ();
 sg13g2_fill_1 FILLER_14_153 ();
 sg13g2_fill_2 FILLER_14_88 ();
 sg13g2_fill_2 FILLER_15_0 ();
 sg13g2_fill_1 FILLER_15_114 ();
 sg13g2_fill_1 FILLER_15_153 ();
 sg13g2_fill_1 FILLER_15_2 ();
 sg13g2_fill_2 FILLER_15_50 ();
 sg13g2_fill_1 FILLER_15_71 ();
 sg13g2_decap_4 FILLER_16_11 ();
 sg13g2_decap_8 FILLER_16_140 ();
 sg13g2_decap_8 FILLER_16_147 ();
 sg13g2_fill_2 FILLER_16_15 ();
 sg13g2_decap_8 FILLER_16_4 ();
 sg13g2_fill_1 FILLER_16_67 ();
 sg13g2_decap_4 FILLER_17_10 ();
 sg13g2_decap_8 FILLER_17_105 ();
 sg13g2_decap_8 FILLER_17_112 ();
 sg13g2_decap_8 FILLER_17_119 ();
 sg13g2_decap_4 FILLER_17_126 ();
 sg13g2_fill_2 FILLER_17_14 ();
 sg13g2_fill_2 FILLER_17_152 ();
 sg13g2_decap_8 FILLER_17_3 ();
 sg13g2_fill_2 FILLER_17_41 ();
 sg13g2_fill_1 FILLER_18_0 ();
 sg13g2_fill_2 FILLER_18_106 ();
 sg13g2_decap_8 FILLER_18_121 ();
 sg13g2_decap_4 FILLER_18_128 ();
 sg13g2_fill_2 FILLER_18_75 ();
 sg13g2_fill_1 FILLER_19_0 ();
 sg13g2_decap_8 FILLER_19_129 ();
 sg13g2_decap_8 FILLER_19_136 ();
 sg13g2_decap_8 FILLER_19_143 ();
 sg13g2_fill_1 FILLER_19_150 ();
 sg13g2_decap_8 FILLER_19_23 ();
 sg13g2_decap_8 FILLER_19_30 ();
 sg13g2_fill_2 FILLER_19_37 ();
 sg13g2_fill_1 FILLER_19_39 ();
 sg13g2_fill_2 FILLER_1_0 ();
 sg13g2_decap_8 FILLER_1_105 ();
 sg13g2_decap_8 FILLER_1_112 ();
 sg13g2_decap_4 FILLER_1_119 ();
 sg13g2_decap_8 FILLER_1_98 ();
 sg13g2_fill_1 FILLER_20_0 ();
 sg13g2_decap_4 FILLER_20_120 ();
 sg13g2_fill_2 FILLER_20_124 ();
 sg13g2_fill_2 FILLER_20_26 ();
 sg13g2_fill_2 FILLER_20_53 ();
 sg13g2_fill_2 FILLER_20_92 ();
 sg13g2_fill_1 FILLER_20_94 ();
 sg13g2_decap_8 FILLER_21_135 ();
 sg13g2_decap_8 FILLER_21_142 ();
 sg13g2_decap_4 FILLER_21_149 ();
 sg13g2_fill_1 FILLER_21_153 ();
 sg13g2_decap_8 FILLER_21_44 ();
 sg13g2_decap_4 FILLER_21_51 ();
 sg13g2_fill_1 FILLER_21_87 ();
 sg13g2_decap_4 FILLER_22_103 ();
 sg13g2_decap_4 FILLER_22_12 ();
 sg13g2_fill_1 FILLER_22_16 ();
 sg13g2_decap_8 FILLER_22_39 ();
 sg13g2_decap_4 FILLER_22_46 ();
 sg13g2_fill_2 FILLER_22_50 ();
 sg13g2_fill_1 FILLER_22_8 ();
 sg13g2_fill_2 FILLER_22_90 ();
 sg13g2_decap_8 FILLER_22_96 ();
 sg13g2_fill_2 FILLER_23_118 ();
 sg13g2_fill_1 FILLER_23_149 ();
 sg13g2_decap_8 FILLER_23_34 ();
 sg13g2_fill_2 FILLER_23_4 ();
 sg13g2_decap_8 FILLER_23_41 ();
 sg13g2_decap_4 FILLER_23_48 ();
 sg13g2_decap_4 FILLER_23_55 ();
 sg13g2_fill_1 FILLER_23_59 ();
 sg13g2_decap_8 FILLER_24_0 ();
 sg13g2_fill_2 FILLER_24_109 ();
 sg13g2_fill_1 FILLER_24_111 ();
 sg13g2_decap_8 FILLER_24_116 ();
 sg13g2_fill_2 FILLER_24_123 ();
 sg13g2_fill_1 FILLER_24_125 ();
 sg13g2_decap_8 FILLER_24_14 ();
 sg13g2_fill_2 FILLER_24_152 ();
 sg13g2_decap_8 FILLER_24_31 ();
 sg13g2_decap_8 FILLER_24_38 ();
 sg13g2_fill_1 FILLER_24_45 ();
 sg13g2_decap_4 FILLER_24_58 ();
 sg13g2_decap_8 FILLER_24_7 ();
 sg13g2_decap_8 FILLER_25_0 ();
 sg13g2_decap_4 FILLER_25_14 ();
 sg13g2_fill_1 FILLER_25_49 ();
 sg13g2_decap_8 FILLER_25_7 ();
 sg13g2_decap_4 FILLER_25_89 ();
 sg13g2_fill_1 FILLER_25_93 ();
 sg13g2_decap_8 FILLER_26_0 ();
 sg13g2_decap_8 FILLER_26_14 ();
 sg13g2_fill_2 FILLER_26_152 ();
 sg13g2_decap_8 FILLER_26_21 ();
 sg13g2_decap_8 FILLER_26_28 ();
 sg13g2_fill_1 FILLER_26_35 ();
 sg13g2_fill_2 FILLER_26_55 ();
 sg13g2_decap_8 FILLER_26_7 ();
 sg13g2_fill_1 FILLER_2_0 ();
 sg13g2_decap_8 FILLER_2_100 ();
 sg13g2_decap_8 FILLER_2_107 ();
 sg13g2_fill_2 FILLER_2_114 ();
 sg13g2_fill_1 FILLER_2_116 ();
 sg13g2_decap_8 FILLER_2_93 ();
 sg13g2_fill_1 FILLER_3_0 ();
 sg13g2_decap_8 FILLER_3_103 ();
 sg13g2_decap_8 FILLER_3_110 ();
 sg13g2_decap_4 FILLER_3_117 ();
 sg13g2_fill_2 FILLER_3_129 ();
 sg13g2_decap_8 FILLER_3_144 ();
 sg13g2_fill_2 FILLER_3_151 ();
 sg13g2_fill_1 FILLER_3_153 ();
 sg13g2_decap_8 FILLER_3_96 ();
 sg13g2_fill_2 FILLER_4_101 ();
 sg13g2_decap_8 FILLER_4_116 ();
 sg13g2_decap_8 FILLER_4_123 ();
 sg13g2_fill_2 FILLER_4_130 ();
 sg13g2_fill_1 FILLER_4_28 ();
 sg13g2_decap_4 FILLER_4_89 ();
 sg13g2_fill_2 FILLER_4_93 ();
 sg13g2_fill_2 FILLER_5_0 ();
 sg13g2_decap_8 FILLER_5_104 ();
 sg13g2_decap_8 FILLER_5_111 ();
 sg13g2_decap_4 FILLER_5_118 ();
 sg13g2_fill_1 FILLER_5_15 ();
 sg13g2_fill_1 FILLER_5_64 ();
 sg13g2_decap_8 FILLER_5_69 ();
 sg13g2_decap_4 FILLER_5_76 ();
 sg13g2_fill_2 FILLER_5_80 ();
 sg13g2_decap_4 FILLER_6_149 ();
 sg13g2_fill_1 FILLER_6_153 ();
 sg13g2_fill_1 FILLER_6_33 ();
 sg13g2_fill_1 FILLER_6_4 ();
 sg13g2_fill_2 FILLER_6_84 ();
 sg13g2_decap_4 FILLER_7_108 ();
 sg13g2_fill_1 FILLER_7_112 ();
 sg13g2_decap_8 FILLER_7_135 ();
 sg13g2_decap_8 FILLER_7_142 ();
 sg13g2_decap_4 FILLER_7_149 ();
 sg13g2_fill_1 FILLER_7_153 ();
 sg13g2_fill_1 FILLER_7_25 ();
 sg13g2_decap_8 FILLER_7_37 ();
 sg13g2_decap_4 FILLER_7_44 ();
 sg13g2_decap_4 FILLER_7_52 ();
 sg13g2_fill_2 FILLER_7_56 ();
 sg13g2_decap_8 FILLER_8_113 ();
 sg13g2_decap_4 FILLER_8_120 ();
 sg13g2_fill_2 FILLER_8_124 ();
 sg13g2_fill_2 FILLER_8_4 ();
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
 sg13g2_buf_16 \clkbuf_0_dstage[0].id.delaybuf0.A  (.X(\clknet_0_dstage[0].id.delaybuf0.A ),
    .A(\dstage[0].id.delaybuf0.A ));
 sg13g2_buf_16 \clkbuf_0_dstage[0].id.delaybuf0.X  (.X(\clknet_0_dstage[0].id.delaybuf0.X ),
    .A(\clknet_1_1__leaf_dstage[0].id.delaybuf0.A ));
 sg13g2_buf_16 \clkbuf_0_dstage[0].id.delayen0.Z_regs  (.X(\clknet_0_dstage[0].id.delayen0.Z_regs ),
    .A(\dstage[0].id.delayen0.Z_regs ));
 sg13g2_buf_16 \clkbuf_0_dstage[10].id.delaybuf0.A  (.X(\clknet_0_dstage[10].id.delaybuf0.A ),
    .A(\dstage[10].id.delaybuf0.A ));
 sg13g2_buf_16 \clkbuf_0_dstage[10].id.delaybuf0.X  (.X(\clknet_0_dstage[10].id.delaybuf0.X ),
    .A(\clknet_1_1__leaf_dstage[10].id.delaybuf0.A ));
 sg13g2_buf_16 \clkbuf_0_dstage[10].id.delayen0.Z_regs  (.X(\clknet_0_dstage[10].id.delayen0.Z_regs ),
    .A(\dstage[10].id.delayen0.Z_regs ));
 sg13g2_buf_16 \clkbuf_0_dstage[1].id.delaybuf0.X  (.X(\clknet_0_dstage[1].id.delaybuf0.X ),
    .A(\dstage[0].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_0_dstage[2].id.delayen0.Z_regs  (.X(\clknet_0_dstage[2].id.delayen0.Z_regs ),
    .A(\dstage[2].id.delayen0.Z_regs ));
 sg13g2_buf_16 \clkbuf_0_dstage[3].id.delaybuf0.X  (.X(\clknet_0_dstage[3].id.delaybuf0.X ),
    .A(\dstage[2].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_0_dstage[4].id.delaybuf0.X  (.X(\clknet_0_dstage[4].id.delaybuf0.X ),
    .A(\dstage[3].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_0_dstage[4].id.delayen0.Z_regs  (.X(\clknet_0_dstage[4].id.delayen0.Z_regs ),
    .A(\dstage[4].id.delayen0.Z_regs ));
 sg13g2_buf_16 \clkbuf_0_dstage[5].id.delaybuf0.X  (.X(\clknet_0_dstage[5].id.delaybuf0.X ),
    .A(\dstage[4].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_0_dstage[6].id.delayen0.Z_regs  (.X(\clknet_0_dstage[6].id.delayen0.Z_regs ),
    .A(\dstage[6].id.delayen0.Z_regs ));
 sg13g2_buf_16 \clkbuf_0_dstage[7].id.delaybuf0.X  (.X(\clknet_0_dstage[7].id.delaybuf0.X ),
    .A(\dstage[6].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_0_dstage[7].id.delayen0.Z  (.X(\clknet_0_dstage[7].id.delayen0.Z ),
    .A(\dstage[7].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_0_dstage[8].id.delaybuf0.X  (.X(\clknet_0_dstage[8].id.delaybuf0.X ),
    .A(\clknet_1_0__leaf_dstage[7].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_0_dstage[8].id.delayen0.Z_regs  (.X(\clknet_0_dstage[8].id.delayen0.Z_regs ),
    .A(\dstage[8].id.delayen0.Z_regs ));
 sg13g2_buf_16 \clkbuf_0_dstage[9].id.delaybuf0.X  (.X(\clknet_0_dstage[9].id.delaybuf0.X ),
    .A(\dstage[8].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[0].id.delaybuf0.A  (.X(\clknet_1_0__leaf_dstage[0].id.delaybuf0.A ),
    .A(\clknet_0_dstage[0].id.delaybuf0.A ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[0].id.delaybuf0.X  (.X(\clknet_1_0__leaf_dstage[0].id.delaybuf0.X ),
    .A(\clknet_0_dstage[0].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[0].id.delayen0.Z_regs  (.X(\clknet_1_0__leaf_dstage[0].id.delayen0.Z_regs ),
    .A(\clknet_0_dstage[0].id.delayen0.Z_regs ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[10].id.delaybuf0.A  (.X(\clknet_1_0__leaf_dstage[10].id.delaybuf0.A ),
    .A(net54));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[10].id.delaybuf0.X  (.X(\clknet_1_0__leaf_dstage[10].id.delaybuf0.X ),
    .A(\clknet_0_dstage[10].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[10].id.delayen0.Z_regs  (.X(\clknet_1_0__leaf_dstage[10].id.delayen0.Z_regs ),
    .A(\clknet_0_dstage[10].id.delayen0.Z_regs ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[11].id.delaybuf0.X  (.X(\clknet_1_0__leaf_dstage[11].id.delaybuf0.X ),
    .A(\dstage[10].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[1].id.delayen0.Z  (.X(\clknet_1_0__leaf_dstage[1].id.delayen0.Z ),
    .A(\dstage[1].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[2].id.delayen0.Z_regs  (.X(\clknet_1_0__leaf_dstage[2].id.delayen0.Z_regs ),
    .A(\clknet_0_dstage[2].id.delayen0.Z_regs ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[4].id.delaybuf0.X  (.X(\clknet_1_0__leaf_dstage[4].id.delaybuf0.X ),
    .A(\clknet_0_dstage[4].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[4].id.delayen0.Z_regs  (.X(\clknet_1_0__leaf_dstage[4].id.delayen0.Z_regs ),
    .A(\clknet_0_dstage[4].id.delayen0.Z_regs ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[6].id.delayen0.Z_regs  (.X(\clknet_1_0__leaf_dstage[6].id.delayen0.Z_regs ),
    .A(\clknet_0_dstage[6].id.delayen0.Z_regs ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[7].id.delaybuf0.X  (.X(\clknet_1_0__leaf_dstage[7].id.delaybuf0.X ),
    .A(\clknet_0_dstage[7].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[7].id.delayen0.Z  (.X(\clknet_1_0__leaf_dstage[7].id.delayen0.Z ),
    .A(\clknet_0_dstage[7].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[8].id.delaybuf0.X  (.X(\clknet_1_0__leaf_dstage[8].id.delaybuf0.X ),
    .A(\clknet_0_dstage[8].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[8].id.delayen0.Z_regs  (.X(\clknet_1_0__leaf_dstage[8].id.delayen0.Z_regs ),
    .A(\clknet_0_dstage[8].id.delayen0.Z_regs ));
 sg13g2_buf_16 \clkbuf_1_0__f_dstage[9].id.delaybuf0.X  (.X(\clknet_1_0__leaf_dstage[9].id.delaybuf0.X ),
    .A(\clknet_0_dstage[9].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[0].id.delaybuf0.A  (.X(\clknet_1_1__leaf_dstage[0].id.delaybuf0.A ),
    .A(\clknet_0_dstage[0].id.delaybuf0.A ));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[0].id.delaybuf0.X  (.X(\clknet_1_1__leaf_dstage[0].id.delaybuf0.X ),
    .A(\clknet_0_dstage[0].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[10].id.delaybuf0.A  (.X(\clknet_1_1__leaf_dstage[10].id.delaybuf0.A ),
    .A(\clknet_0_dstage[10].id.delaybuf0.A ));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[10].id.delaybuf0.X  (.X(\clknet_1_1__leaf_dstage[10].id.delaybuf0.X ),
    .A(\clknet_0_dstage[10].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[11].id.delaybuf0.X  (.X(\clknet_1_1__leaf_dstage[11].id.delaybuf0.X ),
    .A(\dstage[10].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[1].id.delaybuf0.X  (.X(\clknet_1_1__leaf_dstage[1].id.delaybuf0.X ),
    .A(net51));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[2].id.delaybuf0.X  (.X(\clknet_1_1__leaf_dstage[2].id.delaybuf0.X ),
    .A(\dstage[1].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[3].id.delaybuf0.X  (.X(\clknet_1_1__leaf_dstage[3].id.delaybuf0.X ),
    .A(net52));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[3].id.delayen0.Z  (.X(\clknet_1_1__leaf_dstage[3].id.delayen0.Z ),
    .A(\dstage[3].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[4].id.delaybuf0.X  (.X(\clknet_1_1__leaf_dstage[4].id.delaybuf0.X ),
    .A(net53));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[5].id.delaybuf0.X  (.X(\clknet_1_1__leaf_dstage[5].id.delaybuf0.X ),
    .A(net49));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[5].id.delayen0.Z  (.X(\clknet_1_1__leaf_dstage[5].id.delayen0.Z ),
    .A(\dstage[5].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[6].id.delaybuf0.X  (.X(\clknet_1_1__leaf_dstage[6].id.delaybuf0.X ),
    .A(\dstage[5].id.delayen0.Z ));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[7].id.delaybuf0.X  (.X(\clknet_1_1__leaf_dstage[7].id.delaybuf0.X ),
    .A(net58));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[7].id.delayen0.Z  (.X(\clknet_1_1__leaf_dstage[7].id.delayen0.Z ),
    .A(net55));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[8].id.delaybuf0.X  (.X(\clknet_1_1__leaf_dstage[8].id.delaybuf0.X ),
    .A(\clknet_0_dstage[8].id.delaybuf0.X ));
 sg13g2_buf_16 \clkbuf_1_1__f_dstage[9].id.delaybuf0.X  (.X(\clknet_1_1__leaf_dstage[9].id.delaybuf0.X ),
    .A(\clknet_0_dstage[9].id.delaybuf0.X ));
 sg13g2_buf_16 clkbuf_regs_0_clk (.X(\dstage[0].id.delayen0.Z_regs ),
    .A(\dstage[0].id.delayen0.Z ));
 sg13g2_buf_16 clkbuf_regs_1_clk (.X(\dstage[2].id.delayen0.Z_regs ),
    .A(\dstage[2].id.delayen0.Z ));
 sg13g2_buf_16 clkbuf_regs_2_clk (.X(\dstage[4].id.delayen0.Z_regs ),
    .A(\dstage[4].id.delayen0.Z ));
 sg13g2_buf_16 clkbuf_regs_3_clk (.X(\dstage[6].id.delayen0.Z_regs ),
    .A(\dstage[6].id.delayen0.Z ));
 sg13g2_buf_16 clkbuf_regs_4_clk (.X(\dstage[8].id.delayen0.Z_regs ),
    .A(\dstage[8].id.delayen0.Z ));
 sg13g2_buf_16 clkbuf_regs_5_clk (.X(\dstage[10].id.delayen0.Z_regs ),
    .A(\dstage[10].id.delayen0.Z ));
 sg13g2_inv_1 clkload0 (.A(\clknet_1_1__leaf_dstage[0].id.delaybuf0.A ));
 sg13g2_inv_8 clkload1 (.A(\clknet_1_1__leaf_dstage[0].id.delaybuf0.X ));
 sg13g2_inv_4 clkload10 (.A(\clknet_1_1__leaf_dstage[6].id.delaybuf0.X ));
 sg13g2_inv_2 clkload11 (.A(net57));
 sg13g2_inv_1 clkload12 (.A(\clknet_1_0__leaf_dstage[7].id.delayen0.Z ));
 sg13g2_inv_4 clkload13 (.A(\clknet_1_1__leaf_dstage[8].id.delaybuf0.X ));
 sg13g2_inv_8 clkload14 (.A(net56));
 sg13g2_inv_1 clkload15 (.A(\clknet_1_1__leaf_dstage[10].id.delaybuf0.A ));
 sg13g2_inv_2 clkload16 (.A(net61));
 sg13g2_inv_4 clkload17 (.A(\clknet_1_1__leaf_dstage[11].id.delaybuf0.X ));
 sg13g2_inv_8 clkload2 (.A(\clknet_1_1__leaf_dstage[1].id.delaybuf0.X ));
 sg13g2_inv_1 clkload3 (.A(\dstage[1].id.delayen0.Z ));
 sg13g2_inv_8 clkload4 (.A(\clknet_1_1__leaf_dstage[2].id.delaybuf0.X ));
 sg13g2_inv_8 clkload5 (.A(\clknet_1_1__leaf_dstage[3].id.delaybuf0.X ));
 sg13g2_inv_1 clkload6 (.A(\dstage[3].id.delayen0.Z ));
 sg13g2_inv_4 clkload7 (.A(\clknet_1_1__leaf_dstage[4].id.delaybuf0.X ));
 sg13g2_inv_4 clkload8 (.A(\clknet_1_1__leaf_dstage[5].id.delaybuf0.X ));
 sg13g2_inv_1 clkload9 (.A(\dstage[5].id.delayen0.Z ));
 sg13g2_buf_1 \dstage[0].id.delaybuf1.u_buf  (.A(\clknet_1_1__leaf_dstage[0].id.delaybuf0.X ),
    .X(\dstage[0].id.d0 ));
 sg13g2_einvn_8 \dstage[0].id.delayen0.u_einv  (.A(net30),
    .Z(\dstage[0].id.delayen0.Z ),
    .TE_B(\dstage[0].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[0].id.delayen0.u_inv_te  (.Y(\dstage[0].id.delayen0.te_b ),
    .A(net5));
 sg13g2_einvn_4 \dstage[0].id.delayen1.u_einv  (.Z(\dstage[0].id.d1 ),
    .A(\dstage[0].id.d0 ),
    .TE_B(\dstage[0].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[0].id.delayen1.u_inv_te  (.Y(\dstage[0].id.delayen1.te_b ),
    .A(net8));
 sg13g2_einvn_8 \dstage[0].id.delayenb0.u_einv  (.A(\clknet_1_0__leaf_dstage[0].id.delaybuf0.X ),
    .Z(\dstage[0].id.delayen0.Z ),
    .TE_B(net5));
 sg13g2_einvn_4 \dstage[0].id.delayenb1.u_einv  (.Z(\dstage[0].id.d1 ),
    .A(\clknet_1_0__leaf_dstage[0].id.delaybuf0.X ),
    .TE_B(net8));
 sg13g2_inv_2 \dstage[0].id.delayint0.u_inv_30  (.Y(net30),
    .A(\dstage[0].id.d1 ));
 sg13g2_einvn_8 \dstage[10].id.delayen0.u_einv  (.A(net45),
    .Z(\dstage[10].id.delayen0.Z ),
    .TE_B(\dstage[10].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[10].id.delayen0.u_inv_te  (.Y(\dstage[10].id.delayen0.te_b ),
    .A(net6));
 sg13g2_einvn_8 \dstage[10].id.delayen1.u_einv  (.A(\clknet_1_0__leaf_dstage[10].id.delaybuf0.X ),
    .Z(\dstage[10].id.d1 ),
    .TE_B(\dstage[10].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[10].id.delayen1.u_inv_te  (.Y(\dstage[10].id.delayen1.te_b ),
    .A(net19));
 sg13g2_einvn_8 \dstage[10].id.delayenb0.u_einv  (.A(\clknet_1_1__leaf_dstage[10].id.delaybuf0.X ),
    .Z(\dstage[10].id.delayen0.Z ),
    .TE_B(net6));
 sg13g2_einvn_8 \dstage[10].id.delayenb1.u_einv  (.A(\clknet_1_0__leaf_dstage[10].id.delaybuf0.X ),
    .Z(\dstage[10].id.d1 ),
    .TE_B(net19));
 sg13g2_inv_8 \dstage[10].id.delayint0.u_inv_45  (.Y(net45),
    .A(\dstage[10].id.d1 ));
 sg13g2_einvn_8 \dstage[11].id.delayen0.u_einv  (.A(net47),
    .Z(\dstage[11].id.delayen0.Z ),
    .TE_B(\dstage[11].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[11].id.delayen0.u_inv_te  (.Y(\dstage[11].id.delayen0.te_b ),
    .A(net7));
 sg13g2_einvn_8 \dstage[11].id.delayen1.u_einv  (.A(\clknet_1_0__leaf_dstage[11].id.delaybuf0.X ),
    .Z(\dstage[11].id.d1 ),
    .TE_B(\dstage[11].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[11].id.delayen1.u_inv_te  (.Y(\dstage[11].id.delayen1.te_b ),
    .A(net20));
 sg13g2_einvn_8 \dstage[11].id.delayenb0.u_einv  (.A(\clknet_1_0__leaf_dstage[11].id.delaybuf0.X ),
    .Z(\dstage[11].id.delayen0.Z ),
    .TE_B(net7));
 sg13g2_einvn_8 \dstage[11].id.delayenb1.u_einv  (.A(\clknet_1_1__leaf_dstage[11].id.delaybuf0.X ),
    .Z(\dstage[11].id.d1 ),
    .TE_B(net20));
 sg13g2_inv_8 \dstage[11].id.delayint0.u_inv_47  (.Y(net47),
    .A(\dstage[11].id.d1 ));
 sg13g2_einvn_8 \dstage[1].id.delayen0.u_einv  (.A(net32),
    .Z(\dstage[1].id.delayen0.Z ),
    .TE_B(\dstage[1].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[1].id.delayen0.u_inv_te  (.Y(\dstage[1].id.delayen0.te_b ),
    .A(net16));
 sg13g2_einvn_8 \dstage[1].id.delayen1.u_einv  (.A(\clknet_1_1__leaf_dstage[1].id.delaybuf0.X ),
    .Z(\dstage[1].id.d1 ),
    .TE_B(\dstage[1].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[1].id.delayen1.u_inv_te  (.Y(\dstage[1].id.delayen1.te_b ),
    .A(net9));
 sg13g2_einvn_8 \dstage[1].id.delayenb0.u_einv  (.A(\clknet_0_dstage[1].id.delaybuf0.X ),
    .Z(\dstage[1].id.delayen0.Z ),
    .TE_B(net16));
 sg13g2_einvn_8 \dstage[1].id.delayenb1.u_einv  (.A(net59),
    .Z(\dstage[1].id.d1 ),
    .TE_B(net9));
 sg13g2_inv_4 \dstage[1].id.delayint0.u_inv_32  (.A(\dstage[1].id.d1 ),
    .Y(net32));
 sg13g2_buf_1 \dstage[2].id.delaybuf1.u_buf  (.A(\clknet_1_1__leaf_dstage[2].id.delaybuf0.X ),
    .X(\dstage[2].id.d0 ));
 sg13g2_einvn_8 \dstage[2].id.delayen0.u_einv  (.A(net33),
    .Z(\dstage[2].id.delayen0.Z ),
    .TE_B(\dstage[2].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[2].id.delayen0.u_inv_te  (.Y(\dstage[2].id.delayen0.te_b ),
    .A(net21));
 sg13g2_einvn_4 \dstage[2].id.delayen1.u_einv  (.Z(\dstage[2].id.d1 ),
    .A(\dstage[2].id.d0 ),
    .TE_B(\dstage[2].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[2].id.delayen1.u_inv_te  (.Y(\dstage[2].id.delayen1.te_b ),
    .A(net10));
 sg13g2_einvn_8 \dstage[2].id.delayenb0.u_einv  (.A(\dstage[1].id.delayen0.Z ),
    .Z(\dstage[2].id.delayen0.Z ),
    .TE_B(net21));
 sg13g2_einvn_4 \dstage[2].id.delayenb1.u_einv  (.Z(\dstage[2].id.d1 ),
    .A(\dstage[1].id.delayen0.Z ),
    .TE_B(net10));
 sg13g2_inv_2 \dstage[2].id.delayint0.u_inv_33  (.Y(net33),
    .A(\dstage[2].id.d1 ));
 sg13g2_einvn_8 \dstage[3].id.delayen0.u_einv  (.A(net35),
    .Z(\dstage[3].id.delayen0.Z ),
    .TE_B(\dstage[3].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[3].id.delayen0.u_inv_te  (.Y(\dstage[3].id.delayen0.te_b ),
    .A(net22));
 sg13g2_einvn_4 \dstage[3].id.delayen1.u_einv  (.Z(\dstage[3].id.d1 ),
    .A(\clknet_1_1__leaf_dstage[3].id.delaybuf0.X ),
    .TE_B(\dstage[3].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[3].id.delayen1.u_inv_te  (.Y(\dstage[3].id.delayen1.te_b ),
    .A(net11));
 sg13g2_einvn_8 \dstage[3].id.delayenb0.u_einv  (.A(\clknet_0_dstage[3].id.delaybuf0.X ),
    .Z(\dstage[3].id.delayen0.Z ),
    .TE_B(net22));
 sg13g2_einvn_8 \dstage[3].id.delayenb1.u_einv  (.A(net60),
    .Z(\dstage[3].id.d1 ),
    .TE_B(net11));
 sg13g2_inv_8 \dstage[3].id.delayint0.u_inv_35  (.Y(net35),
    .A(\dstage[3].id.d1 ));
 sg13g2_buf_1 \dstage[4].id.delaybuf1.u_buf  (.A(\clknet_1_0__leaf_dstage[4].id.delaybuf0.X ),
    .X(\dstage[4].id.d0 ));
 sg13g2_einvn_8 \dstage[4].id.delayen0.u_einv  (.A(net36),
    .Z(\dstage[4].id.delayen0.Z ),
    .TE_B(\dstage[4].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[4].id.delayen0.u_inv_te  (.Y(\dstage[4].id.delayen0.te_b ),
    .A(net23));
 sg13g2_einvn_4 \dstage[4].id.delayen1.u_einv  (.Z(\dstage[4].id.d1 ),
    .A(\dstage[4].id.d0 ),
    .TE_B(\dstage[4].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[4].id.delayen1.u_inv_te  (.Y(\dstage[4].id.delayen1.te_b ),
    .A(net12));
 sg13g2_einvn_8 \dstage[4].id.delayenb0.u_einv  (.A(\clknet_1_0__leaf_dstage[4].id.delaybuf0.X ),
    .Z(\dstage[4].id.delayen0.Z ),
    .TE_B(net23));
 sg13g2_einvn_4 \dstage[4].id.delayenb1.u_einv  (.Z(\dstage[4].id.d1 ),
    .A(\clknet_1_1__leaf_dstage[4].id.delaybuf0.X ),
    .TE_B(net12));
 sg13g2_inv_4 \dstage[4].id.delayint0.u_inv_36  (.A(\dstage[4].id.d1 ),
    .Y(net36));
 sg13g2_einvn_8 \dstage[5].id.delayen0.u_einv  (.A(net38),
    .Z(\dstage[5].id.delayen0.Z ),
    .TE_B(\dstage[5].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[5].id.delayen0.u_inv_te  (.Y(\dstage[5].id.delayen0.te_b ),
    .A(net24));
 sg13g2_einvn_4 \dstage[5].id.delayen1.u_einv  (.Z(\dstage[5].id.d1 ),
    .A(net62),
    .TE_B(\dstage[5].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[5].id.delayen1.u_inv_te  (.Y(\dstage[5].id.delayen1.te_b ),
    .A(net13));
 sg13g2_einvn_8 \dstage[5].id.delayenb0.u_einv  (.A(\clknet_0_dstage[5].id.delaybuf0.X ),
    .Z(\dstage[5].id.delayen0.Z ),
    .TE_B(net24));
 sg13g2_einvn_8 \dstage[5].id.delayenb1.u_einv  (.A(\clknet_1_1__leaf_dstage[5].id.delaybuf0.X ),
    .Z(\dstage[5].id.d1 ),
    .TE_B(net13));
 sg13g2_inv_8 \dstage[5].id.delayint0.u_inv_38  (.Y(net38),
    .A(\dstage[5].id.d1 ));
 sg13g2_einvn_8 \dstage[6].id.delayen0.u_einv  (.A(net39),
    .Z(\dstage[6].id.delayen0.Z ),
    .TE_B(\dstage[6].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[6].id.delayen0.u_inv_te  (.Y(\dstage[6].id.delayen0.te_b ),
    .A(net25));
 sg13g2_einvn_8 \dstage[6].id.delayen1.u_einv  (.A(\dstage[5].id.delayen0.Z ),
    .Z(\dstage[6].id.d1 ),
    .TE_B(\dstage[6].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[6].id.delayen1.u_inv_te  (.Y(\dstage[6].id.delayen1.te_b ),
    .A(net14));
 sg13g2_einvn_8 \dstage[6].id.delayenb0.u_einv  (.A(\dstage[5].id.delayen0.Z ),
    .Z(\dstage[6].id.delayen0.Z ),
    .TE_B(net25));
 sg13g2_einvn_8 \dstage[6].id.delayenb1.u_einv  (.A(\clknet_1_1__leaf_dstage[6].id.delaybuf0.X ),
    .Z(\dstage[6].id.d1 ),
    .TE_B(net14));
 sg13g2_inv_8 \dstage[6].id.delayint0.u_inv_39  (.Y(net39),
    .A(\dstage[6].id.d1 ));
 sg13g2_einvn_8 \dstage[7].id.delayen0.u_einv  (.A(net41),
    .Z(\dstage[7].id.delayen0.Z ),
    .TE_B(\dstage[7].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[7].id.delayen0.u_inv_te  (.Y(\dstage[7].id.delayen0.te_b ),
    .A(net26));
 sg13g2_einvn_8 \dstage[7].id.delayen1.u_einv  (.A(\clknet_1_0__leaf_dstage[7].id.delaybuf0.X ),
    .Z(\dstage[7].id.d1 ),
    .TE_B(\dstage[7].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[7].id.delayen1.u_inv_te  (.Y(\dstage[7].id.delayen1.te_b ),
    .A(net15));
 sg13g2_einvn_8 \dstage[7].id.delayenb0.u_einv  (.A(\clknet_1_1__leaf_dstage[7].id.delaybuf0.X ),
    .Z(\dstage[7].id.delayen0.Z ),
    .TE_B(net26));
 sg13g2_einvn_8 \dstage[7].id.delayenb1.u_einv  (.A(\clknet_1_0__leaf_dstage[7].id.delaybuf0.X ),
    .Z(\dstage[7].id.d1 ),
    .TE_B(net15));
 sg13g2_inv_8 \dstage[7].id.delayint0.u_inv_41  (.Y(net41),
    .A(\dstage[7].id.d1 ));
 sg13g2_einvn_8 \dstage[8].id.delayen0.u_einv  (.A(net42),
    .Z(\dstage[8].id.delayen0.Z ),
    .TE_B(\dstage[8].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[8].id.delayen0.u_inv_te  (.Y(\dstage[8].id.delayen0.te_b ),
    .A(net27));
 sg13g2_einvn_8 \dstage[8].id.delayen1.u_einv  (.A(\clknet_1_0__leaf_dstage[8].id.delaybuf0.X ),
    .Z(\dstage[8].id.d1 ),
    .TE_B(\dstage[8].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[8].id.delayen1.u_inv_te  (.Y(\dstage[8].id.delayen1.te_b ),
    .A(net17));
 sg13g2_einvn_8 \dstage[8].id.delayenb0.u_einv  (.A(\clknet_1_0__leaf_dstage[8].id.delaybuf0.X ),
    .Z(\dstage[8].id.delayen0.Z ),
    .TE_B(net27));
 sg13g2_einvn_8 \dstage[8].id.delayenb1.u_einv  (.A(\clknet_1_1__leaf_dstage[8].id.delaybuf0.X ),
    .Z(\dstage[8].id.d1 ),
    .TE_B(net17));
 sg13g2_inv_8 \dstage[8].id.delayint0.u_inv_42  (.Y(net42),
    .A(\dstage[8].id.d1 ));
 sg13g2_einvn_8 \dstage[9].id.delayen0.u_einv  (.A(net44),
    .Z(\dstage[10].id.delaybuf0.A ),
    .TE_B(\dstage[9].id.delayen0.te_b ));
 sg13g2_inv_1 \dstage[9].id.delayen0.u_inv_te  (.Y(\dstage[9].id.delayen0.te_b ),
    .A(net28));
 sg13g2_einvn_8 \dstage[9].id.delayen1.u_einv  (.A(\clknet_1_1__leaf_dstage[9].id.delaybuf0.X ),
    .Z(\dstage[9].id.d1 ),
    .TE_B(\dstage[9].id.delayen1.te_b ));
 sg13g2_inv_1 \dstage[9].id.delayen1.u_inv_te  (.Y(\dstage[9].id.delayen1.te_b ),
    .A(net18));
 sg13g2_einvn_8 \dstage[9].id.delayenb0.u_einv  (.A(\clknet_1_0__leaf_dstage[9].id.delaybuf0.X ),
    .Z(\dstage[10].id.delaybuf0.A ),
    .TE_B(net28));
 sg13g2_einvn_8 \dstage[9].id.delayenb1.u_einv  (.A(\clknet_1_0__leaf_dstage[9].id.delaybuf0.X ),
    .Z(\dstage[9].id.d1 ),
    .TE_B(net18));
 sg13g2_inv_8 \dstage[9].id.delayint0.u_inv_44  (.Y(net44),
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
    .A(\clknet_1_0__leaf_dstage[0].id.delaybuf0.A ));
 sg13g2_buf_4 \phase_taps[10].genblk1.ibuf_tap_even.u_buf  (.X(\phase_taps[10].genblk1.ibuf_tap_even.X ),
    .A(\clknet_1_0__leaf_dstage[10].id.delaybuf0.A ));
 sg13g2_inv_4 \phase_taps[11].genblk1.iinv_tap_odd.u_inv_46  (.A(\clknet_1_0__leaf_dstage[10].id.delayen0.Z_regs ),
    .Y(net46));
 sg13g2_buf_8 \phase_taps[12].genblk1.ibuf_tap_even.u_buf  (.A(\dstage[11].id.delayen0.Z ),
    .X(\phase_taps[12].genblk1.ibuf_tap_even.X ));
 sg13g2_inv_4 \phase_taps[1].genblk1.iinv_tap_odd.u_inv_31  (.A(\clknet_1_0__leaf_dstage[0].id.delayen0.Z_regs ),
    .Y(net31));
 sg13g2_buf_4 \phase_taps[2].genblk1.ibuf_tap_even.u_buf  (.X(\phase_taps[2].genblk1.ibuf_tap_even.X ),
    .A(\clknet_1_0__leaf_dstage[1].id.delayen0.Z ));
 sg13g2_inv_4 \phase_taps[3].genblk1.iinv_tap_odd.u_inv_34  (.A(\clknet_1_0__leaf_dstage[2].id.delayen0.Z_regs ),
    .Y(net34));
 sg13g2_buf_4 \phase_taps[4].genblk1.ibuf_tap_even.u_buf  (.X(\phase_taps[4].genblk1.ibuf_tap_even.X ),
    .A(\clknet_1_1__leaf_dstage[3].id.delayen0.Z ));
 sg13g2_inv_4 \phase_taps[5].genblk1.iinv_tap_odd.u_inv_37  (.A(\clknet_1_0__leaf_dstage[4].id.delayen0.Z_regs ),
    .Y(net37));
 sg13g2_buf_4 \phase_taps[6].genblk1.ibuf_tap_even.u_buf  (.X(\phase_taps[6].genblk1.ibuf_tap_even.X ),
    .A(\clknet_1_1__leaf_dstage[5].id.delayen0.Z ));
 sg13g2_inv_4 \phase_taps[7].genblk1.iinv_tap_odd.u_inv_40  (.A(\clknet_1_0__leaf_dstage[6].id.delayen0.Z_regs ),
    .Y(net40));
 sg13g2_buf_4 \phase_taps[8].genblk1.ibuf_tap_even.u_buf  (.X(\phase_taps[8].genblk1.ibuf_tap_even.X ),
    .A(\clknet_1_1__leaf_dstage[7].id.delayen0.Z ));
 sg13g2_inv_4 \phase_taps[9].genblk1.iinv_tap_odd.u_inv_43  (.A(\clknet_1_0__leaf_dstage[8].id.delayen0.Z_regs ),
    .Y(net43));
 sg13g2_buf_8 rebuffer49 (.A(net50),
    .X(net49));
 sg13g2_buf_1 rebuffer50 (.A(net62),
    .X(net50));
 sg13g2_buf_1 rebuffer51 (.A(net59),
    .X(net51));
 sg13g2_buf_1 rebuffer52 (.A(net60),
    .X(net52));
 sg13g2_buf_1 rebuffer53 (.A(\clknet_0_dstage[4].id.delaybuf0.X ),
    .X(net53));
 sg13g2_buf_1 rebuffer54 (.A(\clknet_0_dstage[10].id.delaybuf0.A ),
    .X(net54));
 sg13g2_buf_1 rebuffer55 (.A(\clknet_0_dstage[7].id.delayen0.Z ),
    .X(net55));
 sg13g2_buf_1 rebuffer56 (.A(\clknet_1_1__leaf_dstage[9].id.delaybuf0.X ),
    .X(net56));
 sg13g2_buf_1 rebuffer57 (.A(\clknet_1_0__leaf_dstage[7].id.delaybuf0.X ),
    .X(net57));
 sg13g2_buf_8 rebuffer58 (.A(\clknet_0_dstage[7].id.delaybuf0.X ),
    .X(net58));
 sg13g2_buf_1 rebuffer59 (.A(\clknet_0_dstage[1].id.delaybuf0.X ),
    .X(net59));
 sg13g2_buf_1 rebuffer60 (.A(\clknet_0_dstage[3].id.delaybuf0.X ),
    .X(net60));
 sg13g2_buf_1 rebuffer61 (.A(\clknet_1_0__leaf_dstage[10].id.delaybuf0.X ),
    .X(net61));
 sg13g2_buf_1 rebuffer62 (.A(\clknet_0_dstage[5].id.delaybuf0.X ),
    .X(net62));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[0].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[0].genblk1.ibuf_tap_even.X ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[0].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[10].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[10].genblk1.ibuf_tap_even.X ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[10].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[11].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(net46),
    .TE_B(\u_delay_mux.gen_clockp_bufs[11].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[12].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[12].genblk1.ibuf_tap_even.X ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[12].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[1].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(net31),
    .TE_B(\u_delay_mux.gen_clockp_bufs[1].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[2].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[2].genblk1.ibuf_tap_even.X ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[2].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[3].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(net34),
    .TE_B(\u_delay_mux.gen_clockp_bufs[3].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[4].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[4].genblk1.ibuf_tap_even.X ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[4].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[5].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(net37),
    .TE_B(\u_delay_mux.gen_clockp_bufs[5].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[6].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[6].genblk1.ibuf_tap_even.X ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[6].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[7].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(net40),
    .TE_B(\u_delay_mux.gen_clockp_bufs[7].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[8].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(\phase_taps[8].genblk1.ibuf_tap_even.X ),
    .TE_B(\u_delay_mux.gen_clockp_bufs[8].u_one_hot_tribuf.TE_B ));
 sg13g2_ebufn_8 \u_delay_mux.gen_clockp_bufs[9].u_one_hot_tribuf.u_ebuf  (.Z(\u_delay_mux.clk_pre ),
    .A(net43),
    .TE_B(\u_delay_mux.gen_clockp_bufs[9].u_one_hot_tribuf.TE_B ));
 sg13g2_buf_16 \u_delay_mux.u_clkbuf.u_buf  (.X(net29),
    .A(\u_delay_mux.clk_pre ));
 sg13g2_buf_16 \u_inbuf.u_buf  (.X(\dstage[0].id.delaybuf0.A ),
    .A(clk));
endmodule
