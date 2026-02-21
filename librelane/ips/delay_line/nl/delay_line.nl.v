module delay_line (clk,
    clk_delayed,
    delay);
 input clk;
 output clk_delayed;
 input [3:0] delay;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire clknet_0_clk;
 wire \buffer[0] ;
 wire net5;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire net11;
 wire net12;
 wire net13;
 wire net14;

 sg13g2_inv_1 _20_ (.Y(_07_),
    .A(net1));
 sg13g2_inv_1 _21_ (.Y(_08_),
    .A(net2));
 sg13g2_inv_1 _22_ (.Y(_00_),
    .A(net4));
 sg13g2_inv_1 _23_ (.Y(_09_),
    .A(net3));
 sg13g2_nor2_1 _24_ (.A(_07_),
    .B(_00_),
    .Y(_01_));
 sg13g2_nor2b_1 _25_ (.A(net11),
    .B_N(\buffer[0] ),
    .Y(_10_));
 sg13g2_nor3_1 _26_ (.A(_03_),
    .B(_04_),
    .C(_05_),
    .Y(_11_));
 sg13g2_a21oi_1 _27_ (.A1(net12),
    .A2(_11_),
    .Y(_12_),
    .B1(net1));
 sg13g2_and3_1 _28_ (.X(_13_),
    .A(net1),
    .B(net12),
    .C(_11_));
 sg13g2_nor3_1 _29_ (.A(_00_),
    .B(net13),
    .C(_13_),
    .Y(_06_));
 sg13g2_dfrbpq_1 _30_ (.RESET_B(net7),
    .D(_01_),
    .Q(\buffer[0] ),
    .CLK(clknet_1_0__leaf_clk));
 sg13g2_dfrbpq_1 _31_ (.RESET_B(net8),
    .D(net14),
    .Q(net5),
    .CLK(clknet_1_0__leaf_clk));
 sg13g2_dfrbpq_1 _32_ (.RESET_B(net9),
    .D(_07_),
    .Q(_02_),
    .CLK(clknet_1_0__leaf_clk));
 sg13g2_dfrbpq_1 _33_ (.RESET_B(net10),
    .D(_08_),
    .Q(_03_),
    .CLK(clknet_1_1__leaf_clk));
 sg13g2_dfrbpq_1 _34_ (.RESET_B(net),
    .D(_09_),
    .Q(_04_),
    .CLK(clknet_1_1__leaf_clk));
 sg13g2_dfrbpq_1 _35_ (.RESET_B(net6),
    .D(_00_),
    .Q(_05_),
    .CLK(clknet_1_1__leaf_clk));
 sg13g2_tiehi _35__7 (.L_HI(net6));
 sg13g2_tiehi _30__8 (.L_HI(net7));
 sg13g2_tiehi _31__9 (.L_HI(net8));
 sg13g2_tiehi _32__10 (.L_HI(net9));
 sg13g2_tiehi _33__11 (.L_HI(net10));
 sg13g2_buf_16 clkbuf_0_clk (.X(clknet_0_clk),
    .A(clk));
 sg13g2_buf_1 input1 (.A(delay[0]),
    .X(net1));
 sg13g2_buf_1 input2 (.A(delay[1]),
    .X(net2));
 sg13g2_buf_1 input3 (.A(delay[2]),
    .X(net3));
 sg13g2_buf_1 input4 (.A(delay[3]),
    .X(net4));
 sg13g2_buf_1 output5 (.A(net5),
    .X(clk_delayed));
 sg13g2_tiehi _34__6 (.L_HI(net));
 sg13g2_buf_16 clkbuf_1_0__f_clk (.X(clknet_1_0__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_1_1__f_clk (.X(clknet_1_1__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_dlygate4sd3_1 hold12 (.A(_02_),
    .X(net11));
 sg13g2_dlygate4sd3_1 hold13 (.A(_10_),
    .X(net12));
 sg13g2_dlygate4sd3_1 hold14 (.A(_12_),
    .X(net13));
 sg13g2_dlygate4sd3_1 hold15 (.A(_06_),
    .X(net14));
 sg13g2_decap_8 FILLER_0_0 ();
 sg13g2_decap_8 FILLER_0_7 ();
 sg13g2_decap_8 FILLER_0_14 ();
 sg13g2_decap_8 FILLER_0_21 ();
 sg13g2_decap_8 FILLER_0_28 ();
 sg13g2_decap_8 FILLER_0_35 ();
 sg13g2_decap_8 FILLER_0_42 ();
 sg13g2_decap_8 FILLER_0_49 ();
 sg13g2_fill_1 FILLER_0_56 ();
 sg13g2_decap_8 FILLER_0_61 ();
 sg13g2_decap_8 FILLER_0_68 ();
 sg13g2_decap_8 FILLER_0_75 ();
 sg13g2_decap_8 FILLER_0_82 ();
 sg13g2_decap_8 FILLER_0_89 ();
 sg13g2_decap_8 FILLER_0_96 ();
 sg13g2_decap_8 FILLER_0_103 ();
 sg13g2_fill_2 FILLER_0_110 ();
 sg13g2_fill_1 FILLER_0_112 ();
 sg13g2_decap_8 FILLER_1_0 ();
 sg13g2_decap_8 FILLER_1_7 ();
 sg13g2_decap_8 FILLER_1_14 ();
 sg13g2_decap_8 FILLER_1_21 ();
 sg13g2_decap_8 FILLER_1_28 ();
 sg13g2_decap_8 FILLER_1_35 ();
 sg13g2_decap_8 FILLER_1_42 ();
 sg13g2_decap_8 FILLER_1_49 ();
 sg13g2_decap_8 FILLER_1_56 ();
 sg13g2_decap_8 FILLER_1_63 ();
 sg13g2_decap_8 FILLER_1_70 ();
 sg13g2_decap_8 FILLER_1_77 ();
 sg13g2_decap_8 FILLER_1_84 ();
 sg13g2_decap_8 FILLER_1_91 ();
 sg13g2_decap_8 FILLER_1_98 ();
 sg13g2_decap_8 FILLER_1_105 ();
 sg13g2_fill_1 FILLER_1_112 ();
 sg13g2_decap_8 FILLER_2_0 ();
 sg13g2_decap_8 FILLER_2_7 ();
 sg13g2_decap_8 FILLER_2_14 ();
 sg13g2_decap_8 FILLER_2_21 ();
 sg13g2_decap_8 FILLER_2_28 ();
 sg13g2_decap_8 FILLER_2_35 ();
 sg13g2_decap_8 FILLER_2_42 ();
 sg13g2_fill_1 FILLER_2_49 ();
 sg13g2_decap_8 FILLER_2_77 ();
 sg13g2_decap_8 FILLER_2_84 ();
 sg13g2_decap_8 FILLER_2_91 ();
 sg13g2_decap_8 FILLER_2_98 ();
 sg13g2_decap_8 FILLER_2_105 ();
 sg13g2_fill_1 FILLER_2_112 ();
 sg13g2_decap_8 FILLER_3_0 ();
 sg13g2_decap_8 FILLER_3_7 ();
 sg13g2_decap_8 FILLER_3_14 ();
 sg13g2_decap_8 FILLER_3_21 ();
 sg13g2_decap_8 FILLER_3_28 ();
 sg13g2_decap_8 FILLER_3_35 ();
 sg13g2_decap_4 FILLER_3_42 ();
 sg13g2_fill_2 FILLER_3_46 ();
 sg13g2_decap_4 FILLER_3_107 ();
 sg13g2_fill_2 FILLER_3_111 ();
 sg13g2_decap_8 FILLER_4_0 ();
 sg13g2_decap_8 FILLER_4_7 ();
 sg13g2_decap_8 FILLER_4_14 ();
 sg13g2_decap_8 FILLER_4_21 ();
 sg13g2_decap_8 FILLER_4_28 ();
 sg13g2_decap_8 FILLER_4_35 ();
 sg13g2_decap_8 FILLER_4_42 ();
 sg13g2_decap_4 FILLER_4_49 ();
 sg13g2_fill_2 FILLER_4_53 ();
 sg13g2_fill_1 FILLER_4_59 ();
 sg13g2_decap_8 FILLER_4_64 ();
 sg13g2_fill_2 FILLER_4_71 ();
 sg13g2_fill_1 FILLER_4_73 ();
 sg13g2_fill_1 FILLER_4_79 ();
 sg13g2_decap_8 FILLER_4_89 ();
 sg13g2_decap_8 FILLER_4_96 ();
 sg13g2_decap_8 FILLER_4_103 ();
 sg13g2_fill_2 FILLER_4_110 ();
 sg13g2_fill_1 FILLER_4_112 ();
 sg13g2_decap_8 FILLER_5_0 ();
 sg13g2_decap_8 FILLER_5_7 ();
 sg13g2_decap_8 FILLER_5_14 ();
 sg13g2_decap_8 FILLER_5_21 ();
 sg13g2_decap_8 FILLER_5_28 ();
 sg13g2_decap_8 FILLER_5_35 ();
 sg13g2_decap_8 FILLER_5_42 ();
 sg13g2_decap_8 FILLER_5_49 ();
 sg13g2_fill_2 FILLER_5_56 ();
 sg13g2_fill_1 FILLER_5_58 ();
 sg13g2_decap_4 FILLER_5_80 ();
 sg13g2_fill_1 FILLER_5_84 ();
 sg13g2_decap_8 FILLER_5_89 ();
 sg13g2_decap_8 FILLER_5_96 ();
 sg13g2_decap_8 FILLER_5_103 ();
 sg13g2_fill_2 FILLER_5_110 ();
 sg13g2_fill_1 FILLER_5_112 ();
 sg13g2_decap_8 FILLER_6_0 ();
 sg13g2_decap_8 FILLER_6_7 ();
 sg13g2_decap_8 FILLER_6_14 ();
 sg13g2_decap_8 FILLER_6_21 ();
 sg13g2_decap_8 FILLER_6_28 ();
 sg13g2_decap_8 FILLER_6_35 ();
 sg13g2_decap_8 FILLER_6_42 ();
 sg13g2_decap_8 FILLER_6_49 ();
 sg13g2_decap_4 FILLER_6_56 ();
 sg13g2_decap_8 FILLER_6_94 ();
 sg13g2_decap_8 FILLER_6_101 ();
 sg13g2_decap_4 FILLER_6_108 ();
 sg13g2_fill_1 FILLER_6_112 ();
 sg13g2_decap_8 FILLER_7_0 ();
 sg13g2_decap_8 FILLER_7_7 ();
 sg13g2_decap_8 FILLER_7_14 ();
 sg13g2_decap_8 FILLER_7_21 ();
 sg13g2_decap_8 FILLER_7_28 ();
 sg13g2_decap_8 FILLER_7_35 ();
 sg13g2_decap_8 FILLER_7_42 ();
 sg13g2_decap_8 FILLER_7_49 ();
 sg13g2_decap_8 FILLER_7_56 ();
 sg13g2_fill_1 FILLER_7_63 ();
 sg13g2_fill_2 FILLER_7_69 ();
 sg13g2_fill_2 FILLER_7_107 ();
 sg13g2_decap_8 FILLER_8_0 ();
 sg13g2_decap_8 FILLER_8_7 ();
 sg13g2_decap_8 FILLER_8_14 ();
 sg13g2_decap_8 FILLER_8_21 ();
 sg13g2_fill_2 FILLER_8_28 ();
 sg13g2_decap_8 FILLER_8_57 ();
 sg13g2_decap_8 FILLER_8_64 ();
 sg13g2_decap_8 FILLER_8_71 ();
 sg13g2_decap_8 FILLER_8_78 ();
 sg13g2_decap_8 FILLER_8_85 ();
 sg13g2_decap_8 FILLER_8_92 ();
 sg13g2_decap_8 FILLER_8_99 ();
 sg13g2_decap_8 FILLER_8_106 ();
 sg13g2_decap_8 FILLER_9_8 ();
 sg13g2_decap_8 FILLER_9_21 ();
 sg13g2_fill_1 FILLER_9_28 ();
 sg13g2_decap_8 FILLER_9_56 ();
 sg13g2_fill_1 FILLER_9_63 ();
 sg13g2_decap_4 FILLER_9_69 ();
 sg13g2_decap_8 FILLER_9_77 ();
 sg13g2_decap_8 FILLER_9_84 ();
 sg13g2_decap_8 FILLER_9_91 ();
 sg13g2_decap_8 FILLER_9_98 ();
 sg13g2_decap_8 FILLER_9_105 ();
 sg13g2_fill_1 FILLER_9_112 ();
 sg13g2_decap_8 FILLER_10_0 ();
 sg13g2_decap_8 FILLER_10_7 ();
 sg13g2_decap_8 FILLER_10_14 ();
 sg13g2_decap_8 FILLER_10_21 ();
 sg13g2_decap_4 FILLER_10_28 ();
 sg13g2_fill_2 FILLER_10_32 ();
 sg13g2_decap_8 FILLER_10_42 ();
 sg13g2_decap_8 FILLER_10_49 ();
 sg13g2_decap_4 FILLER_10_56 ();
 sg13g2_fill_1 FILLER_10_60 ();
 sg13g2_decap_4 FILLER_10_64 ();
 sg13g2_decap_8 FILLER_10_95 ();
 sg13g2_decap_8 FILLER_10_102 ();
 sg13g2_decap_4 FILLER_10_109 ();
 sg13g2_decap_8 FILLER_11_0 ();
 sg13g2_decap_8 FILLER_11_7 ();
 sg13g2_decap_8 FILLER_11_14 ();
 sg13g2_decap_8 FILLER_11_21 ();
 sg13g2_decap_8 FILLER_11_28 ();
 sg13g2_decap_8 FILLER_11_35 ();
 sg13g2_decap_8 FILLER_11_42 ();
 sg13g2_decap_4 FILLER_11_49 ();
 sg13g2_fill_2 FILLER_11_53 ();
 sg13g2_decap_8 FILLER_11_80 ();
 sg13g2_decap_8 FILLER_11_87 ();
 sg13g2_decap_8 FILLER_11_94 ();
 sg13g2_decap_8 FILLER_11_101 ();
 sg13g2_decap_4 FILLER_11_108 ();
 sg13g2_fill_1 FILLER_11_112 ();
 sg13g2_decap_8 FILLER_12_0 ();
 sg13g2_decap_8 FILLER_12_7 ();
 sg13g2_decap_8 FILLER_12_14 ();
 sg13g2_decap_8 FILLER_12_21 ();
 sg13g2_decap_8 FILLER_12_28 ();
 sg13g2_decap_8 FILLER_12_35 ();
 sg13g2_decap_8 FILLER_12_42 ();
 sg13g2_decap_8 FILLER_12_49 ();
 sg13g2_fill_2 FILLER_12_56 ();
 sg13g2_fill_1 FILLER_12_58 ();
 sg13g2_decap_8 FILLER_12_63 ();
 sg13g2_decap_8 FILLER_12_70 ();
 sg13g2_decap_8 FILLER_12_77 ();
 sg13g2_decap_8 FILLER_12_84 ();
 sg13g2_decap_8 FILLER_12_91 ();
 sg13g2_decap_8 FILLER_12_98 ();
 sg13g2_decap_8 FILLER_12_105 ();
 sg13g2_fill_1 FILLER_12_112 ();
endmodule
