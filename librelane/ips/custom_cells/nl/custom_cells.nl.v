module custom_cells (a,
    b,
    clk,
    sel,
    y,
    z);
 input a;
 input b;
 input clk;
 input sel;
 output y;
 output z;

 wire net6;
 wire clknet_0_clk;
 wire net1;
 wire net2;
 wire mux0_pre;
 wire mux1_pre;
 wire net3;
 wire net4;
 wire net5;
 wire net;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;

 sg13g2_mux2_1 _2_ (.A0(net1),
    .A1(net2),
    .S(net3),
    .X(mux0_pre));
 sg13g2_mux2_1 _3_ (.A0(net2),
    .A1(net1),
    .S(net3),
    .X(mux1_pre));
 sg13g2_dfrbpq_1 _4_ (.RESET_B(net),
    .D(mux0_pre),
    .Q(net4),
    .CLK(clknet_1_0__leaf_clk));
 sg13g2_dfrbpq_1 _5_ (.RESET_B(net6),
    .D(mux1_pre),
    .Q(net5),
    .CLK(clknet_1_1__leaf_clk));
 sg13g2_tiehi _5__7 (.L_HI(net6));
 sg13g2_buf_16 clkbuf_0_clk (.X(clknet_0_clk),
    .A(clk));
 sg13g2_buf_1 input1 (.A(a),
    .X(net1));
 sg13g2_buf_1 input2 (.A(b),
    .X(net2));
 sg13g2_buf_1 input3 (.A(sel),
    .X(net3));
 sg13g2_buf_1 output4 (.A(net4),
    .X(y));
 sg13g2_buf_1 output5 (.A(net5),
    .X(z));
 sg13g2_tiehi _4__6 (.L_HI(net));
 sg13g2_buf_16 clkbuf_1_0__f_clk (.X(clknet_1_0__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_buf_16 clkbuf_1_1__f_clk (.X(clknet_1_1__leaf_clk),
    .A(clknet_0_clk));
 sg13g2_decap_8 FILLER_0_0 ();
 sg13g2_decap_8 FILLER_0_7 ();
 sg13g2_decap_8 FILLER_0_14 ();
 sg13g2_decap_8 FILLER_0_21 ();
 sg13g2_decap_8 FILLER_0_28 ();
 sg13g2_decap_8 FILLER_0_35 ();
 sg13g2_decap_4 FILLER_0_42 ();
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
 sg13g2_fill_1 FILLER_1_70 ();
 sg13g2_decap_8 FILLER_2_0 ();
 sg13g2_decap_8 FILLER_2_7 ();
 sg13g2_decap_4 FILLER_2_14 ();
 sg13g2_fill_1 FILLER_2_18 ();
 sg13g2_decap_8 FILLER_2_29 ();
 sg13g2_decap_8 FILLER_2_36 ();
 sg13g2_decap_8 FILLER_2_43 ();
 sg13g2_decap_8 FILLER_2_50 ();
 sg13g2_decap_8 FILLER_2_57 ();
 sg13g2_decap_8 FILLER_2_64 ();
 sg13g2_decap_8 FILLER_3_4 ();
 sg13g2_decap_8 FILLER_3_11 ();
 sg13g2_fill_1 FILLER_3_18 ();
 sg13g2_decap_4 FILLER_3_29 ();
 sg13g2_decap_8 FILLER_3_60 ();
 sg13g2_decap_4 FILLER_3_67 ();
 sg13g2_decap_8 FILLER_4_8 ();
 sg13g2_decap_8 FILLER_4_15 ();
 sg13g2_decap_8 FILLER_4_22 ();
 sg13g2_fill_2 FILLER_4_60 ();
 sg13g2_fill_1 FILLER_4_62 ();
 sg13g2_decap_8 FILLER_5_0 ();
 sg13g2_decap_8 FILLER_5_7 ();
 sg13g2_decap_8 FILLER_5_14 ();
 sg13g2_decap_8 FILLER_5_21 ();
 sg13g2_decap_8 FILLER_5_28 ();
 sg13g2_fill_2 FILLER_5_35 ();
 sg13g2_fill_1 FILLER_5_37 ();
 sg13g2_decap_4 FILLER_5_42 ();
 sg13g2_decap_8 FILLER_6_0 ();
 sg13g2_decap_8 FILLER_6_7 ();
 sg13g2_decap_8 FILLER_6_14 ();
 sg13g2_decap_8 FILLER_6_21 ();
 sg13g2_decap_8 FILLER_6_28 ();
 sg13g2_decap_8 FILLER_6_35 ();
 sg13g2_decap_8 FILLER_6_42 ();
 sg13g2_decap_8 FILLER_6_49 ();
 sg13g2_decap_8 FILLER_6_56 ();
 sg13g2_decap_8 FILLER_6_63 ();
 sg13g2_fill_1 FILLER_6_70 ();
 sg13g2_decap_8 FILLER_7_0 ();
 sg13g2_decap_8 FILLER_7_7 ();
 sg13g2_decap_8 FILLER_7_14 ();
 sg13g2_decap_8 FILLER_7_21 ();
 sg13g2_decap_8 FILLER_7_28 ();
 sg13g2_decap_8 FILLER_7_35 ();
 sg13g2_decap_4 FILLER_7_42 ();
endmodule
