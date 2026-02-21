module multimode_dll (bias,
    clk0_out,
    clk1_out,
    clk2_out,
    dco,
    enable,
    osc,
    osc_out,
    resetb,
    stable,
    clk0_phase_sel,
    clk1_phase_sel,
    clk2_phase_sel,
    ext_trim,
    f_clk0_divider,
    f_clk1_divider,
    f_clk2_divider,
    f_osc_multiply_factor,
    mode_xor);
 input bias;
 output clk0_out;
 output clk1_out;
 output clk2_out;
 input dco;
 input enable;
 input osc;
 output osc_out;
 input resetb;
 output stable;
 input [4:0] clk0_phase_sel;
 input [4:0] clk1_phase_sel;
 input [4:0] clk2_phase_sel;
 input [25:0] ext_trim;
 input [4:0] f_clk0_divider;
 input [4:0] f_clk1_divider;
 input [4:0] f_clk2_divider;
 input [4:0] f_osc_multiply_factor;
 input [2:0] mode_xor;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire net1;
 wire clk0_180_to_360_expand;
 wire clk0_int;
 wire net69;
 wire clk0_out_xor;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire clk0_phase_sel_check_0_;
 wire clk0_phase_sel_check_1_;
 wire clk0_phase_sel_check_2_;
 wire clk0_phase_sel_check_3_;
 wire clk1_180_to_360_expand;
 wire clk1_int;
 wire net70;
 wire clk1_out_xor;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire clk1_phase_sel_check_0_;
 wire clk1_phase_sel_check_1_;
 wire clk1_phase_sel_check_2_;
 wire clk1_phase_sel_check_3_;
 wire clk2_180_to_360_expand;
 wire clk2_int;
 wire net71;
 wire clk2_out_xor;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire clk2_phase_sel_check_0_;
 wire clk2_phase_sel_check_1_;
 wire clk2_phase_sel_check_2_;
 wire clk2_phase_sel_check_3_;
 wire net17;
 wire dll_clks_0_;
 wire dll_clks_10_;
 wire dll_clks_11_;
 wire dll_clks_12_;
 wire dll_clks_1_;
 wire dll_clks_2_;
 wire dll_clks_3_;
 wire dll_clks_4_;
 wire dll_clks_5_;
 wire dll_clks_6_;
 wire dll_clks_7_;
 wire dll_clks_8_;
 wire dll_clks_9_;
 wire dll_stable;
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
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net72;
 wire net68;
 wire net73;
 wire \u_clk_div0/_00_ ;
 wire \u_clk_div0/_01_ ;
 wire \u_clk_div0/_02_ ;
 wire \u_clk_div0/_03_ ;
 wire \u_clk_div0/_04_ ;
 wire \u_clk_div0/_05_ ;
 wire \u_clk_div0/_06_ ;
 wire \u_clk_div0/_07_ ;
 wire \u_clk_div0/_08_ ;
 wire \u_clk_div0/enable_even ;
 wire \u_clk_div0/enable_odd ;
 wire \u_clk_div0/not_zero ;
 wire \u_clk_div0/out_buf ;
 wire \u_clk_div0/out_even ;
 wire \u_clk_div0/out_odd ;
 wire \u_clk_div0/syncN_0_ ;
 wire \u_clk_div0/syncN_1_ ;
 wire \u_clk_div0/syncN_2_ ;
 wire \u_clk_div0/syncN_3_ ;
 wire \u_clk_div0/syncN_4_ ;
 wire \u_clk_div0/syncNp_0_ ;
 wire \u_clk_div0/syncNp_2_ ;
 wire \u_clk_div0/syncNp_3_ ;
 wire \u_clk_div0/syncNp_4_ ;
 wire \u_clk_div0/even_0/_00_ ;
 wire \u_clk_div0/even_0/_01_ ;
 wire \u_clk_div0/even_0/_02_ ;
 wire \u_clk_div0/even_0/_03_ ;
 wire \u_clk_div0/even_0/_04_ ;
 wire \u_clk_div0/even_0/_05_ ;
 wire \u_clk_div0/even_0/_06_ ;
 wire \u_clk_div0/even_0/_07_ ;
 wire \u_clk_div0/even_0/_08_ ;
 wire \u_clk_div0/even_0/_09_ ;
 wire \u_clk_div0/even_0/_10_ ;
 wire \u_clk_div0/even_0/_11_ ;
 wire \u_clk_div0/even_0/_12_ ;
 wire \u_clk_div0/even_0/_13_ ;
 wire \u_clk_div0/even_0/_14_ ;
 wire \u_clk_div0/even_0/_15_ ;
 wire \u_clk_div0/even_0/_16_ ;
 wire \u_clk_div0/even_0/_17_ ;
 wire \u_clk_div0/even_0/_18_ ;
 wire \u_clk_div0/even_0/_19_ ;
 wire \u_clk_div0/even_0/_20_ ;
 wire \u_clk_div0/even_0/_21_ ;
 wire \u_clk_div0/even_0/_22_ ;
 wire \u_clk_div0/even_0/_23_ ;
 wire \u_clk_div0/even_0/_24_ ;
 wire \u_clk_div0/even_0/_25_ ;
 wire \u_clk_div0/even_0/clk_delayed_0_ ;
 wire \u_clk_div0/even_0/clk_delayed_1_ ;
 wire \u_clk_div0/even_0/clk_delayed_2_ ;
 wire \u_clk_div0/even_0/counter_1_ ;
 wire \u_clk_div0/even_0/counter_2_ ;
 wire \u_clk_div0/even_0/counter_3_ ;
 wire \u_clk_div0/even_0/counter_4_ ;
 wire \u_clk_div0/even_0/out_counter ;
 wire \u_clk_div0/even_0/out_counter_delayed_0_ ;
 wire \u_clk_div0/even_0/out_counter_delayed_1_ ;
 wire \u_clk_div0/even_0/out_counter_delayed_2_ ;
 wire \u_clk_div0/odd_0/_000_ ;
 wire \u_clk_div0/odd_0/_001_ ;
 wire \u_clk_div0/odd_0/_002_ ;
 wire \u_clk_div0/odd_0/_003_ ;
 wire \u_clk_div0/odd_0/_004_ ;
 wire \u_clk_div0/odd_0/_005_ ;
 wire \u_clk_div0/odd_0/_006_ ;
 wire \u_clk_div0/odd_0/_007_ ;
 wire \u_clk_div0/odd_0/_008_ ;
 wire \u_clk_div0/odd_0/_009_ ;
 wire \u_clk_div0/odd_0/_010_ ;
 wire \u_clk_div0/odd_0/_011_ ;
 wire \u_clk_div0/odd_0/_012_ ;
 wire \u_clk_div0/odd_0/_013_ ;
 wire \u_clk_div0/odd_0/_014_ ;
 wire \u_clk_div0/odd_0/_015_ ;
 wire \u_clk_div0/odd_0/_016_ ;
 wire \u_clk_div0/odd_0/_017_ ;
 wire \u_clk_div0/odd_0/_018_ ;
 wire \u_clk_div0/odd_0/_019_ ;
 wire \u_clk_div0/odd_0/_020_ ;
 wire \u_clk_div0/odd_0/_021_ ;
 wire \u_clk_div0/odd_0/_022_ ;
 wire \u_clk_div0/odd_0/_023_ ;
 wire \u_clk_div0/odd_0/_024_ ;
 wire \u_clk_div0/odd_0/_025_ ;
 wire \u_clk_div0/odd_0/_026_ ;
 wire \u_clk_div0/odd_0/_027_ ;
 wire \u_clk_div0/odd_0/_028_ ;
 wire \u_clk_div0/odd_0/_029_ ;
 wire \u_clk_div0/odd_0/_030_ ;
 wire \u_clk_div0/odd_0/_031_ ;
 wire \u_clk_div0/odd_0/_032_ ;
 wire \u_clk_div0/odd_0/_033_ ;
 wire \u_clk_div0/odd_0/_034_ ;
 wire \u_clk_div0/odd_0/_035_ ;
 wire \u_clk_div0/odd_0/_036_ ;
 wire \u_clk_div0/odd_0/_037_ ;
 wire \u_clk_div0/odd_0/_038_ ;
 wire \u_clk_div0/odd_0/_039_ ;
 wire \u_clk_div0/odd_0/_040_ ;
 wire \u_clk_div0/odd_0/_041_ ;
 wire \u_clk_div0/odd_0/_042_ ;
 wire \u_clk_div0/odd_0/_043_ ;
 wire \u_clk_div0/odd_0/_044_ ;
 wire \u_clk_div0/odd_0/_045_ ;
 wire \u_clk_div0/odd_0/_046_ ;
 wire \u_clk_div0/odd_0/_047_ ;
 wire \u_clk_div0/odd_0/_048_ ;
 wire \u_clk_div0/odd_0/_049_ ;
 wire \u_clk_div0/odd_0/_050_ ;
 wire \u_clk_div0/odd_0/_051_ ;
 wire net172;
 wire net173;
 wire net174;
 wire net175;
 wire net176;
 wire net177;
 wire net178;
 wire net179;
 wire net180;
 wire net181;
 wire net182;
 wire \u_clk_div0/odd_0/_063_ ;
 wire \u_clk_div0/odd_0/_064_ ;
 wire \u_clk_div0/odd_0/_065_ ;
 wire \u_clk_div0/odd_0/_066_ ;
 wire \u_clk_div0/odd_0/_067_ ;
 wire \u_clk_div0/odd_0/_068_ ;
 wire \u_clk_div0/odd_0/_069_ ;
 wire \u_clk_div0/odd_0/_070_ ;
 wire \u_clk_div0/odd_0/_071_ ;
 wire \u_clk_div0/odd_0/_072_ ;
 wire \u_clk_div0/odd_0/_073_ ;
 wire \u_clk_div0/odd_0/_074_ ;
 wire \u_clk_div0/odd_0/_075_ ;
 wire \u_clk_div0/odd_0/_076_ ;
 wire \u_clk_div0/odd_0/_077_ ;
 wire \u_clk_div0/odd_0/_078_ ;
 wire \u_clk_div0/odd_0/_079_ ;
 wire \u_clk_div0/odd_0/_080_ ;
 wire \u_clk_div0/odd_0/_081_ ;
 wire \u_clk_div0/odd_0/_082_ ;
 wire \u_clk_div0/odd_0/_083_ ;
 wire \u_clk_div0/odd_0/_084_ ;
 wire \u_clk_div0/odd_0/_085_ ;
 wire \u_clk_div0/odd_0/_086_ ;
 wire \u_clk_div0/odd_0/_087_ ;
 wire \u_clk_div0/odd_0/_088_ ;
 wire \u_clk_div0/odd_0/_089_ ;
 wire \u_clk_div0/odd_0/_090_ ;
 wire \u_clk_div0/odd_0/_091_ ;
 wire \u_clk_div0/odd_0/_092_ ;
 wire \u_clk_div0/odd_0/_093_ ;
 wire \u_clk_div0/odd_0/_094_ ;
 wire \u_clk_div0/odd_0/_095_ ;
 wire \u_clk_div0/odd_0/_096_ ;
 wire \u_clk_div0/odd_0/_097_ ;
 wire \u_clk_div0/odd_0/_098_ ;
 wire \u_clk_div0/odd_0/_099_ ;
 wire \u_clk_div0/odd_0/_100_ ;
 wire \u_clk_div0/odd_0/_101_ ;
 wire \u_clk_div0/odd_0/_102_ ;
 wire \u_clk_div0/odd_0/_103_ ;
 wire \u_clk_div0/odd_0/_104_ ;
 wire \u_clk_div0/odd_0/_105_ ;
 wire \u_clk_div0/odd_0/_106_ ;
 wire \u_clk_div0/odd_0/_107_ ;
 wire \u_clk_div0/odd_0/_108_ ;
 wire \u_clk_div0/odd_0/_109_ ;
 wire \u_clk_div0/odd_0/_110_ ;
 wire \u_clk_div0/odd_0/_111_ ;
 wire \u_clk_div0/odd_0/_112_ ;
 wire \u_clk_div0/odd_0/_113_ ;
 wire \u_clk_div0/odd_0/_114_ ;
 wire \u_clk_div0/odd_0/_115_ ;
 wire \u_clk_div0/odd_0/_116_ ;
 wire \u_clk_div0/odd_0/_117_ ;
 wire \u_clk_div0/odd_0/_118_ ;
 wire \u_clk_div0/odd_0/_119_ ;
 wire \u_clk_div0/odd_0/_120_ ;
 wire \u_clk_div0/odd_0/_121_ ;
 wire \u_clk_div0/odd_0/_122_ ;
 wire net134;
 wire net135;
 wire net136;
 wire net137;
 wire net138;
 wire \u_clk_div0/odd_0/counter2_0_ ;
 wire \u_clk_div0/odd_0/counter2_2_ ;
 wire \u_clk_div0/odd_0/counter2_3_ ;
 wire \u_clk_div0/odd_0/counter2_4_ ;
 wire \u_clk_div0/odd_0/counter_0_ ;
 wire \u_clk_div0/odd_0/counter_2_ ;
 wire \u_clk_div0/odd_0/counter_3_ ;
 wire \u_clk_div0/odd_0/counter_4_ ;
 wire \u_clk_div0/odd_0/initial_begin_0_ ;
 wire \u_clk_div0/odd_0/initial_begin_2_ ;
 wire \u_clk_div0/odd_0/initial_begin_3_ ;
 wire \u_clk_div0/odd_0/initial_begin_4_ ;
 wire \u_clk_div0/odd_0/old_N_0_ ;
 wire \u_clk_div0/odd_0/old_N_1_ ;
 wire \u_clk_div0/odd_0/old_N_2_ ;
 wire \u_clk_div0/odd_0/old_N_3_ ;
 wire \u_clk_div0/odd_0/old_N_4_ ;
 wire \u_clk_div0/odd_0/out_delayed_0_ ;
 wire \u_clk_div0/odd_0/out_pre ;
 wire \u_clk_div0/odd_0/rst_pulse ;
 wire \u_clk_div1/_00_ ;
 wire \u_clk_div1/_01_ ;
 wire \u_clk_div1/_02_ ;
 wire \u_clk_div1/_03_ ;
 wire \u_clk_div1/_04_ ;
 wire \u_clk_div1/_05_ ;
 wire \u_clk_div1/_06_ ;
 wire \u_clk_div1/_07_ ;
 wire \u_clk_div1/_08_ ;
 wire \u_clk_div1/enable_even ;
 wire \u_clk_div1/enable_odd ;
 wire \u_clk_div1/not_zero ;
 wire \u_clk_div1/out_buf ;
 wire \u_clk_div1/out_even ;
 wire \u_clk_div1/out_odd ;
 wire \u_clk_div1/syncN_0_ ;
 wire \u_clk_div1/syncN_1_ ;
 wire \u_clk_div1/syncN_2_ ;
 wire \u_clk_div1/syncN_3_ ;
 wire \u_clk_div1/syncN_4_ ;
 wire \u_clk_div1/syncNp_0_ ;
 wire \u_clk_div1/syncNp_2_ ;
 wire \u_clk_div1/syncNp_3_ ;
 wire \u_clk_div1/syncNp_4_ ;
 wire \u_clk_div1/even_0/_00_ ;
 wire \u_clk_div1/even_0/_01_ ;
 wire \u_clk_div1/even_0/_02_ ;
 wire \u_clk_div1/even_0/_03_ ;
 wire \u_clk_div1/even_0/_04_ ;
 wire \u_clk_div1/even_0/_05_ ;
 wire \u_clk_div1/even_0/_06_ ;
 wire \u_clk_div1/even_0/_07_ ;
 wire \u_clk_div1/even_0/_08_ ;
 wire \u_clk_div1/even_0/_09_ ;
 wire \u_clk_div1/even_0/_10_ ;
 wire \u_clk_div1/even_0/_11_ ;
 wire \u_clk_div1/even_0/_12_ ;
 wire \u_clk_div1/even_0/_13_ ;
 wire \u_clk_div1/even_0/_14_ ;
 wire \u_clk_div1/even_0/_15_ ;
 wire \u_clk_div1/even_0/_16_ ;
 wire \u_clk_div1/even_0/_17_ ;
 wire \u_clk_div1/even_0/_18_ ;
 wire \u_clk_div1/even_0/_19_ ;
 wire \u_clk_div1/even_0/_20_ ;
 wire \u_clk_div1/even_0/_21_ ;
 wire \u_clk_div1/even_0/_22_ ;
 wire \u_clk_div1/even_0/_23_ ;
 wire \u_clk_div1/even_0/_24_ ;
 wire \u_clk_div1/even_0/_25_ ;
 wire \u_clk_div1/even_0/clk_delayed_0_ ;
 wire \u_clk_div1/even_0/clk_delayed_1_ ;
 wire \u_clk_div1/even_0/clk_delayed_2_ ;
 wire \u_clk_div1/even_0/counter_1_ ;
 wire \u_clk_div1/even_0/counter_2_ ;
 wire \u_clk_div1/even_0/counter_3_ ;
 wire \u_clk_div1/even_0/counter_4_ ;
 wire \u_clk_div1/even_0/out_counter ;
 wire \u_clk_div1/even_0/out_counter_delayed_0_ ;
 wire \u_clk_div1/even_0/out_counter_delayed_1_ ;
 wire \u_clk_div1/even_0/out_counter_delayed_2_ ;
 wire \u_clk_div1/odd_0/_000_ ;
 wire \u_clk_div1/odd_0/_001_ ;
 wire \u_clk_div1/odd_0/_002_ ;
 wire \u_clk_div1/odd_0/_003_ ;
 wire \u_clk_div1/odd_0/_004_ ;
 wire \u_clk_div1/odd_0/_005_ ;
 wire \u_clk_div1/odd_0/_006_ ;
 wire \u_clk_div1/odd_0/_007_ ;
 wire \u_clk_div1/odd_0/_008_ ;
 wire \u_clk_div1/odd_0/_009_ ;
 wire \u_clk_div1/odd_0/_010_ ;
 wire \u_clk_div1/odd_0/_011_ ;
 wire \u_clk_div1/odd_0/_012_ ;
 wire \u_clk_div1/odd_0/_013_ ;
 wire \u_clk_div1/odd_0/_014_ ;
 wire \u_clk_div1/odd_0/_015_ ;
 wire \u_clk_div1/odd_0/_016_ ;
 wire \u_clk_div1/odd_0/_017_ ;
 wire \u_clk_div1/odd_0/_018_ ;
 wire \u_clk_div1/odd_0/_019_ ;
 wire \u_clk_div1/odd_0/_020_ ;
 wire \u_clk_div1/odd_0/_021_ ;
 wire \u_clk_div1/odd_0/_022_ ;
 wire \u_clk_div1/odd_0/_023_ ;
 wire \u_clk_div1/odd_0/_024_ ;
 wire \u_clk_div1/odd_0/_025_ ;
 wire \u_clk_div1/odd_0/_026_ ;
 wire \u_clk_div1/odd_0/_027_ ;
 wire \u_clk_div1/odd_0/_028_ ;
 wire \u_clk_div1/odd_0/_029_ ;
 wire \u_clk_div1/odd_0/_030_ ;
 wire \u_clk_div1/odd_0/_031_ ;
 wire \u_clk_div1/odd_0/_032_ ;
 wire \u_clk_div1/odd_0/_033_ ;
 wire \u_clk_div1/odd_0/_034_ ;
 wire \u_clk_div1/odd_0/_035_ ;
 wire \u_clk_div1/odd_0/_036_ ;
 wire \u_clk_div1/odd_0/_037_ ;
 wire \u_clk_div1/odd_0/_038_ ;
 wire \u_clk_div1/odd_0/_039_ ;
 wire \u_clk_div1/odd_0/_040_ ;
 wire \u_clk_div1/odd_0/_041_ ;
 wire \u_clk_div1/odd_0/_042_ ;
 wire \u_clk_div1/odd_0/_043_ ;
 wire \u_clk_div1/odd_0/_044_ ;
 wire \u_clk_div1/odd_0/_045_ ;
 wire \u_clk_div1/odd_0/_046_ ;
 wire \u_clk_div1/odd_0/_047_ ;
 wire \u_clk_div1/odd_0/_048_ ;
 wire \u_clk_div1/odd_0/_049_ ;
 wire \u_clk_div1/odd_0/_050_ ;
 wire \u_clk_div1/odd_0/_051_ ;
 wire net150;
 wire net151;
 wire net152;
 wire net153;
 wire net154;
 wire net155;
 wire net156;
 wire net157;
 wire net158;
 wire net159;
 wire net160;
 wire \u_clk_div1/odd_0/_063_ ;
 wire \u_clk_div1/odd_0/_064_ ;
 wire \u_clk_div1/odd_0/_065_ ;
 wire \u_clk_div1/odd_0/_066_ ;
 wire \u_clk_div1/odd_0/_067_ ;
 wire \u_clk_div1/odd_0/_068_ ;
 wire \u_clk_div1/odd_0/_069_ ;
 wire \u_clk_div1/odd_0/_070_ ;
 wire \u_clk_div1/odd_0/_071_ ;
 wire \u_clk_div1/odd_0/_072_ ;
 wire \u_clk_div1/odd_0/_073_ ;
 wire \u_clk_div1/odd_0/_074_ ;
 wire \u_clk_div1/odd_0/_075_ ;
 wire \u_clk_div1/odd_0/_076_ ;
 wire \u_clk_div1/odd_0/_077_ ;
 wire \u_clk_div1/odd_0/_078_ ;
 wire \u_clk_div1/odd_0/_079_ ;
 wire \u_clk_div1/odd_0/_080_ ;
 wire \u_clk_div1/odd_0/_081_ ;
 wire \u_clk_div1/odd_0/_082_ ;
 wire \u_clk_div1/odd_0/_083_ ;
 wire \u_clk_div1/odd_0/_084_ ;
 wire \u_clk_div1/odd_0/_085_ ;
 wire \u_clk_div1/odd_0/_086_ ;
 wire \u_clk_div1/odd_0/_087_ ;
 wire \u_clk_div1/odd_0/_088_ ;
 wire \u_clk_div1/odd_0/_089_ ;
 wire \u_clk_div1/odd_0/_090_ ;
 wire \u_clk_div1/odd_0/_091_ ;
 wire \u_clk_div1/odd_0/_092_ ;
 wire \u_clk_div1/odd_0/_093_ ;
 wire \u_clk_div1/odd_0/_094_ ;
 wire \u_clk_div1/odd_0/_095_ ;
 wire \u_clk_div1/odd_0/_096_ ;
 wire \u_clk_div1/odd_0/_097_ ;
 wire \u_clk_div1/odd_0/_098_ ;
 wire \u_clk_div1/odd_0/_099_ ;
 wire \u_clk_div1/odd_0/_100_ ;
 wire \u_clk_div1/odd_0/_101_ ;
 wire \u_clk_div1/odd_0/_102_ ;
 wire \u_clk_div1/odd_0/_103_ ;
 wire \u_clk_div1/odd_0/_104_ ;
 wire \u_clk_div1/odd_0/_105_ ;
 wire \u_clk_div1/odd_0/_106_ ;
 wire \u_clk_div1/odd_0/_107_ ;
 wire \u_clk_div1/odd_0/_108_ ;
 wire \u_clk_div1/odd_0/_109_ ;
 wire \u_clk_div1/odd_0/_110_ ;
 wire \u_clk_div1/odd_0/_111_ ;
 wire \u_clk_div1/odd_0/_112_ ;
 wire \u_clk_div1/odd_0/_113_ ;
 wire \u_clk_div1/odd_0/_114_ ;
 wire \u_clk_div1/odd_0/_115_ ;
 wire \u_clk_div1/odd_0/_116_ ;
 wire \u_clk_div1/odd_0/_117_ ;
 wire \u_clk_div1/odd_0/_118_ ;
 wire \u_clk_div1/odd_0/_119_ ;
 wire \u_clk_div1/odd_0/_120_ ;
 wire \u_clk_div1/odd_0/_121_ ;
 wire \u_clk_div1/odd_0/_122_ ;
 wire net139;
 wire net140;
 wire net141;
 wire net142;
 wire net143;
 wire \u_clk_div1/odd_0/counter2_0_ ;
 wire \u_clk_div1/odd_0/counter2_2_ ;
 wire \u_clk_div1/odd_0/counter2_3_ ;
 wire \u_clk_div1/odd_0/counter2_4_ ;
 wire \u_clk_div1/odd_0/counter_0_ ;
 wire \u_clk_div1/odd_0/counter_2_ ;
 wire \u_clk_div1/odd_0/counter_3_ ;
 wire \u_clk_div1/odd_0/counter_4_ ;
 wire \u_clk_div1/odd_0/initial_begin_0_ ;
 wire \u_clk_div1/odd_0/initial_begin_2_ ;
 wire \u_clk_div1/odd_0/initial_begin_3_ ;
 wire \u_clk_div1/odd_0/initial_begin_4_ ;
 wire \u_clk_div1/odd_0/old_N_0_ ;
 wire \u_clk_div1/odd_0/old_N_1_ ;
 wire \u_clk_div1/odd_0/old_N_2_ ;
 wire \u_clk_div1/odd_0/old_N_3_ ;
 wire \u_clk_div1/odd_0/old_N_4_ ;
 wire \u_clk_div1/odd_0/out_delayed_0_ ;
 wire \u_clk_div1/odd_0/out_pre ;
 wire \u_clk_div1/odd_0/rst_pulse ;
 wire \u_clk_div2/_00_ ;
 wire \u_clk_div2/_01_ ;
 wire \u_clk_div2/_02_ ;
 wire \u_clk_div2/_03_ ;
 wire \u_clk_div2/_04_ ;
 wire \u_clk_div2/_05_ ;
 wire \u_clk_div2/_06_ ;
 wire \u_clk_div2/_07_ ;
 wire \u_clk_div2/_08_ ;
 wire \u_clk_div2/enable_even ;
 wire \u_clk_div2/enable_odd ;
 wire \u_clk_div2/not_zero ;
 wire \u_clk_div2/out_buf ;
 wire \u_clk_div2/out_even ;
 wire \u_clk_div2/out_odd ;
 wire \u_clk_div2/syncN_0_ ;
 wire \u_clk_div2/syncN_1_ ;
 wire \u_clk_div2/syncN_2_ ;
 wire \u_clk_div2/syncN_3_ ;
 wire \u_clk_div2/syncN_4_ ;
 wire \u_clk_div2/syncNp_0_ ;
 wire \u_clk_div2/syncNp_2_ ;
 wire \u_clk_div2/syncNp_3_ ;
 wire \u_clk_div2/syncNp_4_ ;
 wire \u_clk_div2/even_0/_00_ ;
 wire \u_clk_div2/even_0/_01_ ;
 wire \u_clk_div2/even_0/_02_ ;
 wire \u_clk_div2/even_0/_03_ ;
 wire \u_clk_div2/even_0/_04_ ;
 wire \u_clk_div2/even_0/_05_ ;
 wire \u_clk_div2/even_0/_06_ ;
 wire \u_clk_div2/even_0/_07_ ;
 wire \u_clk_div2/even_0/_08_ ;
 wire \u_clk_div2/even_0/_09_ ;
 wire \u_clk_div2/even_0/_10_ ;
 wire \u_clk_div2/even_0/_11_ ;
 wire \u_clk_div2/even_0/_12_ ;
 wire \u_clk_div2/even_0/_13_ ;
 wire \u_clk_div2/even_0/_14_ ;
 wire \u_clk_div2/even_0/_15_ ;
 wire \u_clk_div2/even_0/_16_ ;
 wire \u_clk_div2/even_0/_17_ ;
 wire \u_clk_div2/even_0/_18_ ;
 wire \u_clk_div2/even_0/_19_ ;
 wire \u_clk_div2/even_0/_20_ ;
 wire \u_clk_div2/even_0/_21_ ;
 wire \u_clk_div2/even_0/_22_ ;
 wire \u_clk_div2/even_0/_23_ ;
 wire \u_clk_div2/even_0/_24_ ;
 wire \u_clk_div2/even_0/_25_ ;
 wire \u_clk_div2/even_0/clk_delayed_0_ ;
 wire \u_clk_div2/even_0/clk_delayed_1_ ;
 wire \u_clk_div2/even_0/clk_delayed_2_ ;
 wire \u_clk_div2/even_0/counter_1_ ;
 wire \u_clk_div2/even_0/counter_2_ ;
 wire \u_clk_div2/even_0/counter_3_ ;
 wire \u_clk_div2/even_0/counter_4_ ;
 wire \u_clk_div2/even_0/out_counter ;
 wire \u_clk_div2/even_0/out_counter_delayed_0_ ;
 wire \u_clk_div2/even_0/out_counter_delayed_1_ ;
 wire \u_clk_div2/even_0/out_counter_delayed_2_ ;
 wire \u_clk_div2/odd_0/_000_ ;
 wire \u_clk_div2/odd_0/_001_ ;
 wire \u_clk_div2/odd_0/_002_ ;
 wire \u_clk_div2/odd_0/_003_ ;
 wire \u_clk_div2/odd_0/_004_ ;
 wire \u_clk_div2/odd_0/_005_ ;
 wire \u_clk_div2/odd_0/_006_ ;
 wire \u_clk_div2/odd_0/_007_ ;
 wire \u_clk_div2/odd_0/_008_ ;
 wire \u_clk_div2/odd_0/_009_ ;
 wire \u_clk_div2/odd_0/_010_ ;
 wire \u_clk_div2/odd_0/_011_ ;
 wire \u_clk_div2/odd_0/_012_ ;
 wire \u_clk_div2/odd_0/_013_ ;
 wire \u_clk_div2/odd_0/_014_ ;
 wire \u_clk_div2/odd_0/_015_ ;
 wire \u_clk_div2/odd_0/_016_ ;
 wire \u_clk_div2/odd_0/_017_ ;
 wire \u_clk_div2/odd_0/_018_ ;
 wire \u_clk_div2/odd_0/_019_ ;
 wire \u_clk_div2/odd_0/_020_ ;
 wire \u_clk_div2/odd_0/_021_ ;
 wire \u_clk_div2/odd_0/_022_ ;
 wire \u_clk_div2/odd_0/_023_ ;
 wire \u_clk_div2/odd_0/_024_ ;
 wire \u_clk_div2/odd_0/_025_ ;
 wire \u_clk_div2/odd_0/_026_ ;
 wire \u_clk_div2/odd_0/_027_ ;
 wire \u_clk_div2/odd_0/_028_ ;
 wire \u_clk_div2/odd_0/_029_ ;
 wire \u_clk_div2/odd_0/_030_ ;
 wire \u_clk_div2/odd_0/_031_ ;
 wire \u_clk_div2/odd_0/_032_ ;
 wire \u_clk_div2/odd_0/_033_ ;
 wire \u_clk_div2/odd_0/_034_ ;
 wire \u_clk_div2/odd_0/_035_ ;
 wire \u_clk_div2/odd_0/_036_ ;
 wire \u_clk_div2/odd_0/_037_ ;
 wire \u_clk_div2/odd_0/_038_ ;
 wire \u_clk_div2/odd_0/_039_ ;
 wire \u_clk_div2/odd_0/_040_ ;
 wire \u_clk_div2/odd_0/_041_ ;
 wire \u_clk_div2/odd_0/_042_ ;
 wire \u_clk_div2/odd_0/_043_ ;
 wire \u_clk_div2/odd_0/_044_ ;
 wire \u_clk_div2/odd_0/_045_ ;
 wire \u_clk_div2/odd_0/_046_ ;
 wire \u_clk_div2/odd_0/_047_ ;
 wire \u_clk_div2/odd_0/_048_ ;
 wire \u_clk_div2/odd_0/_049_ ;
 wire \u_clk_div2/odd_0/_050_ ;
 wire \u_clk_div2/odd_0/_051_ ;
 wire net161;
 wire net162;
 wire net163;
 wire net164;
 wire net165;
 wire net166;
 wire net167;
 wire net168;
 wire net169;
 wire net170;
 wire net171;
 wire \u_clk_div2/odd_0/_063_ ;
 wire \u_clk_div2/odd_0/_064_ ;
 wire \u_clk_div2/odd_0/_065_ ;
 wire \u_clk_div2/odd_0/_066_ ;
 wire \u_clk_div2/odd_0/_067_ ;
 wire \u_clk_div2/odd_0/_068_ ;
 wire \u_clk_div2/odd_0/_069_ ;
 wire \u_clk_div2/odd_0/_070_ ;
 wire \u_clk_div2/odd_0/_071_ ;
 wire \u_clk_div2/odd_0/_072_ ;
 wire \u_clk_div2/odd_0/_073_ ;
 wire \u_clk_div2/odd_0/_074_ ;
 wire \u_clk_div2/odd_0/_075_ ;
 wire \u_clk_div2/odd_0/_076_ ;
 wire \u_clk_div2/odd_0/_077_ ;
 wire \u_clk_div2/odd_0/_078_ ;
 wire \u_clk_div2/odd_0/_079_ ;
 wire \u_clk_div2/odd_0/_080_ ;
 wire \u_clk_div2/odd_0/_081_ ;
 wire \u_clk_div2/odd_0/_082_ ;
 wire \u_clk_div2/odd_0/_083_ ;
 wire \u_clk_div2/odd_0/_084_ ;
 wire \u_clk_div2/odd_0/_085_ ;
 wire \u_clk_div2/odd_0/_086_ ;
 wire \u_clk_div2/odd_0/_087_ ;
 wire \u_clk_div2/odd_0/_088_ ;
 wire \u_clk_div2/odd_0/_089_ ;
 wire \u_clk_div2/odd_0/_090_ ;
 wire \u_clk_div2/odd_0/_091_ ;
 wire \u_clk_div2/odd_0/_092_ ;
 wire \u_clk_div2/odd_0/_093_ ;
 wire \u_clk_div2/odd_0/_094_ ;
 wire \u_clk_div2/odd_0/_095_ ;
 wire \u_clk_div2/odd_0/_096_ ;
 wire \u_clk_div2/odd_0/_097_ ;
 wire \u_clk_div2/odd_0/_098_ ;
 wire \u_clk_div2/odd_0/_099_ ;
 wire \u_clk_div2/odd_0/_100_ ;
 wire \u_clk_div2/odd_0/_101_ ;
 wire \u_clk_div2/odd_0/_102_ ;
 wire \u_clk_div2/odd_0/_103_ ;
 wire \u_clk_div2/odd_0/_104_ ;
 wire \u_clk_div2/odd_0/_105_ ;
 wire \u_clk_div2/odd_0/_106_ ;
 wire \u_clk_div2/odd_0/_107_ ;
 wire \u_clk_div2/odd_0/_108_ ;
 wire \u_clk_div2/odd_0/_109_ ;
 wire \u_clk_div2/odd_0/_110_ ;
 wire \u_clk_div2/odd_0/_111_ ;
 wire \u_clk_div2/odd_0/_112_ ;
 wire \u_clk_div2/odd_0/_113_ ;
 wire \u_clk_div2/odd_0/_114_ ;
 wire \u_clk_div2/odd_0/_115_ ;
 wire \u_clk_div2/odd_0/_116_ ;
 wire \u_clk_div2/odd_0/_117_ ;
 wire \u_clk_div2/odd_0/_118_ ;
 wire \u_clk_div2/odd_0/_119_ ;
 wire \u_clk_div2/odd_0/_120_ ;
 wire \u_clk_div2/odd_0/_121_ ;
 wire \u_clk_div2/odd_0/_122_ ;
 wire net144;
 wire net145;
 wire net146;
 wire net147;
 wire net148;
 wire \u_clk_div2/odd_0/counter2_0_ ;
 wire \u_clk_div2/odd_0/counter2_2_ ;
 wire \u_clk_div2/odd_0/counter2_3_ ;
 wire \u_clk_div2/odd_0/counter2_4_ ;
 wire \u_clk_div2/odd_0/counter_0_ ;
 wire \u_clk_div2/odd_0/counter_2_ ;
 wire \u_clk_div2/odd_0/counter_3_ ;
 wire \u_clk_div2/odd_0/counter_4_ ;
 wire \u_clk_div2/odd_0/initial_begin_0_ ;
 wire \u_clk_div2/odd_0/initial_begin_2_ ;
 wire \u_clk_div2/odd_0/initial_begin_3_ ;
 wire \u_clk_div2/odd_0/initial_begin_4_ ;
 wire \u_clk_div2/odd_0/old_N_0_ ;
 wire \u_clk_div2/odd_0/old_N_1_ ;
 wire \u_clk_div2/odd_0/old_N_2_ ;
 wire \u_clk_div2/odd_0/old_N_3_ ;
 wire \u_clk_div2/odd_0/old_N_4_ ;
 wire \u_clk_div2/odd_0/out_delayed_0_ ;
 wire \u_clk_div2/odd_0/out_pre ;
 wire \u_clk_div2/odd_0/rst_pulse ;
 wire \u_clk_mux0/_00_ ;
 wire \u_clk_mux0/_01_ ;
 wire \u_clk_mux0/_02_ ;
 wire \u_clk_mux0/_03_ ;
 wire \u_clk_mux0/_04_ ;
 wire \u_clk_mux0/_05_ ;
 wire \u_clk_mux0/clk_pre ;
 wire \u_clk_mux0/one_hot_sel_0_ ;
 wire \u_clk_mux0/one_hot_sel_10_ ;
 wire \u_clk_mux0/one_hot_sel_11_ ;
 wire \u_clk_mux0/one_hot_sel_12_ ;
 wire \u_clk_mux0/one_hot_sel_1_ ;
 wire \u_clk_mux0/one_hot_sel_2_ ;
 wire \u_clk_mux0/one_hot_sel_3_ ;
 wire \u_clk_mux0/one_hot_sel_4_ ;
 wire \u_clk_mux0/one_hot_sel_5_ ;
 wire \u_clk_mux0/one_hot_sel_6_ ;
 wire \u_clk_mux0/one_hot_sel_7_ ;
 wire \u_clk_mux0/one_hot_sel_8_ ;
 wire \u_clk_mux0/one_hot_sel_9_ ;
 wire \u_clk_mux0_inv/clk_pre ;
 wire osc_regs;
 wire \u_clk_mux0_inv/one_hot_sel_1_ ;
 wire \u_clk_mux0_xor/clk_pre ;
 wire \u_clk_mux0_xor/clk_pre_xor ;
 wire \u_clk_mux0_xor/clk_pre_xor_const ;
 wire \u_clk_mux0_xor/one_hot_sel_1_ ;
 wire \u_clk_mux0_xor/u_clkbuf_cap/X ;
 wire \u_clk_mux1/_00_ ;
 wire \u_clk_mux1/_01_ ;
 wire \u_clk_mux1/_02_ ;
 wire \u_clk_mux1/_03_ ;
 wire \u_clk_mux1/_04_ ;
 wire \u_clk_mux1/_05_ ;
 wire \u_clk_mux1/clk_pre ;
 wire \u_clk_mux1/one_hot_sel_0_ ;
 wire \u_clk_mux1/one_hot_sel_10_ ;
 wire \u_clk_mux1/one_hot_sel_11_ ;
 wire \u_clk_mux1/one_hot_sel_12_ ;
 wire \u_clk_mux1/one_hot_sel_1_ ;
 wire \u_clk_mux1/one_hot_sel_2_ ;
 wire \u_clk_mux1/one_hot_sel_3_ ;
 wire \u_clk_mux1/one_hot_sel_4_ ;
 wire \u_clk_mux1/one_hot_sel_5_ ;
 wire \u_clk_mux1/one_hot_sel_6_ ;
 wire \u_clk_mux1/one_hot_sel_7_ ;
 wire \u_clk_mux1/one_hot_sel_8_ ;
 wire \u_clk_mux1/one_hot_sel_9_ ;
 wire \u_clk_mux1_inv/clk_pre ;
 wire net183;
 wire \u_clk_mux1_inv/one_hot_sel_1_ ;
 wire \u_clk_mux1_xor/clk_pre ;
 wire \u_clk_mux1_xor/clk_pre_xor ;
 wire \u_clk_mux1_xor/clk_pre_xor_const ;
 wire \u_clk_mux1_xor/one_hot_sel_1_ ;
 wire \u_clk_mux1_xor/u_clkbuf_cap/X ;
 wire \u_clk_mux2/_00_ ;
 wire \u_clk_mux2/_01_ ;
 wire \u_clk_mux2/_02_ ;
 wire \u_clk_mux2/_03_ ;
 wire \u_clk_mux2/_04_ ;
 wire \u_clk_mux2/_05_ ;
 wire \u_clk_mux2/clk_pre ;
 wire \u_clk_mux2/one_hot_sel_0_ ;
 wire \u_clk_mux2/one_hot_sel_10_ ;
 wire \u_clk_mux2/one_hot_sel_11_ ;
 wire \u_clk_mux2/one_hot_sel_12_ ;
 wire \u_clk_mux2/one_hot_sel_1_ ;
 wire \u_clk_mux2/one_hot_sel_2_ ;
 wire \u_clk_mux2/one_hot_sel_3_ ;
 wire \u_clk_mux2/one_hot_sel_4_ ;
 wire \u_clk_mux2/one_hot_sel_5_ ;
 wire \u_clk_mux2/one_hot_sel_6_ ;
 wire \u_clk_mux2/one_hot_sel_7_ ;
 wire \u_clk_mux2/one_hot_sel_8_ ;
 wire \u_clk_mux2/one_hot_sel_9_ ;
 wire \u_clk_mux2_inv/clk_pre ;
 wire net184;
 wire \u_clk_mux2_inv/one_hot_sel_1_ ;
 wire \u_clk_mux2_xor/clk_pre ;
 wire \u_clk_mux2_xor/clk_pre_xor ;
 wire \u_clk_mux2_xor/clk_pre_xor_const ;
 wire \u_clk_mux2_xor/one_hot_sel_1_ ;
 wire \u_clk_mux2_xor/u_clkbuf_cap/X ;
 wire \u_digital_pll/_00_ ;
 wire \u_digital_pll/_01_ ;
 wire \u_digital_pll/_02_ ;
 wire \u_digital_pll/_03_ ;
 wire \u_digital_pll/_04_ ;
 wire \u_digital_pll/_05_ ;
 wire \u_digital_pll/_06_ ;
 wire \u_digital_pll/_07_ ;
 wire \u_digital_pll/_08_ ;
 wire \u_digital_pll/_09_ ;
 wire \u_digital_pll/_10_ ;
 wire \u_digital_pll/_11_ ;
 wire \u_digital_pll/_12_ ;
 wire \u_digital_pll/_13_ ;
 wire \u_digital_pll/_14_ ;
 wire \u_digital_pll/_15_ ;
 wire \u_digital_pll/_16_ ;
 wire \u_digital_pll/_17_ ;
 wire \u_digital_pll/clockp_buffer_in_0_ ;
 wire \u_digital_pll/clockp_buffer_in_10_ ;
 wire \u_digital_pll/clockp_buffer_in_11_ ;
 wire \u_digital_pll/clockp_buffer_in_12_ ;
 wire \u_digital_pll/clockp_buffer_in_1_ ;
 wire \u_digital_pll/clockp_buffer_in_2_ ;
 wire \u_digital_pll/clockp_buffer_in_3_ ;
 wire \u_digital_pll/clockp_buffer_in_4_ ;
 wire \u_digital_pll/clockp_buffer_in_5_ ;
 wire \u_digital_pll/clockp_buffer_in_6_ ;
 wire \u_digital_pll/clockp_buffer_in_7_ ;
 wire \u_digital_pll/clockp_buffer_in_8_ ;
 wire \u_digital_pll/clockp_buffer_in_9_ ;
 wire \u_digital_pll/creset ;
 wire \u_digital_pll/ireset ;
 wire \u_digital_pll/itrim_0_ ;
 wire \u_digital_pll/itrim_10_ ;
 wire \u_digital_pll/itrim_11_ ;
 wire \u_digital_pll/itrim_12_ ;
 wire \u_digital_pll/itrim_13_ ;
 wire \u_digital_pll/itrim_14_ ;
 wire \u_digital_pll/itrim_15_ ;
 wire \u_digital_pll/itrim_16_ ;
 wire \u_digital_pll/itrim_17_ ;
 wire \u_digital_pll/itrim_18_ ;
 wire \u_digital_pll/itrim_19_ ;
 wire \u_digital_pll/itrim_1_ ;
 wire \u_digital_pll/itrim_20_ ;
 wire \u_digital_pll/itrim_21_ ;
 wire \u_digital_pll/itrim_22_ ;
 wire \u_digital_pll/itrim_23_ ;
 wire \u_digital_pll/itrim_24_ ;
 wire \u_digital_pll/itrim_25_ ;
 wire \u_digital_pll/itrim_2_ ;
 wire \u_digital_pll/itrim_3_ ;
 wire \u_digital_pll/itrim_4_ ;
 wire \u_digital_pll/itrim_5_ ;
 wire \u_digital_pll/itrim_6_ ;
 wire \u_digital_pll/itrim_7_ ;
 wire \u_digital_pll/itrim_8_ ;
 wire \u_digital_pll/itrim_9_ ;
 wire \u_digital_pll/otrim_0_ ;
 wire \u_digital_pll/otrim_10_ ;
 wire \u_digital_pll/otrim_11_ ;
 wire \u_digital_pll/otrim_12_ ;
 wire \u_digital_pll/otrim_13_ ;
 wire \u_digital_pll/otrim_14_ ;
 wire \u_digital_pll/otrim_15_ ;
 wire \u_digital_pll/otrim_16_ ;
 wire \u_digital_pll/otrim_17_ ;
 wire \u_digital_pll/otrim_18_ ;
 wire \u_digital_pll/otrim_19_ ;
 wire \u_digital_pll/otrim_1_ ;
 wire \u_digital_pll/otrim_20_ ;
 wire \u_digital_pll/otrim_21_ ;
 wire \u_digital_pll/otrim_22_ ;
 wire \u_digital_pll/otrim_23_ ;
 wire \u_digital_pll/otrim_24_ ;
 wire \u_digital_pll/otrim_25_ ;
 wire \u_digital_pll/otrim_2_ ;
 wire \u_digital_pll/otrim_3_ ;
 wire \u_digital_pll/otrim_4_ ;
 wire \u_digital_pll/otrim_5_ ;
 wire \u_digital_pll/otrim_6_ ;
 wire \u_digital_pll/otrim_7_ ;
 wire \u_digital_pll/otrim_8_ ;
 wire \u_digital_pll/otrim_9_ ;
 wire \u_digital_pll/stable_cnt_0_ ;
 wire \u_digital_pll/stable_cnt_1_ ;
 wire \u_digital_pll/stable_cnt_2_ ;
 wire \u_digital_pll/stable_cnt_3_ ;
 wire \u_digital_pll/stable_cnt_4_ ;
 wire \u_digital_pll/stable_cnt_5_ ;
 wire \u_digital_pll/stable_cnt_6_ ;
 wire \u_digital_pll/stable_cnt_7_ ;
 wire \u_digital_pll/stable_reg ;
 wire \u_digital_pll/pll_control/_000_ ;
 wire \u_digital_pll/pll_control/_001_ ;
 wire \u_digital_pll/pll_control/_002_ ;
 wire \u_digital_pll/pll_control/_003_ ;
 wire \u_digital_pll/pll_control/_004_ ;
 wire \u_digital_pll/pll_control/_005_ ;
 wire \u_digital_pll/pll_control/_006_ ;
 wire \u_digital_pll/pll_control/_007_ ;
 wire net149;
 wire \u_digital_pll/pll_control/_009_ ;
 wire \u_digital_pll/pll_control/_010_ ;
 wire \u_digital_pll/pll_control/_011_ ;
 wire \u_digital_pll/pll_control/_012_ ;
 wire \u_digital_pll/pll_control/_013_ ;
 wire \u_digital_pll/pll_control/_014_ ;
 wire \u_digital_pll/pll_control/_015_ ;
 wire \u_digital_pll/pll_control/_016_ ;
 wire \u_digital_pll/pll_control/_017_ ;
 wire \u_digital_pll/pll_control/_018_ ;
 wire \u_digital_pll/pll_control/_019_ ;
 wire \u_digital_pll/pll_control/_020_ ;
 wire \u_digital_pll/pll_control/_021_ ;
 wire \u_digital_pll/pll_control/_022_ ;
 wire \u_digital_pll/pll_control/_023_ ;
 wire \u_digital_pll/pll_control/_024_ ;
 wire \u_digital_pll/pll_control/_025_ ;
 wire \u_digital_pll/pll_control/_026_ ;
 wire \u_digital_pll/pll_control/_027_ ;
 wire \u_digital_pll/pll_control/_028_ ;
 wire \u_digital_pll/pll_control/_029_ ;
 wire \u_digital_pll/pll_control/_030_ ;
 wire \u_digital_pll/pll_control/_031_ ;
 wire \u_digital_pll/pll_control/_032_ ;
 wire \u_digital_pll/pll_control/_033_ ;
 wire \u_digital_pll/pll_control/_034_ ;
 wire \u_digital_pll/pll_control/_035_ ;
 wire \u_digital_pll/pll_control/_036_ ;
 wire \u_digital_pll/pll_control/_037_ ;
 wire \u_digital_pll/pll_control/_038_ ;
 wire \u_digital_pll/pll_control/_039_ ;
 wire \u_digital_pll/pll_control/_040_ ;
 wire \u_digital_pll/pll_control/_041_ ;
 wire \u_digital_pll/pll_control/_042_ ;
 wire \u_digital_pll/pll_control/_043_ ;
 wire \u_digital_pll/pll_control/_044_ ;
 wire \u_digital_pll/pll_control/_045_ ;
 wire \u_digital_pll/pll_control/_046_ ;
 wire \u_digital_pll/pll_control/_047_ ;
 wire \u_digital_pll/pll_control/_048_ ;
 wire \u_digital_pll/pll_control/_049_ ;
 wire \u_digital_pll/pll_control/_050_ ;
 wire \u_digital_pll/pll_control/_051_ ;
 wire \u_digital_pll/pll_control/_052_ ;
 wire \u_digital_pll/pll_control/_053_ ;
 wire \u_digital_pll/pll_control/_054_ ;
 wire \u_digital_pll/pll_control/_055_ ;
 wire \u_digital_pll/pll_control/_056_ ;
 wire \u_digital_pll/pll_control/_057_ ;
 wire \u_digital_pll/pll_control/_058_ ;
 wire \u_digital_pll/pll_control/_059_ ;
 wire \u_digital_pll/pll_control/_060_ ;
 wire \u_digital_pll/pll_control/_061_ ;
 wire \u_digital_pll/pll_control/_062_ ;
 wire \u_digital_pll/pll_control/_063_ ;
 wire \u_digital_pll/pll_control/_064_ ;
 wire \u_digital_pll/pll_control/_065_ ;
 wire \u_digital_pll/pll_control/_066_ ;
 wire \u_digital_pll/pll_control/_067_ ;
 wire \u_digital_pll/pll_control/_068_ ;
 wire \u_digital_pll/pll_control/_069_ ;
 wire \u_digital_pll/pll_control/_070_ ;
 wire \u_digital_pll/pll_control/_071_ ;
 wire \u_digital_pll/pll_control/_072_ ;
 wire \u_digital_pll/pll_control/_073_ ;
 wire \u_digital_pll/pll_control/_074_ ;
 wire \u_digital_pll/pll_control/_075_ ;
 wire \u_digital_pll/pll_control/_076_ ;
 wire \u_digital_pll/pll_control/_077_ ;
 wire \u_digital_pll/pll_control/_078_ ;
 wire \u_digital_pll/pll_control/_079_ ;
 wire \u_digital_pll/pll_control/_080_ ;
 wire \u_digital_pll/pll_control/_081_ ;
 wire \u_digital_pll/pll_control/_082_ ;
 wire \u_digital_pll/pll_control/_083_ ;
 wire \u_digital_pll/pll_control/_084_ ;
 wire \u_digital_pll/pll_control/_085_ ;
 wire \u_digital_pll/pll_control/_086_ ;
 wire \u_digital_pll/pll_control/_087_ ;
 wire \u_digital_pll/pll_control/_088_ ;
 wire \u_digital_pll/pll_control/_089_ ;
 wire \u_digital_pll/pll_control/_090_ ;
 wire \u_digital_pll/pll_control/_091_ ;
 wire \u_digital_pll/pll_control/_092_ ;
 wire \u_digital_pll/pll_control/_093_ ;
 wire \u_digital_pll/pll_control/_094_ ;
 wire \u_digital_pll/pll_control/_095_ ;
 wire \u_digital_pll/pll_control/_096_ ;
 wire \u_digital_pll/pll_control/_097_ ;
 wire \u_digital_pll/pll_control/_098_ ;
 wire \u_digital_pll/pll_control/_099_ ;
 wire \u_digital_pll/pll_control/_100_ ;
 wire \u_digital_pll/pll_control/_101_ ;
 wire \u_digital_pll/pll_control/_102_ ;
 wire \u_digital_pll/pll_control/_103_ ;
 wire \u_digital_pll/pll_control/_104_ ;
 wire \u_digital_pll/pll_control/_105_ ;
 wire \u_digital_pll/pll_control/_106_ ;
 wire \u_digital_pll/pll_control/_107_ ;
 wire \u_digital_pll/pll_control/_108_ ;
 wire \u_digital_pll/pll_control/_109_ ;
 wire \u_digital_pll/pll_control/_110_ ;
 wire \u_digital_pll/pll_control/_111_ ;
 wire \u_digital_pll/pll_control/_112_ ;
 wire \u_digital_pll/pll_control/_113_ ;
 wire \u_digital_pll/pll_control/_114_ ;
 wire \u_digital_pll/pll_control/_115_ ;
 wire \u_digital_pll/pll_control/_116_ ;
 wire \u_digital_pll/pll_control/_117_ ;
 wire \u_digital_pll/pll_control/_118_ ;
 wire \u_digital_pll/pll_control/_119_ ;
 wire \u_digital_pll/pll_control/_120_ ;
 wire \u_digital_pll/pll_control/_121_ ;
 wire \u_digital_pll/pll_control/_122_ ;
 wire \u_digital_pll/pll_control/_123_ ;
 wire \u_digital_pll/pll_control/_124_ ;
 wire \u_digital_pll/pll_control/_125_ ;
 wire \u_digital_pll/pll_control/_126_ ;
 wire \u_digital_pll/pll_control/_127_ ;
 wire \u_digital_pll/pll_control/_128_ ;
 wire \u_digital_pll/pll_control/_129_ ;
 wire \u_digital_pll/pll_control/_130_ ;
 wire \u_digital_pll/pll_control/_131_ ;
 wire \u_digital_pll/pll_control/_132_ ;
 wire \u_digital_pll/pll_control/_133_ ;
 wire \u_digital_pll/pll_control/_134_ ;
 wire \u_digital_pll/pll_control/_135_ ;
 wire \u_digital_pll/pll_control/_136_ ;
 wire \u_digital_pll/pll_control/_137_ ;
 wire \u_digital_pll/pll_control/_138_ ;
 wire \u_digital_pll/pll_control/_139_ ;
 wire \u_digital_pll/pll_control/_140_ ;
 wire \u_digital_pll/pll_control/_141_ ;
 wire \u_digital_pll/pll_control/_142_ ;
 wire \u_digital_pll/pll_control/_143_ ;
 wire \u_digital_pll/pll_control/_144_ ;
 wire \u_digital_pll/pll_control/_145_ ;
 wire \u_digital_pll/pll_control/_146_ ;
 wire \u_digital_pll/pll_control/_147_ ;
 wire \u_digital_pll/pll_control/_148_ ;
 wire \u_digital_pll/pll_control/_149_ ;
 wire \u_digital_pll/pll_control/_150_ ;
 wire \u_digital_pll/pll_control/_151_ ;
 wire \u_digital_pll/pll_control/_152_ ;
 wire \u_digital_pll/pll_control/_153_ ;
 wire \u_digital_pll/pll_control/_154_ ;
 wire \u_digital_pll/pll_control/_155_ ;
 wire \u_digital_pll/pll_control/_156_ ;
 wire \u_digital_pll/pll_control/_157_ ;
 wire \u_digital_pll/pll_control/_158_ ;
 wire \u_digital_pll/pll_control/_159_ ;
 wire \u_digital_pll/pll_control/count0_0_ ;
 wire \u_digital_pll/pll_control/count0_1_ ;
 wire \u_digital_pll/pll_control/count0_2_ ;
 wire \u_digital_pll/pll_control/count0_3_ ;
 wire \u_digital_pll/pll_control/count0_4_ ;
 wire \u_digital_pll/pll_control/count1_0_ ;
 wire \u_digital_pll/pll_control/count1_1_ ;
 wire \u_digital_pll/pll_control/count1_2_ ;
 wire \u_digital_pll/pll_control/count1_3_ ;
 wire \u_digital_pll/pll_control/count1_4_ ;
 wire \u_digital_pll/pll_control/osc_meta ;
 wire \u_digital_pll/pll_control/osc_sync ;
 wire \u_digital_pll/pll_control/osc_sync_d ;
 wire \u_digital_pll/pll_control/prep_0_ ;
 wire \u_digital_pll/pll_control/prep_1_ ;
 wire \u_digital_pll/pll_control/prep_2_ ;
 wire \u_digital_pll/pll_control/tval_0_ ;
 wire \u_digital_pll/pll_control/tval_1_ ;
 wire \u_digital_pll/pll_control/tval_2_ ;
 wire \u_digital_pll/pll_control/tval_3_ ;
 wire \u_digital_pll/pll_control/tval_4_ ;
 wire \u_digital_pll/pll_control/tval_5_ ;
 wire \u_digital_pll/pll_control/tval_6_ ;
 wire \u_clk_div0/net74 ;
 wire \u_clk_div2/net75 ;
 wire \u_clk_div1/net76 ;
 wire \u_clk_div0/net77 ;
 wire \u_clk_div0/net78 ;
 wire \u_clk_div0/net79 ;
 wire \u_clk_div0/net80 ;
 wire \u_clk_div2/net81 ;
 wire \u_clk_div2/net82 ;
 wire \u_clk_div2/net83 ;
 wire \u_clk_div2/net84 ;
 wire \u_clk_div1/net85 ;
 wire \u_clk_div1/net86 ;
 wire \u_clk_div1/net87 ;
 wire \u_clk_div1/net88 ;
 wire \u_digital_pll/pll_control/net89 ;
 wire \u_clk_div0/odd_0/net90 ;
 wire \u_clk_div0/odd_0/net91 ;
 wire \u_clk_div0/odd_0/net92 ;
 wire \u_clk_div2/odd_0/net93 ;
 wire \u_clk_div2/odd_0/net94 ;
 wire \u_clk_div2/odd_0/net95 ;
 wire \u_clk_div1/odd_0/net96 ;
 wire \u_clk_div1/odd_0/net97 ;
 wire \u_clk_div1/odd_0/net98 ;
 wire \u_digital_pll/pll_control/net99 ;
 wire \u_digital_pll/pll_control/net100 ;
 wire \u_digital_pll/pll_control/net101 ;
 wire \u_digital_pll/pll_control/net102 ;
 wire \u_digital_pll/pll_control/net103 ;
 wire \u_digital_pll/pll_control/net104 ;
 wire \u_digital_pll/pll_control/net105 ;
 wire \u_digital_pll/pll_control/net106 ;
 wire \u_digital_pll/pll_control/net107 ;
 wire \u_digital_pll/pll_control/net108 ;
 wire \u_digital_pll/net109 ;
 wire \u_digital_pll/net110 ;
 wire \u_digital_pll/net111 ;
 wire \u_digital_pll/net112 ;
 wire \u_digital_pll/net113 ;
 wire net114;
 wire net115;
 wire net116;
 wire \u_clk_div1/net117 ;
 wire \u_clk_div1/net118 ;
 wire \u_clk_div1/net119 ;
 wire net120;
 wire \u_clk_div2/net121 ;
 wire net122;
 wire net123;
 wire net124;
 wire net125;
 wire net126;
 wire net127;
 wire net128;
 wire \u_clk_div2/odd_0/net129 ;
 wire \u_clk_div0/odd_0/net130 ;
 wire \u_clk_div0/net131 ;
 wire net132;
 wire net133;
 wire net;
 wire \u_digital_pll/clockp_buffer_in_0__regs ;
 wire clk2_int_regs;
 wire clk2_180_to_360_expand_regs;
 wire clk1_int_regs;
 wire clk1_180_to_360_expand_regs;
 wire clk0_int_regs;
 wire clk0_180_to_360_expand_regs;
 wire clknet_0_osc;
 wire clknet_1_0__leaf_osc;
 wire clknet_1_1__leaf_osc;
 wire clknet_0_osc_regs;
 wire clknet_1_0__leaf_osc_regs;
 wire clknet_1_1__leaf_osc_regs;
 wire \clknet_0_u_digital_pll/clockp_buffer_in_0_ ;
 wire \clknet_1_0__leaf_u_digital_pll/clockp_buffer_in_0_ ;
 wire \clknet_0_u_digital_pll/clockp_buffer_in_0__regs ;
 wire \clknet_2_0__leaf_u_digital_pll/clockp_buffer_in_0__regs ;
 wire \clknet_2_1__leaf_u_digital_pll/clockp_buffer_in_0__regs ;
 wire \clknet_2_2__leaf_u_digital_pll/clockp_buffer_in_0__regs ;
 wire \clknet_2_3__leaf_u_digital_pll/clockp_buffer_in_0__regs ;
 wire clknet_0_dll_clks_0_;
 wire clknet_1_0__leaf_dll_clks_0_;
 wire clknet_1_1__leaf_dll_clks_0_;
 wire clknet_0_clk2_int;
 wire clknet_1_0__leaf_clk2_int;
 wire clknet_0_clk2_int_regs;
 wire clknet_3_0__leaf_clk2_int_regs;
 wire clknet_3_1__leaf_clk2_int_regs;
 wire clknet_3_2__leaf_clk2_int_regs;
 wire clknet_3_3__leaf_clk2_int_regs;
 wire clknet_3_4__leaf_clk2_int_regs;
 wire clknet_3_5__leaf_clk2_int_regs;
 wire clknet_3_6__leaf_clk2_int_regs;
 wire clknet_3_7__leaf_clk2_int_regs;
 wire clknet_0_clk2_180_to_360_expand;
 wire clknet_1_0__leaf_clk2_180_to_360_expand;
 wire clknet_0_clk2_180_to_360_expand_regs;
 wire clknet_1_0__leaf_clk2_180_to_360_expand_regs;
 wire clknet_1_1__leaf_clk2_180_to_360_expand_regs;
 wire clknet_0_clk2_out_xor;
 wire clknet_1_0__leaf_clk2_out_xor;
 wire clknet_1_1__leaf_clk2_out_xor;
 wire clknet_0_clk1_int;
 wire clknet_1_0__leaf_clk1_int;
 wire clknet_0_clk1_int_regs;
 wire clknet_3_0__leaf_clk1_int_regs;
 wire clknet_3_1__leaf_clk1_int_regs;
 wire clknet_3_2__leaf_clk1_int_regs;
 wire clknet_3_3__leaf_clk1_int_regs;
 wire clknet_3_4__leaf_clk1_int_regs;
 wire clknet_3_5__leaf_clk1_int_regs;
 wire clknet_3_6__leaf_clk1_int_regs;
 wire clknet_3_7__leaf_clk1_int_regs;
 wire clknet_0_clk1_180_to_360_expand;
 wire clknet_1_0__leaf_clk1_180_to_360_expand;
 wire clknet_0_clk1_180_to_360_expand_regs;
 wire clknet_1_0__leaf_clk1_180_to_360_expand_regs;
 wire clknet_1_1__leaf_clk1_180_to_360_expand_regs;
 wire clknet_0_clk1_out_xor;
 wire clknet_1_0__leaf_clk1_out_xor;
 wire clknet_1_1__leaf_clk1_out_xor;
 wire clknet_0_clk0_int;
 wire clknet_1_0__leaf_clk0_int;
 wire clknet_0_clk0_int_regs;
 wire clknet_3_0__leaf_clk0_int_regs;
 wire clknet_3_1__leaf_clk0_int_regs;
 wire clknet_3_2__leaf_clk0_int_regs;
 wire clknet_3_3__leaf_clk0_int_regs;
 wire clknet_3_4__leaf_clk0_int_regs;
 wire clknet_3_5__leaf_clk0_int_regs;
 wire clknet_3_6__leaf_clk0_int_regs;
 wire clknet_3_7__leaf_clk0_int_regs;
 wire clknet_0_clk0_180_to_360_expand;
 wire clknet_1_0__leaf_clk0_180_to_360_expand;
 wire clknet_0_clk0_180_to_360_expand_regs;
 wire clknet_1_0__leaf_clk0_180_to_360_expand_regs;
 wire clknet_1_1__leaf_clk0_180_to_360_expand_regs;
 wire clknet_0_clk0_out_xor;
 wire clknet_1_0__leaf_clk0_out_xor;
 wire clknet_1_1__leaf_clk0_out_xor;
 wire delaynet_0_clk_oscillator;
 wire delaynet_1_clk_oscillator;
 wire delaynet_2_clk_oscillator;
 wire delaynet_3_clk_oscillator;
 wire delaynet_4_clk_oscillator;
 wire delaynet_5_clk_oscillator;
 wire delaynet_6_clk_oscillator;
 wire delaynet_7_clk_oscillator;

 sg13g2_mux2_1 _080_ (.A0(_032_),
    .A1(net6),
    .S(_031_),
    .X(_033_));
 sg13g2_mux2_1 _081_ (.A0(_034_),
    .A1(net4),
    .S(_031_),
    .X(_035_));
 sg13g2_mux2_1 _082_ (.A0(_037_),
    .A1(_036_),
    .S(_031_),
    .X(_038_));
 sg13g2_mux2_1 _083_ (.A0(_004_),
    .A1(net11),
    .S(_003_),
    .X(_005_));
 sg13g2_mux2_1 _084_ (.A0(_006_),
    .A1(net10),
    .S(_003_),
    .X(_007_));
 sg13g2_mux2_1 _085_ (.A0(_009_),
    .A1(_008_),
    .S(_003_),
    .X(_010_));
 sg13g2_mux2_1 _086_ (.A0(_018_),
    .A1(net16),
    .S(_017_),
    .X(_019_));
 sg13g2_mux2_1 _087_ (.A0(_020_),
    .A1(net15),
    .S(_017_),
    .X(_021_));
 sg13g2_mux2_1 _088_ (.A0(_023_),
    .A1(_022_),
    .S(_017_),
    .X(_024_));
 sg13g2_inv_1 _089_ (.Y(_060_),
    .A(net11));
 sg13g2_inv_1 _090_ (.Y(_061_),
    .A(net7));
 sg13g2_inv_1 _091_ (.Y(_062_),
    .A(net16));
 sg13g2_inv_1 _092_ (.Y(_022_),
    .A(net14));
 sg13g2_inv_1 _093_ (.Y(_063_),
    .A(net12));
 sg13g2_inv_1 _094_ (.Y(_064_),
    .A(net6));
 sg13g2_inv_1 _095_ (.Y(_036_),
    .A(net5));
 sg13g2_inv_1 _096_ (.Y(_065_),
    .A(net3));
 sg13g2_inv_1 _097_ (.Y(_066_),
    .A(_035_));
 sg13g2_inv_1 _098_ (.Y(_043_),
    .A(_038_));
 sg13g2_inv_1 _099_ (.Y(_008_),
    .A(net9));
 sg13g2_inv_1 _100_ (.Y(_014_),
    .A(_010_));
 sg13g2_inv_1 _101_ (.Y(_028_),
    .A(_024_));
 sg13g2_nor2_1 _102_ (.A(net8),
    .B(net7),
    .Y(_067_));
 sg13g2_nand2_1 _103_ (.Y(_068_),
    .A(net9),
    .B(net10));
 sg13g2_o21ai_1 _104_ (.B1(_060_),
    .Y(_001_),
    .A1(_067_),
    .A2(_068_));
 sg13g2_nor2_1 _105_ (.A(net13),
    .B(net12),
    .Y(_069_));
 sg13g2_nand2_1 _106_ (.Y(_070_),
    .A(net15),
    .B(net14));
 sg13g2_o21ai_1 _107_ (.B1(_062_),
    .Y(_000_),
    .A1(_069_),
    .A2(_070_));
 sg13g2_nor2_1 _108_ (.A(net3),
    .B(net2),
    .Y(_071_));
 sg13g2_nand2_1 _109_ (.Y(_072_),
    .A(net5),
    .B(net4));
 sg13g2_o21ai_1 _110_ (.B1(_064_),
    .Y(_002_),
    .A1(_071_),
    .A2(_072_));
 sg13g2_o21ai_1 _111_ (.B1(net5),
    .Y(_073_),
    .A1(net4),
    .A2(net3));
 sg13g2_inv_1 _112_ (.Y(_074_),
    .A(_073_));
 sg13g2_nand2_1 _113_ (.Y(_031_),
    .A(net6),
    .B(_074_));
 sg13g2_xnor2_1 _114_ (.Y(_032_),
    .A(net6),
    .B(_073_));
 sg13g2_xnor2_1 _115_ (.Y(_034_),
    .A(net4),
    .B(net3));
 sg13g2_nor3_1 _116_ (.A(net5),
    .B(net4),
    .C(net3),
    .Y(_075_));
 sg13g2_or2_1 _117_ (.X(_037_),
    .B(_075_),
    .A(_074_));
 sg13g2_o21ai_1 _118_ (.B1(_065_),
    .Y(_076_),
    .A1(_064_),
    .A2(_073_));
 sg13g2_nand3_1 _119_ (.B(net5),
    .C(net3),
    .A(net6),
    .Y(_077_));
 sg13g2_and2_1 _120_ (.A(_076_),
    .B(_077_),
    .X(_039_));
 sg13g2_a21oi_1 _121_ (.A1(_076_),
    .A2(_077_),
    .Y(_078_),
    .B1(net2));
 sg13g2_nor3_1 _122_ (.A(_066_),
    .B(_038_),
    .C(_078_),
    .Y(_079_));
 sg13g2_nor2_1 _123_ (.A(_033_),
    .B(_079_),
    .Y(_040_));
 sg13g2_xnor2_1 _124_ (.Y(clk0_phase_sel_check_0_),
    .A(net2),
    .B(_040_));
 sg13g2_xnor2_1 _125_ (.Y(_041_),
    .A(net2),
    .B(_039_));
 sg13g2_xnor2_1 _126_ (.Y(_042_),
    .A(_035_),
    .B(_078_));
 sg13g2_o21ai_1 _127_ (.B1(_038_),
    .Y(_045_),
    .A1(_066_),
    .A2(_078_));
 sg13g2_nor2b_1 _128_ (.A(_079_),
    .B_N(_045_),
    .Y(_044_));
 sg13g2_o21ai_1 _129_ (.B1(net10),
    .Y(_046_),
    .A1(net8),
    .A2(net9));
 sg13g2_inv_1 _130_ (.Y(_047_),
    .A(_046_));
 sg13g2_nor2_1 _131_ (.A(_060_),
    .B(_046_),
    .Y(_048_));
 sg13g2_inv_1 _132_ (.Y(_003_),
    .A(_048_));
 sg13g2_xnor2_1 _133_ (.Y(_004_),
    .A(net11),
    .B(_046_));
 sg13g2_nor3_1 _134_ (.A(net8),
    .B(net9),
    .C(net10),
    .Y(_049_));
 sg13g2_nor2_1 _135_ (.A(_047_),
    .B(_049_),
    .Y(_006_));
 sg13g2_xor2_1 _136_ (.B(net9),
    .A(net8),
    .X(_009_));
 sg13g2_xnor2_1 _137_ (.Y(_050_),
    .A(net8),
    .B(_048_));
 sg13g2_inv_1 _138_ (.Y(_011_),
    .A(_050_));
 sg13g2_a21oi_1 _139_ (.A1(_061_),
    .A2(_050_),
    .Y(_051_),
    .B1(_010_));
 sg13g2_a21oi_1 _140_ (.A1(_007_),
    .A2(_051_),
    .Y(_012_),
    .B1(_005_));
 sg13g2_xnor2_1 _141_ (.Y(clk1_phase_sel_check_0_),
    .A(net7),
    .B(_012_));
 sg13g2_xnor2_1 _142_ (.Y(_013_),
    .A(_061_),
    .B(_050_));
 sg13g2_nand3_1 _143_ (.B(_010_),
    .C(_050_),
    .A(_061_),
    .Y(_052_));
 sg13g2_nor2b_1 _144_ (.A(_051_),
    .B_N(_052_),
    .Y(_015_));
 sg13g2_xor2_1 _145_ (.B(_051_),
    .A(_007_),
    .X(_016_));
 sg13g2_o21ai_1 _146_ (.B1(net15),
    .Y(_053_),
    .A1(net14),
    .A2(net13));
 sg13g2_inv_1 _147_ (.Y(_054_),
    .A(_053_));
 sg13g2_nor2_1 _148_ (.A(_062_),
    .B(_053_),
    .Y(_055_));
 sg13g2_inv_1 _149_ (.Y(_017_),
    .A(_055_));
 sg13g2_xnor2_1 _150_ (.Y(_018_),
    .A(net16),
    .B(_053_));
 sg13g2_nor3_1 _151_ (.A(net15),
    .B(net14),
    .C(net13),
    .Y(_056_));
 sg13g2_nor2_1 _152_ (.A(_054_),
    .B(_056_),
    .Y(_020_));
 sg13g2_xor2_1 _153_ (.B(net13),
    .A(net14),
    .X(_023_));
 sg13g2_xnor2_1 _154_ (.Y(_057_),
    .A(net13),
    .B(_055_));
 sg13g2_inv_1 _155_ (.Y(_025_),
    .A(_057_));
 sg13g2_a21oi_1 _156_ (.A1(_063_),
    .A2(_057_),
    .Y(_058_),
    .B1(_024_));
 sg13g2_a21oi_1 _157_ (.A1(_021_),
    .A2(_058_),
    .Y(_026_),
    .B1(_019_));
 sg13g2_xnor2_1 _158_ (.Y(clk2_phase_sel_check_0_),
    .A(net12),
    .B(_026_));
 sg13g2_xnor2_1 _159_ (.Y(_027_),
    .A(_063_),
    .B(_057_));
 sg13g2_nand3_1 _160_ (.B(_024_),
    .C(_057_),
    .A(_063_),
    .Y(_059_));
 sg13g2_nor2b_1 _161_ (.A(_058_),
    .B_N(_059_),
    .Y(_029_));
 sg13g2_xor2_1 _162_ (.B(_058_),
    .A(_021_),
    .X(_030_));
 sg13g2_buf_1 _163_ (.A(dll_stable),
    .X(net73));
 sg13g2_mux2_1 clk0_phase_sel_check_1___MUX___TECHMAP_MUX (.A0(_041_),
    .A1(_039_),
    .S(_040_),
    .X(clk0_phase_sel_check_1_));
 sg13g2_mux2_1 clk0_phase_sel_check_2___MUX___TECHMAP_MUX (.A0(_042_),
    .A1(_035_),
    .S(_040_),
    .X(clk0_phase_sel_check_2_));
 sg13g2_mux2_1 clk0_phase_sel_check_3___MUX___TECHMAP_MUX (.A0(_044_),
    .A1(_043_),
    .S(_040_),
    .X(clk0_phase_sel_check_3_));
 sg13g2_mux2_1 clk1_phase_sel_check_1___MUX___TECHMAP_MUX (.A0(_013_),
    .A1(_011_),
    .S(_012_),
    .X(clk1_phase_sel_check_1_));
 sg13g2_mux2_1 clk1_phase_sel_check_2___MUX___TECHMAP_MUX (.A0(_015_),
    .A1(_014_),
    .S(_012_),
    .X(clk1_phase_sel_check_2_));
 sg13g2_mux2_1 clk1_phase_sel_check_3___MUX___TECHMAP_MUX (.A0(_016_),
    .A1(_007_),
    .S(_012_),
    .X(clk1_phase_sel_check_3_));
 sg13g2_mux2_1 clk2_phase_sel_check_1___MUX___TECHMAP_MUX (.A0(_027_),
    .A1(_025_),
    .S(_026_),
    .X(clk2_phase_sel_check_1_));
 sg13g2_mux2_1 clk2_phase_sel_check_2___MUX___TECHMAP_MUX (.A0(_029_),
    .A1(_028_),
    .S(_026_),
    .X(clk2_phase_sel_check_2_));
 sg13g2_mux2_1 clk2_phase_sel_check_3___MUX___TECHMAP_MUX (.A0(_030_),
    .A1(_021_),
    .S(_026_),
    .X(clk2_phase_sel_check_3_));
 sg13g2_inv_1 \u_clk_div0/_09_  (.Y(\u_clk_div0/_03_ ),
    .A(net46));
 sg13g2_inv_1 \u_clk_div0/_10_  (.Y(\u_clk_div0/enable_even ),
    .A(\u_clk_div0/net80 ));
 sg13g2_inv_1 \u_clk_div0/_11_  (.Y(\u_clk_div0/_04_ ),
    .A(\u_clk_div0/out_odd ));
 sg13g2_inv_1 \u_clk_div0/_12_  (.Y(\u_clk_div0/syncN_1_ ),
    .A(\u_clk_div0/_00_ ));
 sg13g2_or2_1 \u_clk_div0/_13_  (.X(\u_clk_div0/_05_ ),
    .B(\u_clk_div0/net77 ),
    .A(\u_clk_div0/net79 ));
 sg13g2_nand2b_1 \u_clk_div0/_14_  (.Y(\u_clk_div0/_06_ ),
    .B(\u_clk_div0/_00_ ),
    .A_N(\u_clk_div0/net78 ));
 sg13g2_or2_1 \u_clk_div0/_15_  (.X(\u_clk_div0/not_zero ),
    .B(\u_clk_div0/_06_ ),
    .A(\u_clk_div0/_05_ ));
 sg13g2_nand2_1 \u_clk_div0/_16_  (.Y(\u_clk_div0/_07_ ),
    .A(\u_clk_div0/enable_even ),
    .B(\u_clk_div0/out_even ));
 sg13g2_o21ai_1 \u_clk_div0/_17_  (.B1(\u_clk_div0/net80 ),
    .Y(\u_clk_div0/_08_ ),
    .A1(\u_clk_div0/_05_ ),
    .A2(\u_clk_div0/_06_ ));
 sg13g2_inv_1 \u_clk_div0/_18_  (.Y(\u_clk_div0/enable_odd ),
    .A(\u_clk_div0/_08_ ));
 sg13g2_o21ai_1 \u_clk_div0/_19_  (.B1(\u_clk_div0/_07_ ),
    .Y(\u_clk_div0/out_buf ),
    .A1(\u_clk_div0/_04_ ),
    .A2(\u_clk_div0/_08_ ));
 sg13g2_buf_1 \u_clk_div0/_20_  (.A(\u_clk_div0/_01_ ),
    .X(\u_clk_div0/_02_ ));
 sg13g2_mux2_1 \u_clk_div0/even_0/_26_  (.A0(\u_clk_div0/net74 ),
    .A1(\u_clk_div0/even_0/_00_ ),
    .S(\u_clk_div0/even_0/_01_ ),
    .X(\u_clk_div0/even_0/_06_ ));
 sg13g2_mux2_1 \u_clk_div0/even_0/_27_  (.A0(\u_clk_div0/even_0/_03_ ),
    .A1(\u_clk_div0/net79 ),
    .S(\u_clk_div0/even_0/_02_ ),
    .X(\u_clk_div0/even_0/_07_ ));
 sg13g2_mux2_1 \u_clk_div0/even_0/_28_  (.A0(\u_clk_div0/even_0/_04_ ),
    .A1(\u_clk_div0/net78 ),
    .S(\u_clk_div0/even_0/_02_ ),
    .X(\u_clk_div0/even_0/_08_ ));
 sg13g2_mux2_1 \u_clk_div0/even_0/_29_  (.A0(\u_clk_div0/even_0/_05_ ),
    .A1(\u_clk_div0/net77 ),
    .S(\u_clk_div0/even_0/_02_ ),
    .X(\u_clk_div0/even_0/_09_ ));
 sg13g2_inv_1 \u_clk_div0/even_0/_30_  (.Y(\u_clk_div0/even_0/out_counter ),
    .A(\u_clk_div0/even_0/_11_ ));
 sg13g2_nor2_1 \u_clk_div0/even_0/_31_  (.A(\u_clk_div0/even_0/_10_ ),
    .B(\u_clk_div0/even_0/counter_4_ ),
    .Y(\u_clk_div0/even_0/_18_ ));
 sg13g2_nor3_1 \u_clk_div0/even_0/_32_  (.A(\u_clk_div0/even_0/counter_2_ ),
    .B(\u_clk_div0/even_0/counter_3_ ),
    .C(\u_clk_div0/even_0/counter_1_ ),
    .Y(\u_clk_div0/even_0/_19_ ));
 sg13g2_and2_1 \u_clk_div0/even_0/_33_  (.A(\u_clk_div0/even_0/_18_ ),
    .B(\u_clk_div0/even_0/_19_ ),
    .X(\u_clk_div0/even_0/_02_ ));
 sg13g2_inv_1 \u_clk_div0/even_0/_34_  (.Y(\u_clk_div0/even_0/_01_ ),
    .A(\u_clk_div0/even_0/_02_ ));
 sg13g2_nand2b_1 \u_clk_div0/even_0/_35_  (.Y(\u_clk_div0/even_0/_20_ ),
    .B(\u_clk_div0/even_0/_10_ ),
    .A_N(\u_clk_div0/even_0/counter_1_ ));
 sg13g2_xor2_1 \u_clk_div0/even_0/_36_  (.B(\u_clk_div0/even_0/counter_1_ ),
    .A(\u_clk_div0/even_0/_10_ ),
    .X(\u_clk_div0/even_0/_03_ ));
 sg13g2_xnor2_1 \u_clk_div0/even_0/_37_  (.Y(\u_clk_div0/even_0/_04_ ),
    .A(\u_clk_div0/even_0/counter_2_ ),
    .B(\u_clk_div0/even_0/_20_ ));
 sg13g2_nand2_1 \u_clk_div0/even_0/_38_  (.Y(\u_clk_div0/even_0/_21_ ),
    .A(\u_clk_div0/even_0/_10_ ),
    .B(\u_clk_div0/even_0/_19_ ));
 sg13g2_o21ai_1 \u_clk_div0/even_0/_39_  (.B1(\u_clk_div0/even_0/counter_3_ ),
    .Y(\u_clk_div0/even_0/_22_ ),
    .A1(\u_clk_div0/even_0/counter_2_ ),
    .A2(\u_clk_div0/even_0/_20_ ));
 sg13g2_nand2_1 \u_clk_div0/even_0/_40_  (.Y(\u_clk_div0/even_0/_05_ ),
    .A(\u_clk_div0/even_0/_21_ ),
    .B(\u_clk_div0/even_0/_22_ ));
 sg13g2_nor2_1 \u_clk_div0/even_0/_41_  (.A(\u_clk_div0/even_0/_10_ ),
    .B(\u_clk_div0/enable_even ),
    .Y(\u_clk_div0/even_0/_23_ ));
 sg13g2_a21oi_1 \u_clk_div0/even_0/_42_  (.A1(\u_clk_div0/even_0/_06_ ),
    .A2(\u_clk_div0/enable_even ),
    .Y(\u_clk_div0/even_0/_12_ ),
    .B1(\u_clk_div0/even_0/_23_ ));
 sg13g2_mux2_1 \u_clk_div0/even_0/_43_  (.A0(\u_clk_div0/even_0/counter_1_ ),
    .A1(\u_clk_div0/even_0/_07_ ),
    .S(\u_clk_div0/enable_even ),
    .X(\u_clk_div0/even_0/_13_ ));
 sg13g2_mux2_1 \u_clk_div0/even_0/_44_  (.A0(\u_clk_div0/even_0/counter_2_ ),
    .A1(\u_clk_div0/even_0/_08_ ),
    .S(\u_clk_div0/enable_even ),
    .X(\u_clk_div0/even_0/_14_ ));
 sg13g2_mux2_1 \u_clk_div0/even_0/_45_  (.A0(\u_clk_div0/even_0/counter_3_ ),
    .A1(\u_clk_div0/even_0/_09_ ),
    .S(\u_clk_div0/enable_even ),
    .X(\u_clk_div0/even_0/_15_ ));
 sg13g2_nand3_1 \u_clk_div0/even_0/_46_  (.B(\u_clk_div0/enable_even ),
    .C(\u_clk_div0/even_0/_19_ ),
    .A(\u_clk_div0/even_0/_10_ ),
    .Y(\u_clk_div0/even_0/_24_ ));
 sg13g2_xnor2_1 \u_clk_div0/even_0/_47_  (.Y(\u_clk_div0/even_0/_16_ ),
    .A(\u_clk_div0/even_0/counter_4_ ),
    .B(\u_clk_div0/even_0/_24_ ));
 sg13g2_nand3_1 \u_clk_div0/even_0/_48_  (.B(\u_clk_div0/even_0/_18_ ),
    .C(\u_clk_div0/even_0/_19_ ),
    .A(\u_clk_div0/enable_even ),
    .Y(\u_clk_div0/even_0/_25_ ));
 sg13g2_xnor2_1 \u_clk_div0/even_0/_49_  (.Y(\u_clk_div0/even_0/_17_ ),
    .A(\u_clk_div0/even_0/_11_ ),
    .B(\u_clk_div0/even_0/_25_ ));
 sg13g2_buf_1 \u_clk_div0/even_0/_50_  (.A(\u_clk_div0/even_0/_10_ ),
    .X(\u_clk_div0/even_0/_00_ ));
 sg13g2_dfrbpq_1 \u_clk_div0/even_0/counter_0___DFFE_PN1P_  (.RESET_B(net126),
    .D(\u_clk_div0/even_0/_12_ ),
    .Q(\u_clk_div0/even_0/_10_ ),
    .CLK(clknet_3_0__leaf_clk0_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/even_0/counter_1___DFFE_PN0P_  (.RESET_B(\u_clk_div0/net131 ),
    .D(\u_clk_div0/even_0/_13_ ),
    .Q(\u_clk_div0/even_0/counter_1_ ),
    .CLK(clknet_3_1__leaf_clk0_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/even_0/counter_2___DFFE_PN0P_  (.RESET_B(net126),
    .D(\u_clk_div0/even_0/_14_ ),
    .Q(\u_clk_div0/even_0/counter_2_ ),
    .CLK(clknet_3_0__leaf_clk0_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/even_0/counter_3___DFFE_PN0P_  (.RESET_B(net125),
    .D(\u_clk_div0/even_0/_15_ ),
    .Q(\u_clk_div0/even_0/counter_3_ ),
    .CLK(clknet_3_0__leaf_clk0_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/even_0/counter_4___DFFE_PN0P_  (.RESET_B(net123),
    .D(\u_clk_div0/even_0/_16_ ),
    .Q(\u_clk_div0/even_0/counter_4_ ),
    .CLK(clknet_3_0__leaf_clk0_int_regs));
 sg13g2_mux2_1 \u_clk_div0/even_0/out__MUX___TECHMAP_MUX  (.A0(\u_clk_div0/even_0/clk_delayed_2_ ),
    .A1(\u_clk_div0/even_0/out_counter_delayed_2_ ),
    .S(\u_clk_div0/not_zero ),
    .X(\u_clk_div0/out_even ));
 sg13g2_dfrbpq_1 \u_clk_div0/even_0/out_counter__DFFE_PN1P_  (.RESET_B(net128),
    .D(\u_clk_div0/even_0/_17_ ),
    .Q(\u_clk_div0/even_0/_11_ ),
    .CLK(clknet_3_1__leaf_clk0_int_regs));
 sg13g2_buf_16 \u_clk_div0/even_0/u_clkbuf_delayed_0_/u_buf  (.X(\u_clk_div0/even_0/clk_delayed_1_ ),
    .A(\u_clk_div0/even_0/clk_delayed_0_ ));
 sg13g2_buf_16 \u_clk_div0/even_0/u_clkbuf_delayed_1_/u_buf  (.X(\u_clk_div0/even_0/clk_delayed_2_ ),
    .A(\u_clk_div0/even_0/clk_delayed_1_ ));
 sg13g2_dlygate4sd2_1 \u_clk_div0/even_0/u_clkbuf_delayed_init/u_dly  (.A(clknet_1_0__leaf_clk0_int),
    .X(\u_clk_div0/even_0/clk_delayed_0_ ));
 sg13g2_buf_1 \u_clk_div0/even_0/u_clkbuf_out_delayed_0_/u_buf  (.A(\u_clk_div0/even_0/out_counter_delayed_0_ ),
    .X(\u_clk_div0/even_0/out_counter_delayed_1_ ));
 sg13g2_buf_1 \u_clk_div0/even_0/u_clkbuf_out_delayed_1_/u_buf  (.A(\u_clk_div0/even_0/out_counter_delayed_1_ ),
    .X(\u_clk_div0/even_0/out_counter_delayed_2_ ));
 sg13g2_buf_2 \u_clk_div0/even_0/u_clkbuf_out_delayed_init/u_buf  (.A(\u_clk_div0/even_0/out_counter ),
    .X(\u_clk_div0/even_0/out_counter_delayed_0_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_128_  (.A0(\u_clk_div0/odd_0/_043_ ),
    .A1(\u_clk_div0/odd_0/_044_ ),
    .S(\u_clk_div0/odd_0/net90 ),
    .X(\u_clk_div0/odd_0/_010_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_129_  (.A0(\u_clk_div0/odd_0/_045_ ),
    .A1(\u_clk_div0/odd_0/_046_ ),
    .S(\u_clk_div0/odd_0/net90 ),
    .X(\u_clk_div0/odd_0/_011_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_130_  (.A0(\u_clk_div0/odd_0/_015_ ),
    .A1(\u_clk_div0/odd_0/_016_ ),
    .S(\u_clk_div0/odd_0/net90 ),
    .X(\u_clk_div0/odd_0/_012_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_131_  (.A0(\u_clk_div0/odd_0/_017_ ),
    .A1(\u_clk_div0/odd_0/_018_ ),
    .S(\u_clk_div0/odd_0/net90 ),
    .X(\u_clk_div0/odd_0/_013_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_132_  (.A0(\u_clk_div0/odd_0/_019_ ),
    .A1(\u_clk_div0/odd_0/_020_ ),
    .S(\u_clk_div0/odd_0/net90 ),
    .X(\u_clk_div0/odd_0/_014_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_133_  (.A0(\u_clk_div0/odd_0/_021_ ),
    .A1(\u_clk_div0/net80 ),
    .S(\u_clk_div0/odd_0/_041_ ),
    .X(\u_clk_div0/odd_0/_022_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_134_  (.A0(\u_clk_div0/odd_0/_022_ ),
    .A1(\u_clk_div0/net80 ),
    .S(\u_clk_div0/odd_0/net90 ),
    .X(\u_clk_div0/odd_0/_000_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_135_  (.A0(\u_clk_div0/odd_0/_023_ ),
    .A1(\u_clk_div0/net74 ),
    .S(\u_clk_div0/odd_0/_041_ ),
    .X(\u_clk_div0/odd_0/_024_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_136_  (.A0(\u_clk_div0/odd_0/_024_ ),
    .A1(\u_clk_div0/net74 ),
    .S(\u_clk_div0/odd_0/net90 ),
    .X(\u_clk_div0/odd_0/_001_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_137_  (.A0(\u_clk_div0/odd_0/_025_ ),
    .A1(\u_clk_div0/net79 ),
    .S(\u_clk_div0/odd_0/_041_ ),
    .X(\u_clk_div0/odd_0/_026_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_138_  (.A0(\u_clk_div0/odd_0/_026_ ),
    .A1(\u_clk_div0/syncN_2_ ),
    .S(\u_clk_div0/odd_0/net91 ),
    .X(\u_clk_div0/odd_0/_002_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_139_  (.A0(\u_clk_div0/odd_0/_027_ ),
    .A1(\u_clk_div0/net78 ),
    .S(\u_clk_div0/odd_0/_041_ ),
    .X(\u_clk_div0/odd_0/_028_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_140_  (.A0(\u_clk_div0/odd_0/_028_ ),
    .A1(\u_clk_div0/net78 ),
    .S(\u_clk_div0/odd_0/net91 ),
    .X(\u_clk_div0/odd_0/_003_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_141_  (.A0(\u_clk_div0/odd_0/_029_ ),
    .A1(\u_clk_div0/net77 ),
    .S(\u_clk_div0/odd_0/_041_ ),
    .X(\u_clk_div0/odd_0/_030_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_142_  (.A0(\u_clk_div0/odd_0/_030_ ),
    .A1(\u_clk_div0/net77 ),
    .S(\u_clk_div0/odd_0/net91 ),
    .X(\u_clk_div0/odd_0/_004_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_143_  (.A0(\u_clk_div0/odd_0/_031_ ),
    .A1(\u_clk_div0/net80 ),
    .S(\u_clk_div0/odd_0/_042_ ),
    .X(\u_clk_div0/odd_0/_032_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_144_  (.A0(\u_clk_div0/odd_0/_032_ ),
    .A1(\u_clk_div0/net80 ),
    .S(\u_clk_div0/odd_0/net92 ),
    .X(\u_clk_div0/odd_0/_005_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_145_  (.A0(\u_clk_div0/odd_0/_033_ ),
    .A1(\u_clk_div0/net74 ),
    .S(\u_clk_div0/odd_0/_042_ ),
    .X(\u_clk_div0/odd_0/_034_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_146_  (.A0(\u_clk_div0/odd_0/_034_ ),
    .A1(\u_clk_div0/net74 ),
    .S(\u_clk_div0/odd_0/net92 ),
    .X(\u_clk_div0/odd_0/_006_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_147_  (.A0(\u_clk_div0/odd_0/_035_ ),
    .A1(\u_clk_div0/syncN_2_ ),
    .S(\u_clk_div0/odd_0/_042_ ),
    .X(\u_clk_div0/odd_0/_036_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_148_  (.A0(\u_clk_div0/odd_0/_036_ ),
    .A1(\u_clk_div0/syncN_2_ ),
    .S(\u_clk_div0/odd_0/net92 ),
    .X(\u_clk_div0/odd_0/_007_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_149_  (.A0(\u_clk_div0/odd_0/_037_ ),
    .A1(\u_clk_div0/net78 ),
    .S(\u_clk_div0/odd_0/_042_ ),
    .X(\u_clk_div0/odd_0/_038_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_150_  (.A0(\u_clk_div0/odd_0/_038_ ),
    .A1(\u_clk_div0/net78 ),
    .S(\u_clk_div0/odd_0/net92 ),
    .X(\u_clk_div0/odd_0/_008_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_151_  (.A0(\u_clk_div0/odd_0/_039_ ),
    .A1(\u_clk_div0/net77 ),
    .S(\u_clk_div0/odd_0/_042_ ),
    .X(\u_clk_div0/odd_0/_040_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_152_  (.A0(\u_clk_div0/odd_0/_040_ ),
    .A1(\u_clk_div0/net77 ),
    .S(\u_clk_div0/odd_0/net92 ),
    .X(\u_clk_div0/odd_0/_009_ ));
 sg13g2_inv_1 \u_clk_div0/odd_0/_153_  (.Y(\u_clk_div0/odd_0/_121_ ),
    .A(\u_clk_div0/odd_0/_051_ ));
 sg13g2_inv_1 \u_clk_div0/odd_0/_154_  (.Y(\u_clk_div0/odd_0/_122_ ),
    .A(\u_clk_div0/odd_0/_011_ ));
 sg13g2_inv_1 \u_clk_div0/odd_0/_155_  (.Y(\u_clk_div0/odd_0/_043_ ),
    .A(\u_clk_div0/odd_0/initial_begin_0_ ));
 sg13g2_inv_1 \u_clk_div0/odd_0/_156_  (.Y(\u_clk_div0/odd_0/_021_ ),
    .A(\u_clk_div0/odd_0/counter2_0_ ));
 sg13g2_inv_1 \u_clk_div0/odd_0/_157_  (.Y(\u_clk_div0/odd_0/_081_ ),
    .A(\u_clk_div0/odd_0/net91 ));
 sg13g2_inv_1 \u_clk_div0/odd_0/_158_  (.Y(\u_clk_div0/odd_0/_031_ ),
    .A(\u_clk_div0/odd_0/counter_0_ ));
 sg13g2_inv_1 \u_clk_div0/odd_0/_159_  (.Y(\u_clk_div0/odd_0/_082_ ),
    .A(\u_clk_div0/net80 ));
 sg13g2_inv_1 \u_clk_div0/odd_0/_160_  (.Y(\u_clk_div0/odd_0/_083_ ),
    .A(\u_clk_div0/net78 ));
 sg13g2_inv_1 \u_clk_div0/odd_0/_237__173  (.Y(net172),
    .A(clknet_3_7__leaf_clk0_int_regs));
 sg13g2_nor2_1 \u_clk_div0/odd_0/_162_  (.A(\u_clk_div0/odd_0/net92 ),
    .B(\u_clk_div0/enable_odd ),
    .Y(\u_clk_div0/odd_0/_084_ ));
 sg13g2_nor2_1 \u_clk_div0/odd_0/_163_  (.A(\u_clk_div0/odd_0/initial_begin_4_ ),
    .B(\u_clk_div0/odd_0/initial_begin_3_ ),
    .Y(\u_clk_div0/odd_0/_085_ ));
 sg13g2_nor2b_1 \u_clk_div0/odd_0/_164_  (.A(\u_clk_div0/odd_0/initial_begin_2_ ),
    .B_N(\u_clk_div0/odd_0/_049_ ),
    .Y(\u_clk_div0/odd_0/_086_ ));
 sg13g2_nand2b_1 \u_clk_div0/odd_0/_165_  (.Y(\u_clk_div0/odd_0/_087_ ),
    .B(\u_clk_div0/odd_0/_049_ ),
    .A_N(\u_clk_div0/odd_0/initial_begin_2_ ));
 sg13g2_and3_1 \u_clk_div0/odd_0/_166_  (.X(\u_clk_div0/odd_0/_088_ ),
    .A(\u_clk_div0/enable_odd ),
    .B(\u_clk_div0/odd_0/_085_ ),
    .C(\u_clk_div0/odd_0/_086_ ));
 sg13g2_nand3_1 \u_clk_div0/odd_0/_167_  (.B(\u_clk_div0/odd_0/_085_ ),
    .C(\u_clk_div0/odd_0/_086_ ),
    .A(\u_clk_div0/enable_odd ),
    .Y(\u_clk_div0/odd_0/_089_ ));
 sg13g2_a21oi_1 \u_clk_div0/odd_0/_168_  (.A1(\u_clk_div0/enable_odd ),
    .A2(\u_clk_div0/odd_0/_089_ ),
    .Y(\u_clk_div0/odd_0/_090_ ),
    .B1(\u_clk_div0/odd_0/net90 ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_169_  (.A0(\u_clk_div0/odd_0/_014_ ),
    .A1(\u_clk_div0/odd_0/initial_begin_4_ ),
    .S(\u_clk_div0/odd_0/_090_ ),
    .X(\u_clk_div0/odd_0/_074_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_170_  (.A0(\u_clk_div0/odd_0/_013_ ),
    .A1(\u_clk_div0/odd_0/initial_begin_3_ ),
    .S(\u_clk_div0/odd_0/_090_ ),
    .X(\u_clk_div0/odd_0/_073_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_171_  (.A0(\u_clk_div0/odd_0/_012_ ),
    .A1(\u_clk_div0/odd_0/initial_begin_2_ ),
    .S(\u_clk_div0/odd_0/_090_ ),
    .X(\u_clk_div0/odd_0/_072_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_172_  (.A0(\u_clk_div0/odd_0/_122_ ),
    .A1(\u_clk_div0/odd_0/_049_ ),
    .S(\u_clk_div0/odd_0/_090_ ),
    .X(\u_clk_div0/odd_0/_071_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_173_  (.A0(\u_clk_div0/odd_0/_010_ ),
    .A1(\u_clk_div0/odd_0/initial_begin_0_ ),
    .S(\u_clk_div0/odd_0/_090_ ),
    .X(\u_clk_div0/odd_0/_070_ ));
 sg13g2_nand2_1 \u_clk_div0/odd_0/_174_  (.Y(\u_clk_div0/odd_0/_091_ ),
    .A(\u_clk_div0/odd_0/_047_ ),
    .B(\u_clk_div0/odd_0/counter2_0_ ));
 sg13g2_nor4_1 \u_clk_div0/odd_0/_175_  (.A(\u_clk_div0/odd_0/counter2_4_ ),
    .B(\u_clk_div0/odd_0/counter2_3_ ),
    .C(\u_clk_div0/odd_0/counter2_2_ ),
    .D(\u_clk_div0/odd_0/_091_ ),
    .Y(\u_clk_div0/odd_0/_041_ ));
 sg13g2_and3_1 \u_clk_div0/odd_0/_176_  (.X(\u_clk_div0/odd_0/_092_ ),
    .A(\u_clk_div0/odd_0/_048_ ),
    .B(\u_clk_div0/odd_0/_088_ ),
    .C(\u_clk_div0/odd_0/_041_ ));
 sg13g2_a21oi_1 \u_clk_div0/odd_0/_177_  (.A1(\u_clk_div0/odd_0/_088_ ),
    .A2(\u_clk_div0/odd_0/_041_ ),
    .Y(\u_clk_div0/odd_0/_093_ ),
    .B1(\u_clk_div0/odd_0/_048_ ));
 sg13g2_nor3_1 \u_clk_div0/odd_0/_178_  (.A(\u_clk_div0/odd_0/net91 ),
    .B(\u_clk_div0/odd_0/_092_ ),
    .C(\u_clk_div0/odd_0/_093_ ),
    .Y(\u_clk_div0/odd_0/_069_ ));
 sg13g2_nor2_1 \u_clk_div0/odd_0/_179_  (.A(\u_clk_div0/odd_0/net91 ),
    .B(\u_clk_div0/odd_0/_088_ ),
    .Y(\u_clk_div0/odd_0/_094_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_180_  (.A0(\u_clk_div0/odd_0/_004_ ),
    .A1(\u_clk_div0/odd_0/counter2_4_ ),
    .S(\u_clk_div0/odd_0/_094_ ),
    .X(\u_clk_div0/odd_0/_068_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_181_  (.A0(\u_clk_div0/odd_0/_003_ ),
    .A1(\u_clk_div0/odd_0/counter2_3_ ),
    .S(\u_clk_div0/odd_0/_094_ ),
    .X(\u_clk_div0/odd_0/_067_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_182_  (.A0(\u_clk_div0/odd_0/_002_ ),
    .A1(\u_clk_div0/odd_0/counter2_2_ ),
    .S(\u_clk_div0/odd_0/_094_ ),
    .X(\u_clk_div0/odd_0/_066_ ));
 sg13g2_nand3_1 \u_clk_div0/odd_0/_183_  (.B(\u_clk_div0/odd_0/_081_ ),
    .C(\u_clk_div0/odd_0/_089_ ),
    .A(\u_clk_div0/odd_0/_047_ ),
    .Y(\u_clk_div0/odd_0/_095_ ));
 sg13g2_o21ai_1 \u_clk_div0/odd_0/_184_  (.B1(\u_clk_div0/odd_0/_095_ ),
    .Y(\u_clk_div0/odd_0/_065_ ),
    .A1(\u_clk_div0/odd_0/_001_ ),
    .A2(\u_clk_div0/odd_0/_094_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_185_  (.A0(\u_clk_div0/odd_0/_000_ ),
    .A1(\u_clk_div0/odd_0/counter2_0_ ),
    .S(\u_clk_div0/odd_0/_094_ ),
    .X(\u_clk_div0/odd_0/_064_ ));
 sg13g2_xor2_1 \u_clk_div0/odd_0/_186_  (.B(\u_clk_div0/odd_0/_048_ ),
    .A(\u_clk_div0/odd_0/_051_ ),
    .X(\u_clk_div0/odd_0/out_pre ));
 sg13g2_nor3_1 \u_clk_div0/odd_0/_187_  (.A(\u_clk_div0/odd_0/counter_2_ ),
    .B(\u_clk_div0/odd_0/counter_3_ ),
    .C(\u_clk_div0/odd_0/counter_4_ ),
    .Y(\u_clk_div0/odd_0/_096_ ));
 sg13g2_and3_1 \u_clk_div0/odd_0/_188_  (.X(\u_clk_div0/odd_0/_042_ ),
    .A(\u_clk_div0/odd_0/_050_ ),
    .B(\u_clk_div0/odd_0/counter_0_ ),
    .C(\u_clk_div0/odd_0/_096_ ));
 sg13g2_xnor2_1 \u_clk_div0/odd_0/_189_  (.Y(\u_clk_div0/odd_0/_044_ ),
    .A(\u_clk_div0/syncN_0_ ),
    .B(\u_clk_div0/net74 ));
 sg13g2_nand2_1 \u_clk_div0/odd_0/_190_  (.Y(\u_clk_div0/odd_0/_097_ ),
    .A(\u_clk_div0/odd_0/_049_ ),
    .B(\u_clk_div0/odd_0/_043_ ));
 sg13g2_xor2_1 \u_clk_div0/odd_0/_191_  (.B(\u_clk_div0/odd_0/initial_begin_0_ ),
    .A(\u_clk_div0/odd_0/_049_ ),
    .X(\u_clk_div0/odd_0/_045_ ));
 sg13g2_o21ai_1 \u_clk_div0/odd_0/_192_  (.B1(\u_clk_div0/net79 ),
    .Y(\u_clk_div0/odd_0/_098_ ),
    .A1(\u_clk_div0/syncN_0_ ),
    .A2(\u_clk_div0/net74 ));
 sg13g2_or3_1 \u_clk_div0/odd_0/_193_  (.A(\u_clk_div0/syncN_0_ ),
    .B(\u_clk_div0/syncN_1_ ),
    .C(\u_clk_div0/net79 ),
    .X(\u_clk_div0/odd_0/_099_ ));
 sg13g2_and2_1 \u_clk_div0/odd_0/_194_  (.A(\u_clk_div0/odd_0/_098_ ),
    .B(\u_clk_div0/odd_0/_099_ ),
    .X(\u_clk_div0/odd_0/_046_ ));
 sg13g2_xnor2_1 \u_clk_div0/odd_0/_195_  (.Y(\u_clk_div0/odd_0/_015_ ),
    .A(\u_clk_div0/odd_0/initial_begin_2_ ),
    .B(\u_clk_div0/odd_0/_097_ ));
 sg13g2_nor2_1 \u_clk_div0/odd_0/_196_  (.A(\u_clk_div0/odd_0/_083_ ),
    .B(\u_clk_div0/odd_0/_098_ ),
    .Y(\u_clk_div0/odd_0/_100_ ));
 sg13g2_xnor2_1 \u_clk_div0/odd_0/_197_  (.Y(\u_clk_div0/odd_0/_016_ ),
    .A(\u_clk_div0/syncN_3_ ),
    .B(\u_clk_div0/odd_0/_098_ ));
 sg13g2_nor3_1 \u_clk_div0/odd_0/_198_  (.A(\u_clk_div0/odd_0/initial_begin_3_ ),
    .B(\u_clk_div0/odd_0/initial_begin_0_ ),
    .C(\u_clk_div0/odd_0/_087_ ),
    .Y(\u_clk_div0/odd_0/_101_ ));
 sg13g2_o21ai_1 \u_clk_div0/odd_0/_199_  (.B1(\u_clk_div0/odd_0/initial_begin_3_ ),
    .Y(\u_clk_div0/odd_0/_102_ ),
    .A1(\u_clk_div0/odd_0/initial_begin_0_ ),
    .A2(\u_clk_div0/odd_0/_087_ ));
 sg13g2_nand2b_1 \u_clk_div0/odd_0/_200_  (.Y(\u_clk_div0/odd_0/_017_ ),
    .B(\u_clk_div0/odd_0/_102_ ),
    .A_N(\u_clk_div0/odd_0/_101_ ));
 sg13g2_and2_1 \u_clk_div0/odd_0/_201_  (.A(\u_clk_div0/syncN_4_ ),
    .B(\u_clk_div0/odd_0/_100_ ),
    .X(\u_clk_div0/odd_0/_020_ ));
 sg13g2_xor2_1 \u_clk_div0/odd_0/_202_  (.B(\u_clk_div0/odd_0/_100_ ),
    .A(\u_clk_div0/syncN_4_ ),
    .X(\u_clk_div0/odd_0/_018_ ));
 sg13g2_xor2_1 \u_clk_div0/odd_0/_203_  (.B(\u_clk_div0/odd_0/_101_ ),
    .A(\u_clk_div0/odd_0/initial_begin_4_ ),
    .X(\u_clk_div0/odd_0/_019_ ));
 sg13g2_nand2_1 \u_clk_div0/odd_0/_204_  (.Y(\u_clk_div0/odd_0/_103_ ),
    .A(\u_clk_div0/odd_0/_047_ ),
    .B(\u_clk_div0/odd_0/_021_ ));
 sg13g2_xor2_1 \u_clk_div0/odd_0/_205_  (.B(\u_clk_div0/odd_0/counter2_0_ ),
    .A(\u_clk_div0/odd_0/_047_ ),
    .X(\u_clk_div0/odd_0/_023_ ));
 sg13g2_nor2_1 \u_clk_div0/odd_0/_206_  (.A(\u_clk_div0/odd_0/counter2_2_ ),
    .B(\u_clk_div0/odd_0/_103_ ),
    .Y(\u_clk_div0/odd_0/_104_ ));
 sg13g2_xnor2_1 \u_clk_div0/odd_0/_207_  (.Y(\u_clk_div0/odd_0/_025_ ),
    .A(\u_clk_div0/odd_0/counter2_2_ ),
    .B(\u_clk_div0/odd_0/_103_ ));
 sg13g2_nor3_1 \u_clk_div0/odd_0/_208_  (.A(\u_clk_div0/odd_0/counter2_3_ ),
    .B(\u_clk_div0/odd_0/counter2_2_ ),
    .C(\u_clk_div0/odd_0/_103_ ),
    .Y(\u_clk_div0/odd_0/_105_ ));
 sg13g2_xor2_1 \u_clk_div0/odd_0/_209_  (.B(\u_clk_div0/odd_0/_104_ ),
    .A(\u_clk_div0/odd_0/counter2_3_ ),
    .X(\u_clk_div0/odd_0/_027_ ));
 sg13g2_xor2_1 \u_clk_div0/odd_0/_210_  (.B(\u_clk_div0/odd_0/_105_ ),
    .A(\u_clk_div0/odd_0/counter2_4_ ),
    .X(\u_clk_div0/odd_0/_029_ ));
 sg13g2_nand2_1 \u_clk_div0/odd_0/_211_  (.Y(\u_clk_div0/odd_0/_106_ ),
    .A(\u_clk_div0/odd_0/_050_ ),
    .B(\u_clk_div0/odd_0/_031_ ));
 sg13g2_xor2_1 \u_clk_div0/odd_0/_212_  (.B(\u_clk_div0/odd_0/counter_0_ ),
    .A(\u_clk_div0/odd_0/_050_ ),
    .X(\u_clk_div0/odd_0/_033_ ));
 sg13g2_nor2_1 \u_clk_div0/odd_0/_213_  (.A(\u_clk_div0/odd_0/counter_2_ ),
    .B(\u_clk_div0/odd_0/_106_ ),
    .Y(\u_clk_div0/odd_0/_107_ ));
 sg13g2_xnor2_1 \u_clk_div0/odd_0/_214_  (.Y(\u_clk_div0/odd_0/_035_ ),
    .A(\u_clk_div0/odd_0/counter_2_ ),
    .B(\u_clk_div0/odd_0/_106_ ));
 sg13g2_nor3_1 \u_clk_div0/odd_0/_215_  (.A(\u_clk_div0/odd_0/counter_2_ ),
    .B(\u_clk_div0/odd_0/counter_3_ ),
    .C(\u_clk_div0/odd_0/_106_ ),
    .Y(\u_clk_div0/odd_0/_108_ ));
 sg13g2_xor2_1 \u_clk_div0/odd_0/_216_  (.B(\u_clk_div0/odd_0/_107_ ),
    .A(\u_clk_div0/odd_0/counter_3_ ),
    .X(\u_clk_div0/odd_0/_037_ ));
 sg13g2_xor2_1 \u_clk_div0/odd_0/_217_  (.B(\u_clk_div0/odd_0/_108_ ),
    .A(\u_clk_div0/odd_0/counter_4_ ),
    .X(\u_clk_div0/odd_0/_039_ ));
 sg13g2_nor2b_1 \u_clk_div0/odd_0/_218_  (.A(\u_clk_div0/odd_0/old_N_2_ ),
    .B_N(\u_clk_div0/net79 ),
    .Y(\u_clk_div0/odd_0/_109_ ));
 sg13g2_o21ai_1 \u_clk_div0/odd_0/_219_  (.B1(\u_clk_div0/enable_odd ),
    .Y(\u_clk_div0/odd_0/_110_ ),
    .A1(\u_clk_div0/odd_0/old_N_3_ ),
    .A2(\u_clk_div0/odd_0/_083_ ));
 sg13g2_nand2b_1 \u_clk_div0/odd_0/_220_  (.Y(\u_clk_div0/odd_0/_111_ ),
    .B(\u_clk_div0/odd_0/old_N_2_ ),
    .A_N(\u_clk_div0/net79 ));
 sg13g2_xor2_1 \u_clk_div0/odd_0/_221_  (.B(\u_clk_div0/net77 ),
    .A(\u_clk_div0/odd_0/old_N_4_ ),
    .X(\u_clk_div0/odd_0/_112_ ));
 sg13g2_a221oi_1 \u_clk_div0/odd_0/_222_  (.B2(\u_clk_div0/odd_0/_083_ ),
    .C1(\u_clk_div0/odd_0/_112_ ),
    .B1(\u_clk_div0/odd_0/old_N_3_ ),
    .A1(\u_clk_div0/odd_0/old_N_0_ ),
    .Y(\u_clk_div0/odd_0/_113_ ),
    .A2(\u_clk_div0/odd_0/_082_ ));
 sg13g2_o21ai_1 \u_clk_div0/odd_0/_223_  (.B1(\u_clk_div0/odd_0/_111_ ),
    .Y(\u_clk_div0/odd_0/_114_ ),
    .A1(\u_clk_div0/odd_0/old_N_0_ ),
    .A2(\u_clk_div0/odd_0/_082_ ));
 sg13g2_xor2_1 \u_clk_div0/odd_0/_224_  (.B(\u_clk_div0/syncN_1_ ),
    .A(\u_clk_div0/odd_0/old_N_1_ ),
    .X(\u_clk_div0/odd_0/_115_ ));
 sg13g2_nor4_1 \u_clk_div0/odd_0/_225_  (.A(\u_clk_div0/odd_0/_109_ ),
    .B(\u_clk_div0/odd_0/_110_ ),
    .C(\u_clk_div0/odd_0/_114_ ),
    .D(\u_clk_div0/odd_0/_115_ ),
    .Y(\u_clk_div0/odd_0/_116_ ));
 sg13g2_a21oi_1 \u_clk_div0/odd_0/_226_  (.A1(\u_clk_div0/odd_0/_113_ ),
    .A2(\u_clk_div0/odd_0/_116_ ),
    .Y(\u_clk_div0/odd_0/_063_ ),
    .B1(\u_clk_div0/odd_0/_084_ ));
 sg13g2_nor2_1 \u_clk_div0/odd_0/_227_  (.A(\u_clk_div0/odd_0/_005_ ),
    .B(\u_clk_div0/odd_0/_084_ ),
    .Y(\u_clk_div0/odd_0/_117_ ));
 sg13g2_a21oi_1 \u_clk_div0/odd_0/_228_  (.A1(\u_clk_div0/odd_0/_031_ ),
    .A2(\u_clk_div0/odd_0/_084_ ),
    .Y(\u_clk_div0/odd_0/_075_ ),
    .B1(\u_clk_div0/odd_0/_117_ ));
 sg13g2_nand2_1 \u_clk_div0/odd_0/_229_  (.Y(\u_clk_div0/odd_0/_118_ ),
    .A(\u_clk_div0/odd_0/_050_ ),
    .B(\u_clk_div0/odd_0/_084_ ));
 sg13g2_o21ai_1 \u_clk_div0/odd_0/_230_  (.B1(\u_clk_div0/odd_0/_118_ ),
    .Y(\u_clk_div0/odd_0/_076_ ),
    .A1(\u_clk_div0/odd_0/_006_ ),
    .A2(\u_clk_div0/odd_0/_084_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_231_  (.A0(\u_clk_div0/odd_0/_007_ ),
    .A1(\u_clk_div0/odd_0/counter_2_ ),
    .S(\u_clk_div0/odd_0/_084_ ),
    .X(\u_clk_div0/odd_0/_077_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_232_  (.A0(\u_clk_div0/odd_0/_008_ ),
    .A1(\u_clk_div0/odd_0/counter_3_ ),
    .S(\u_clk_div0/odd_0/_084_ ),
    .X(\u_clk_div0/odd_0/_078_ ));
 sg13g2_mux2_1 \u_clk_div0/odd_0/_233_  (.A0(\u_clk_div0/odd_0/_009_ ),
    .A1(\u_clk_div0/odd_0/counter_4_ ),
    .S(\u_clk_div0/odd_0/_084_ ),
    .X(\u_clk_div0/odd_0/_079_ ));
 sg13g2_nand4_1 \u_clk_div0/odd_0/_234_  (.B(\u_clk_div0/enable_odd ),
    .C(\u_clk_div0/odd_0/counter_0_ ),
    .A(\u_clk_div0/odd_0/_050_ ),
    .Y(\u_clk_div0/odd_0/_119_ ),
    .D(\u_clk_div0/odd_0/_096_ ));
 sg13g2_o21ai_1 \u_clk_div0/odd_0/_235_  (.B1(\u_clk_div0/odd_0/_081_ ),
    .Y(\u_clk_div0/odd_0/_120_ ),
    .A1(\u_clk_div0/odd_0/_121_ ),
    .A2(\u_clk_div0/odd_0/_119_ ));
 sg13g2_a21oi_1 \u_clk_div0/odd_0/_236_  (.A1(\u_clk_div0/odd_0/_121_ ),
    .A2(\u_clk_div0/odd_0/_119_ ),
    .Y(\u_clk_div0/odd_0/_080_ ),
    .B1(\u_clk_div0/odd_0/_120_ ));
 sg13g2_inv_1 \u_clk_div0/odd_0/_238__174  (.Y(net173),
    .A(clknet_3_7__leaf_clk0_int_regs));
 sg13g2_inv_1 \u_clk_div0/odd_0/_239__175  (.Y(net174),
    .A(clknet_3_6__leaf_clk0_int_regs));
 sg13g2_inv_1 \u_clk_div0/odd_0/_240__176  (.Y(net175),
    .A(clknet_3_7__leaf_clk0_int_regs));
 sg13g2_inv_1 \u_clk_div0/odd_0/_241__177  (.Y(net176),
    .A(clknet_3_6__leaf_clk0_int_regs));
 sg13g2_inv_1 \u_clk_div0/odd_0/_242__178  (.Y(net177),
    .A(clknet_3_5__leaf_clk0_int_regs));
 sg13g2_inv_1 \u_clk_div0/odd_0/_243__179  (.Y(net178),
    .A(clknet_3_4__leaf_clk0_int_regs));
 sg13g2_inv_1 \u_clk_div0/odd_0/_244__180  (.Y(net179),
    .A(clknet_3_5__leaf_clk0_int_regs));
 sg13g2_inv_1 \u_clk_div0/odd_0/_245__181  (.Y(net180),
    .A(clknet_3_4__leaf_clk0_int_regs));
 sg13g2_inv_1 \u_clk_div0/odd_0/_246__182  (.Y(net181),
    .A(clknet_3_4__leaf_clk0_int_regs));
 sg13g2_inv_4 \u_clk_mux1_inv/u_clk_inv/u_inv_183  (.A(clknet_1_0__leaf_clk1_180_to_360_expand_regs),
    .Y(net182));
 sg13g2_tiehi \u_clk_div0/odd_0/old_N_4___DFF_P__135  (.L_HI(net134));
 sg13g2_tiehi \u_clk_div0/odd_0/old_N_0___DFF_P__136  (.L_HI(net135));
 sg13g2_tiehi \u_clk_div0/odd_0/old_N_1___DFF_P__137  (.L_HI(net136));
 sg13g2_tiehi \u_clk_div0/odd_0/old_N_2___DFF_P__138  (.L_HI(net137));
 sg13g2_tiehi \u_clk_div1/odd_0/old_N_3___DFF_P__139  (.L_HI(net138));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/counter2_0___DFFE_NN0P_  (.RESET_B(\u_clk_div0/odd_0/net130 ),
    .D(\u_clk_div0/odd_0/_064_ ),
    .Q(\u_clk_div0/odd_0/counter2_0_ ),
    .CLK(net171));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/counter2_1___DFFE_NN1P_  (.RESET_B(\u_clk_div0/odd_0/net130 ),
    .D(\u_clk_div0/odd_0/_065_ ),
    .Q(\u_clk_div0/odd_0/_047_ ),
    .CLK(net172));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/counter2_2___DFFE_NN0P_  (.RESET_B(\u_clk_div0/odd_0/net130 ),
    .D(\u_clk_div0/odd_0/_066_ ),
    .Q(\u_clk_div0/odd_0/counter2_2_ ),
    .CLK(net173));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/counter2_3___DFFE_NN0P_  (.RESET_B(net132),
    .D(\u_clk_div0/odd_0/_067_ ),
    .Q(\u_clk_div0/odd_0/counter2_3_ ),
    .CLK(net174));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/counter2_4___DFFE_NN0P_  (.RESET_B(\u_clk_div0/net131 ),
    .D(\u_clk_div0/odd_0/_068_ ),
    .Q(\u_clk_div0/odd_0/counter2_4_ ),
    .CLK(net175));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/counter_0___DFFE_PN0P_  (.RESET_B(net126),
    .D(\u_clk_div0/odd_0/_075_ ),
    .Q(\u_clk_div0/odd_0/counter_0_ ),
    .CLK(clknet_3_2__leaf_clk0_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/counter_1___DFFE_PN1P_  (.RESET_B(net126),
    .D(\u_clk_div0/odd_0/_076_ ),
    .Q(\u_clk_div0/odd_0/_050_ ),
    .CLK(clknet_3_2__leaf_clk0_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/counter_2___DFFE_PN0P_  (.RESET_B(\u_clk_div0/net131 ),
    .D(\u_clk_div0/odd_0/_077_ ),
    .Q(\u_clk_div0/odd_0/counter_2_ ),
    .CLK(clknet_3_3__leaf_clk0_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/counter_3___DFFE_PN0P_  (.RESET_B(net126),
    .D(\u_clk_div0/odd_0/_078_ ),
    .Q(\u_clk_div0/odd_0/counter_3_ ),
    .CLK(clknet_3_2__leaf_clk0_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/counter_4___DFFE_PN0P_  (.RESET_B(\u_clk_div0/net131 ),
    .D(\u_clk_div0/odd_0/_079_ ),
    .Q(\u_clk_div0/odd_0/counter_4_ ),
    .CLK(clknet_3_6__leaf_clk0_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/initial_begin_0___DFFE_NN0P_  (.RESET_B(\u_clk_div0/odd_0/net130 ),
    .D(\u_clk_div0/odd_0/_070_ ),
    .Q(\u_clk_div0/odd_0/initial_begin_0_ ),
    .CLK(net177));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/initial_begin_1___DFFE_NN1P_  (.RESET_B(\u_clk_div0/odd_0/net130 ),
    .D(\u_clk_div0/odd_0/_071_ ),
    .Q(\u_clk_div0/odd_0/_049_ ),
    .CLK(net178));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/initial_begin_2___DFFE_NN0P_  (.RESET_B(\u_clk_div0/odd_0/net130 ),
    .D(\u_clk_div0/odd_0/_072_ ),
    .Q(\u_clk_div0/odd_0/initial_begin_2_ ),
    .CLK(net179));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/initial_begin_3___DFFE_NN0P_  (.RESET_B(\u_clk_div0/odd_0/net130 ),
    .D(\u_clk_div0/odd_0/_073_ ),
    .Q(\u_clk_div0/odd_0/initial_begin_3_ ),
    .CLK(net180));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/initial_begin_4___DFFE_NN0P_  (.RESET_B(\u_clk_div0/odd_0/net130 ),
    .D(\u_clk_div0/odd_0/_074_ ),
    .Q(\u_clk_div0/odd_0/initial_begin_4_ ),
    .CLK(net181));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/old_N_0___DFF_P_  (.RESET_B(net135),
    .D(\u_clk_div0/net80 ),
    .Q(\u_clk_div0/odd_0/old_N_0_ ),
    .CLK(clknet_3_1__leaf_clk0_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/old_N_1___DFF_P_  (.RESET_B(net136),
    .D(\u_clk_div0/net74 ),
    .Q(\u_clk_div0/odd_0/old_N_1_ ),
    .CLK(clknet_3_1__leaf_clk0_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/old_N_2___DFF_P_  (.RESET_B(net137),
    .D(\u_clk_div0/net79 ),
    .Q(\u_clk_div0/odd_0/old_N_2_ ),
    .CLK(clknet_3_3__leaf_clk0_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/old_N_3___DFF_P_  (.RESET_B(net),
    .D(\u_clk_div0/net78 ),
    .Q(\u_clk_div0/odd_0/old_N_3_ ),
    .CLK(clknet_3_3__leaf_clk0_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/old_N_4___DFF_P_  (.RESET_B(net134),
    .D(\u_clk_div0/net77 ),
    .Q(\u_clk_div0/odd_0/old_N_4_ ),
    .CLK(clknet_3_2__leaf_clk0_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/out_counter2__DFFE_NN1P_  (.RESET_B(\u_clk_div0/net131 ),
    .D(\u_clk_div0/odd_0/_069_ ),
    .Q(\u_clk_div0/odd_0/_048_ ),
    .CLK(net176));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/out_counter__DFFE_PN1P_  (.RESET_B(\u_clk_div0/net131 ),
    .D(\u_clk_div0/odd_0/_080_ ),
    .Q(\u_clk_div0/odd_0/_051_ ),
    .CLK(clknet_3_6__leaf_clk0_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/odd_0/rst_pulse__DFFE_PN0P_  (.RESET_B(\u_clk_div0/net131 ),
    .D(\u_clk_div0/odd_0/_063_ ),
    .Q(\u_clk_div0/odd_0/rst_pulse ),
    .CLK(clknet_3_5__leaf_clk0_int_regs));
 sg13g2_buf_2 \u_clk_div0/odd_0/u_clkbuf_out_delayed_0_/u_buf  (.A(\u_clk_div0/odd_0/out_delayed_0_ ),
    .X(\u_clk_div0/out_odd ));
 sg13g2_buf_2 \u_clk_div0/odd_0/u_clkbuf_out_delayed_init/u_buf  (.A(\u_clk_div0/odd_0/out_pre ),
    .X(\u_clk_div0/odd_0/out_delayed_0_ ));
 sg13g2_dfrbpq_1 \u_clk_div0/syncN_0___DFF_PN0_  (.RESET_B(net124),
    .D(\u_clk_div0/syncNp_0_ ),
    .Q(\u_clk_div0/syncN_0_ ),
    .CLK(clknet_1_0__leaf_clk0_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/syncN_1___DFF_PN1_  (.RESET_B(net126),
    .D(\u_clk_div0/_02_ ),
    .Q(\u_clk_div0/_00_ ),
    .CLK(clknet_1_0__leaf_clk0_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/syncN_2___DFF_PN0_  (.RESET_B(net126),
    .D(\u_clk_div0/syncNp_2_ ),
    .Q(\u_clk_div0/syncN_2_ ),
    .CLK(clknet_1_0__leaf_clk0_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/syncN_3___DFF_PN0_  (.RESET_B(net124),
    .D(\u_clk_div0/syncNp_3_ ),
    .Q(\u_clk_div0/syncN_3_ ),
    .CLK(clknet_1_0__leaf_clk0_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/syncN_4___DFF_PN0_  (.RESET_B(net124),
    .D(\u_clk_div0/syncNp_4_ ),
    .Q(\u_clk_div0/syncN_4_ ),
    .CLK(clknet_1_0__leaf_clk0_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/syncNp_0___DFF_PN0_  (.RESET_B(net124),
    .D(net45),
    .Q(\u_clk_div0/syncNp_0_ ),
    .CLK(clknet_1_1__leaf_clk0_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/syncNp_1___DFF_PN1_  (.RESET_B(net124),
    .D(\u_clk_div0/_03_ ),
    .Q(\u_clk_div0/_01_ ),
    .CLK(clknet_1_1__leaf_clk0_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/syncNp_2___DFF_PN0_  (.RESET_B(net127),
    .D(net47),
    .Q(\u_clk_div0/syncNp_2_ ),
    .CLK(clknet_1_0__leaf_clk0_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/syncNp_3___DFF_PN0_  (.RESET_B(net124),
    .D(net48),
    .Q(\u_clk_div0/syncNp_3_ ),
    .CLK(clknet_1_1__leaf_clk0_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div0/syncNp_4___DFF_PN0_  (.RESET_B(net124),
    .D(net49),
    .Q(\u_clk_div0/syncNp_4_ ),
    .CLK(clknet_1_1__leaf_clk0_180_to_360_expand_regs));
 sg13g2_buf_16 \u_clk_div0/u_clkbuf_out/u_buf  (.X(clk0_180_to_360_expand),
    .A(\u_clk_div0/out_buf ));
 sg13g2_inv_1 \u_clk_div1/_09_  (.Y(\u_clk_div1/_03_ ),
    .A(net51));
 sg13g2_inv_1 \u_clk_div1/_10_  (.Y(\u_clk_div1/enable_even ),
    .A(\u_clk_div1/net88 ));
 sg13g2_inv_1 \u_clk_div1/_11_  (.Y(\u_clk_div1/_04_ ),
    .A(\u_clk_div1/out_odd ));
 sg13g2_inv_1 \u_clk_div1/_12_  (.Y(\u_clk_div1/syncN_1_ ),
    .A(\u_clk_div1/_00_ ));
 sg13g2_or2_1 \u_clk_div1/_13_  (.X(\u_clk_div1/_05_ ),
    .B(\u_clk_div1/net85 ),
    .A(\u_clk_div1/net87 ));
 sg13g2_nand2b_1 \u_clk_div1/_14_  (.Y(\u_clk_div1/_06_ ),
    .B(\u_clk_div1/_00_ ),
    .A_N(\u_clk_div1/net86 ));
 sg13g2_or2_1 \u_clk_div1/_15_  (.X(\u_clk_div1/not_zero ),
    .B(\u_clk_div1/_06_ ),
    .A(\u_clk_div1/_05_ ));
 sg13g2_nand2_1 \u_clk_div1/_16_  (.Y(\u_clk_div1/_07_ ),
    .A(\u_clk_div1/enable_even ),
    .B(\u_clk_div1/out_even ));
 sg13g2_o21ai_1 \u_clk_div1/_17_  (.B1(\u_clk_div1/net88 ),
    .Y(\u_clk_div1/_08_ ),
    .A1(\u_clk_div1/_05_ ),
    .A2(\u_clk_div1/_06_ ));
 sg13g2_inv_1 \u_clk_div1/_18_  (.Y(\u_clk_div1/enable_odd ),
    .A(\u_clk_div1/_08_ ));
 sg13g2_o21ai_1 \u_clk_div1/_19_  (.B1(\u_clk_div1/_07_ ),
    .Y(\u_clk_div1/out_buf ),
    .A1(\u_clk_div1/_04_ ),
    .A2(\u_clk_div1/_08_ ));
 sg13g2_buf_1 \u_clk_div1/_20_  (.A(\u_clk_div1/_01_ ),
    .X(\u_clk_div1/_02_ ));
 sg13g2_mux2_1 \u_clk_div1/even_0/_26_  (.A0(\u_clk_div1/net76 ),
    .A1(\u_clk_div1/even_0/_00_ ),
    .S(\u_clk_div1/even_0/_01_ ),
    .X(\u_clk_div1/even_0/_06_ ));
 sg13g2_mux2_1 \u_clk_div1/even_0/_27_  (.A0(\u_clk_div1/even_0/_03_ ),
    .A1(\u_clk_div1/net87 ),
    .S(\u_clk_div1/even_0/_02_ ),
    .X(\u_clk_div1/even_0/_07_ ));
 sg13g2_mux2_1 \u_clk_div1/even_0/_28_  (.A0(\u_clk_div1/even_0/_04_ ),
    .A1(\u_clk_div1/net86 ),
    .S(\u_clk_div1/even_0/_02_ ),
    .X(\u_clk_div1/even_0/_08_ ));
 sg13g2_mux2_1 \u_clk_div1/even_0/_29_  (.A0(\u_clk_div1/even_0/_05_ ),
    .A1(\u_clk_div1/net85 ),
    .S(\u_clk_div1/even_0/_02_ ),
    .X(\u_clk_div1/even_0/_09_ ));
 sg13g2_inv_1 \u_clk_div1/even_0/_30_  (.Y(\u_clk_div1/even_0/out_counter ),
    .A(\u_clk_div1/even_0/_11_ ));
 sg13g2_nor2_1 \u_clk_div1/even_0/_31_  (.A(\u_clk_div1/even_0/_10_ ),
    .B(\u_clk_div1/even_0/counter_4_ ),
    .Y(\u_clk_div1/even_0/_18_ ));
 sg13g2_nor3_1 \u_clk_div1/even_0/_32_  (.A(\u_clk_div1/even_0/counter_2_ ),
    .B(\u_clk_div1/even_0/counter_3_ ),
    .C(\u_clk_div1/even_0/counter_1_ ),
    .Y(\u_clk_div1/even_0/_19_ ));
 sg13g2_and2_1 \u_clk_div1/even_0/_33_  (.A(\u_clk_div1/even_0/_18_ ),
    .B(\u_clk_div1/even_0/_19_ ),
    .X(\u_clk_div1/even_0/_02_ ));
 sg13g2_inv_1 \u_clk_div1/even_0/_34_  (.Y(\u_clk_div1/even_0/_01_ ),
    .A(\u_clk_div1/even_0/_02_ ));
 sg13g2_nand2b_1 \u_clk_div1/even_0/_35_  (.Y(\u_clk_div1/even_0/_20_ ),
    .B(\u_clk_div1/even_0/_10_ ),
    .A_N(\u_clk_div1/even_0/counter_1_ ));
 sg13g2_xor2_1 \u_clk_div1/even_0/_36_  (.B(\u_clk_div1/even_0/counter_1_ ),
    .A(\u_clk_div1/even_0/_10_ ),
    .X(\u_clk_div1/even_0/_03_ ));
 sg13g2_xnor2_1 \u_clk_div1/even_0/_37_  (.Y(\u_clk_div1/even_0/_04_ ),
    .A(\u_clk_div1/even_0/counter_2_ ),
    .B(\u_clk_div1/even_0/_20_ ));
 sg13g2_nand2_1 \u_clk_div1/even_0/_38_  (.Y(\u_clk_div1/even_0/_21_ ),
    .A(\u_clk_div1/even_0/_10_ ),
    .B(\u_clk_div1/even_0/_19_ ));
 sg13g2_o21ai_1 \u_clk_div1/even_0/_39_  (.B1(\u_clk_div1/even_0/counter_3_ ),
    .Y(\u_clk_div1/even_0/_22_ ),
    .A1(\u_clk_div1/even_0/counter_2_ ),
    .A2(\u_clk_div1/even_0/_20_ ));
 sg13g2_nand2_1 \u_clk_div1/even_0/_40_  (.Y(\u_clk_div1/even_0/_05_ ),
    .A(\u_clk_div1/even_0/_21_ ),
    .B(\u_clk_div1/even_0/_22_ ));
 sg13g2_nor2_1 \u_clk_div1/even_0/_41_  (.A(\u_clk_div1/even_0/_10_ ),
    .B(\u_clk_div1/enable_even ),
    .Y(\u_clk_div1/even_0/_23_ ));
 sg13g2_a21oi_1 \u_clk_div1/even_0/_42_  (.A1(\u_clk_div1/even_0/_06_ ),
    .A2(\u_clk_div1/enable_even ),
    .Y(\u_clk_div1/even_0/_12_ ),
    .B1(\u_clk_div1/even_0/_23_ ));
 sg13g2_mux2_1 \u_clk_div1/even_0/_43_  (.A0(\u_clk_div1/even_0/counter_1_ ),
    .A1(\u_clk_div1/even_0/_07_ ),
    .S(\u_clk_div1/enable_even ),
    .X(\u_clk_div1/even_0/_13_ ));
 sg13g2_mux2_1 \u_clk_div1/even_0/_44_  (.A0(\u_clk_div1/even_0/counter_2_ ),
    .A1(\u_clk_div1/even_0/_08_ ),
    .S(\u_clk_div1/enable_even ),
    .X(\u_clk_div1/even_0/_14_ ));
 sg13g2_mux2_1 \u_clk_div1/even_0/_45_  (.A0(\u_clk_div1/even_0/counter_3_ ),
    .A1(\u_clk_div1/even_0/_09_ ),
    .S(\u_clk_div1/enable_even ),
    .X(\u_clk_div1/even_0/_15_ ));
 sg13g2_nand3_1 \u_clk_div1/even_0/_46_  (.B(\u_clk_div1/enable_even ),
    .C(\u_clk_div1/even_0/_19_ ),
    .A(\u_clk_div1/even_0/_10_ ),
    .Y(\u_clk_div1/even_0/_24_ ));
 sg13g2_xnor2_1 \u_clk_div1/even_0/_47_  (.Y(\u_clk_div1/even_0/_16_ ),
    .A(\u_clk_div1/even_0/counter_4_ ),
    .B(\u_clk_div1/even_0/_24_ ));
 sg13g2_nand3_1 \u_clk_div1/even_0/_48_  (.B(\u_clk_div1/even_0/_18_ ),
    .C(\u_clk_div1/even_0/_19_ ),
    .A(\u_clk_div1/enable_even ),
    .Y(\u_clk_div1/even_0/_25_ ));
 sg13g2_xnor2_1 \u_clk_div1/even_0/_49_  (.Y(\u_clk_div1/even_0/_17_ ),
    .A(\u_clk_div1/even_0/_11_ ),
    .B(\u_clk_div1/even_0/_25_ ));
 sg13g2_buf_1 \u_clk_div1/even_0/_50_  (.A(\u_clk_div1/even_0/_10_ ),
    .X(\u_clk_div1/even_0/_00_ ));
 sg13g2_dfrbpq_1 \u_clk_div1/even_0/counter_0___DFFE_PN1P_  (.RESET_B(\u_clk_div1/net118 ),
    .D(\u_clk_div1/even_0/_12_ ),
    .Q(\u_clk_div1/even_0/_10_ ),
    .CLK(clknet_3_3__leaf_clk1_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/even_0/counter_1___DFFE_PN0P_  (.RESET_B(net114),
    .D(\u_clk_div1/even_0/_13_ ),
    .Q(\u_clk_div1/even_0/counter_1_ ),
    .CLK(clknet_3_2__leaf_clk1_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/even_0/counter_2___DFFE_PN0P_  (.RESET_B(\u_clk_div1/net118 ),
    .D(\u_clk_div1/even_0/_14_ ),
    .Q(\u_clk_div1/even_0/counter_2_ ),
    .CLK(clknet_3_2__leaf_clk1_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/even_0/counter_3___DFFE_PN0P_  (.RESET_B(net114),
    .D(\u_clk_div1/even_0/_15_ ),
    .Q(\u_clk_div1/even_0/counter_3_ ),
    .CLK(clknet_3_2__leaf_clk1_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/even_0/counter_4___DFFE_PN0P_  (.RESET_B(\u_clk_div1/net118 ),
    .D(\u_clk_div1/even_0/_16_ ),
    .Q(\u_clk_div1/even_0/counter_4_ ),
    .CLK(clknet_3_2__leaf_clk1_int_regs));
 sg13g2_mux2_1 \u_clk_div1/even_0/out__MUX___TECHMAP_MUX  (.A0(\u_clk_div1/even_0/clk_delayed_2_ ),
    .A1(\u_clk_div1/even_0/out_counter_delayed_2_ ),
    .S(\u_clk_div1/not_zero ),
    .X(\u_clk_div1/out_even ));
 sg13g2_dfrbpq_1 \u_clk_div1/even_0/out_counter__DFFE_PN1P_  (.RESET_B(\u_clk_div1/net119 ),
    .D(\u_clk_div1/even_0/_17_ ),
    .Q(\u_clk_div1/even_0/_11_ ),
    .CLK(clknet_3_3__leaf_clk1_int_regs));
 sg13g2_buf_16 \u_clk_div1/even_0/u_clkbuf_delayed_0_/u_buf  (.X(\u_clk_div1/even_0/clk_delayed_1_ ),
    .A(\u_clk_div1/even_0/clk_delayed_0_ ));
 sg13g2_buf_16 \u_clk_div1/even_0/u_clkbuf_delayed_1_/u_buf  (.X(\u_clk_div1/even_0/clk_delayed_2_ ),
    .A(\u_clk_div1/even_0/clk_delayed_1_ ));
 sg13g2_dlygate4sd2_1 \u_clk_div1/even_0/u_clkbuf_delayed_init/u_dly  (.A(clknet_1_0__leaf_clk1_int),
    .X(\u_clk_div1/even_0/clk_delayed_0_ ));
 sg13g2_buf_1 \u_clk_div1/even_0/u_clkbuf_out_delayed_0_/u_buf  (.A(\u_clk_div1/even_0/out_counter_delayed_0_ ),
    .X(\u_clk_div1/even_0/out_counter_delayed_1_ ));
 sg13g2_buf_1 \u_clk_div1/even_0/u_clkbuf_out_delayed_1_/u_buf  (.A(\u_clk_div1/even_0/out_counter_delayed_1_ ),
    .X(\u_clk_div1/even_0/out_counter_delayed_2_ ));
 sg13g2_buf_2 \u_clk_div1/even_0/u_clkbuf_out_delayed_init/u_buf  (.A(\u_clk_div1/even_0/out_counter ),
    .X(\u_clk_div1/even_0/out_counter_delayed_0_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_128_  (.A0(\u_clk_div1/odd_0/_043_ ),
    .A1(\u_clk_div1/odd_0/_044_ ),
    .S(\u_clk_div1/odd_0/net97 ),
    .X(\u_clk_div1/odd_0/_010_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_129_  (.A0(\u_clk_div1/odd_0/_045_ ),
    .A1(\u_clk_div1/odd_0/_046_ ),
    .S(\u_clk_div1/odd_0/net97 ),
    .X(\u_clk_div1/odd_0/_011_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_130_  (.A0(\u_clk_div1/odd_0/_015_ ),
    .A1(\u_clk_div1/odd_0/_016_ ),
    .S(\u_clk_div1/odd_0/net97 ),
    .X(\u_clk_div1/odd_0/_012_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_131_  (.A0(\u_clk_div1/odd_0/_017_ ),
    .A1(\u_clk_div1/odd_0/_018_ ),
    .S(\u_clk_div1/odd_0/net97 ),
    .X(\u_clk_div1/odd_0/_013_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_132_  (.A0(\u_clk_div1/odd_0/_019_ ),
    .A1(\u_clk_div1/odd_0/_020_ ),
    .S(\u_clk_div1/odd_0/net97 ),
    .X(\u_clk_div1/odd_0/_014_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_133_  (.A0(\u_clk_div1/odd_0/_021_ ),
    .A1(\u_clk_div1/net88 ),
    .S(\u_clk_div1/odd_0/_041_ ),
    .X(\u_clk_div1/odd_0/_022_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_134_  (.A0(\u_clk_div1/odd_0/_022_ ),
    .A1(\u_clk_div1/net88 ),
    .S(\u_clk_div1/odd_0/net96 ),
    .X(\u_clk_div1/odd_0/_000_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_135_  (.A0(\u_clk_div1/odd_0/_023_ ),
    .A1(\u_clk_div1/net76 ),
    .S(\u_clk_div1/odd_0/_041_ ),
    .X(\u_clk_div1/odd_0/_024_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_136_  (.A0(\u_clk_div1/odd_0/_024_ ),
    .A1(\u_clk_div1/net76 ),
    .S(\u_clk_div1/odd_0/net96 ),
    .X(\u_clk_div1/odd_0/_001_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_137_  (.A0(\u_clk_div1/odd_0/_025_ ),
    .A1(\u_clk_div1/net87 ),
    .S(\u_clk_div1/odd_0/_041_ ),
    .X(\u_clk_div1/odd_0/_026_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_138_  (.A0(\u_clk_div1/odd_0/_026_ ),
    .A1(\u_clk_div1/syncN_2_ ),
    .S(\u_clk_div1/odd_0/net96 ),
    .X(\u_clk_div1/odd_0/_002_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_139_  (.A0(\u_clk_div1/odd_0/_027_ ),
    .A1(\u_clk_div1/net86 ),
    .S(\u_clk_div1/odd_0/_041_ ),
    .X(\u_clk_div1/odd_0/_028_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_140_  (.A0(\u_clk_div1/odd_0/_028_ ),
    .A1(\u_clk_div1/net86 ),
    .S(\u_clk_div1/odd_0/net96 ),
    .X(\u_clk_div1/odd_0/_003_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_141_  (.A0(\u_clk_div1/odd_0/_029_ ),
    .A1(\u_clk_div1/net85 ),
    .S(\u_clk_div1/odd_0/_041_ ),
    .X(\u_clk_div1/odd_0/_030_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_142_  (.A0(\u_clk_div1/odd_0/_030_ ),
    .A1(\u_clk_div1/net85 ),
    .S(\u_clk_div1/odd_0/net96 ),
    .X(\u_clk_div1/odd_0/_004_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_143_  (.A0(\u_clk_div1/odd_0/_031_ ),
    .A1(\u_clk_div1/net88 ),
    .S(\u_clk_div1/odd_0/_042_ ),
    .X(\u_clk_div1/odd_0/_032_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_144_  (.A0(\u_clk_div1/odd_0/_032_ ),
    .A1(\u_clk_div1/net88 ),
    .S(\u_clk_div1/odd_0/net98 ),
    .X(\u_clk_div1/odd_0/_005_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_145_  (.A0(\u_clk_div1/odd_0/_033_ ),
    .A1(\u_clk_div1/net76 ),
    .S(\u_clk_div1/odd_0/_042_ ),
    .X(\u_clk_div1/odd_0/_034_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_146_  (.A0(\u_clk_div1/odd_0/_034_ ),
    .A1(\u_clk_div1/net76 ),
    .S(\u_clk_div1/odd_0/net98 ),
    .X(\u_clk_div1/odd_0/_006_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_147_  (.A0(\u_clk_div1/odd_0/_035_ ),
    .A1(\u_clk_div1/net87 ),
    .S(\u_clk_div1/odd_0/_042_ ),
    .X(\u_clk_div1/odd_0/_036_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_148_  (.A0(\u_clk_div1/odd_0/_036_ ),
    .A1(\u_clk_div1/net87 ),
    .S(\u_clk_div1/odd_0/net98 ),
    .X(\u_clk_div1/odd_0/_007_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_149_  (.A0(\u_clk_div1/odd_0/_037_ ),
    .A1(\u_clk_div1/net86 ),
    .S(\u_clk_div1/odd_0/_042_ ),
    .X(\u_clk_div1/odd_0/_038_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_150_  (.A0(\u_clk_div1/odd_0/_038_ ),
    .A1(\u_clk_div1/net86 ),
    .S(\u_clk_div1/odd_0/net98 ),
    .X(\u_clk_div1/odd_0/_008_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_151_  (.A0(\u_clk_div1/odd_0/_039_ ),
    .A1(\u_clk_div1/net85 ),
    .S(\u_clk_div1/odd_0/_042_ ),
    .X(\u_clk_div1/odd_0/_040_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_152_  (.A0(\u_clk_div1/odd_0/_040_ ),
    .A1(\u_clk_div1/net85 ),
    .S(\u_clk_div1/odd_0/net98 ),
    .X(\u_clk_div1/odd_0/_009_ ));
 sg13g2_inv_1 \u_clk_div1/odd_0/_153_  (.Y(\u_clk_div1/odd_0/_121_ ),
    .A(\u_clk_div1/odd_0/_051_ ));
 sg13g2_inv_1 \u_clk_div1/odd_0/_154_  (.Y(\u_clk_div1/odd_0/_122_ ),
    .A(\u_clk_div1/odd_0/_011_ ));
 sg13g2_inv_1 \u_clk_div1/odd_0/_155_  (.Y(\u_clk_div1/odd_0/_043_ ),
    .A(\u_clk_div1/odd_0/initial_begin_0_ ));
 sg13g2_inv_1 \u_clk_div1/odd_0/_156_  (.Y(\u_clk_div1/odd_0/_021_ ),
    .A(\u_clk_div1/odd_0/counter2_0_ ));
 sg13g2_inv_1 \u_clk_div1/odd_0/_157_  (.Y(\u_clk_div1/odd_0/_081_ ),
    .A(\u_clk_div1/odd_0/net96 ));
 sg13g2_inv_1 \u_clk_div1/odd_0/_158_  (.Y(\u_clk_div1/odd_0/_031_ ),
    .A(\u_clk_div1/odd_0/counter_0_ ));
 sg13g2_inv_1 \u_clk_div1/odd_0/_159_  (.Y(\u_clk_div1/odd_0/_082_ ),
    .A(\u_clk_div1/net88 ));
 sg13g2_inv_1 \u_clk_div1/odd_0/_160_  (.Y(\u_clk_div1/odd_0/_083_ ),
    .A(\u_clk_div1/net86 ));
 sg13g2_inv_1 \u_clk_div1/odd_0/_237__151  (.Y(net150),
    .A(clknet_3_6__leaf_clk1_int_regs));
 sg13g2_nor2_1 \u_clk_div1/odd_0/_162_  (.A(\u_clk_div1/odd_0/net98 ),
    .B(\u_clk_div1/enable_odd ),
    .Y(\u_clk_div1/odd_0/_084_ ));
 sg13g2_nor2_1 \u_clk_div1/odd_0/_163_  (.A(\u_clk_div1/odd_0/initial_begin_4_ ),
    .B(\u_clk_div1/odd_0/initial_begin_3_ ),
    .Y(\u_clk_div1/odd_0/_085_ ));
 sg13g2_nor2b_1 \u_clk_div1/odd_0/_164_  (.A(\u_clk_div1/odd_0/initial_begin_2_ ),
    .B_N(\u_clk_div1/odd_0/_049_ ),
    .Y(\u_clk_div1/odd_0/_086_ ));
 sg13g2_nand2b_1 \u_clk_div1/odd_0/_165_  (.Y(\u_clk_div1/odd_0/_087_ ),
    .B(\u_clk_div1/odd_0/_049_ ),
    .A_N(\u_clk_div1/odd_0/initial_begin_2_ ));
 sg13g2_and3_1 \u_clk_div1/odd_0/_166_  (.X(\u_clk_div1/odd_0/_088_ ),
    .A(\u_clk_div1/enable_odd ),
    .B(\u_clk_div1/odd_0/_085_ ),
    .C(\u_clk_div1/odd_0/_086_ ));
 sg13g2_nand3_1 \u_clk_div1/odd_0/_167_  (.B(\u_clk_div1/odd_0/_085_ ),
    .C(\u_clk_div1/odd_0/_086_ ),
    .A(\u_clk_div1/enable_odd ),
    .Y(\u_clk_div1/odd_0/_089_ ));
 sg13g2_a21oi_1 \u_clk_div1/odd_0/_168_  (.A1(\u_clk_div1/enable_odd ),
    .A2(\u_clk_div1/odd_0/_089_ ),
    .Y(\u_clk_div1/odd_0/_090_ ),
    .B1(\u_clk_div1/odd_0/net97 ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_169_  (.A0(\u_clk_div1/odd_0/_014_ ),
    .A1(\u_clk_div1/odd_0/initial_begin_4_ ),
    .S(\u_clk_div1/odd_0/_090_ ),
    .X(\u_clk_div1/odd_0/_074_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_170_  (.A0(\u_clk_div1/odd_0/_013_ ),
    .A1(\u_clk_div1/odd_0/initial_begin_3_ ),
    .S(\u_clk_div1/odd_0/_090_ ),
    .X(\u_clk_div1/odd_0/_073_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_171_  (.A0(\u_clk_div1/odd_0/_012_ ),
    .A1(\u_clk_div1/odd_0/initial_begin_2_ ),
    .S(\u_clk_div1/odd_0/_090_ ),
    .X(\u_clk_div1/odd_0/_072_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_172_  (.A0(\u_clk_div1/odd_0/_122_ ),
    .A1(\u_clk_div1/odd_0/_049_ ),
    .S(\u_clk_div1/odd_0/_090_ ),
    .X(\u_clk_div1/odd_0/_071_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_173_  (.A0(\u_clk_div1/odd_0/_010_ ),
    .A1(\u_clk_div1/odd_0/initial_begin_0_ ),
    .S(\u_clk_div1/odd_0/_090_ ),
    .X(\u_clk_div1/odd_0/_070_ ));
 sg13g2_nand2_1 \u_clk_div1/odd_0/_174_  (.Y(\u_clk_div1/odd_0/_091_ ),
    .A(\u_clk_div1/odd_0/_047_ ),
    .B(\u_clk_div1/odd_0/counter2_0_ ));
 sg13g2_nor4_1 \u_clk_div1/odd_0/_175_  (.A(\u_clk_div1/odd_0/counter2_4_ ),
    .B(\u_clk_div1/odd_0/counter2_3_ ),
    .C(\u_clk_div1/odd_0/counter2_2_ ),
    .D(\u_clk_div1/odd_0/_091_ ),
    .Y(\u_clk_div1/odd_0/_041_ ));
 sg13g2_and3_1 \u_clk_div1/odd_0/_176_  (.X(\u_clk_div1/odd_0/_092_ ),
    .A(\u_clk_div1/odd_0/_048_ ),
    .B(\u_clk_div1/odd_0/_088_ ),
    .C(\u_clk_div1/odd_0/_041_ ));
 sg13g2_a21oi_1 \u_clk_div1/odd_0/_177_  (.A1(\u_clk_div1/odd_0/_088_ ),
    .A2(\u_clk_div1/odd_0/_041_ ),
    .Y(\u_clk_div1/odd_0/_093_ ),
    .B1(\u_clk_div1/odd_0/_048_ ));
 sg13g2_nor3_1 \u_clk_div1/odd_0/_178_  (.A(\u_clk_div1/odd_0/net96 ),
    .B(\u_clk_div1/odd_0/_092_ ),
    .C(\u_clk_div1/odd_0/_093_ ),
    .Y(\u_clk_div1/odd_0/_069_ ));
 sg13g2_nor2_1 \u_clk_div1/odd_0/_179_  (.A(\u_clk_div1/odd_0/net96 ),
    .B(\u_clk_div1/odd_0/_088_ ),
    .Y(\u_clk_div1/odd_0/_094_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_180_  (.A0(\u_clk_div1/odd_0/_004_ ),
    .A1(\u_clk_div1/odd_0/counter2_4_ ),
    .S(\u_clk_div1/odd_0/_094_ ),
    .X(\u_clk_div1/odd_0/_068_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_181_  (.A0(\u_clk_div1/odd_0/_003_ ),
    .A1(\u_clk_div1/odd_0/counter2_3_ ),
    .S(\u_clk_div1/odd_0/_094_ ),
    .X(\u_clk_div1/odd_0/_067_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_182_  (.A0(\u_clk_div1/odd_0/_002_ ),
    .A1(\u_clk_div1/odd_0/counter2_2_ ),
    .S(\u_clk_div1/odd_0/_094_ ),
    .X(\u_clk_div1/odd_0/_066_ ));
 sg13g2_nand3_1 \u_clk_div1/odd_0/_183_  (.B(\u_clk_div1/odd_0/_081_ ),
    .C(\u_clk_div1/odd_0/_089_ ),
    .A(\u_clk_div1/odd_0/_047_ ),
    .Y(\u_clk_div1/odd_0/_095_ ));
 sg13g2_o21ai_1 \u_clk_div1/odd_0/_184_  (.B1(\u_clk_div1/odd_0/_095_ ),
    .Y(\u_clk_div1/odd_0/_065_ ),
    .A1(\u_clk_div1/odd_0/_001_ ),
    .A2(\u_clk_div1/odd_0/_094_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_185_  (.A0(\u_clk_div1/odd_0/_000_ ),
    .A1(\u_clk_div1/odd_0/counter2_0_ ),
    .S(\u_clk_div1/odd_0/_094_ ),
    .X(\u_clk_div1/odd_0/_064_ ));
 sg13g2_xor2_1 \u_clk_div1/odd_0/_186_  (.B(\u_clk_div1/odd_0/_048_ ),
    .A(\u_clk_div1/odd_0/_051_ ),
    .X(\u_clk_div1/odd_0/out_pre ));
 sg13g2_nor3_1 \u_clk_div1/odd_0/_187_  (.A(\u_clk_div1/odd_0/counter_2_ ),
    .B(\u_clk_div1/odd_0/counter_3_ ),
    .C(\u_clk_div1/odd_0/counter_4_ ),
    .Y(\u_clk_div1/odd_0/_096_ ));
 sg13g2_and3_1 \u_clk_div1/odd_0/_188_  (.X(\u_clk_div1/odd_0/_042_ ),
    .A(\u_clk_div1/odd_0/_050_ ),
    .B(\u_clk_div1/odd_0/counter_0_ ),
    .C(\u_clk_div1/odd_0/_096_ ));
 sg13g2_xnor2_1 \u_clk_div1/odd_0/_189_  (.Y(\u_clk_div1/odd_0/_044_ ),
    .A(\u_clk_div1/syncN_0_ ),
    .B(\u_clk_div1/net76 ));
 sg13g2_nand2_1 \u_clk_div1/odd_0/_190_  (.Y(\u_clk_div1/odd_0/_097_ ),
    .A(\u_clk_div1/odd_0/_049_ ),
    .B(\u_clk_div1/odd_0/_043_ ));
 sg13g2_xor2_1 \u_clk_div1/odd_0/_191_  (.B(\u_clk_div1/odd_0/initial_begin_0_ ),
    .A(\u_clk_div1/odd_0/_049_ ),
    .X(\u_clk_div1/odd_0/_045_ ));
 sg13g2_o21ai_1 \u_clk_div1/odd_0/_192_  (.B1(\u_clk_div1/syncN_2_ ),
    .Y(\u_clk_div1/odd_0/_098_ ),
    .A1(\u_clk_div1/syncN_0_ ),
    .A2(\u_clk_div1/syncN_1_ ));
 sg13g2_or3_1 \u_clk_div1/odd_0/_193_  (.A(\u_clk_div1/syncN_0_ ),
    .B(\u_clk_div1/syncN_1_ ),
    .C(\u_clk_div1/syncN_2_ ),
    .X(\u_clk_div1/odd_0/_099_ ));
 sg13g2_and2_1 \u_clk_div1/odd_0/_194_  (.A(\u_clk_div1/odd_0/_098_ ),
    .B(\u_clk_div1/odd_0/_099_ ),
    .X(\u_clk_div1/odd_0/_046_ ));
 sg13g2_xnor2_1 \u_clk_div1/odd_0/_195_  (.Y(\u_clk_div1/odd_0/_015_ ),
    .A(\u_clk_div1/odd_0/initial_begin_2_ ),
    .B(\u_clk_div1/odd_0/_097_ ));
 sg13g2_nor2_1 \u_clk_div1/odd_0/_196_  (.A(\u_clk_div1/odd_0/_083_ ),
    .B(\u_clk_div1/odd_0/_098_ ),
    .Y(\u_clk_div1/odd_0/_100_ ));
 sg13g2_xnor2_1 \u_clk_div1/odd_0/_197_  (.Y(\u_clk_div1/odd_0/_016_ ),
    .A(\u_clk_div1/net86 ),
    .B(\u_clk_div1/odd_0/_098_ ));
 sg13g2_nor3_1 \u_clk_div1/odd_0/_198_  (.A(\u_clk_div1/odd_0/initial_begin_3_ ),
    .B(\u_clk_div1/odd_0/initial_begin_0_ ),
    .C(\u_clk_div1/odd_0/_087_ ),
    .Y(\u_clk_div1/odd_0/_101_ ));
 sg13g2_o21ai_1 \u_clk_div1/odd_0/_199_  (.B1(\u_clk_div1/odd_0/initial_begin_3_ ),
    .Y(\u_clk_div1/odd_0/_102_ ),
    .A1(\u_clk_div1/odd_0/initial_begin_0_ ),
    .A2(\u_clk_div1/odd_0/_087_ ));
 sg13g2_nand2b_1 \u_clk_div1/odd_0/_200_  (.Y(\u_clk_div1/odd_0/_017_ ),
    .B(\u_clk_div1/odd_0/_102_ ),
    .A_N(\u_clk_div1/odd_0/_101_ ));
 sg13g2_and2_1 \u_clk_div1/odd_0/_201_  (.A(\u_clk_div1/syncN_4_ ),
    .B(\u_clk_div1/odd_0/_100_ ),
    .X(\u_clk_div1/odd_0/_020_ ));
 sg13g2_xor2_1 \u_clk_div1/odd_0/_202_  (.B(\u_clk_div1/odd_0/_100_ ),
    .A(\u_clk_div1/syncN_4_ ),
    .X(\u_clk_div1/odd_0/_018_ ));
 sg13g2_xor2_1 \u_clk_div1/odd_0/_203_  (.B(\u_clk_div1/odd_0/_101_ ),
    .A(\u_clk_div1/odd_0/initial_begin_4_ ),
    .X(\u_clk_div1/odd_0/_019_ ));
 sg13g2_nand2_1 \u_clk_div1/odd_0/_204_  (.Y(\u_clk_div1/odd_0/_103_ ),
    .A(\u_clk_div1/odd_0/_047_ ),
    .B(\u_clk_div1/odd_0/_021_ ));
 sg13g2_xor2_1 \u_clk_div1/odd_0/_205_  (.B(\u_clk_div1/odd_0/counter2_0_ ),
    .A(\u_clk_div1/odd_0/_047_ ),
    .X(\u_clk_div1/odd_0/_023_ ));
 sg13g2_nor2_1 \u_clk_div1/odd_0/_206_  (.A(\u_clk_div1/odd_0/counter2_2_ ),
    .B(\u_clk_div1/odd_0/_103_ ),
    .Y(\u_clk_div1/odd_0/_104_ ));
 sg13g2_xnor2_1 \u_clk_div1/odd_0/_207_  (.Y(\u_clk_div1/odd_0/_025_ ),
    .A(\u_clk_div1/odd_0/counter2_2_ ),
    .B(\u_clk_div1/odd_0/_103_ ));
 sg13g2_nor3_1 \u_clk_div1/odd_0/_208_  (.A(\u_clk_div1/odd_0/counter2_3_ ),
    .B(\u_clk_div1/odd_0/counter2_2_ ),
    .C(\u_clk_div1/odd_0/_103_ ),
    .Y(\u_clk_div1/odd_0/_105_ ));
 sg13g2_xor2_1 \u_clk_div1/odd_0/_209_  (.B(\u_clk_div1/odd_0/_104_ ),
    .A(\u_clk_div1/odd_0/counter2_3_ ),
    .X(\u_clk_div1/odd_0/_027_ ));
 sg13g2_xor2_1 \u_clk_div1/odd_0/_210_  (.B(\u_clk_div1/odd_0/_105_ ),
    .A(\u_clk_div1/odd_0/counter2_4_ ),
    .X(\u_clk_div1/odd_0/_029_ ));
 sg13g2_nand2_1 \u_clk_div1/odd_0/_211_  (.Y(\u_clk_div1/odd_0/_106_ ),
    .A(\u_clk_div1/odd_0/_050_ ),
    .B(\u_clk_div1/odd_0/_031_ ));
 sg13g2_xor2_1 \u_clk_div1/odd_0/_212_  (.B(\u_clk_div1/odd_0/counter_0_ ),
    .A(\u_clk_div1/odd_0/_050_ ),
    .X(\u_clk_div1/odd_0/_033_ ));
 sg13g2_nor2_1 \u_clk_div1/odd_0/_213_  (.A(\u_clk_div1/odd_0/counter_2_ ),
    .B(\u_clk_div1/odd_0/_106_ ),
    .Y(\u_clk_div1/odd_0/_107_ ));
 sg13g2_xnor2_1 \u_clk_div1/odd_0/_214_  (.Y(\u_clk_div1/odd_0/_035_ ),
    .A(\u_clk_div1/odd_0/counter_2_ ),
    .B(\u_clk_div1/odd_0/_106_ ));
 sg13g2_nor3_1 \u_clk_div1/odd_0/_215_  (.A(\u_clk_div1/odd_0/counter_2_ ),
    .B(\u_clk_div1/odd_0/counter_3_ ),
    .C(\u_clk_div1/odd_0/_106_ ),
    .Y(\u_clk_div1/odd_0/_108_ ));
 sg13g2_xor2_1 \u_clk_div1/odd_0/_216_  (.B(\u_clk_div1/odd_0/_107_ ),
    .A(\u_clk_div1/odd_0/counter_3_ ),
    .X(\u_clk_div1/odd_0/_037_ ));
 sg13g2_xor2_1 \u_clk_div1/odd_0/_217_  (.B(\u_clk_div1/odd_0/_108_ ),
    .A(\u_clk_div1/odd_0/counter_4_ ),
    .X(\u_clk_div1/odd_0/_039_ ));
 sg13g2_nor2b_1 \u_clk_div1/odd_0/_218_  (.A(\u_clk_div1/odd_0/old_N_2_ ),
    .B_N(\u_clk_div1/net87 ),
    .Y(\u_clk_div1/odd_0/_109_ ));
 sg13g2_o21ai_1 \u_clk_div1/odd_0/_219_  (.B1(\u_clk_div1/enable_odd ),
    .Y(\u_clk_div1/odd_0/_110_ ),
    .A1(\u_clk_div1/odd_0/old_N_3_ ),
    .A2(\u_clk_div1/odd_0/_083_ ));
 sg13g2_nand2b_1 \u_clk_div1/odd_0/_220_  (.Y(\u_clk_div1/odd_0/_111_ ),
    .B(\u_clk_div1/odd_0/old_N_2_ ),
    .A_N(\u_clk_div1/net87 ));
 sg13g2_xor2_1 \u_clk_div1/odd_0/_221_  (.B(\u_clk_div1/net85 ),
    .A(\u_clk_div1/odd_0/old_N_4_ ),
    .X(\u_clk_div1/odd_0/_112_ ));
 sg13g2_a221oi_1 \u_clk_div1/odd_0/_222_  (.B2(\u_clk_div1/odd_0/_083_ ),
    .C1(\u_clk_div1/odd_0/_112_ ),
    .B1(\u_clk_div1/odd_0/old_N_3_ ),
    .A1(\u_clk_div1/odd_0/old_N_0_ ),
    .Y(\u_clk_div1/odd_0/_113_ ),
    .A2(\u_clk_div1/odd_0/_082_ ));
 sg13g2_o21ai_1 \u_clk_div1/odd_0/_223_  (.B1(\u_clk_div1/odd_0/_111_ ),
    .Y(\u_clk_div1/odd_0/_114_ ),
    .A1(\u_clk_div1/odd_0/old_N_0_ ),
    .A2(\u_clk_div1/odd_0/_082_ ));
 sg13g2_xor2_1 \u_clk_div1/odd_0/_224_  (.B(\u_clk_div1/net76 ),
    .A(\u_clk_div1/odd_0/old_N_1_ ),
    .X(\u_clk_div1/odd_0/_115_ ));
 sg13g2_nor4_1 \u_clk_div1/odd_0/_225_  (.A(\u_clk_div1/odd_0/_109_ ),
    .B(\u_clk_div1/odd_0/_110_ ),
    .C(\u_clk_div1/odd_0/_114_ ),
    .D(\u_clk_div1/odd_0/_115_ ),
    .Y(\u_clk_div1/odd_0/_116_ ));
 sg13g2_a21oi_1 \u_clk_div1/odd_0/_226_  (.A1(\u_clk_div1/odd_0/_113_ ),
    .A2(\u_clk_div1/odd_0/_116_ ),
    .Y(\u_clk_div1/odd_0/_063_ ),
    .B1(\u_clk_div1/odd_0/_084_ ));
 sg13g2_nor2_1 \u_clk_div1/odd_0/_227_  (.A(\u_clk_div1/odd_0/_005_ ),
    .B(\u_clk_div1/odd_0/_084_ ),
    .Y(\u_clk_div1/odd_0/_117_ ));
 sg13g2_a21oi_1 \u_clk_div1/odd_0/_228_  (.A1(\u_clk_div1/odd_0/_031_ ),
    .A2(\u_clk_div1/odd_0/_084_ ),
    .Y(\u_clk_div1/odd_0/_075_ ),
    .B1(\u_clk_div1/odd_0/_117_ ));
 sg13g2_nand2_1 \u_clk_div1/odd_0/_229_  (.Y(\u_clk_div1/odd_0/_118_ ),
    .A(\u_clk_div1/odd_0/_050_ ),
    .B(\u_clk_div1/odd_0/_084_ ));
 sg13g2_o21ai_1 \u_clk_div1/odd_0/_230_  (.B1(\u_clk_div1/odd_0/_118_ ),
    .Y(\u_clk_div1/odd_0/_076_ ),
    .A1(\u_clk_div1/odd_0/_006_ ),
    .A2(\u_clk_div1/odd_0/_084_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_231_  (.A0(\u_clk_div1/odd_0/_007_ ),
    .A1(\u_clk_div1/odd_0/counter_2_ ),
    .S(\u_clk_div1/odd_0/_084_ ),
    .X(\u_clk_div1/odd_0/_077_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_232_  (.A0(\u_clk_div1/odd_0/_008_ ),
    .A1(\u_clk_div1/odd_0/counter_3_ ),
    .S(\u_clk_div1/odd_0/_084_ ),
    .X(\u_clk_div1/odd_0/_078_ ));
 sg13g2_mux2_1 \u_clk_div1/odd_0/_233_  (.A0(\u_clk_div1/odd_0/_009_ ),
    .A1(\u_clk_div1/odd_0/counter_4_ ),
    .S(\u_clk_div1/odd_0/_084_ ),
    .X(\u_clk_div1/odd_0/_079_ ));
 sg13g2_nand4_1 \u_clk_div1/odd_0/_234_  (.B(\u_clk_div1/enable_odd ),
    .C(\u_clk_div1/odd_0/counter_0_ ),
    .A(\u_clk_div1/odd_0/_050_ ),
    .Y(\u_clk_div1/odd_0/_119_ ),
    .D(\u_clk_div1/odd_0/_096_ ));
 sg13g2_o21ai_1 \u_clk_div1/odd_0/_235_  (.B1(\u_clk_div1/odd_0/_081_ ),
    .Y(\u_clk_div1/odd_0/_120_ ),
    .A1(\u_clk_div1/odd_0/_121_ ),
    .A2(\u_clk_div1/odd_0/_119_ ));
 sg13g2_a21oi_1 \u_clk_div1/odd_0/_236_  (.A1(\u_clk_div1/odd_0/_121_ ),
    .A2(\u_clk_div1/odd_0/_119_ ),
    .Y(\u_clk_div1/odd_0/_080_ ),
    .B1(\u_clk_div1/odd_0/_120_ ));
 sg13g2_inv_1 \u_clk_div1/odd_0/_238__152  (.Y(net151),
    .A(clknet_3_5__leaf_clk1_int_regs));
 sg13g2_inv_1 \u_clk_div1/odd_0/_239__153  (.Y(net152),
    .A(clknet_3_4__leaf_clk1_int_regs));
 sg13g2_inv_1 \u_clk_div1/odd_0/_240__154  (.Y(net153),
    .A(clknet_3_5__leaf_clk1_int_regs));
 sg13g2_inv_1 \u_clk_div1/odd_0/_241__155  (.Y(net154),
    .A(clknet_3_4__leaf_clk1_int_regs));
 sg13g2_inv_1 \u_clk_div1/odd_0/_242__156  (.Y(net155),
    .A(clknet_3_7__leaf_clk1_int_regs));
 sg13g2_inv_1 \u_clk_div1/odd_0/_243__157  (.Y(net156),
    .A(clknet_3_7__leaf_clk1_int_regs));
 sg13g2_inv_1 \u_clk_div1/odd_0/_244__158  (.Y(net157),
    .A(clknet_3_7__leaf_clk1_int_regs));
 sg13g2_inv_1 \u_clk_div1/odd_0/_245__159  (.Y(net158),
    .A(clknet_3_6__leaf_clk1_int_regs));
 sg13g2_inv_1 \u_clk_div1/odd_0/_246__160  (.Y(net159),
    .A(clknet_3_6__leaf_clk1_int_regs));
 sg13g2_inv_1 \u_clk_div2/odd_0/_161__161  (.Y(net160),
    .A(clknet_3_6__leaf_clk2_int_regs));
 sg13g2_tiehi \u_clk_div1/odd_0/old_N_4___DFF_P__140  (.L_HI(net139));
 sg13g2_tiehi \u_clk_div1/odd_0/old_N_0___DFF_P__141  (.L_HI(net140));
 sg13g2_tiehi \u_clk_div1/odd_0/old_N_1___DFF_P__142  (.L_HI(net141));
 sg13g2_tiehi \u_clk_div1/odd_0/old_N_2___DFF_P__143  (.L_HI(net142));
 sg13g2_tiehi \u_clk_div2/odd_0/old_N_3___DFF_P__144  (.L_HI(net143));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/counter2_0___DFFE_NN0P_  (.RESET_B(net125),
    .D(\u_clk_div1/odd_0/_064_ ),
    .Q(\u_clk_div1/odd_0/counter2_0_ ),
    .CLK(net149));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/counter2_1___DFFE_NN1P_  (.RESET_B(net125),
    .D(\u_clk_div1/odd_0/_065_ ),
    .Q(\u_clk_div1/odd_0/_047_ ),
    .CLK(net150));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/counter2_2___DFFE_NN0P_  (.RESET_B(net122),
    .D(\u_clk_div1/odd_0/_066_ ),
    .Q(\u_clk_div1/odd_0/counter2_2_ ),
    .CLK(net151));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/counter2_3___DFFE_NN0P_  (.RESET_B(\u_clk_div1/net117 ),
    .D(\u_clk_div1/odd_0/_067_ ),
    .Q(\u_clk_div1/odd_0/counter2_3_ ),
    .CLK(net152));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/counter2_4___DFFE_NN0P_  (.RESET_B(net122),
    .D(\u_clk_div1/odd_0/_068_ ),
    .Q(\u_clk_div1/odd_0/counter2_4_ ),
    .CLK(net153));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/counter_0___DFFE_PN0P_  (.RESET_B(\u_clk_div1/net118 ),
    .D(\u_clk_div1/odd_0/_075_ ),
    .Q(\u_clk_div1/odd_0/counter_0_ ),
    .CLK(clknet_3_1__leaf_clk1_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/counter_1___DFFE_PN1P_  (.RESET_B(\u_clk_div1/net118 ),
    .D(\u_clk_div1/odd_0/_076_ ),
    .Q(\u_clk_div1/odd_0/_050_ ),
    .CLK(clknet_3_0__leaf_clk1_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/counter_2___DFFE_PN0P_  (.RESET_B(\u_clk_div1/net117 ),
    .D(\u_clk_div1/odd_0/_077_ ),
    .Q(\u_clk_div1/odd_0/counter_2_ ),
    .CLK(clknet_3_1__leaf_clk1_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/counter_3___DFFE_PN0P_  (.RESET_B(\u_clk_div1/net117 ),
    .D(\u_clk_div1/odd_0/_078_ ),
    .Q(\u_clk_div1/odd_0/counter_3_ ),
    .CLK(clknet_3_1__leaf_clk1_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/counter_4___DFFE_PN0P_  (.RESET_B(\u_clk_div1/net117 ),
    .D(\u_clk_div1/odd_0/_079_ ),
    .Q(\u_clk_div1/odd_0/counter_4_ ),
    .CLK(clknet_3_4__leaf_clk1_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/initial_begin_0___DFFE_NN0P_  (.RESET_B(net124),
    .D(\u_clk_div1/odd_0/_070_ ),
    .Q(\u_clk_div1/odd_0/initial_begin_0_ ),
    .CLK(net155));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/initial_begin_1___DFFE_NN1P_  (.RESET_B(net125),
    .D(\u_clk_div1/odd_0/_071_ ),
    .Q(\u_clk_div1/odd_0/_049_ ),
    .CLK(net156));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/initial_begin_2___DFFE_NN0P_  (.RESET_B(net125),
    .D(\u_clk_div1/odd_0/_072_ ),
    .Q(\u_clk_div1/odd_0/initial_begin_2_ ),
    .CLK(net157));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/initial_begin_3___DFFE_NN0P_  (.RESET_B(net125),
    .D(\u_clk_div1/odd_0/_073_ ),
    .Q(\u_clk_div1/odd_0/initial_begin_3_ ),
    .CLK(net158));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/initial_begin_4___DFFE_NN0P_  (.RESET_B(net125),
    .D(\u_clk_div1/odd_0/_074_ ),
    .Q(\u_clk_div1/odd_0/initial_begin_4_ ),
    .CLK(net159));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/old_N_0___DFF_P_  (.RESET_B(net140),
    .D(\u_clk_div1/net88 ),
    .Q(\u_clk_div1/odd_0/old_N_0_ ),
    .CLK(clknet_3_1__leaf_clk1_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/old_N_1___DFF_P_  (.RESET_B(net141),
    .D(\u_clk_div1/net76 ),
    .Q(\u_clk_div1/odd_0/old_N_1_ ),
    .CLK(clknet_3_3__leaf_clk1_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/old_N_2___DFF_P_  (.RESET_B(net142),
    .D(\u_clk_div1/net87 ),
    .Q(\u_clk_div1/odd_0/old_N_2_ ),
    .CLK(clknet_3_0__leaf_clk1_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/old_N_3___DFF_P_  (.RESET_B(net138),
    .D(\u_clk_div1/syncN_3_ ),
    .Q(\u_clk_div1/odd_0/old_N_3_ ),
    .CLK(clknet_3_0__leaf_clk1_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/old_N_4___DFF_P_  (.RESET_B(net139),
    .D(\u_clk_div1/net85 ),
    .Q(\u_clk_div1/odd_0/old_N_4_ ),
    .CLK(clknet_3_0__leaf_clk1_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/out_counter2__DFFE_NN1P_  (.RESET_B(\u_clk_div1/net119 ),
    .D(\u_clk_div1/odd_0/_069_ ),
    .Q(\u_clk_div1/odd_0/_048_ ),
    .CLK(net154));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/out_counter__DFFE_PN1P_  (.RESET_B(\u_clk_div1/net119 ),
    .D(\u_clk_div1/odd_0/_080_ ),
    .Q(\u_clk_div1/odd_0/_051_ ),
    .CLK(clknet_3_4__leaf_clk1_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/odd_0/rst_pulse__DFFE_PN0P_  (.RESET_B(\u_clk_div1/net119 ),
    .D(\u_clk_div1/odd_0/_063_ ),
    .Q(\u_clk_div1/odd_0/rst_pulse ),
    .CLK(clknet_3_6__leaf_clk1_int_regs));
 sg13g2_buf_2 \u_clk_div1/odd_0/u_clkbuf_out_delayed_0_/u_buf  (.A(\u_clk_div1/odd_0/out_delayed_0_ ),
    .X(\u_clk_div1/out_odd ));
 sg13g2_buf_2 \u_clk_div1/odd_0/u_clkbuf_out_delayed_init/u_buf  (.A(\u_clk_div1/odd_0/out_pre ),
    .X(\u_clk_div1/odd_0/out_delayed_0_ ));
 sg13g2_dfrbpq_1 \u_clk_div1/syncN_0___DFF_PN0_  (.RESET_B(\u_clk_div1/net118 ),
    .D(\u_clk_div1/syncNp_0_ ),
    .Q(\u_clk_div1/syncN_0_ ),
    .CLK(clknet_1_1__leaf_clk1_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/syncN_1___DFF_PN1_  (.RESET_B(\u_clk_div1/net118 ),
    .D(\u_clk_div1/_02_ ),
    .Q(\u_clk_div1/_00_ ),
    .CLK(clknet_1_1__leaf_clk1_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/syncN_2___DFF_PN0_  (.RESET_B(\u_clk_div1/net117 ),
    .D(\u_clk_div1/syncNp_2_ ),
    .Q(\u_clk_div1/syncN_2_ ),
    .CLK(clknet_1_0__leaf_clk1_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/syncN_3___DFF_PN0_  (.RESET_B(net120),
    .D(\u_clk_div1/syncNp_3_ ),
    .Q(\u_clk_div1/syncN_3_ ),
    .CLK(clknet_1_0__leaf_clk1_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/syncN_4___DFF_PN0_  (.RESET_B(\u_clk_div1/net117 ),
    .D(\u_clk_div1/syncNp_4_ ),
    .Q(\u_clk_div1/syncN_4_ ),
    .CLK(clknet_1_1__leaf_clk1_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/syncNp_0___DFF_PN0_  (.RESET_B(net115),
    .D(net50),
    .Q(\u_clk_div1/syncNp_0_ ),
    .CLK(clknet_1_1__leaf_clk1_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/syncNp_1___DFF_PN1_  (.RESET_B(\u_clk_div1/net118 ),
    .D(\u_clk_div1/_03_ ),
    .Q(\u_clk_div1/_01_ ),
    .CLK(clknet_1_1__leaf_clk1_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/syncNp_2___DFF_PN0_  (.RESET_B(\u_clk_div1/net117 ),
    .D(net52),
    .Q(\u_clk_div1/syncNp_2_ ),
    .CLK(clknet_1_0__leaf_clk1_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/syncNp_3___DFF_PN0_  (.RESET_B(\u_clk_div1/net117 ),
    .D(net53),
    .Q(\u_clk_div1/syncNp_3_ ),
    .CLK(clknet_1_0__leaf_clk1_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div1/syncNp_4___DFF_PN0_  (.RESET_B(net116),
    .D(net54),
    .Q(\u_clk_div1/syncNp_4_ ),
    .CLK(clknet_1_0__leaf_clk1_180_to_360_expand_regs));
 sg13g2_buf_16 \u_clk_div1/u_clkbuf_out/u_buf  (.X(clk1_180_to_360_expand),
    .A(\u_clk_div1/out_buf ));
 sg13g2_inv_1 \u_clk_div2/_09_  (.Y(\u_clk_div2/_03_ ),
    .A(net56));
 sg13g2_inv_1 \u_clk_div2/_10_  (.Y(\u_clk_div2/enable_even ),
    .A(\u_clk_div2/net84 ));
 sg13g2_inv_1 \u_clk_div2/_11_  (.Y(\u_clk_div2/_04_ ),
    .A(\u_clk_div2/out_odd ));
 sg13g2_inv_1 \u_clk_div2/_12_  (.Y(\u_clk_div2/syncN_1_ ),
    .A(\u_clk_div2/_00_ ));
 sg13g2_or2_1 \u_clk_div2/_13_  (.X(\u_clk_div2/_05_ ),
    .B(\u_clk_div2/net81 ),
    .A(\u_clk_div2/net83 ));
 sg13g2_nand2b_1 \u_clk_div2/_14_  (.Y(\u_clk_div2/_06_ ),
    .B(\u_clk_div2/_00_ ),
    .A_N(\u_clk_div2/net82 ));
 sg13g2_or2_1 \u_clk_div2/_15_  (.X(\u_clk_div2/not_zero ),
    .B(\u_clk_div2/_06_ ),
    .A(\u_clk_div2/_05_ ));
 sg13g2_nand2_1 \u_clk_div2/_16_  (.Y(\u_clk_div2/_07_ ),
    .A(\u_clk_div2/enable_even ),
    .B(\u_clk_div2/out_even ));
 sg13g2_o21ai_1 \u_clk_div2/_17_  (.B1(\u_clk_div2/net84 ),
    .Y(\u_clk_div2/_08_ ),
    .A1(\u_clk_div2/_05_ ),
    .A2(\u_clk_div2/_06_ ));
 sg13g2_inv_1 \u_clk_div2/_18_  (.Y(\u_clk_div2/enable_odd ),
    .A(\u_clk_div2/_08_ ));
 sg13g2_o21ai_1 \u_clk_div2/_19_  (.B1(\u_clk_div2/_07_ ),
    .Y(\u_clk_div2/out_buf ),
    .A1(\u_clk_div2/_04_ ),
    .A2(\u_clk_div2/_08_ ));
 sg13g2_buf_1 \u_clk_div2/_20_  (.A(\u_clk_div2/_01_ ),
    .X(\u_clk_div2/_02_ ));
 sg13g2_mux2_1 \u_clk_div2/even_0/_26_  (.A0(\u_clk_div2/net75 ),
    .A1(\u_clk_div2/even_0/_00_ ),
    .S(\u_clk_div2/even_0/_01_ ),
    .X(\u_clk_div2/even_0/_06_ ));
 sg13g2_mux2_1 \u_clk_div2/even_0/_27_  (.A0(\u_clk_div2/even_0/_03_ ),
    .A1(\u_clk_div2/net83 ),
    .S(\u_clk_div2/even_0/_02_ ),
    .X(\u_clk_div2/even_0/_07_ ));
 sg13g2_mux2_1 \u_clk_div2/even_0/_28_  (.A0(\u_clk_div2/even_0/_04_ ),
    .A1(\u_clk_div2/net82 ),
    .S(\u_clk_div2/even_0/_02_ ),
    .X(\u_clk_div2/even_0/_08_ ));
 sg13g2_mux2_1 \u_clk_div2/even_0/_29_  (.A0(\u_clk_div2/even_0/_05_ ),
    .A1(\u_clk_div2/net81 ),
    .S(\u_clk_div2/even_0/_02_ ),
    .X(\u_clk_div2/even_0/_09_ ));
 sg13g2_inv_1 \u_clk_div2/even_0/_30_  (.Y(\u_clk_div2/even_0/out_counter ),
    .A(\u_clk_div2/even_0/_11_ ));
 sg13g2_nor2_1 \u_clk_div2/even_0/_31_  (.A(\u_clk_div2/even_0/_10_ ),
    .B(\u_clk_div2/even_0/counter_4_ ),
    .Y(\u_clk_div2/even_0/_18_ ));
 sg13g2_nor3_1 \u_clk_div2/even_0/_32_  (.A(\u_clk_div2/even_0/counter_2_ ),
    .B(\u_clk_div2/even_0/counter_3_ ),
    .C(\u_clk_div2/even_0/counter_1_ ),
    .Y(\u_clk_div2/even_0/_19_ ));
 sg13g2_and2_1 \u_clk_div2/even_0/_33_  (.A(\u_clk_div2/even_0/_18_ ),
    .B(\u_clk_div2/even_0/_19_ ),
    .X(\u_clk_div2/even_0/_02_ ));
 sg13g2_inv_1 \u_clk_div2/even_0/_34_  (.Y(\u_clk_div2/even_0/_01_ ),
    .A(\u_clk_div2/even_0/_02_ ));
 sg13g2_nand2b_1 \u_clk_div2/even_0/_35_  (.Y(\u_clk_div2/even_0/_20_ ),
    .B(\u_clk_div2/even_0/_10_ ),
    .A_N(\u_clk_div2/even_0/counter_1_ ));
 sg13g2_xor2_1 \u_clk_div2/even_0/_36_  (.B(\u_clk_div2/even_0/counter_1_ ),
    .A(\u_clk_div2/even_0/_10_ ),
    .X(\u_clk_div2/even_0/_03_ ));
 sg13g2_xnor2_1 \u_clk_div2/even_0/_37_  (.Y(\u_clk_div2/even_0/_04_ ),
    .A(\u_clk_div2/even_0/counter_2_ ),
    .B(\u_clk_div2/even_0/_20_ ));
 sg13g2_nand2_1 \u_clk_div2/even_0/_38_  (.Y(\u_clk_div2/even_0/_21_ ),
    .A(\u_clk_div2/even_0/_10_ ),
    .B(\u_clk_div2/even_0/_19_ ));
 sg13g2_o21ai_1 \u_clk_div2/even_0/_39_  (.B1(\u_clk_div2/even_0/counter_3_ ),
    .Y(\u_clk_div2/even_0/_22_ ),
    .A1(\u_clk_div2/even_0/counter_2_ ),
    .A2(\u_clk_div2/even_0/_20_ ));
 sg13g2_nand2_1 \u_clk_div2/even_0/_40_  (.Y(\u_clk_div2/even_0/_05_ ),
    .A(\u_clk_div2/even_0/_21_ ),
    .B(\u_clk_div2/even_0/_22_ ));
 sg13g2_nor2_1 \u_clk_div2/even_0/_41_  (.A(\u_clk_div2/even_0/_10_ ),
    .B(\u_clk_div2/enable_even ),
    .Y(\u_clk_div2/even_0/_23_ ));
 sg13g2_a21oi_1 \u_clk_div2/even_0/_42_  (.A1(\u_clk_div2/even_0/_06_ ),
    .A2(\u_clk_div2/enable_even ),
    .Y(\u_clk_div2/even_0/_12_ ),
    .B1(\u_clk_div2/even_0/_23_ ));
 sg13g2_mux2_1 \u_clk_div2/even_0/_43_  (.A0(\u_clk_div2/even_0/counter_1_ ),
    .A1(\u_clk_div2/even_0/_07_ ),
    .S(\u_clk_div2/enable_even ),
    .X(\u_clk_div2/even_0/_13_ ));
 sg13g2_mux2_1 \u_clk_div2/even_0/_44_  (.A0(\u_clk_div2/even_0/counter_2_ ),
    .A1(\u_clk_div2/even_0/_08_ ),
    .S(\u_clk_div2/enable_even ),
    .X(\u_clk_div2/even_0/_14_ ));
 sg13g2_mux2_1 \u_clk_div2/even_0/_45_  (.A0(\u_clk_div2/even_0/counter_3_ ),
    .A1(\u_clk_div2/even_0/_09_ ),
    .S(\u_clk_div2/enable_even ),
    .X(\u_clk_div2/even_0/_15_ ));
 sg13g2_nand3_1 \u_clk_div2/even_0/_46_  (.B(\u_clk_div2/enable_even ),
    .C(\u_clk_div2/even_0/_19_ ),
    .A(\u_clk_div2/even_0/_10_ ),
    .Y(\u_clk_div2/even_0/_24_ ));
 sg13g2_xnor2_1 \u_clk_div2/even_0/_47_  (.Y(\u_clk_div2/even_0/_16_ ),
    .A(\u_clk_div2/even_0/counter_4_ ),
    .B(\u_clk_div2/even_0/_24_ ));
 sg13g2_nand3_1 \u_clk_div2/even_0/_48_  (.B(\u_clk_div2/even_0/_18_ ),
    .C(\u_clk_div2/even_0/_19_ ),
    .A(\u_clk_div2/enable_even ),
    .Y(\u_clk_div2/even_0/_25_ ));
 sg13g2_xnor2_1 \u_clk_div2/even_0/_49_  (.Y(\u_clk_div2/even_0/_17_ ),
    .A(\u_clk_div2/even_0/_11_ ),
    .B(\u_clk_div2/even_0/_25_ ));
 sg13g2_buf_1 \u_clk_div2/even_0/_50_  (.A(\u_clk_div2/even_0/_10_ ),
    .X(\u_clk_div2/even_0/_00_ ));
 sg13g2_dfrbpq_1 \u_clk_div2/even_0/counter_0___DFFE_PN1P_  (.RESET_B(net122),
    .D(\u_clk_div2/even_0/_12_ ),
    .Q(\u_clk_div2/even_0/_10_ ),
    .CLK(clknet_3_2__leaf_clk2_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/even_0/counter_1___DFFE_PN0P_  (.RESET_B(net123),
    .D(\u_clk_div2/even_0/_13_ ),
    .Q(\u_clk_div2/even_0/counter_1_ ),
    .CLK(clknet_3_1__leaf_clk2_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/even_0/counter_2___DFFE_PN0P_  (.RESET_B(net123),
    .D(\u_clk_div2/even_0/_14_ ),
    .Q(\u_clk_div2/even_0/counter_2_ ),
    .CLK(clknet_3_2__leaf_clk2_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/even_0/counter_3___DFFE_PN0P_  (.RESET_B(net123),
    .D(\u_clk_div2/even_0/_15_ ),
    .Q(\u_clk_div2/even_0/counter_3_ ),
    .CLK(clknet_3_3__leaf_clk2_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/even_0/counter_4___DFFE_PN0P_  (.RESET_B(net120),
    .D(\u_clk_div2/even_0/_16_ ),
    .Q(\u_clk_div2/even_0/counter_4_ ),
    .CLK(clknet_3_2__leaf_clk2_int_regs));
 sg13g2_mux2_1 \u_clk_div2/even_0/out__MUX___TECHMAP_MUX  (.A0(\u_clk_div2/even_0/clk_delayed_2_ ),
    .A1(\u_clk_div2/even_0/out_counter_delayed_2_ ),
    .S(\u_clk_div2/not_zero ),
    .X(\u_clk_div2/out_even ));
 sg13g2_dfrbpq_1 \u_clk_div2/even_0/out_counter__DFFE_PN1P_  (.RESET_B(net120),
    .D(\u_clk_div2/even_0/_17_ ),
    .Q(\u_clk_div2/even_0/_11_ ),
    .CLK(clknet_3_2__leaf_clk2_int_regs));
 sg13g2_buf_16 \u_clk_div2/even_0/u_clkbuf_delayed_0_/u_buf  (.X(\u_clk_div2/even_0/clk_delayed_1_ ),
    .A(\u_clk_div2/even_0/clk_delayed_0_ ));
 sg13g2_buf_16 \u_clk_div2/even_0/u_clkbuf_delayed_1_/u_buf  (.X(\u_clk_div2/even_0/clk_delayed_2_ ),
    .A(\u_clk_div2/even_0/clk_delayed_1_ ));
 sg13g2_dlygate4sd2_1 \u_clk_div2/even_0/u_clkbuf_delayed_init/u_dly  (.A(clknet_1_0__leaf_clk2_int),
    .X(\u_clk_div2/even_0/clk_delayed_0_ ));
 sg13g2_buf_1 \u_clk_div2/even_0/u_clkbuf_out_delayed_0_/u_buf  (.A(\u_clk_div2/even_0/out_counter_delayed_0_ ),
    .X(\u_clk_div2/even_0/out_counter_delayed_1_ ));
 sg13g2_buf_1 \u_clk_div2/even_0/u_clkbuf_out_delayed_1_/u_buf  (.A(\u_clk_div2/even_0/out_counter_delayed_1_ ),
    .X(\u_clk_div2/even_0/out_counter_delayed_2_ ));
 sg13g2_buf_2 \u_clk_div2/even_0/u_clkbuf_out_delayed_init/u_buf  (.A(\u_clk_div2/even_0/out_counter ),
    .X(\u_clk_div2/even_0/out_counter_delayed_0_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_128_  (.A0(\u_clk_div2/odd_0/_043_ ),
    .A1(\u_clk_div2/odd_0/_044_ ),
    .S(\u_clk_div2/odd_0/net93 ),
    .X(\u_clk_div2/odd_0/_010_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_129_  (.A0(\u_clk_div2/odd_0/_045_ ),
    .A1(\u_clk_div2/odd_0/_046_ ),
    .S(\u_clk_div2/odd_0/net93 ),
    .X(\u_clk_div2/odd_0/_011_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_130_  (.A0(\u_clk_div2/odd_0/_015_ ),
    .A1(\u_clk_div2/odd_0/_016_ ),
    .S(\u_clk_div2/odd_0/net93 ),
    .X(\u_clk_div2/odd_0/_012_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_131_  (.A0(\u_clk_div2/odd_0/_017_ ),
    .A1(\u_clk_div2/odd_0/_018_ ),
    .S(\u_clk_div2/odd_0/net93 ),
    .X(\u_clk_div2/odd_0/_013_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_132_  (.A0(\u_clk_div2/odd_0/_019_ ),
    .A1(\u_clk_div2/odd_0/_020_ ),
    .S(\u_clk_div2/odd_0/net93 ),
    .X(\u_clk_div2/odd_0/_014_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_133_  (.A0(\u_clk_div2/odd_0/_021_ ),
    .A1(\u_clk_div2/net84 ),
    .S(\u_clk_div2/odd_0/_041_ ),
    .X(\u_clk_div2/odd_0/_022_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_134_  (.A0(\u_clk_div2/odd_0/_022_ ),
    .A1(\u_clk_div2/syncN_0_ ),
    .S(\u_clk_div2/odd_0/net94 ),
    .X(\u_clk_div2/odd_0/_000_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_135_  (.A0(\u_clk_div2/odd_0/_023_ ),
    .A1(\u_clk_div2/net75 ),
    .S(\u_clk_div2/odd_0/_041_ ),
    .X(\u_clk_div2/odd_0/_024_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_136_  (.A0(\u_clk_div2/odd_0/_024_ ),
    .A1(\u_clk_div2/net75 ),
    .S(\u_clk_div2/odd_0/net94 ),
    .X(\u_clk_div2/odd_0/_001_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_137_  (.A0(\u_clk_div2/odd_0/_025_ ),
    .A1(\u_clk_div2/net83 ),
    .S(\u_clk_div2/odd_0/_041_ ),
    .X(\u_clk_div2/odd_0/_026_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_138_  (.A0(\u_clk_div2/odd_0/_026_ ),
    .A1(\u_clk_div2/syncN_2_ ),
    .S(\u_clk_div2/odd_0/net94 ),
    .X(\u_clk_div2/odd_0/_002_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_139_  (.A0(\u_clk_div2/odd_0/_027_ ),
    .A1(\u_clk_div2/net82 ),
    .S(\u_clk_div2/odd_0/_041_ ),
    .X(\u_clk_div2/odd_0/_028_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_140_  (.A0(\u_clk_div2/odd_0/_028_ ),
    .A1(\u_clk_div2/net82 ),
    .S(\u_clk_div2/odd_0/net94 ),
    .X(\u_clk_div2/odd_0/_003_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_141_  (.A0(\u_clk_div2/odd_0/_029_ ),
    .A1(\u_clk_div2/net81 ),
    .S(\u_clk_div2/odd_0/_041_ ),
    .X(\u_clk_div2/odd_0/_030_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_142_  (.A0(\u_clk_div2/odd_0/_030_ ),
    .A1(\u_clk_div2/net81 ),
    .S(\u_clk_div2/odd_0/net95 ),
    .X(\u_clk_div2/odd_0/_004_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_143_  (.A0(\u_clk_div2/odd_0/_031_ ),
    .A1(\u_clk_div2/syncN_0_ ),
    .S(\u_clk_div2/odd_0/_042_ ),
    .X(\u_clk_div2/odd_0/_032_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_144_  (.A0(\u_clk_div2/odd_0/_032_ ),
    .A1(\u_clk_div2/syncN_0_ ),
    .S(\u_clk_div2/odd_0/net93 ),
    .X(\u_clk_div2/odd_0/_005_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_145_  (.A0(\u_clk_div2/odd_0/_033_ ),
    .A1(\u_clk_div2/net75 ),
    .S(\u_clk_div2/odd_0/_042_ ),
    .X(\u_clk_div2/odd_0/_034_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_146_  (.A0(\u_clk_div2/odd_0/_034_ ),
    .A1(\u_clk_div2/net75 ),
    .S(\u_clk_div2/odd_0/net93 ),
    .X(\u_clk_div2/odd_0/_006_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_147_  (.A0(\u_clk_div2/odd_0/_035_ ),
    .A1(\u_clk_div2/syncN_2_ ),
    .S(\u_clk_div2/odd_0/_042_ ),
    .X(\u_clk_div2/odd_0/_036_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_148_  (.A0(\u_clk_div2/odd_0/_036_ ),
    .A1(\u_clk_div2/syncN_2_ ),
    .S(\u_clk_div2/odd_0/net94 ),
    .X(\u_clk_div2/odd_0/_007_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_149_  (.A0(\u_clk_div2/odd_0/_037_ ),
    .A1(\u_clk_div2/net82 ),
    .S(\u_clk_div2/odd_0/_042_ ),
    .X(\u_clk_div2/odd_0/_038_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_150_  (.A0(\u_clk_div2/odd_0/_038_ ),
    .A1(\u_clk_div2/syncN_3_ ),
    .S(\u_clk_div2/odd_0/net94 ),
    .X(\u_clk_div2/odd_0/_008_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_151_  (.A0(\u_clk_div2/odd_0/_039_ ),
    .A1(\u_clk_div2/net81 ),
    .S(\u_clk_div2/odd_0/_042_ ),
    .X(\u_clk_div2/odd_0/_040_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_152_  (.A0(\u_clk_div2/odd_0/_040_ ),
    .A1(\u_clk_div2/syncN_4_ ),
    .S(\u_clk_div2/odd_0/net94 ),
    .X(\u_clk_div2/odd_0/_009_ ));
 sg13g2_inv_1 \u_clk_div2/odd_0/_153_  (.Y(\u_clk_div2/odd_0/_121_ ),
    .A(\u_clk_div2/odd_0/_051_ ));
 sg13g2_inv_1 \u_clk_div2/odd_0/_154_  (.Y(\u_clk_div2/odd_0/_122_ ),
    .A(\u_clk_div2/odd_0/_011_ ));
 sg13g2_inv_1 \u_clk_div2/odd_0/_155_  (.Y(\u_clk_div2/odd_0/_043_ ),
    .A(\u_clk_div2/odd_0/initial_begin_0_ ));
 sg13g2_inv_1 \u_clk_div2/odd_0/_156_  (.Y(\u_clk_div2/odd_0/_021_ ),
    .A(\u_clk_div2/odd_0/counter2_0_ ));
 sg13g2_inv_1 \u_clk_div2/odd_0/_157_  (.Y(\u_clk_div2/odd_0/_081_ ),
    .A(\u_clk_div2/odd_0/net95 ));
 sg13g2_inv_1 \u_clk_div2/odd_0/_158_  (.Y(\u_clk_div2/odd_0/_031_ ),
    .A(\u_clk_div2/odd_0/counter_0_ ));
 sg13g2_inv_1 \u_clk_div2/odd_0/_159_  (.Y(\u_clk_div2/odd_0/_082_ ),
    .A(\u_clk_div2/net84 ));
 sg13g2_inv_1 \u_clk_div2/odd_0/_160_  (.Y(\u_clk_div2/odd_0/_083_ ),
    .A(\u_clk_div2/net82 ));
 sg13g2_inv_1 \u_clk_div2/odd_0/_237__162  (.Y(net161),
    .A(clknet_3_6__leaf_clk2_int_regs));
 sg13g2_nor2_1 \u_clk_div2/odd_0/_162_  (.A(\u_clk_div2/odd_0/net93 ),
    .B(\u_clk_div2/enable_odd ),
    .Y(\u_clk_div2/odd_0/_084_ ));
 sg13g2_nor2_1 \u_clk_div2/odd_0/_163_  (.A(\u_clk_div2/odd_0/initial_begin_4_ ),
    .B(\u_clk_div2/odd_0/initial_begin_3_ ),
    .Y(\u_clk_div2/odd_0/_085_ ));
 sg13g2_nor2b_1 \u_clk_div2/odd_0/_164_  (.A(\u_clk_div2/odd_0/initial_begin_2_ ),
    .B_N(\u_clk_div2/odd_0/_049_ ),
    .Y(\u_clk_div2/odd_0/_086_ ));
 sg13g2_nand2b_1 \u_clk_div2/odd_0/_165_  (.Y(\u_clk_div2/odd_0/_087_ ),
    .B(\u_clk_div2/odd_0/_049_ ),
    .A_N(\u_clk_div2/odd_0/initial_begin_2_ ));
 sg13g2_and3_1 \u_clk_div2/odd_0/_166_  (.X(\u_clk_div2/odd_0/_088_ ),
    .A(\u_clk_div2/enable_odd ),
    .B(\u_clk_div2/odd_0/_085_ ),
    .C(\u_clk_div2/odd_0/_086_ ));
 sg13g2_nand3_1 \u_clk_div2/odd_0/_167_  (.B(\u_clk_div2/odd_0/_085_ ),
    .C(\u_clk_div2/odd_0/_086_ ),
    .A(\u_clk_div2/enable_odd ),
    .Y(\u_clk_div2/odd_0/_089_ ));
 sg13g2_a21oi_1 \u_clk_div2/odd_0/_168_  (.A1(\u_clk_div2/enable_odd ),
    .A2(\u_clk_div2/odd_0/_089_ ),
    .Y(\u_clk_div2/odd_0/_090_ ),
    .B1(\u_clk_div2/odd_0/net95 ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_169_  (.A0(\u_clk_div2/odd_0/_014_ ),
    .A1(\u_clk_div2/odd_0/initial_begin_4_ ),
    .S(\u_clk_div2/odd_0/_090_ ),
    .X(\u_clk_div2/odd_0/_074_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_170_  (.A0(\u_clk_div2/odd_0/_013_ ),
    .A1(\u_clk_div2/odd_0/initial_begin_3_ ),
    .S(\u_clk_div2/odd_0/_090_ ),
    .X(\u_clk_div2/odd_0/_073_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_171_  (.A0(\u_clk_div2/odd_0/_012_ ),
    .A1(\u_clk_div2/odd_0/initial_begin_2_ ),
    .S(\u_clk_div2/odd_0/_090_ ),
    .X(\u_clk_div2/odd_0/_072_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_172_  (.A0(\u_clk_div2/odd_0/_122_ ),
    .A1(\u_clk_div2/odd_0/_049_ ),
    .S(\u_clk_div2/odd_0/_090_ ),
    .X(\u_clk_div2/odd_0/_071_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_173_  (.A0(\u_clk_div2/odd_0/_010_ ),
    .A1(\u_clk_div2/odd_0/initial_begin_0_ ),
    .S(\u_clk_div2/odd_0/_090_ ),
    .X(\u_clk_div2/odd_0/_070_ ));
 sg13g2_nand2_1 \u_clk_div2/odd_0/_174_  (.Y(\u_clk_div2/odd_0/_091_ ),
    .A(\u_clk_div2/odd_0/_047_ ),
    .B(\u_clk_div2/odd_0/counter2_0_ ));
 sg13g2_nor4_1 \u_clk_div2/odd_0/_175_  (.A(\u_clk_div2/odd_0/counter2_4_ ),
    .B(\u_clk_div2/odd_0/counter2_3_ ),
    .C(\u_clk_div2/odd_0/counter2_2_ ),
    .D(\u_clk_div2/odd_0/_091_ ),
    .Y(\u_clk_div2/odd_0/_041_ ));
 sg13g2_and3_1 \u_clk_div2/odd_0/_176_  (.X(\u_clk_div2/odd_0/_092_ ),
    .A(\u_clk_div2/odd_0/_048_ ),
    .B(\u_clk_div2/odd_0/_088_ ),
    .C(\u_clk_div2/odd_0/_041_ ));
 sg13g2_a21oi_1 \u_clk_div2/odd_0/_177_  (.A1(\u_clk_div2/odd_0/_088_ ),
    .A2(\u_clk_div2/odd_0/_041_ ),
    .Y(\u_clk_div2/odd_0/_093_ ),
    .B1(\u_clk_div2/odd_0/_048_ ));
 sg13g2_nor3_1 \u_clk_div2/odd_0/_178_  (.A(\u_clk_div2/odd_0/net94 ),
    .B(\u_clk_div2/odd_0/_092_ ),
    .C(\u_clk_div2/odd_0/_093_ ),
    .Y(\u_clk_div2/odd_0/_069_ ));
 sg13g2_nor2_1 \u_clk_div2/odd_0/_179_  (.A(\u_clk_div2/odd_0/net95 ),
    .B(\u_clk_div2/odd_0/_088_ ),
    .Y(\u_clk_div2/odd_0/_094_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_180_  (.A0(\u_clk_div2/odd_0/_004_ ),
    .A1(\u_clk_div2/odd_0/counter2_4_ ),
    .S(\u_clk_div2/odd_0/_094_ ),
    .X(\u_clk_div2/odd_0/_068_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_181_  (.A0(\u_clk_div2/odd_0/_003_ ),
    .A1(\u_clk_div2/odd_0/counter2_3_ ),
    .S(\u_clk_div2/odd_0/_094_ ),
    .X(\u_clk_div2/odd_0/_067_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_182_  (.A0(\u_clk_div2/odd_0/_002_ ),
    .A1(\u_clk_div2/odd_0/counter2_2_ ),
    .S(\u_clk_div2/odd_0/_094_ ),
    .X(\u_clk_div2/odd_0/_066_ ));
 sg13g2_nand3_1 \u_clk_div2/odd_0/_183_  (.B(\u_clk_div2/odd_0/_081_ ),
    .C(\u_clk_div2/odd_0/_089_ ),
    .A(\u_clk_div2/odd_0/_047_ ),
    .Y(\u_clk_div2/odd_0/_095_ ));
 sg13g2_o21ai_1 \u_clk_div2/odd_0/_184_  (.B1(\u_clk_div2/odd_0/_095_ ),
    .Y(\u_clk_div2/odd_0/_065_ ),
    .A1(\u_clk_div2/odd_0/_001_ ),
    .A2(\u_clk_div2/odd_0/_094_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_185_  (.A0(\u_clk_div2/odd_0/_000_ ),
    .A1(\u_clk_div2/odd_0/counter2_0_ ),
    .S(\u_clk_div2/odd_0/_094_ ),
    .X(\u_clk_div2/odd_0/_064_ ));
 sg13g2_xor2_1 \u_clk_div2/odd_0/_186_  (.B(\u_clk_div2/odd_0/_048_ ),
    .A(\u_clk_div2/odd_0/_051_ ),
    .X(\u_clk_div2/odd_0/out_pre ));
 sg13g2_nor3_1 \u_clk_div2/odd_0/_187_  (.A(\u_clk_div2/odd_0/counter_2_ ),
    .B(\u_clk_div2/odd_0/counter_3_ ),
    .C(\u_clk_div2/odd_0/counter_4_ ),
    .Y(\u_clk_div2/odd_0/_096_ ));
 sg13g2_and3_1 \u_clk_div2/odd_0/_188_  (.X(\u_clk_div2/odd_0/_042_ ),
    .A(\u_clk_div2/odd_0/_050_ ),
    .B(\u_clk_div2/odd_0/counter_0_ ),
    .C(\u_clk_div2/odd_0/_096_ ));
 sg13g2_xnor2_1 \u_clk_div2/odd_0/_189_  (.Y(\u_clk_div2/odd_0/_044_ ),
    .A(\u_clk_div2/net84 ),
    .B(\u_clk_div2/net75 ));
 sg13g2_nand2_1 \u_clk_div2/odd_0/_190_  (.Y(\u_clk_div2/odd_0/_097_ ),
    .A(\u_clk_div2/odd_0/_049_ ),
    .B(\u_clk_div2/odd_0/_043_ ));
 sg13g2_xor2_1 \u_clk_div2/odd_0/_191_  (.B(\u_clk_div2/odd_0/initial_begin_0_ ),
    .A(\u_clk_div2/odd_0/_049_ ),
    .X(\u_clk_div2/odd_0/_045_ ));
 sg13g2_o21ai_1 \u_clk_div2/odd_0/_192_  (.B1(\u_clk_div2/net83 ),
    .Y(\u_clk_div2/odd_0/_098_ ),
    .A1(\u_clk_div2/net84 ),
    .A2(\u_clk_div2/net75 ));
 sg13g2_or3_1 \u_clk_div2/odd_0/_193_  (.A(\u_clk_div2/net84 ),
    .B(\u_clk_div2/syncN_1_ ),
    .C(\u_clk_div2/net83 ),
    .X(\u_clk_div2/odd_0/_099_ ));
 sg13g2_and2_1 \u_clk_div2/odd_0/_194_  (.A(\u_clk_div2/odd_0/_098_ ),
    .B(\u_clk_div2/odd_0/_099_ ),
    .X(\u_clk_div2/odd_0/_046_ ));
 sg13g2_xnor2_1 \u_clk_div2/odd_0/_195_  (.Y(\u_clk_div2/odd_0/_015_ ),
    .A(\u_clk_div2/odd_0/initial_begin_2_ ),
    .B(\u_clk_div2/odd_0/_097_ ));
 sg13g2_nor2_1 \u_clk_div2/odd_0/_196_  (.A(\u_clk_div2/odd_0/_083_ ),
    .B(\u_clk_div2/odd_0/_098_ ),
    .Y(\u_clk_div2/odd_0/_100_ ));
 sg13g2_xnor2_1 \u_clk_div2/odd_0/_197_  (.Y(\u_clk_div2/odd_0/_016_ ),
    .A(\u_clk_div2/net82 ),
    .B(\u_clk_div2/odd_0/_098_ ));
 sg13g2_nor3_1 \u_clk_div2/odd_0/_198_  (.A(\u_clk_div2/odd_0/initial_begin_3_ ),
    .B(\u_clk_div2/odd_0/initial_begin_0_ ),
    .C(\u_clk_div2/odd_0/_087_ ),
    .Y(\u_clk_div2/odd_0/_101_ ));
 sg13g2_o21ai_1 \u_clk_div2/odd_0/_199_  (.B1(\u_clk_div2/odd_0/initial_begin_3_ ),
    .Y(\u_clk_div2/odd_0/_102_ ),
    .A1(\u_clk_div2/odd_0/initial_begin_0_ ),
    .A2(\u_clk_div2/odd_0/_087_ ));
 sg13g2_nand2b_1 \u_clk_div2/odd_0/_200_  (.Y(\u_clk_div2/odd_0/_017_ ),
    .B(\u_clk_div2/odd_0/_102_ ),
    .A_N(\u_clk_div2/odd_0/_101_ ));
 sg13g2_and2_1 \u_clk_div2/odd_0/_201_  (.A(\u_clk_div2/syncN_4_ ),
    .B(\u_clk_div2/odd_0/_100_ ),
    .X(\u_clk_div2/odd_0/_020_ ));
 sg13g2_xor2_1 \u_clk_div2/odd_0/_202_  (.B(\u_clk_div2/odd_0/_100_ ),
    .A(\u_clk_div2/net81 ),
    .X(\u_clk_div2/odd_0/_018_ ));
 sg13g2_xor2_1 \u_clk_div2/odd_0/_203_  (.B(\u_clk_div2/odd_0/_101_ ),
    .A(\u_clk_div2/odd_0/initial_begin_4_ ),
    .X(\u_clk_div2/odd_0/_019_ ));
 sg13g2_nand2_1 \u_clk_div2/odd_0/_204_  (.Y(\u_clk_div2/odd_0/_103_ ),
    .A(\u_clk_div2/odd_0/_047_ ),
    .B(\u_clk_div2/odd_0/_021_ ));
 sg13g2_xor2_1 \u_clk_div2/odd_0/_205_  (.B(\u_clk_div2/odd_0/counter2_0_ ),
    .A(\u_clk_div2/odd_0/_047_ ),
    .X(\u_clk_div2/odd_0/_023_ ));
 sg13g2_nor2_1 \u_clk_div2/odd_0/_206_  (.A(\u_clk_div2/odd_0/counter2_2_ ),
    .B(\u_clk_div2/odd_0/_103_ ),
    .Y(\u_clk_div2/odd_0/_104_ ));
 sg13g2_xnor2_1 \u_clk_div2/odd_0/_207_  (.Y(\u_clk_div2/odd_0/_025_ ),
    .A(\u_clk_div2/odd_0/counter2_2_ ),
    .B(\u_clk_div2/odd_0/_103_ ));
 sg13g2_nor3_1 \u_clk_div2/odd_0/_208_  (.A(\u_clk_div2/odd_0/counter2_3_ ),
    .B(\u_clk_div2/odd_0/counter2_2_ ),
    .C(\u_clk_div2/odd_0/_103_ ),
    .Y(\u_clk_div2/odd_0/_105_ ));
 sg13g2_xor2_1 \u_clk_div2/odd_0/_209_  (.B(\u_clk_div2/odd_0/_104_ ),
    .A(\u_clk_div2/odd_0/counter2_3_ ),
    .X(\u_clk_div2/odd_0/_027_ ));
 sg13g2_xor2_1 \u_clk_div2/odd_0/_210_  (.B(\u_clk_div2/odd_0/_105_ ),
    .A(\u_clk_div2/odd_0/counter2_4_ ),
    .X(\u_clk_div2/odd_0/_029_ ));
 sg13g2_nand2_1 \u_clk_div2/odd_0/_211_  (.Y(\u_clk_div2/odd_0/_106_ ),
    .A(\u_clk_div2/odd_0/_050_ ),
    .B(\u_clk_div2/odd_0/_031_ ));
 sg13g2_xor2_1 \u_clk_div2/odd_0/_212_  (.B(\u_clk_div2/odd_0/counter_0_ ),
    .A(\u_clk_div2/odd_0/_050_ ),
    .X(\u_clk_div2/odd_0/_033_ ));
 sg13g2_nor2_1 \u_clk_div2/odd_0/_213_  (.A(\u_clk_div2/odd_0/counter_2_ ),
    .B(\u_clk_div2/odd_0/_106_ ),
    .Y(\u_clk_div2/odd_0/_107_ ));
 sg13g2_xnor2_1 \u_clk_div2/odd_0/_214_  (.Y(\u_clk_div2/odd_0/_035_ ),
    .A(\u_clk_div2/odd_0/counter_2_ ),
    .B(\u_clk_div2/odd_0/_106_ ));
 sg13g2_nor3_1 \u_clk_div2/odd_0/_215_  (.A(\u_clk_div2/odd_0/counter_2_ ),
    .B(\u_clk_div2/odd_0/counter_3_ ),
    .C(\u_clk_div2/odd_0/_106_ ),
    .Y(\u_clk_div2/odd_0/_108_ ));
 sg13g2_xor2_1 \u_clk_div2/odd_0/_216_  (.B(\u_clk_div2/odd_0/_107_ ),
    .A(\u_clk_div2/odd_0/counter_3_ ),
    .X(\u_clk_div2/odd_0/_037_ ));
 sg13g2_xor2_1 \u_clk_div2/odd_0/_217_  (.B(\u_clk_div2/odd_0/_108_ ),
    .A(\u_clk_div2/odd_0/counter_4_ ),
    .X(\u_clk_div2/odd_0/_039_ ));
 sg13g2_nor2b_1 \u_clk_div2/odd_0/_218_  (.A(\u_clk_div2/odd_0/old_N_2_ ),
    .B_N(\u_clk_div2/net83 ),
    .Y(\u_clk_div2/odd_0/_109_ ));
 sg13g2_o21ai_1 \u_clk_div2/odd_0/_219_  (.B1(\u_clk_div2/enable_odd ),
    .Y(\u_clk_div2/odd_0/_110_ ),
    .A1(\u_clk_div2/odd_0/old_N_3_ ),
    .A2(\u_clk_div2/odd_0/_083_ ));
 sg13g2_nand2b_1 \u_clk_div2/odd_0/_220_  (.Y(\u_clk_div2/odd_0/_111_ ),
    .B(\u_clk_div2/odd_0/old_N_2_ ),
    .A_N(\u_clk_div2/net83 ));
 sg13g2_xor2_1 \u_clk_div2/odd_0/_221_  (.B(\u_clk_div2/net81 ),
    .A(\u_clk_div2/odd_0/old_N_4_ ),
    .X(\u_clk_div2/odd_0/_112_ ));
 sg13g2_a221oi_1 \u_clk_div2/odd_0/_222_  (.B2(\u_clk_div2/odd_0/_083_ ),
    .C1(\u_clk_div2/odd_0/_112_ ),
    .B1(\u_clk_div2/odd_0/old_N_3_ ),
    .A1(\u_clk_div2/odd_0/old_N_0_ ),
    .Y(\u_clk_div2/odd_0/_113_ ),
    .A2(\u_clk_div2/odd_0/_082_ ));
 sg13g2_o21ai_1 \u_clk_div2/odd_0/_223_  (.B1(\u_clk_div2/odd_0/_111_ ),
    .Y(\u_clk_div2/odd_0/_114_ ),
    .A1(\u_clk_div2/odd_0/old_N_0_ ),
    .A2(\u_clk_div2/odd_0/_082_ ));
 sg13g2_xor2_1 \u_clk_div2/odd_0/_224_  (.B(\u_clk_div2/syncN_1_ ),
    .A(\u_clk_div2/odd_0/old_N_1_ ),
    .X(\u_clk_div2/odd_0/_115_ ));
 sg13g2_nor4_1 \u_clk_div2/odd_0/_225_  (.A(\u_clk_div2/odd_0/_109_ ),
    .B(\u_clk_div2/odd_0/_110_ ),
    .C(\u_clk_div2/odd_0/_114_ ),
    .D(\u_clk_div2/odd_0/_115_ ),
    .Y(\u_clk_div2/odd_0/_116_ ));
 sg13g2_a21oi_1 \u_clk_div2/odd_0/_226_  (.A1(\u_clk_div2/odd_0/_113_ ),
    .A2(\u_clk_div2/odd_0/_116_ ),
    .Y(\u_clk_div2/odd_0/_063_ ),
    .B1(\u_clk_div2/odd_0/_084_ ));
 sg13g2_nor2_1 \u_clk_div2/odd_0/_227_  (.A(\u_clk_div2/odd_0/_005_ ),
    .B(\u_clk_div2/odd_0/_084_ ),
    .Y(\u_clk_div2/odd_0/_117_ ));
 sg13g2_a21oi_1 \u_clk_div2/odd_0/_228_  (.A1(\u_clk_div2/odd_0/_031_ ),
    .A2(\u_clk_div2/odd_0/_084_ ),
    .Y(\u_clk_div2/odd_0/_075_ ),
    .B1(\u_clk_div2/odd_0/_117_ ));
 sg13g2_nand2_1 \u_clk_div2/odd_0/_229_  (.Y(\u_clk_div2/odd_0/_118_ ),
    .A(\u_clk_div2/odd_0/_050_ ),
    .B(\u_clk_div2/odd_0/_084_ ));
 sg13g2_o21ai_1 \u_clk_div2/odd_0/_230_  (.B1(\u_clk_div2/odd_0/_118_ ),
    .Y(\u_clk_div2/odd_0/_076_ ),
    .A1(\u_clk_div2/odd_0/_006_ ),
    .A2(\u_clk_div2/odd_0/_084_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_231_  (.A0(\u_clk_div2/odd_0/_007_ ),
    .A1(\u_clk_div2/odd_0/counter_2_ ),
    .S(\u_clk_div2/odd_0/_084_ ),
    .X(\u_clk_div2/odd_0/_077_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_232_  (.A0(\u_clk_div2/odd_0/_008_ ),
    .A1(\u_clk_div2/odd_0/counter_3_ ),
    .S(\u_clk_div2/odd_0/_084_ ),
    .X(\u_clk_div2/odd_0/_078_ ));
 sg13g2_mux2_1 \u_clk_div2/odd_0/_233_  (.A0(\u_clk_div2/odd_0/_009_ ),
    .A1(\u_clk_div2/odd_0/counter_4_ ),
    .S(\u_clk_div2/odd_0/_084_ ),
    .X(\u_clk_div2/odd_0/_079_ ));
 sg13g2_nand4_1 \u_clk_div2/odd_0/_234_  (.B(\u_clk_div2/enable_odd ),
    .C(\u_clk_div2/odd_0/counter_0_ ),
    .A(\u_clk_div2/odd_0/_050_ ),
    .Y(\u_clk_div2/odd_0/_119_ ),
    .D(\u_clk_div2/odd_0/_096_ ));
 sg13g2_o21ai_1 \u_clk_div2/odd_0/_235_  (.B1(\u_clk_div2/odd_0/_081_ ),
    .Y(\u_clk_div2/odd_0/_120_ ),
    .A1(\u_clk_div2/odd_0/_121_ ),
    .A2(\u_clk_div2/odd_0/_119_ ));
 sg13g2_a21oi_1 \u_clk_div2/odd_0/_236_  (.A1(\u_clk_div2/odd_0/_121_ ),
    .A2(\u_clk_div2/odd_0/_119_ ),
    .Y(\u_clk_div2/odd_0/_080_ ),
    .B1(\u_clk_div2/odd_0/_120_ ));
 sg13g2_inv_1 \u_clk_div2/odd_0/_238__163  (.Y(net162),
    .A(clknet_3_7__leaf_clk2_int_regs));
 sg13g2_inv_1 \u_clk_div2/odd_0/_239__164  (.Y(net163),
    .A(clknet_3_7__leaf_clk2_int_regs));
 sg13g2_inv_1 \u_clk_div2/odd_0/_240__165  (.Y(net164),
    .A(clknet_3_7__leaf_clk2_int_regs));
 sg13g2_inv_1 \u_clk_div2/odd_0/_241__166  (.Y(net165),
    .A(clknet_3_4__leaf_clk2_int_regs));
 sg13g2_inv_1 \u_clk_div2/odd_0/_242__167  (.Y(net166),
    .A(clknet_3_3__leaf_clk2_int_regs));
 sg13g2_inv_1 \u_clk_div2/odd_0/_243__168  (.Y(net167),
    .A(clknet_3_3__leaf_clk2_int_regs));
 sg13g2_inv_1 \u_clk_div2/odd_0/_244__169  (.Y(net168),
    .A(clknet_3_1__leaf_clk2_int_regs));
 sg13g2_inv_1 \u_clk_div2/odd_0/_245__170  (.Y(net169),
    .A(clknet_3_6__leaf_clk2_int_regs));
 sg13g2_inv_1 \u_clk_div2/odd_0/_246__171  (.Y(net170),
    .A(clknet_3_6__leaf_clk2_int_regs));
 sg13g2_inv_1 \u_clk_div0/odd_0/_161__172  (.Y(net171),
    .A(clknet_3_4__leaf_clk0_int_regs));
 sg13g2_tiehi \u_clk_div2/odd_0/old_N_4___DFF_P__145  (.L_HI(net144));
 sg13g2_tiehi \u_clk_div2/odd_0/old_N_0___DFF_P__146  (.L_HI(net145));
 sg13g2_tiehi \u_clk_div2/odd_0/old_N_1___DFF_P__147  (.L_HI(net146));
 sg13g2_tiehi \u_clk_div2/odd_0/old_N_2___DFF_P__148  (.L_HI(net147));
 sg13g2_tiehi \u_digital_pll/pll_control/_266__149  (.L_HI(net148));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/counter2_0___DFFE_NN0P_  (.RESET_B(\u_clk_div2/odd_0/net129 ),
    .D(\u_clk_div2/odd_0/_064_ ),
    .Q(\u_clk_div2/odd_0/counter2_0_ ),
    .CLK(net160));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/counter2_1___DFFE_NN1P_  (.RESET_B(net128),
    .D(\u_clk_div2/odd_0/_065_ ),
    .Q(\u_clk_div2/odd_0/_047_ ),
    .CLK(net161));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/counter2_2___DFFE_NN0P_  (.RESET_B(\u_clk_div2/odd_0/net129 ),
    .D(\u_clk_div2/odd_0/_066_ ),
    .Q(\u_clk_div2/odd_0/counter2_2_ ),
    .CLK(net162));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/counter2_3___DFFE_NN0P_  (.RESET_B(\u_clk_div2/odd_0/net129 ),
    .D(\u_clk_div2/odd_0/_067_ ),
    .Q(\u_clk_div2/odd_0/counter2_3_ ),
    .CLK(net163));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/counter2_4___DFFE_NN0P_  (.RESET_B(\u_clk_div2/odd_0/net129 ),
    .D(\u_clk_div2/odd_0/_068_ ),
    .Q(\u_clk_div2/odd_0/counter2_4_ ),
    .CLK(net164));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/counter_0___DFFE_PN0P_  (.RESET_B(net128),
    .D(\u_clk_div2/odd_0/_075_ ),
    .Q(\u_clk_div2/odd_0/counter_0_ ),
    .CLK(clknet_3_4__leaf_clk2_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/counter_1___DFFE_PN1P_  (.RESET_B(net128),
    .D(\u_clk_div2/odd_0/_076_ ),
    .Q(\u_clk_div2/odd_0/_050_ ),
    .CLK(clknet_3_4__leaf_clk2_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/counter_2___DFFE_PN0P_  (.RESET_B(\u_clk_div2/odd_0/net129 ),
    .D(\u_clk_div2/odd_0/_077_ ),
    .Q(\u_clk_div2/odd_0/counter_2_ ),
    .CLK(clknet_3_5__leaf_clk2_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/counter_3___DFFE_PN0P_  (.RESET_B(\u_clk_div2/odd_0/net129 ),
    .D(\u_clk_div2/odd_0/_078_ ),
    .Q(\u_clk_div2/odd_0/counter_3_ ),
    .CLK(clknet_3_5__leaf_clk2_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/counter_4___DFFE_PN0P_  (.RESET_B(\u_clk_div2/odd_0/net129 ),
    .D(\u_clk_div2/odd_0/_079_ ),
    .Q(\u_clk_div2/odd_0/counter_4_ ),
    .CLK(clknet_3_5__leaf_clk2_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/initial_begin_0___DFFE_NN0P_  (.RESET_B(net123),
    .D(\u_clk_div2/odd_0/_070_ ),
    .Q(\u_clk_div2/odd_0/initial_begin_0_ ),
    .CLK(net166));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/initial_begin_1___DFFE_NN1P_  (.RESET_B(net123),
    .D(\u_clk_div2/odd_0/_071_ ),
    .Q(\u_clk_div2/odd_0/_049_ ),
    .CLK(net167));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/initial_begin_2___DFFE_NN0P_  (.RESET_B(net123),
    .D(\u_clk_div2/odd_0/_072_ ),
    .Q(\u_clk_div2/odd_0/initial_begin_2_ ),
    .CLK(net168));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/initial_begin_3___DFFE_NN0P_  (.RESET_B(net128),
    .D(\u_clk_div2/odd_0/_073_ ),
    .Q(\u_clk_div2/odd_0/initial_begin_3_ ),
    .CLK(net169));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/initial_begin_4___DFFE_NN0P_  (.RESET_B(net128),
    .D(\u_clk_div2/odd_0/_074_ ),
    .Q(\u_clk_div2/odd_0/initial_begin_4_ ),
    .CLK(net170));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/old_N_0___DFF_P_  (.RESET_B(net145),
    .D(\u_clk_div2/net84 ),
    .Q(\u_clk_div2/odd_0/old_N_0_ ),
    .CLK(clknet_3_0__leaf_clk2_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/old_N_1___DFF_P_  (.RESET_B(net146),
    .D(\u_clk_div2/net75 ),
    .Q(\u_clk_div2/odd_0/old_N_1_ ),
    .CLK(clknet_3_1__leaf_clk2_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/old_N_2___DFF_P_  (.RESET_B(net147),
    .D(\u_clk_div2/net83 ),
    .Q(\u_clk_div2/odd_0/old_N_2_ ),
    .CLK(clknet_3_0__leaf_clk2_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/old_N_3___DFF_P_  (.RESET_B(net143),
    .D(\u_clk_div2/net82 ),
    .Q(\u_clk_div2/odd_0/old_N_3_ ),
    .CLK(clknet_3_0__leaf_clk2_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/old_N_4___DFF_P_  (.RESET_B(net144),
    .D(\u_clk_div2/net81 ),
    .Q(\u_clk_div2/odd_0/old_N_4_ ),
    .CLK(clknet_3_0__leaf_clk2_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/out_counter2__DFFE_NN1P_  (.RESET_B(net128),
    .D(\u_clk_div2/odd_0/_069_ ),
    .Q(\u_clk_div2/odd_0/_048_ ),
    .CLK(net165));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/out_counter__DFFE_PN1P_  (.RESET_B(net128),
    .D(\u_clk_div2/odd_0/_080_ ),
    .Q(\u_clk_div2/odd_0/_051_ ),
    .CLK(clknet_3_1__leaf_clk2_int_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/odd_0/rst_pulse__DFFE_PN0P_  (.RESET_B(net127),
    .D(\u_clk_div2/odd_0/_063_ ),
    .Q(\u_clk_div2/odd_0/rst_pulse ),
    .CLK(clknet_3_4__leaf_clk2_int_regs));
 sg13g2_buf_2 \u_clk_div2/odd_0/u_clkbuf_out_delayed_0_/u_buf  (.A(\u_clk_div2/odd_0/out_delayed_0_ ),
    .X(\u_clk_div2/out_odd ));
 sg13g2_buf_2 \u_clk_div2/odd_0/u_clkbuf_out_delayed_init/u_buf  (.A(\u_clk_div2/odd_0/out_pre ),
    .X(\u_clk_div2/odd_0/out_delayed_0_ ));
 sg13g2_dfrbpq_1 \u_clk_div2/syncN_0___DFF_PN0_  (.RESET_B(\u_clk_div2/net121 ),
    .D(\u_clk_div2/syncNp_0_ ),
    .Q(\u_clk_div2/syncN_0_ ),
    .CLK(clknet_1_1__leaf_clk2_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/syncN_1___DFF_PN1_  (.RESET_B(\u_clk_div2/net121 ),
    .D(\u_clk_div2/_02_ ),
    .Q(\u_clk_div2/_00_ ),
    .CLK(clknet_1_1__leaf_clk2_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/syncN_2___DFF_PN0_  (.RESET_B(\u_clk_div2/net121 ),
    .D(\u_clk_div2/syncNp_2_ ),
    .Q(\u_clk_div2/syncN_2_ ),
    .CLK(clknet_1_1__leaf_clk2_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/syncN_3___DFF_PN0_  (.RESET_B(net122),
    .D(\u_clk_div2/syncNp_3_ ),
    .Q(\u_clk_div2/syncN_3_ ),
    .CLK(clknet_1_1__leaf_clk2_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/syncN_4___DFF_PN0_  (.RESET_B(net122),
    .D(\u_clk_div2/syncNp_4_ ),
    .Q(\u_clk_div2/syncN_4_ ),
    .CLK(clknet_1_1__leaf_clk2_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/syncNp_0___DFF_PN0_  (.RESET_B(\u_clk_div2/net121 ),
    .D(net55),
    .Q(\u_clk_div2/syncNp_0_ ),
    .CLK(clknet_1_0__leaf_clk2_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/syncNp_1___DFF_PN1_  (.RESET_B(\u_clk_div2/net121 ),
    .D(\u_clk_div2/_03_ ),
    .Q(\u_clk_div2/_01_ ),
    .CLK(clknet_1_0__leaf_clk2_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/syncNp_2___DFF_PN0_  (.RESET_B(\u_clk_div2/net121 ),
    .D(net57),
    .Q(\u_clk_div2/syncNp_2_ ),
    .CLK(clknet_1_0__leaf_clk2_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/syncNp_3___DFF_PN0_  (.RESET_B(\u_clk_div2/net121 ),
    .D(net58),
    .Q(\u_clk_div2/syncNp_3_ ),
    .CLK(clknet_1_0__leaf_clk2_180_to_360_expand_regs));
 sg13g2_dfrbpq_1 \u_clk_div2/syncNp_4___DFF_PN0_  (.RESET_B(\u_clk_div2/net121 ),
    .D(net59),
    .Q(\u_clk_div2/syncNp_4_ ),
    .CLK(clknet_1_0__leaf_clk2_180_to_360_expand_regs));
 sg13g2_buf_16 \u_clk_div2/u_clkbuf_out/u_buf  (.X(clk2_180_to_360_expand),
    .A(\u_clk_div2/out_buf ));
 sg13g2_nor2_1 \u_clk_mux0/_06_  (.A(clk0_phase_sel_check_0_),
    .B(clk0_phase_sel_check_1_),
    .Y(\u_clk_mux0/_00_ ));
 sg13g2_nor2_1 \u_clk_mux0/_07_  (.A(clk0_phase_sel_check_3_),
    .B(clk0_phase_sel_check_2_),
    .Y(\u_clk_mux0/_01_ ));
 sg13g2_nand2_1 \u_clk_mux0/_08_  (.Y(\u_clk_mux0/one_hot_sel_0_ ),
    .A(\u_clk_mux0/_00_ ),
    .B(\u_clk_mux0/_01_ ));
 sg13g2_nor2b_1 \u_clk_mux0/_09_  (.A(clk0_phase_sel_check_1_),
    .B_N(clk0_phase_sel_check_0_),
    .Y(\u_clk_mux0/_02_ ));
 sg13g2_nand2_1 \u_clk_mux0/_10_  (.Y(\u_clk_mux0/one_hot_sel_1_ ),
    .A(\u_clk_mux0/_01_ ),
    .B(\u_clk_mux0/_02_ ));
 sg13g2_nor2b_1 \u_clk_mux0/_11_  (.A(clk0_phase_sel_check_0_),
    .B_N(clk0_phase_sel_check_1_),
    .Y(\u_clk_mux0/_03_ ));
 sg13g2_nand2_1 \u_clk_mux0/_12_  (.Y(\u_clk_mux0/one_hot_sel_2_ ),
    .A(\u_clk_mux0/_01_ ),
    .B(\u_clk_mux0/_03_ ));
 sg13g2_nand3_1 \u_clk_mux0/_13_  (.B(clk0_phase_sel_check_1_),
    .C(\u_clk_mux0/_01_ ),
    .A(clk0_phase_sel_check_0_),
    .Y(\u_clk_mux0/one_hot_sel_3_ ));
 sg13g2_nor2b_1 \u_clk_mux0/_14_  (.A(clk0_phase_sel_check_3_),
    .B_N(clk0_phase_sel_check_2_),
    .Y(\u_clk_mux0/_04_ ));
 sg13g2_nand2_1 \u_clk_mux0/_15_  (.Y(\u_clk_mux0/one_hot_sel_4_ ),
    .A(\u_clk_mux0/_00_ ),
    .B(\u_clk_mux0/_04_ ));
 sg13g2_nand2_1 \u_clk_mux0/_16_  (.Y(\u_clk_mux0/one_hot_sel_5_ ),
    .A(\u_clk_mux0/_02_ ),
    .B(\u_clk_mux0/_04_ ));
 sg13g2_nand2_1 \u_clk_mux0/_17_  (.Y(\u_clk_mux0/one_hot_sel_6_ ),
    .A(\u_clk_mux0/_03_ ),
    .B(\u_clk_mux0/_04_ ));
 sg13g2_nand3_1 \u_clk_mux0/_18_  (.B(clk0_phase_sel_check_1_),
    .C(\u_clk_mux0/_04_ ),
    .A(clk0_phase_sel_check_0_),
    .Y(\u_clk_mux0/one_hot_sel_7_ ));
 sg13g2_nor2b_1 \u_clk_mux0/_19_  (.A(clk0_phase_sel_check_2_),
    .B_N(clk0_phase_sel_check_3_),
    .Y(\u_clk_mux0/_05_ ));
 sg13g2_nand2_1 \u_clk_mux0/_20_  (.Y(\u_clk_mux0/one_hot_sel_8_ ),
    .A(\u_clk_mux0/_00_ ),
    .B(\u_clk_mux0/_05_ ));
 sg13g2_nand2_1 \u_clk_mux0/_21_  (.Y(\u_clk_mux0/one_hot_sel_9_ ),
    .A(\u_clk_mux0/_02_ ),
    .B(\u_clk_mux0/_05_ ));
 sg13g2_nand2_1 \u_clk_mux0/_22_  (.Y(\u_clk_mux0/one_hot_sel_10_ ),
    .A(\u_clk_mux0/_03_ ),
    .B(\u_clk_mux0/_05_ ));
 sg13g2_nand3_1 \u_clk_mux0/_23_  (.B(clk0_phase_sel_check_1_),
    .C(\u_clk_mux0/_05_ ),
    .A(clk0_phase_sel_check_0_),
    .Y(\u_clk_mux0/one_hot_sel_11_ ));
 sg13g2_nand2_1 \u_clk_mux0/_24_  (.Y(\u_clk_mux0/one_hot_sel_12_ ),
    .A(clk0_phase_sel_check_3_),
    .B(clk0_phase_sel_check_2_));
 sg13g2_ebufn_8 \u_clk_mux0/gen_clockp_bufs_0__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux0/clk_pre ),
    .A(clknet_1_1__leaf_dll_clks_0_),
    .TE_B(\u_clk_mux0/one_hot_sel_0_ ));
 sg13g2_ebufn_8 \u_clk_mux0/gen_clockp_bufs_10__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux0/clk_pre ),
    .A(dll_clks_10_),
    .TE_B(\u_clk_mux0/one_hot_sel_10_ ));
 sg13g2_ebufn_8 \u_clk_mux0/gen_clockp_bufs_11__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux0/clk_pre ),
    .A(dll_clks_11_),
    .TE_B(\u_clk_mux0/one_hot_sel_11_ ));
 sg13g2_ebufn_8 \u_clk_mux0/gen_clockp_bufs_12__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux0/clk_pre ),
    .A(dll_clks_12_),
    .TE_B(\u_clk_mux0/one_hot_sel_12_ ));
 sg13g2_ebufn_8 \u_clk_mux0/gen_clockp_bufs_1__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux0/clk_pre ),
    .A(dll_clks_1_),
    .TE_B(\u_clk_mux0/one_hot_sel_1_ ));
 sg13g2_ebufn_8 \u_clk_mux0/gen_clockp_bufs_2__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux0/clk_pre ),
    .A(dll_clks_2_),
    .TE_B(\u_clk_mux0/one_hot_sel_2_ ));
 sg13g2_ebufn_8 \u_clk_mux0/gen_clockp_bufs_3__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux0/clk_pre ),
    .A(dll_clks_3_),
    .TE_B(\u_clk_mux0/one_hot_sel_3_ ));
 sg13g2_ebufn_8 \u_clk_mux0/gen_clockp_bufs_4__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux0/clk_pre ),
    .A(dll_clks_4_),
    .TE_B(\u_clk_mux0/one_hot_sel_4_ ));
 sg13g2_ebufn_8 \u_clk_mux0/gen_clockp_bufs_5__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux0/clk_pre ),
    .A(dll_clks_5_),
    .TE_B(\u_clk_mux0/one_hot_sel_5_ ));
 sg13g2_ebufn_8 \u_clk_mux0/gen_clockp_bufs_6__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux0/clk_pre ),
    .A(dll_clks_6_),
    .TE_B(\u_clk_mux0/one_hot_sel_6_ ));
 sg13g2_ebufn_8 \u_clk_mux0/gen_clockp_bufs_7__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux0/clk_pre ),
    .A(dll_clks_7_),
    .TE_B(\u_clk_mux0/one_hot_sel_7_ ));
 sg13g2_ebufn_8 \u_clk_mux0/gen_clockp_bufs_8__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux0/clk_pre ),
    .A(dll_clks_8_),
    .TE_B(\u_clk_mux0/one_hot_sel_8_ ));
 sg13g2_ebufn_8 \u_clk_mux0/gen_clockp_bufs_9__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux0/clk_pre ),
    .A(dll_clks_9_),
    .TE_B(\u_clk_mux0/one_hot_sel_9_ ));
 sg13g2_buf_16 \u_clk_mux0/u_clkbuf/u_buf  (.X(clk0_int),
    .A(\u_clk_mux0/clk_pre ));
 sg13g2_inv_1 \u_clk_mux0_inv/_0_  (.Y(\u_clk_mux0_inv/one_hot_sel_1_ ),
    .A(_002_));
 sg13g2_buf_16 clkbuf_regs_0_clk (.X(osc_regs),
    .A(osc));
 sg13g2_buf_16 \u_clk_mux0_inv/u_clkbuf_mux/u_buf  (.X(clk0_out_xor),
    .A(\u_clk_mux0_inv/clk_pre ));
 sg13g2_ebufn_8 \u_clk_mux0_inv/u_one_hot_tribuf0/u_ebuf  (.Z(\u_clk_mux0_inv/clk_pre ),
    .A(clknet_1_0__leaf_clk0_180_to_360_expand),
    .TE_B(_002_));
 sg13g2_ebufn_8 \u_clk_mux0_inv/u_one_hot_tribuf1/u_ebuf  (.Z(\u_clk_mux0_inv/clk_pre ),
    .A(net184),
    .TE_B(\u_clk_mux0_inv/one_hot_sel_1_ ));
 sg13g2_inv_1 \u_clk_mux0_xor/_0_  (.Y(\u_clk_mux0_xor/one_hot_sel_1_ ),
    .A(net65));
 sg13g2_buf_4 \u_clk_mux0_xor/u_clkbuf_cap/u_buf  (.X(\u_clk_mux0_xor/u_clkbuf_cap/X ),
    .A(clknet_1_1__leaf_clk2_out_xor));
 sg13g2_buf_16 \u_clk_mux0_xor/u_clkbuf_mux/u_buf  (.X(net69),
    .A(\u_clk_mux0_xor/clk_pre ));
 sg13g2_ebufn_8 \u_clk_mux0_xor/u_one_hot_tribuf0/u_ebuf  (.Z(\u_clk_mux0_xor/clk_pre ),
    .A(\u_clk_mux0_xor/clk_pre_xor_const ),
    .TE_B(net65));
 sg13g2_ebufn_8 \u_clk_mux0_xor/u_one_hot_tribuf1/u_ebuf  (.Z(\u_clk_mux0_xor/clk_pre ),
    .A(\u_clk_mux0_xor/clk_pre_xor ),
    .TE_B(\u_clk_mux0_xor/one_hot_sel_1_ ));
 sg13g2_xor2_1 \u_clk_mux0_xor/u_xor/u_xor  (.B(clknet_1_1__leaf_clk0_out_xor),
    .A(clknet_1_1__leaf_clk0_out_xor),
    .X(\u_clk_mux0_xor/clk_pre_xor ));
 sg13g2_xor2_1 \u_clk_mux0_xor/u_xor_const/u_xor  (.B(net1),
    .A(clknet_1_0__leaf_clk0_out_xor),
    .X(\u_clk_mux0_xor/clk_pre_xor_const ));
 sg13g2_nor2_1 \u_clk_mux1/_06_  (.A(clk1_phase_sel_check_0_),
    .B(clk1_phase_sel_check_1_),
    .Y(\u_clk_mux1/_00_ ));
 sg13g2_nor2_1 \u_clk_mux1/_07_  (.A(clk1_phase_sel_check_3_),
    .B(clk1_phase_sel_check_2_),
    .Y(\u_clk_mux1/_01_ ));
 sg13g2_nand2_1 \u_clk_mux1/_08_  (.Y(\u_clk_mux1/one_hot_sel_0_ ),
    .A(\u_clk_mux1/_00_ ),
    .B(\u_clk_mux1/_01_ ));
 sg13g2_nor2b_1 \u_clk_mux1/_09_  (.A(clk1_phase_sel_check_1_),
    .B_N(clk1_phase_sel_check_0_),
    .Y(\u_clk_mux1/_02_ ));
 sg13g2_nand2_1 \u_clk_mux1/_10_  (.Y(\u_clk_mux1/one_hot_sel_1_ ),
    .A(\u_clk_mux1/_01_ ),
    .B(\u_clk_mux1/_02_ ));
 sg13g2_nor2b_1 \u_clk_mux1/_11_  (.A(clk1_phase_sel_check_0_),
    .B_N(clk1_phase_sel_check_1_),
    .Y(\u_clk_mux1/_03_ ));
 sg13g2_nand2_1 \u_clk_mux1/_12_  (.Y(\u_clk_mux1/one_hot_sel_2_ ),
    .A(\u_clk_mux1/_01_ ),
    .B(\u_clk_mux1/_03_ ));
 sg13g2_nand3_1 \u_clk_mux1/_13_  (.B(clk1_phase_sel_check_1_),
    .C(\u_clk_mux1/_01_ ),
    .A(clk1_phase_sel_check_0_),
    .Y(\u_clk_mux1/one_hot_sel_3_ ));
 sg13g2_nor2b_1 \u_clk_mux1/_14_  (.A(clk1_phase_sel_check_3_),
    .B_N(clk1_phase_sel_check_2_),
    .Y(\u_clk_mux1/_04_ ));
 sg13g2_nand2_1 \u_clk_mux1/_15_  (.Y(\u_clk_mux1/one_hot_sel_4_ ),
    .A(\u_clk_mux1/_00_ ),
    .B(\u_clk_mux1/_04_ ));
 sg13g2_nand2_1 \u_clk_mux1/_16_  (.Y(\u_clk_mux1/one_hot_sel_5_ ),
    .A(\u_clk_mux1/_02_ ),
    .B(\u_clk_mux1/_04_ ));
 sg13g2_nand2_1 \u_clk_mux1/_17_  (.Y(\u_clk_mux1/one_hot_sel_6_ ),
    .A(\u_clk_mux1/_03_ ),
    .B(\u_clk_mux1/_04_ ));
 sg13g2_nand3_1 \u_clk_mux1/_18_  (.B(clk1_phase_sel_check_1_),
    .C(\u_clk_mux1/_04_ ),
    .A(clk1_phase_sel_check_0_),
    .Y(\u_clk_mux1/one_hot_sel_7_ ));
 sg13g2_nor2b_1 \u_clk_mux1/_19_  (.A(clk1_phase_sel_check_2_),
    .B_N(clk1_phase_sel_check_3_),
    .Y(\u_clk_mux1/_05_ ));
 sg13g2_nand2_1 \u_clk_mux1/_20_  (.Y(\u_clk_mux1/one_hot_sel_8_ ),
    .A(\u_clk_mux1/_00_ ),
    .B(\u_clk_mux1/_05_ ));
 sg13g2_nand2_1 \u_clk_mux1/_21_  (.Y(\u_clk_mux1/one_hot_sel_9_ ),
    .A(\u_clk_mux1/_02_ ),
    .B(\u_clk_mux1/_05_ ));
 sg13g2_nand2_1 \u_clk_mux1/_22_  (.Y(\u_clk_mux1/one_hot_sel_10_ ),
    .A(\u_clk_mux1/_03_ ),
    .B(\u_clk_mux1/_05_ ));
 sg13g2_nand3_1 \u_clk_mux1/_23_  (.B(clk1_phase_sel_check_1_),
    .C(\u_clk_mux1/_05_ ),
    .A(clk1_phase_sel_check_0_),
    .Y(\u_clk_mux1/one_hot_sel_11_ ));
 sg13g2_nand2_1 \u_clk_mux1/_24_  (.Y(\u_clk_mux1/one_hot_sel_12_ ),
    .A(clk1_phase_sel_check_3_),
    .B(clk1_phase_sel_check_2_));
 sg13g2_ebufn_8 \u_clk_mux1/gen_clockp_bufs_0__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux1/clk_pre ),
    .A(clknet_1_0__leaf_dll_clks_0_),
    .TE_B(\u_clk_mux1/one_hot_sel_0_ ));
 sg13g2_ebufn_8 \u_clk_mux1/gen_clockp_bufs_10__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux1/clk_pre ),
    .A(dll_clks_10_),
    .TE_B(\u_clk_mux1/one_hot_sel_10_ ));
 sg13g2_ebufn_8 \u_clk_mux1/gen_clockp_bufs_11__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux1/clk_pre ),
    .A(dll_clks_11_),
    .TE_B(\u_clk_mux1/one_hot_sel_11_ ));
 sg13g2_ebufn_8 \u_clk_mux1/gen_clockp_bufs_12__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux1/clk_pre ),
    .A(dll_clks_12_),
    .TE_B(\u_clk_mux1/one_hot_sel_12_ ));
 sg13g2_ebufn_8 \u_clk_mux1/gen_clockp_bufs_1__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux1/clk_pre ),
    .A(dll_clks_1_),
    .TE_B(\u_clk_mux1/one_hot_sel_1_ ));
 sg13g2_ebufn_8 \u_clk_mux1/gen_clockp_bufs_2__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux1/clk_pre ),
    .A(dll_clks_2_),
    .TE_B(\u_clk_mux1/one_hot_sel_2_ ));
 sg13g2_ebufn_8 \u_clk_mux1/gen_clockp_bufs_3__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux1/clk_pre ),
    .A(dll_clks_3_),
    .TE_B(\u_clk_mux1/one_hot_sel_3_ ));
 sg13g2_ebufn_8 \u_clk_mux1/gen_clockp_bufs_4__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux1/clk_pre ),
    .A(dll_clks_4_),
    .TE_B(\u_clk_mux1/one_hot_sel_4_ ));
 sg13g2_ebufn_8 \u_clk_mux1/gen_clockp_bufs_5__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux1/clk_pre ),
    .A(dll_clks_5_),
    .TE_B(\u_clk_mux1/one_hot_sel_5_ ));
 sg13g2_ebufn_8 \u_clk_mux1/gen_clockp_bufs_6__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux1/clk_pre ),
    .A(dll_clks_6_),
    .TE_B(\u_clk_mux1/one_hot_sel_6_ ));
 sg13g2_ebufn_8 \u_clk_mux1/gen_clockp_bufs_7__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux1/clk_pre ),
    .A(dll_clks_7_),
    .TE_B(\u_clk_mux1/one_hot_sel_7_ ));
 sg13g2_ebufn_8 \u_clk_mux1/gen_clockp_bufs_8__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux1/clk_pre ),
    .A(dll_clks_8_),
    .TE_B(\u_clk_mux1/one_hot_sel_8_ ));
 sg13g2_ebufn_8 \u_clk_mux1/gen_clockp_bufs_9__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux1/clk_pre ),
    .A(dll_clks_9_),
    .TE_B(\u_clk_mux1/one_hot_sel_9_ ));
 sg13g2_buf_16 \u_clk_mux1/u_clkbuf/u_buf  (.X(clk1_int),
    .A(\u_clk_mux1/clk_pre ));
 sg13g2_inv_1 \u_clk_mux1_inv/_0_  (.Y(\u_clk_mux1_inv/one_hot_sel_1_ ),
    .A(_001_));
 sg13g2_inv_4 \u_clk_mux2_inv/u_clk_inv/u_inv_184  (.A(clknet_1_0__leaf_clk2_180_to_360_expand_regs),
    .Y(net183));
 sg13g2_buf_16 \u_clk_mux1_inv/u_clkbuf_mux/u_buf  (.X(clk1_out_xor),
    .A(\u_clk_mux1_inv/clk_pre ));
 sg13g2_ebufn_8 \u_clk_mux1_inv/u_one_hot_tribuf0/u_ebuf  (.Z(\u_clk_mux1_inv/clk_pre ),
    .A(clknet_1_0__leaf_clk1_180_to_360_expand),
    .TE_B(_001_));
 sg13g2_ebufn_8 \u_clk_mux1_inv/u_one_hot_tribuf1/u_ebuf  (.Z(\u_clk_mux1_inv/clk_pre ),
    .A(net182),
    .TE_B(\u_clk_mux1_inv/one_hot_sel_1_ ));
 sg13g2_inv_1 \u_clk_mux1_xor/_0_  (.Y(\u_clk_mux1_xor/one_hot_sel_1_ ),
    .A(net66));
 sg13g2_buf_4 \u_clk_mux1_xor/u_clkbuf_cap/u_buf  (.X(\u_clk_mux1_xor/u_clkbuf_cap/X ),
    .A(clknet_1_1__leaf_clk2_out_xor));
 sg13g2_buf_16 \u_clk_mux1_xor/u_clkbuf_mux/u_buf  (.X(net70),
    .A(\u_clk_mux1_xor/clk_pre ));
 sg13g2_ebufn_8 \u_clk_mux1_xor/u_one_hot_tribuf0/u_ebuf  (.Z(\u_clk_mux1_xor/clk_pre ),
    .A(\u_clk_mux1_xor/clk_pre_xor_const ),
    .TE_B(net66));
 sg13g2_ebufn_8 \u_clk_mux1_xor/u_one_hot_tribuf1/u_ebuf  (.Z(\u_clk_mux1_xor/clk_pre ),
    .A(\u_clk_mux1_xor/clk_pre_xor ),
    .TE_B(\u_clk_mux1_xor/one_hot_sel_1_ ));
 sg13g2_xor2_1 \u_clk_mux1_xor/u_xor/u_xor  (.B(clknet_1_0__leaf_clk0_out_xor),
    .A(clknet_1_1__leaf_clk1_out_xor),
    .X(\u_clk_mux1_xor/clk_pre_xor ));
 sg13g2_xor2_1 \u_clk_mux1_xor/u_xor_const/u_xor  (.B(net1),
    .A(clknet_1_0__leaf_clk1_out_xor),
    .X(\u_clk_mux1_xor/clk_pre_xor_const ));
 sg13g2_nor2_1 \u_clk_mux2/_06_  (.A(clk2_phase_sel_check_0_),
    .B(clk2_phase_sel_check_1_),
    .Y(\u_clk_mux2/_00_ ));
 sg13g2_nor2_1 \u_clk_mux2/_07_  (.A(clk2_phase_sel_check_3_),
    .B(clk2_phase_sel_check_2_),
    .Y(\u_clk_mux2/_01_ ));
 sg13g2_nand2_1 \u_clk_mux2/_08_  (.Y(\u_clk_mux2/one_hot_sel_0_ ),
    .A(\u_clk_mux2/_00_ ),
    .B(\u_clk_mux2/_01_ ));
 sg13g2_nor2b_1 \u_clk_mux2/_09_  (.A(clk2_phase_sel_check_1_),
    .B_N(clk2_phase_sel_check_0_),
    .Y(\u_clk_mux2/_02_ ));
 sg13g2_nand2_1 \u_clk_mux2/_10_  (.Y(\u_clk_mux2/one_hot_sel_1_ ),
    .A(\u_clk_mux2/_01_ ),
    .B(\u_clk_mux2/_02_ ));
 sg13g2_nor2b_1 \u_clk_mux2/_11_  (.A(clk2_phase_sel_check_0_),
    .B_N(clk2_phase_sel_check_1_),
    .Y(\u_clk_mux2/_03_ ));
 sg13g2_nand2_1 \u_clk_mux2/_12_  (.Y(\u_clk_mux2/one_hot_sel_2_ ),
    .A(\u_clk_mux2/_01_ ),
    .B(\u_clk_mux2/_03_ ));
 sg13g2_nand3_1 \u_clk_mux2/_13_  (.B(clk2_phase_sel_check_1_),
    .C(\u_clk_mux2/_01_ ),
    .A(clk2_phase_sel_check_0_),
    .Y(\u_clk_mux2/one_hot_sel_3_ ));
 sg13g2_nor2b_1 \u_clk_mux2/_14_  (.A(clk2_phase_sel_check_3_),
    .B_N(clk2_phase_sel_check_2_),
    .Y(\u_clk_mux2/_04_ ));
 sg13g2_nand2_1 \u_clk_mux2/_15_  (.Y(\u_clk_mux2/one_hot_sel_4_ ),
    .A(\u_clk_mux2/_00_ ),
    .B(\u_clk_mux2/_04_ ));
 sg13g2_nand2_1 \u_clk_mux2/_16_  (.Y(\u_clk_mux2/one_hot_sel_5_ ),
    .A(\u_clk_mux2/_02_ ),
    .B(\u_clk_mux2/_04_ ));
 sg13g2_nand2_1 \u_clk_mux2/_17_  (.Y(\u_clk_mux2/one_hot_sel_6_ ),
    .A(\u_clk_mux2/_03_ ),
    .B(\u_clk_mux2/_04_ ));
 sg13g2_nand3_1 \u_clk_mux2/_18_  (.B(clk2_phase_sel_check_1_),
    .C(\u_clk_mux2/_04_ ),
    .A(clk2_phase_sel_check_0_),
    .Y(\u_clk_mux2/one_hot_sel_7_ ));
 sg13g2_nor2b_1 \u_clk_mux2/_19_  (.A(clk2_phase_sel_check_2_),
    .B_N(clk2_phase_sel_check_3_),
    .Y(\u_clk_mux2/_05_ ));
 sg13g2_nand2_1 \u_clk_mux2/_20_  (.Y(\u_clk_mux2/one_hot_sel_8_ ),
    .A(\u_clk_mux2/_00_ ),
    .B(\u_clk_mux2/_05_ ));
 sg13g2_nand2_1 \u_clk_mux2/_21_  (.Y(\u_clk_mux2/one_hot_sel_9_ ),
    .A(\u_clk_mux2/_02_ ),
    .B(\u_clk_mux2/_05_ ));
 sg13g2_nand2_1 \u_clk_mux2/_22_  (.Y(\u_clk_mux2/one_hot_sel_10_ ),
    .A(\u_clk_mux2/_03_ ),
    .B(\u_clk_mux2/_05_ ));
 sg13g2_nand3_1 \u_clk_mux2/_23_  (.B(clk2_phase_sel_check_1_),
    .C(\u_clk_mux2/_05_ ),
    .A(clk2_phase_sel_check_0_),
    .Y(\u_clk_mux2/one_hot_sel_11_ ));
 sg13g2_nand2_1 \u_clk_mux2/_24_  (.Y(\u_clk_mux2/one_hot_sel_12_ ),
    .A(clk2_phase_sel_check_3_),
    .B(clk2_phase_sel_check_2_));
 sg13g2_ebufn_8 \u_clk_mux2/gen_clockp_bufs_0__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux2/clk_pre ),
    .A(clknet_1_0__leaf_dll_clks_0_),
    .TE_B(\u_clk_mux2/one_hot_sel_0_ ));
 sg13g2_ebufn_8 \u_clk_mux2/gen_clockp_bufs_10__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux2/clk_pre ),
    .A(dll_clks_10_),
    .TE_B(\u_clk_mux2/one_hot_sel_10_ ));
 sg13g2_ebufn_8 \u_clk_mux2/gen_clockp_bufs_11__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux2/clk_pre ),
    .A(dll_clks_11_),
    .TE_B(\u_clk_mux2/one_hot_sel_11_ ));
 sg13g2_ebufn_8 \u_clk_mux2/gen_clockp_bufs_12__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux2/clk_pre ),
    .A(dll_clks_12_),
    .TE_B(\u_clk_mux2/one_hot_sel_12_ ));
 sg13g2_ebufn_8 \u_clk_mux2/gen_clockp_bufs_1__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux2/clk_pre ),
    .A(dll_clks_1_),
    .TE_B(\u_clk_mux2/one_hot_sel_1_ ));
 sg13g2_ebufn_8 \u_clk_mux2/gen_clockp_bufs_2__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux2/clk_pre ),
    .A(dll_clks_2_),
    .TE_B(\u_clk_mux2/one_hot_sel_2_ ));
 sg13g2_ebufn_8 \u_clk_mux2/gen_clockp_bufs_3__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux2/clk_pre ),
    .A(dll_clks_3_),
    .TE_B(\u_clk_mux2/one_hot_sel_3_ ));
 sg13g2_ebufn_8 \u_clk_mux2/gen_clockp_bufs_4__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux2/clk_pre ),
    .A(dll_clks_4_),
    .TE_B(\u_clk_mux2/one_hot_sel_4_ ));
 sg13g2_ebufn_8 \u_clk_mux2/gen_clockp_bufs_5__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux2/clk_pre ),
    .A(dll_clks_5_),
    .TE_B(\u_clk_mux2/one_hot_sel_5_ ));
 sg13g2_ebufn_8 \u_clk_mux2/gen_clockp_bufs_6__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux2/clk_pre ),
    .A(dll_clks_6_),
    .TE_B(\u_clk_mux2/one_hot_sel_6_ ));
 sg13g2_ebufn_8 \u_clk_mux2/gen_clockp_bufs_7__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux2/clk_pre ),
    .A(dll_clks_7_),
    .TE_B(\u_clk_mux2/one_hot_sel_7_ ));
 sg13g2_ebufn_8 \u_clk_mux2/gen_clockp_bufs_8__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux2/clk_pre ),
    .A(dll_clks_8_),
    .TE_B(\u_clk_mux2/one_hot_sel_8_ ));
 sg13g2_ebufn_8 \u_clk_mux2/gen_clockp_bufs_9__u_one_hot_tribuf/u_ebuf  (.Z(\u_clk_mux2/clk_pre ),
    .A(dll_clks_9_),
    .TE_B(\u_clk_mux2/one_hot_sel_9_ ));
 sg13g2_buf_16 \u_clk_mux2/u_clkbuf/u_buf  (.X(clk2_int),
    .A(\u_clk_mux2/clk_pre ));
 sg13g2_inv_1 \u_clk_mux2_inv/_0_  (.Y(\u_clk_mux2_inv/one_hot_sel_1_ ),
    .A(_000_));
 sg13g2_inv_4 \u_clk_mux0_inv/u_clk_inv/u_inv_185  (.A(clknet_1_1__leaf_clk0_180_to_360_expand_regs),
    .Y(net184));
 sg13g2_buf_16 \u_clk_mux2_inv/u_clkbuf_mux/u_buf  (.X(clk2_out_xor),
    .A(\u_clk_mux2_inv/clk_pre ));
 sg13g2_ebufn_8 \u_clk_mux2_inv/u_one_hot_tribuf0/u_ebuf  (.Z(\u_clk_mux2_inv/clk_pre ),
    .A(clknet_1_0__leaf_clk2_180_to_360_expand),
    .TE_B(_000_));
 sg13g2_ebufn_8 \u_clk_mux2_inv/u_one_hot_tribuf1/u_ebuf  (.Z(\u_clk_mux2_inv/clk_pre ),
    .A(net183),
    .TE_B(\u_clk_mux2_inv/one_hot_sel_1_ ));
 sg13g2_inv_1 \u_clk_mux2_xor/_0_  (.Y(\u_clk_mux2_xor/one_hot_sel_1_ ),
    .A(net67));
 sg13g2_buf_4 \u_clk_mux2_xor/u_clkbuf_cap/u_buf  (.X(\u_clk_mux2_xor/u_clkbuf_cap/X ),
    .A(clknet_1_0__leaf_clk1_out_xor));
 sg13g2_buf_16 \u_clk_mux2_xor/u_clkbuf_mux/u_buf  (.X(net71),
    .A(\u_clk_mux2_xor/clk_pre ));
 sg13g2_ebufn_8 \u_clk_mux2_xor/u_one_hot_tribuf0/u_ebuf  (.Z(\u_clk_mux2_xor/clk_pre ),
    .A(\u_clk_mux2_xor/clk_pre_xor_const ),
    .TE_B(net67));
 sg13g2_ebufn_8 \u_clk_mux2_xor/u_one_hot_tribuf1/u_ebuf  (.Z(\u_clk_mux2_xor/clk_pre ),
    .A(\u_clk_mux2_xor/clk_pre_xor ),
    .TE_B(\u_clk_mux2_xor/one_hot_sel_1_ ));
 sg13g2_xor2_1 \u_clk_mux2_xor/u_xor/u_xor  (.B(clknet_1_0__leaf_clk0_out_xor),
    .A(clknet_1_0__leaf_clk2_out_xor),
    .X(\u_clk_mux2_xor/clk_pre_xor ));
 sg13g2_xor2_1 \u_clk_mux2_xor/u_xor_const/u_xor  (.B(net1),
    .A(clknet_1_0__leaf_clk2_out_xor),
    .X(\u_clk_mux2_xor/clk_pre_xor_const ));
 sg13g2_inv_1 \u_digital_pll/_18_  (.Y(\u_digital_pll/_01_ ),
    .A(\u_digital_pll/stable_cnt_0_ ));
 sg13g2_inv_1 \u_digital_pll/_19_  (.Y(\u_digital_pll/_10_ ),
    .A(\u_digital_pll/stable_cnt_4_ ));
 sg13g2_inv_1 \u_digital_pll/_20_  (.Y(\u_digital_pll/_11_ ),
    .A(\u_digital_pll/stable_cnt_5_ ));
 sg13g2_nand2_1 \u_digital_pll/_21_  (.Y(\u_digital_pll/ireset ),
    .A(net18),
    .B(net116));
 sg13g2_or2_1 \u_digital_pll/_22_  (.X(\u_digital_pll/creset ),
    .B(\u_digital_pll/ireset ),
    .A(\u_digital_pll/net112 ));
 sg13g2_and3_1 \u_digital_pll/_23_  (.X(\u_digital_pll/_12_ ),
    .A(\u_digital_pll/stable_cnt_3_ ),
    .B(\u_digital_pll/stable_cnt_4_ ),
    .C(\u_digital_pll/stable_cnt_5_ ));
 sg13g2_or3_1 \u_digital_pll/_24_  (.A(\u_digital_pll/stable_cnt_6_ ),
    .B(\u_digital_pll/stable_cnt_7_ ),
    .C(\u_digital_pll/_12_ ),
    .X(\u_digital_pll/_00_ ));
 sg13g2_nor4_1 \u_digital_pll/_25_  (.A(\u_digital_pll/_01_ ),
    .B(\u_digital_pll/stable_cnt_6_ ),
    .C(\u_digital_pll/stable_cnt_7_ ),
    .D(\u_digital_pll/_12_ ),
    .Y(\u_digital_pll/_13_ ));
 sg13g2_xnor2_1 \u_digital_pll/_26_  (.Y(\u_digital_pll/_02_ ),
    .A(\u_digital_pll/stable_cnt_0_ ),
    .B(\u_digital_pll/_00_ ));
 sg13g2_xor2_1 \u_digital_pll/_27_  (.B(\u_digital_pll/_13_ ),
    .A(\u_digital_pll/stable_cnt_1_ ),
    .X(\u_digital_pll/_03_ ));
 sg13g2_and2_1 \u_digital_pll/_28_  (.A(\u_digital_pll/stable_cnt_1_ ),
    .B(\u_digital_pll/stable_cnt_2_ ),
    .X(\u_digital_pll/_14_ ));
 sg13g2_a21oi_1 \u_digital_pll/_29_  (.A1(\u_digital_pll/stable_cnt_1_ ),
    .A2(\u_digital_pll/_13_ ),
    .Y(\u_digital_pll/_15_ ),
    .B1(\u_digital_pll/stable_cnt_2_ ));
 sg13g2_a21oi_1 \u_digital_pll/_30_  (.A1(\u_digital_pll/_13_ ),
    .A2(\u_digital_pll/_14_ ),
    .Y(\u_digital_pll/_04_ ),
    .B1(\u_digital_pll/_15_ ));
 sg13g2_a21oi_1 \u_digital_pll/_31_  (.A1(\u_digital_pll/_13_ ),
    .A2(\u_digital_pll/_14_ ),
    .Y(\u_digital_pll/_16_ ),
    .B1(\u_digital_pll/stable_cnt_3_ ));
 sg13g2_nand3_1 \u_digital_pll/_32_  (.B(\u_digital_pll/_13_ ),
    .C(\u_digital_pll/_14_ ),
    .A(\u_digital_pll/stable_cnt_3_ ),
    .Y(\u_digital_pll/_17_ ));
 sg13g2_nor2b_1 \u_digital_pll/_33_  (.A(\u_digital_pll/_16_ ),
    .B_N(\u_digital_pll/_17_ ),
    .Y(\u_digital_pll/_05_ ));
 sg13g2_xnor2_1 \u_digital_pll/_34_  (.Y(\u_digital_pll/_06_ ),
    .A(\u_digital_pll/stable_cnt_4_ ),
    .B(\u_digital_pll/_17_ ));
 sg13g2_o21ai_1 \u_digital_pll/_35_  (.B1(\u_digital_pll/_11_ ),
    .Y(\u_digital_pll/_07_ ),
    .A1(\u_digital_pll/_10_ ),
    .A2(\u_digital_pll/_17_ ));
 sg13g2_buf_1 \u_digital_pll/_36_  (.A(\u_digital_pll/stable_cnt_6_ ),
    .X(\u_digital_pll/_08_ ));
 sg13g2_buf_1 \u_digital_pll/_37_  (.A(\u_digital_pll/stable_cnt_7_ ),
    .X(\u_digital_pll/_09_ ));
 sg13g2_buf_1 \u_digital_pll/_38_  (.A(\u_digital_pll/stable_reg ),
    .X(dll_stable));
 sg13g2_buf_16 \u_digital_pll/clock_buffer_osc/u_buf  (.X(net72),
    .A(clknet_1_0__leaf_osc));
 sg13g2_buf_16 \u_digital_pll/gen_clockp_bufs_0__clockp_buffer/u_buf  (.X(dll_clks_0_),
    .A(\clknet_1_0__leaf_u_digital_pll/clockp_buffer_in_0_ ));
 sg13g2_buf_16 \u_digital_pll/gen_clockp_bufs_10__clockp_buffer/u_buf  (.X(dll_clks_10_),
    .A(\u_digital_pll/clockp_buffer_in_10_ ));
 sg13g2_buf_16 \u_digital_pll/gen_clockp_bufs_11__clockp_buffer/u_buf  (.X(dll_clks_11_),
    .A(\u_digital_pll/clockp_buffer_in_11_ ));
 sg13g2_buf_16 \u_digital_pll/gen_clockp_bufs_12__clockp_buffer/u_buf  (.X(dll_clks_12_),
    .A(\u_digital_pll/clockp_buffer_in_12_ ));
 sg13g2_buf_16 \u_digital_pll/gen_clockp_bufs_1__clockp_buffer/u_buf  (.X(dll_clks_1_),
    .A(\u_digital_pll/clockp_buffer_in_1_ ));
 sg13g2_buf_16 \u_digital_pll/gen_clockp_bufs_2__clockp_buffer/u_buf  (.X(dll_clks_2_),
    .A(\u_digital_pll/clockp_buffer_in_2_ ));
 sg13g2_buf_16 \u_digital_pll/gen_clockp_bufs_3__clockp_buffer/u_buf  (.X(dll_clks_3_),
    .A(\u_digital_pll/clockp_buffer_in_3_ ));
 sg13g2_buf_16 \u_digital_pll/gen_clockp_bufs_4__clockp_buffer/u_buf  (.X(dll_clks_4_),
    .A(\u_digital_pll/clockp_buffer_in_4_ ));
 sg13g2_buf_16 \u_digital_pll/gen_clockp_bufs_5__clockp_buffer/u_buf  (.X(dll_clks_5_),
    .A(\u_digital_pll/clockp_buffer_in_5_ ));
 sg13g2_buf_16 \u_digital_pll/gen_clockp_bufs_6__clockp_buffer/u_buf  (.X(dll_clks_6_),
    .A(\u_digital_pll/clockp_buffer_in_6_ ));
 sg13g2_buf_16 \u_digital_pll/gen_clockp_bufs_7__clockp_buffer/u_buf  (.X(dll_clks_7_),
    .A(\u_digital_pll/clockp_buffer_in_7_ ));
 sg13g2_buf_16 \u_digital_pll/gen_clockp_bufs_8__clockp_buffer/u_buf  (.X(dll_clks_8_),
    .A(\u_digital_pll/clockp_buffer_in_8_ ));
 sg13g2_buf_16 \u_digital_pll/gen_clockp_bufs_9__clockp_buffer/u_buf  (.X(dll_clks_9_),
    .A(\u_digital_pll/clockp_buffer_in_9_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_0___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_0_ ),
    .A1(net19),
    .S(\u_digital_pll/net109 ),
    .X(\u_digital_pll/itrim_0_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_10___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_10_ ),
    .A1(net20),
    .S(\u_digital_pll/net109 ),
    .X(\u_digital_pll/itrim_10_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_11___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_11_ ),
    .A1(net21),
    .S(\u_digital_pll/net110 ),
    .X(\u_digital_pll/itrim_11_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_12___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_12_ ),
    .A1(net22),
    .S(\u_digital_pll/net110 ),
    .X(\u_digital_pll/itrim_12_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_13___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_13_ ),
    .A1(net23),
    .S(\u_digital_pll/net110 ),
    .X(\u_digital_pll/itrim_13_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_14___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_14_ ),
    .A1(net24),
    .S(\u_digital_pll/net111 ),
    .X(\u_digital_pll/itrim_14_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_15___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_15_ ),
    .A1(net25),
    .S(\u_digital_pll/net111 ),
    .X(\u_digital_pll/itrim_15_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_16___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_16_ ),
    .A1(net26),
    .S(\u_digital_pll/net112 ),
    .X(\u_digital_pll/itrim_16_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_17___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_17_ ),
    .A1(net27),
    .S(\u_digital_pll/net112 ),
    .X(\u_digital_pll/itrim_17_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_18___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_18_ ),
    .A1(net28),
    .S(\u_digital_pll/net112 ),
    .X(\u_digital_pll/itrim_18_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_19___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_19_ ),
    .A1(net29),
    .S(\u_digital_pll/net112 ),
    .X(\u_digital_pll/itrim_19_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_1___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_1_ ),
    .A1(net30),
    .S(\u_digital_pll/net111 ),
    .X(\u_digital_pll/itrim_1_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_20___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_20_ ),
    .A1(net31),
    .S(\u_digital_pll/net112 ),
    .X(\u_digital_pll/itrim_20_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_21___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_21_ ),
    .A1(net32),
    .S(\u_digital_pll/net109 ),
    .X(\u_digital_pll/itrim_21_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_22___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_22_ ),
    .A1(net33),
    .S(\u_digital_pll/net109 ),
    .X(\u_digital_pll/itrim_22_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_23___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_23_ ),
    .A1(net34),
    .S(\u_digital_pll/net109 ),
    .X(\u_digital_pll/itrim_23_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_24___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_24_ ),
    .A1(net35),
    .S(\u_digital_pll/net110 ),
    .X(\u_digital_pll/itrim_24_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_25___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_25_ ),
    .A1(net36),
    .S(\u_digital_pll/net110 ),
    .X(\u_digital_pll/itrim_25_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_2___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_2_ ),
    .A1(net37),
    .S(\u_digital_pll/net111 ),
    .X(\u_digital_pll/itrim_2_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_3___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_3_ ),
    .A1(net38),
    .S(\u_digital_pll/net112 ),
    .X(\u_digital_pll/itrim_3_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_4___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_4_ ),
    .A1(net39),
    .S(\u_digital_pll/net113 ),
    .X(\u_digital_pll/itrim_4_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_5___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_5_ ),
    .A1(net40),
    .S(\u_digital_pll/net113 ),
    .X(\u_digital_pll/itrim_5_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_6___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_6_ ),
    .A1(net41),
    .S(\u_digital_pll/net109 ),
    .X(\u_digital_pll/itrim_6_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_7___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_7_ ),
    .A1(net42),
    .S(\u_digital_pll/net112 ),
    .X(\u_digital_pll/itrim_7_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_8___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_8_ ),
    .A1(net43),
    .S(\u_digital_pll/net109 ),
    .X(\u_digital_pll/itrim_8_ ));
 sg13g2_mux2_1 \u_digital_pll/itrim_9___MUX___TECHMAP_MUX  (.A0(\u_digital_pll/otrim_9_ ),
    .A1(net44),
    .S(\u_digital_pll/net109 ),
    .X(\u_digital_pll/itrim_9_ ));
 sg13g2_mux2_1 \u_digital_pll/pll_control/_160_  (.A0(\u_digital_pll/pll_control/_002_ ),
    .A1(\u_digital_pll/pll_control/_001_ ),
    .S(\u_digital_pll/pll_control/_000_ ),
    .X(\u_digital_pll/pll_control/_003_ ));
 sg13g2_mux2_1 \u_digital_pll/pll_control/_161_  (.A0(\u_digital_pll/pll_control/_005_ ),
    .A1(\u_digital_pll/pll_control/_004_ ),
    .S(\u_digital_pll/pll_control/net105 ),
    .X(\u_digital_pll/pll_control/_006_ ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_162_  (.Y(\u_digital_pll/pll_control/_052_ ),
    .A(\u_digital_pll/pll_control/tval_4_ ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_163_  (.Y(\u_digital_pll/pll_control/_053_ ),
    .A(\u_digital_pll/pll_control/net107 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_164_  (.Y(\u_digital_pll/pll_control/_054_ ),
    .A(\u_digital_pll/pll_control/tval_1_ ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_165_  (.Y(\u_digital_pll/pll_control/_007_ ),
    .A(\u_digital_pll/pll_control/tval_0_ ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_166_  (.Y(\u_digital_pll/pll_control/_055_ ),
    .A(\u_digital_pll/pll_control/count0_4_ ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_167_  (.Y(\u_digital_pll/pll_control/_056_ ),
    .A(\u_digital_pll/pll_control/count0_3_ ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_168_  (.Y(\u_digital_pll/pll_control/_009_ ),
    .A(\u_digital_pll/pll_control/net101 ));
 sg13g2_and2_1 \u_digital_pll/pll_control/_169_  (.A(\u_digital_pll/pll_control/count0_3_ ),
    .B(\u_digital_pll/pll_control/count1_3_ ),
    .X(\u_digital_pll/pll_control/_057_ ));
 sg13g2_and2_1 \u_digital_pll/pll_control/_170_  (.A(\u_digital_pll/pll_control/count0_2_ ),
    .B(\u_digital_pll/pll_control/count1_2_ ),
    .X(\u_digital_pll/pll_control/_058_ ));
 sg13g2_xor2_1 \u_digital_pll/pll_control/_171_  (.B(\u_digital_pll/pll_control/count1_2_ ),
    .A(\u_digital_pll/pll_control/count0_2_ ),
    .X(\u_digital_pll/pll_control/_059_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_172_  (.Y(\u_digital_pll/pll_control/_060_ ),
    .A(\u_digital_pll/pll_control/count0_1_ ),
    .B(\u_digital_pll/pll_control/count1_1_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_173_  (.Y(\u_digital_pll/pll_control/_061_ ),
    .A(\u_digital_pll/pll_control/count0_0_ ),
    .B(\u_digital_pll/pll_control/count1_0_ ));
 sg13g2_xnor2_1 \u_digital_pll/pll_control/_174_  (.Y(\u_digital_pll/pll_control/_062_ ),
    .A(\u_digital_pll/pll_control/count0_1_ ),
    .B(\u_digital_pll/pll_control/count1_1_ ));
 sg13g2_o21ai_1 \u_digital_pll/pll_control/_175_  (.B1(\u_digital_pll/pll_control/_060_ ),
    .Y(\u_digital_pll/pll_control/_063_ ),
    .A1(\u_digital_pll/pll_control/_061_ ),
    .A2(\u_digital_pll/pll_control/_062_ ));
 sg13g2_a21o_1 \u_digital_pll/pll_control/_176_  (.A2(\u_digital_pll/pll_control/_063_ ),
    .A1(\u_digital_pll/pll_control/_059_ ),
    .B1(\u_digital_pll/pll_control/_058_ ),
    .X(\u_digital_pll/pll_control/_064_ ));
 sg13g2_xor2_1 \u_digital_pll/pll_control/_177_  (.B(\u_digital_pll/pll_control/count1_3_ ),
    .A(\u_digital_pll/pll_control/count0_3_ ),
    .X(\u_digital_pll/pll_control/_065_ ));
 sg13g2_a21o_1 \u_digital_pll/pll_control/_178_  (.A2(\u_digital_pll/pll_control/_065_ ),
    .A1(\u_digital_pll/pll_control/_064_ ),
    .B1(\u_digital_pll/pll_control/_057_ ),
    .X(\u_digital_pll/pll_control/_066_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_179_  (.Y(\u_digital_pll/pll_control/_067_ ),
    .A(\u_digital_pll/pll_control/count0_4_ ),
    .B(\u_digital_pll/pll_control/count1_4_ ));
 sg13g2_or2_1 \u_digital_pll/pll_control/_180_  (.X(\u_digital_pll/pll_control/_068_ ),
    .B(\u_digital_pll/pll_control/count1_4_ ),
    .A(\u_digital_pll/pll_control/count0_4_ ));
 sg13g2_a221oi_1 \u_digital_pll/pll_control/_181_  (.B2(\u_digital_pll/pll_control/_068_ ),
    .C1(\u_digital_pll/pll_control/_057_ ),
    .B1(\u_digital_pll/pll_control/_067_ ),
    .A1(\u_digital_pll/pll_control/_064_ ),
    .Y(\u_digital_pll/pll_control/_069_ ),
    .A2(\u_digital_pll/pll_control/_065_ ));
 sg13g2_o21ai_1 \u_digital_pll/pll_control/_182_  (.B1(\u_digital_pll/pll_control/_067_ ),
    .Y(\u_digital_pll/pll_control/_070_ ),
    .A1(net64),
    .A2(\u_digital_pll/pll_control/_069_ ));
 sg13g2_a21oi_1 \u_digital_pll/pll_control/_183_  (.A1(\u_digital_pll/pll_control/_066_ ),
    .A2(\u_digital_pll/pll_control/_068_ ),
    .Y(\u_digital_pll/pll_control/_071_ ),
    .B1(\u_digital_pll/pll_control/_070_ ));
 sg13g2_and2_1 \u_digital_pll/pll_control/_184_  (.A(net64),
    .B(\u_digital_pll/pll_control/_069_ ),
    .X(\u_digital_pll/pll_control/_072_ ));
 sg13g2_xnor2_1 \u_digital_pll/pll_control/_185_  (.Y(\u_digital_pll/pll_control/_073_ ),
    .A(\u_digital_pll/pll_control/count0_0_ ),
    .B(\u_digital_pll/pll_control/count1_0_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_186_  (.A(net60),
    .B(\u_digital_pll/pll_control/_073_ ),
    .Y(\u_digital_pll/pll_control/_074_ ));
 sg13g2_xnor2_1 \u_digital_pll/pll_control/_187_  (.Y(\u_digital_pll/pll_control/_075_ ),
    .A(\u_digital_pll/pll_control/_061_ ),
    .B(\u_digital_pll/pll_control/_062_ ));
 sg13g2_xnor2_1 \u_digital_pll/pll_control/_188_  (.Y(\u_digital_pll/pll_control/_076_ ),
    .A(net61),
    .B(\u_digital_pll/pll_control/_075_ ));
 sg13g2_a21o_1 \u_digital_pll/pll_control/_189_  (.A2(\u_digital_pll/pll_control/_073_ ),
    .A1(net60),
    .B1(\u_digital_pll/pll_control/_076_ ),
    .X(\u_digital_pll/pll_control/_077_ ));
 sg13g2_nor3_1 \u_digital_pll/pll_control/_190_  (.A(\u_digital_pll/pll_control/_072_ ),
    .B(\u_digital_pll/pll_control/_074_ ),
    .C(\u_digital_pll/pll_control/_077_ ),
    .Y(\u_digital_pll/pll_control/_078_ ));
 sg13g2_xnor2_1 \u_digital_pll/pll_control/_191_  (.Y(\u_digital_pll/pll_control/_079_ ),
    .A(\u_digital_pll/pll_control/_064_ ),
    .B(\u_digital_pll/pll_control/_065_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_192_  (.Y(\u_digital_pll/pll_control/_080_ ),
    .A(net63),
    .B(\u_digital_pll/pll_control/_079_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_193_  (.A(net63),
    .B(\u_digital_pll/pll_control/_079_ ),
    .Y(\u_digital_pll/pll_control/_081_ ));
 sg13g2_xnor2_1 \u_digital_pll/pll_control/_194_  (.Y(\u_digital_pll/pll_control/_082_ ),
    .A(\u_digital_pll/pll_control/_059_ ),
    .B(\u_digital_pll/pll_control/_063_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_195_  (.A(net62),
    .B(\u_digital_pll/pll_control/_082_ ),
    .Y(\u_digital_pll/pll_control/_083_ ));
 sg13g2_xnor2_1 \u_digital_pll/pll_control/_196_  (.Y(\u_digital_pll/pll_control/_084_ ),
    .A(net62),
    .B(\u_digital_pll/pll_control/_082_ ));
 sg13g2_a21oi_1 \u_digital_pll/pll_control/_197_  (.A1(net63),
    .A2(\u_digital_pll/pll_control/_079_ ),
    .Y(\u_digital_pll/pll_control/_085_ ),
    .B1(\u_digital_pll/pll_control/_084_ ));
 sg13g2_nor2b_1 \u_digital_pll/pll_control/_198_  (.A(\u_digital_pll/pll_control/_081_ ),
    .B_N(\u_digital_pll/pll_control/_085_ ),
    .Y(\u_digital_pll/pll_control/_086_ ));
 sg13g2_nand3_1 \u_digital_pll/pll_control/_199_  (.B(\u_digital_pll/pll_control/_078_ ),
    .C(\u_digital_pll/pll_control/_086_ ),
    .A(\u_digital_pll/pll_control/_071_ ),
    .Y(\u_digital_pll/pll_control/_087_ ));
 sg13g2_xor2_1 \u_digital_pll/pll_control/_200_  (.B(\u_digital_pll/pll_control/osc_sync ),
    .A(\u_digital_pll/pll_control/osc_sync_d ),
    .X(\u_digital_pll/pll_control/_088_ ));
 sg13g2_xnor2_1 \u_digital_pll/pll_control/_201_  (.Y(\u_digital_pll/pll_control/_089_ ),
    .A(\u_digital_pll/pll_control/osc_sync_d ),
    .B(\u_digital_pll/pll_control/osc_sync ));
 sg13g2_and2_1 \u_digital_pll/pll_control/_202_  (.A(\u_digital_pll/pll_control/prep_0_ ),
    .B(\u_digital_pll/pll_control/_088_ ),
    .X(\u_digital_pll/pll_control/_090_ ));
 sg13g2_nand4_1 \u_digital_pll/pll_control/_203_  (.B(\u_digital_pll/pll_control/prep_2_ ),
    .C(\u_digital_pll/pll_control/_003_ ),
    .A(\u_digital_pll/pll_control/prep_1_ ),
    .Y(\u_digital_pll/pll_control/_091_ ),
    .D(\u_digital_pll/pll_control/_090_ ));
 sg13g2_nand2b_1 \u_digital_pll/pll_control/_204_  (.Y(\u_digital_pll/pll_control/_092_ ),
    .B(\u_digital_pll/pll_control/_087_ ),
    .A_N(\u_digital_pll/pll_control/_091_ ));
 sg13g2_o21ai_1 \u_digital_pll/pll_control/_205_  (.B1(\u_digital_pll/pll_control/_077_ ),
    .Y(\u_digital_pll/pll_control/_093_ ),
    .A1(net61),
    .A2(\u_digital_pll/pll_control/_075_ ));
 sg13g2_a221oi_1 \u_digital_pll/pll_control/_206_  (.B2(\u_digital_pll/pll_control/_093_ ),
    .C1(\u_digital_pll/pll_control/_081_ ),
    .B1(\u_digital_pll/pll_control/_085_ ),
    .A1(\u_digital_pll/pll_control/_080_ ),
    .Y(\u_digital_pll/pll_control/_094_ ),
    .A2(\u_digital_pll/pll_control/_083_ ));
 sg13g2_o21ai_1 \u_digital_pll/pll_control/_207_  (.B1(\u_digital_pll/pll_control/_071_ ),
    .Y(\u_digital_pll/pll_control/_095_ ),
    .A1(\u_digital_pll/pll_control/_072_ ),
    .A2(\u_digital_pll/pll_control/_094_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_208_  (.Y(\u_digital_pll/pll_control/_096_ ),
    .A(\u_digital_pll/pll_control/_087_ ),
    .B(\u_digital_pll/pll_control/_095_ ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_209_  (.Y(\u_digital_pll/pll_control/_000_ ),
    .A(\u_digital_pll/pll_control/_096_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_210_  (.Y(\u_digital_pll/pll_control/_097_ ),
    .A(\u_digital_pll/pll_control/_053_ ),
    .B(\u_digital_pll/pll_control/_000_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_211_  (.Y(\u_digital_pll/pll_control/_098_ ),
    .A(\u_digital_pll/pll_control/net108 ),
    .B(\u_digital_pll/pll_control/_096_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_212_  (.A(\u_digital_pll/pll_control/net108 ),
    .B(\u_digital_pll/pll_control/_096_ ),
    .Y(\u_digital_pll/pll_control/_099_ ));
 sg13g2_xor2_1 \u_digital_pll/pll_control/_213_  (.B(\u_digital_pll/pll_control/_096_ ),
    .A(\u_digital_pll/pll_control/net108 ),
    .X(\u_digital_pll/pll_control/_100_ ));
 sg13g2_a21oi_1 \u_digital_pll/pll_control/_214_  (.A1(\u_digital_pll/pll_control/_087_ ),
    .A2(\u_digital_pll/pll_control/_095_ ),
    .Y(\u_digital_pll/pll_control/_101_ ),
    .B1(\u_digital_pll/pll_control/_054_ ));
 sg13g2_nand3_1 \u_digital_pll/pll_control/_215_  (.B(\u_digital_pll/pll_control/_087_ ),
    .C(\u_digital_pll/pll_control/_095_ ),
    .A(\u_digital_pll/pll_control/_054_ ),
    .Y(\u_digital_pll/pll_control/_102_ ));
 sg13g2_nor2b_1 \u_digital_pll/pll_control/_216_  (.A(\u_digital_pll/pll_control/_101_ ),
    .B_N(\u_digital_pll/pll_control/_102_ ),
    .Y(\u_digital_pll/pll_control/_103_ ));
 sg13g2_a21oi_1 \u_digital_pll/pll_control/_217_  (.A1(\u_digital_pll/pll_control/tval_0_ ),
    .A2(\u_digital_pll/pll_control/_102_ ),
    .Y(\u_digital_pll/pll_control/_104_ ),
    .B1(\u_digital_pll/pll_control/_101_ ));
 sg13g2_o21ai_1 \u_digital_pll/pll_control/_218_  (.B1(\u_digital_pll/pll_control/_098_ ),
    .Y(\u_digital_pll/pll_control/_105_ ),
    .A1(\u_digital_pll/pll_control/_099_ ),
    .A2(\u_digital_pll/pll_control/_104_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_219_  (.A(\u_digital_pll/pll_control/_053_ ),
    .B(\u_digital_pll/pll_control/_000_ ),
    .Y(\u_digital_pll/pll_control/_106_ ));
 sg13g2_a21oi_1 \u_digital_pll/pll_control/_220_  (.A1(\u_digital_pll/pll_control/_097_ ),
    .A2(\u_digital_pll/pll_control/_105_ ),
    .Y(\u_digital_pll/pll_control/_107_ ),
    .B1(\u_digital_pll/pll_control/_106_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_221_  (.A(\u_digital_pll/pll_control/tval_5_ ),
    .B(\u_digital_pll/pll_control/tval_4_ ),
    .Y(\u_digital_pll/pll_control/_108_ ));
 sg13g2_nand3_1 \u_digital_pll/pll_control/_222_  (.B(\u_digital_pll/pll_control/_107_ ),
    .C(\u_digital_pll/pll_control/_108_ ),
    .A(\u_digital_pll/pll_control/_096_ ),
    .Y(\u_digital_pll/pll_control/_109_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_223_  (.Y(\u_digital_pll/pll_control/_110_ ),
    .A(\u_digital_pll/pll_control/tval_5_ ),
    .B(\u_digital_pll/pll_control/tval_4_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_224_  (.A(\u_digital_pll/pll_control/_096_ ),
    .B(\u_digital_pll/pll_control/_110_ ),
    .Y(\u_digital_pll/pll_control/_111_ ));
 sg13g2_nand3_1 \u_digital_pll/pll_control/_225_  (.B(\u_digital_pll/pll_control/_105_ ),
    .C(\u_digital_pll/pll_control/_111_ ),
    .A(\u_digital_pll/pll_control/_097_ ),
    .Y(\u_digital_pll/pll_control/_112_ ));
 sg13g2_a21oi_1 \u_digital_pll/pll_control/_226_  (.A1(\u_digital_pll/pll_control/_109_ ),
    .A2(\u_digital_pll/pll_control/_112_ ),
    .Y(\u_digital_pll/pll_control/_113_ ),
    .B1(\u_digital_pll/pll_control/net89 ));
 sg13g2_xor2_1 \u_digital_pll/pll_control/_227_  (.B(\u_digital_pll/pll_control/_113_ ),
    .A(\u_digital_pll/pll_control/net105 ),
    .X(\u_digital_pll/pll_control/_051_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_228_  (.A(\u_digital_pll/pll_control/_000_ ),
    .B(\u_digital_pll/pll_control/_107_ ),
    .Y(\u_digital_pll/pll_control/_114_ ));
 sg13g2_mux2_1 \u_digital_pll/pll_control/_229_  (.A0(\u_digital_pll/pll_control/_000_ ),
    .A1(\u_digital_pll/pll_control/_107_ ),
    .S(\u_digital_pll/pll_control/tval_4_ ),
    .X(\u_digital_pll/pll_control/_115_ ));
 sg13g2_nor3_1 \u_digital_pll/pll_control/_230_  (.A(\u_digital_pll/pll_control/net89 ),
    .B(\u_digital_pll/pll_control/_114_ ),
    .C(\u_digital_pll/pll_control/_115_ ),
    .Y(\u_digital_pll/pll_control/_116_ ));
 sg13g2_xor2_1 \u_digital_pll/pll_control/_231_  (.B(\u_digital_pll/pll_control/_116_ ),
    .A(\u_digital_pll/pll_control/tval_5_ ),
    .X(\u_digital_pll/pll_control/_050_ ));
 sg13g2_a21oi_1 \u_digital_pll/pll_control/_232_  (.A1(\u_digital_pll/pll_control/tval_3_ ),
    .A2(\u_digital_pll/pll_control/_105_ ),
    .Y(\u_digital_pll/pll_control/_117_ ),
    .B1(\u_digital_pll/pll_control/_096_ ));
 sg13g2_nor3_1 \u_digital_pll/pll_control/_233_  (.A(\u_digital_pll/pll_control/net89 ),
    .B(\u_digital_pll/pll_control/_114_ ),
    .C(\u_digital_pll/pll_control/_117_ ),
    .Y(\u_digital_pll/pll_control/_118_ ));
 sg13g2_xnor2_1 \u_digital_pll/pll_control/_234_  (.Y(\u_digital_pll/pll_control/_049_ ),
    .A(\u_digital_pll/pll_control/_052_ ),
    .B(\u_digital_pll/pll_control/_118_ ));
 sg13g2_xnor2_1 \u_digital_pll/pll_control/_235_  (.Y(\u_digital_pll/pll_control/_119_ ),
    .A(\u_digital_pll/pll_control/tval_3_ ),
    .B(\u_digital_pll/pll_control/_096_ ));
 sg13g2_xnor2_1 \u_digital_pll/pll_control/_236_  (.Y(\u_digital_pll/pll_control/_120_ ),
    .A(\u_digital_pll/pll_control/_105_ ),
    .B(\u_digital_pll/pll_control/_119_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_237_  (.A(\u_digital_pll/pll_control/net89 ),
    .B(\u_digital_pll/pll_control/_120_ ),
    .Y(\u_digital_pll/pll_control/_121_ ));
 sg13g2_a21oi_1 \u_digital_pll/pll_control/_238_  (.A1(\u_digital_pll/pll_control/_053_ ),
    .A2(\u_digital_pll/pll_control/net89 ),
    .Y(\u_digital_pll/pll_control/_048_ ),
    .B1(\u_digital_pll/pll_control/_121_ ));
 sg13g2_xnor2_1 \u_digital_pll/pll_control/_239_  (.Y(\u_digital_pll/pll_control/_122_ ),
    .A(\u_digital_pll/pll_control/_100_ ),
    .B(\u_digital_pll/pll_control/_104_ ));
 sg13g2_mux2_1 \u_digital_pll/pll_control/_240_  (.A0(\u_digital_pll/pll_control/_122_ ),
    .A1(\u_digital_pll/pll_control/tval_2_ ),
    .S(\u_digital_pll/pll_control/net89 ),
    .X(\u_digital_pll/pll_control/_047_ ));
 sg13g2_xnor2_1 \u_digital_pll/pll_control/_241_  (.Y(\u_digital_pll/pll_control/_123_ ),
    .A(\u_digital_pll/pll_control/tval_0_ ),
    .B(\u_digital_pll/pll_control/_103_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_242_  (.Y(\u_digital_pll/pll_control/_124_ ),
    .A(\u_digital_pll/pll_control/tval_1_ ),
    .B(\u_digital_pll/pll_control/net89 ));
 sg13g2_o21ai_1 \u_digital_pll/pll_control/_243_  (.B1(\u_digital_pll/pll_control/_124_ ),
    .Y(\u_digital_pll/pll_control/_046_ ),
    .A1(\u_digital_pll/pll_control/net89 ),
    .A2(\u_digital_pll/pll_control/_123_ ));
 sg13g2_xnor2_1 \u_digital_pll/pll_control/_244_  (.Y(\u_digital_pll/pll_control/_045_ ),
    .A(\u_digital_pll/pll_control/tval_0_ ),
    .B(\u_digital_pll/pll_control/_092_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_245_  (.Y(\u_digital_pll/pll_control/_125_ ),
    .A(\u_digital_pll/pll_control/count1_4_ ),
    .B(\u_digital_pll/pll_control/net99 ));
 sg13g2_o21ai_1 \u_digital_pll/pll_control/_246_  (.B1(\u_digital_pll/pll_control/_125_ ),
    .Y(\u_digital_pll/pll_control/_044_ ),
    .A1(\u_digital_pll/pll_control/_055_ ),
    .A2(\u_digital_pll/pll_control/net99 ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_247_  (.Y(\u_digital_pll/pll_control/_126_ ),
    .A(\u_digital_pll/pll_control/count1_3_ ),
    .B(\u_digital_pll/pll_control/net99 ));
 sg13g2_o21ai_1 \u_digital_pll/pll_control/_248_  (.B1(\u_digital_pll/pll_control/_126_ ),
    .Y(\u_digital_pll/pll_control/_043_ ),
    .A1(\u_digital_pll/pll_control/_056_ ),
    .A2(\u_digital_pll/pll_control/net99 ));
 sg13g2_mux2_1 \u_digital_pll/pll_control/_249_  (.A0(\u_digital_pll/pll_control/count0_2_ ),
    .A1(\u_digital_pll/pll_control/count1_2_ ),
    .S(\u_digital_pll/pll_control/net99 ),
    .X(\u_digital_pll/pll_control/_042_ ));
 sg13g2_mux2_1 \u_digital_pll/pll_control/_250_  (.A0(\u_digital_pll/pll_control/count0_1_ ),
    .A1(\u_digital_pll/pll_control/count1_1_ ),
    .S(\u_digital_pll/pll_control/net100 ),
    .X(\u_digital_pll/pll_control/_041_ ));
 sg13g2_mux2_1 \u_digital_pll/pll_control/_251_  (.A0(\u_digital_pll/pll_control/count0_0_ ),
    .A1(\u_digital_pll/pll_control/count1_0_ ),
    .S(\u_digital_pll/pll_control/net100 ),
    .X(\u_digital_pll/pll_control/_040_ ));
 sg13g2_nand3_1 \u_digital_pll/pll_control/_252_  (.B(\u_digital_pll/pll_control/count0_1_ ),
    .C(\u_digital_pll/pll_control/count0_0_ ),
    .A(\u_digital_pll/pll_control/count0_2_ ),
    .Y(\u_digital_pll/pll_control/_127_ ));
 sg13g2_or2_1 \u_digital_pll/pll_control/_253_  (.X(\u_digital_pll/pll_control/_128_ ),
    .B(\u_digital_pll/pll_control/_127_ ),
    .A(\u_digital_pll/pll_control/_056_ ));
 sg13g2_a21oi_1 \u_digital_pll/pll_control/_254_  (.A1(\u_digital_pll/pll_control/_055_ ),
    .A2(\u_digital_pll/pll_control/_128_ ),
    .Y(\u_digital_pll/pll_control/_039_ ),
    .B1(\u_digital_pll/pll_control/_088_ ));
 sg13g2_o21ai_1 \u_digital_pll/pll_control/_255_  (.B1(\u_digital_pll/pll_control/net99 ),
    .Y(\u_digital_pll/pll_control/_129_ ),
    .A1(\u_digital_pll/pll_control/count0_4_ ),
    .A2(\u_digital_pll/pll_control/_128_ ));
 sg13g2_a21oi_1 \u_digital_pll/pll_control/_256_  (.A1(\u_digital_pll/pll_control/_056_ ),
    .A2(\u_digital_pll/pll_control/_127_ ),
    .Y(\u_digital_pll/pll_control/_038_ ),
    .B1(\u_digital_pll/pll_control/_129_ ));
 sg13g2_or3_1 \u_digital_pll/pll_control/_257_  (.A(\u_digital_pll/pll_control/_055_ ),
    .B(\u_digital_pll/pll_control/_088_ ),
    .C(\u_digital_pll/pll_control/_128_ ),
    .X(\u_digital_pll/pll_control/_130_ ));
 sg13g2_a21oi_1 \u_digital_pll/pll_control/_258_  (.A1(\u_digital_pll/pll_control/count0_1_ ),
    .A2(\u_digital_pll/pll_control/count0_0_ ),
    .Y(\u_digital_pll/pll_control/_131_ ),
    .B1(\u_digital_pll/pll_control/count0_2_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_259_  (.Y(\u_digital_pll/pll_control/_132_ ),
    .A(\u_digital_pll/pll_control/net100 ),
    .B(\u_digital_pll/pll_control/_127_ ));
 sg13g2_o21ai_1 \u_digital_pll/pll_control/_260_  (.B1(\u_digital_pll/pll_control/_130_ ),
    .Y(\u_digital_pll/pll_control/_037_ ),
    .A1(\u_digital_pll/pll_control/_131_ ),
    .A2(\u_digital_pll/pll_control/_132_ ));
 sg13g2_xnor2_1 \u_digital_pll/pll_control/_261_  (.Y(\u_digital_pll/pll_control/_133_ ),
    .A(\u_digital_pll/pll_control/count0_1_ ),
    .B(\u_digital_pll/pll_control/count0_0_ ));
 sg13g2_o21ai_1 \u_digital_pll/pll_control/_262_  (.B1(\u_digital_pll/pll_control/_130_ ),
    .Y(\u_digital_pll/pll_control/_036_ ),
    .A1(\u_digital_pll/pll_control/_088_ ),
    .A2(\u_digital_pll/pll_control/_133_ ));
 sg13g2_nand3_1 \u_digital_pll/pll_control/_263_  (.B(\u_digital_pll/pll_control/net100 ),
    .C(\u_digital_pll/pll_control/_130_ ),
    .A(\u_digital_pll/pll_control/count0_0_ ),
    .Y(\u_digital_pll/pll_control/_035_ ));
 sg13g2_mux2_1 \u_digital_pll/pll_control/_264_  (.A0(\u_digital_pll/pll_control/prep_1_ ),
    .A1(\u_digital_pll/pll_control/prep_2_ ),
    .S(\u_digital_pll/pll_control/net99 ),
    .X(\u_digital_pll/pll_control/_034_ ));
 sg13g2_a21o_1 \u_digital_pll/pll_control/_265_  (.A2(\u_digital_pll/pll_control/net99 ),
    .A1(\u_digital_pll/pll_control/prep_1_ ),
    .B1(\u_digital_pll/pll_control/_090_ ),
    .X(\u_digital_pll/pll_control/_033_ ));
 sg13g2_mux2_1 \u_digital_pll/pll_control/_266_  (.A0(\u_digital_pll/pll_control/prep_0_ ),
    .A1(net148),
    .S(\u_digital_pll/pll_control/_088_ ),
    .X(\u_digital_pll/pll_control/_032_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_267_  (.Y(\u_digital_pll/pll_control/_134_ ),
    .A(\u_digital_pll/pll_control/net107 ),
    .B(\u_digital_pll/pll_control/net108 ));
 sg13g2_or2_1 \u_digital_pll/pll_control/_268_  (.X(\u_digital_pll/pll_control/_005_ ),
    .B(\u_digital_pll/pll_control/_134_ ),
    .A(\u_digital_pll/pll_control/_110_ ));
 sg13g2_nand3_1 \u_digital_pll/pll_control/_269_  (.B(\u_digital_pll/pll_control/tval_1_ ),
    .C(\u_digital_pll/pll_control/tval_0_ ),
    .A(\u_digital_pll/pll_control/net105 ),
    .Y(\u_digital_pll/pll_control/_135_ ));
 sg13g2_or2_1 \u_digital_pll/pll_control/_270_  (.X(\u_digital_pll/pll_control/_001_ ),
    .B(\u_digital_pll/pll_control/_135_ ),
    .A(\u_digital_pll/pll_control/_005_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_271_  (.A(\u_digital_pll/pll_control/net107 ),
    .B(\u_digital_pll/pll_control/net108 ),
    .Y(\u_digital_pll/pll_control/_136_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_272_  (.Y(\u_digital_pll/pll_control/_004_ ),
    .A(\u_digital_pll/pll_control/_108_ ),
    .B(\u_digital_pll/pll_control/_136_ ));
 sg13g2_nor3_1 \u_digital_pll/pll_control/_273_  (.A(\u_digital_pll/pll_control/net104 ),
    .B(\u_digital_pll/pll_control/tval_5_ ),
    .C(\u_digital_pll/pll_control/tval_4_ ),
    .Y(\u_digital_pll/pll_control/_137_ ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_274_  (.Y(\u_digital_pll/otrim_3_ ),
    .A(\u_digital_pll/pll_control/_137_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_275_  (.Y(\u_digital_pll/otrim_0_ ),
    .A(\u_digital_pll/pll_control/_136_ ),
    .B(\u_digital_pll/pll_control/_137_ ));
 sg13g2_nand4_1 \u_digital_pll/pll_control/_276_  (.B(\u_digital_pll/pll_control/_007_ ),
    .C(\u_digital_pll/pll_control/_136_ ),
    .A(\u_digital_pll/pll_control/_054_ ),
    .Y(\u_digital_pll/pll_control/_002_ ),
    .D(\u_digital_pll/pll_control/_137_ ));
 sg13g2_nand2b_1 \u_digital_pll/pll_control/_277_  (.Y(\u_digital_pll/pll_control/_138_ ),
    .B(\u_digital_pll/pll_control/tval_4_ ),
    .A_N(\u_digital_pll/pll_control/tval_5_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_278_  (.A(\u_digital_pll/pll_control/net104 ),
    .B(\u_digital_pll/pll_control/_138_ ),
    .Y(\u_digital_pll/pll_control/_139_ ));
 sg13g2_or2_1 \u_digital_pll/pll_control/_279_  (.X(\u_digital_pll/pll_control/_140_ ),
    .B(\u_digital_pll/pll_control/_138_ ),
    .A(\u_digital_pll/pll_control/net104 ));
 sg13g2_nand2b_1 \u_digital_pll/pll_control/_280_  (.Y(\u_digital_pll/pll_control/_141_ ),
    .B(\u_digital_pll/pll_control/_139_ ),
    .A_N(\u_digital_pll/pll_control/_134_ ));
 sg13g2_nor3_1 \u_digital_pll/pll_control/_281_  (.A(\u_digital_pll/pll_control/net107 ),
    .B(\u_digital_pll/pll_control/net108 ),
    .C(\u_digital_pll/pll_control/_138_ ),
    .Y(\u_digital_pll/pll_control/_142_ ));
 sg13g2_a21oi_1 \u_digital_pll/pll_control/_282_  (.A1(\u_digital_pll/pll_control/_136_ ),
    .A2(\u_digital_pll/pll_control/_139_ ),
    .Y(\u_digital_pll/otrim_8_ ),
    .B1(\u_digital_pll/pll_control/_137_ ));
 sg13g2_a21oi_1 \u_digital_pll/pll_control/_283_  (.A1(\u_digital_pll/pll_control/_053_ ),
    .A2(\u_digital_pll/pll_control/_139_ ),
    .Y(\u_digital_pll/otrim_12_ ),
    .B1(\u_digital_pll/pll_control/_137_ ));
 sg13g2_nand2b_1 \u_digital_pll/pll_control/_284_  (.Y(\u_digital_pll/pll_control/_143_ ),
    .B(\u_digital_pll/pll_control/net107 ),
    .A_N(\u_digital_pll/pll_control/net108 ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_285_  (.A(\u_digital_pll/pll_control/_138_ ),
    .B(\u_digital_pll/pll_control/_143_ ),
    .Y(\u_digital_pll/pll_control/_144_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_286_  (.A(\u_digital_pll/pll_control/_140_ ),
    .B(\u_digital_pll/pll_control/_143_ ),
    .Y(\u_digital_pll/pll_control/_145_ ));
 sg13g2_nor2b_1 \u_digital_pll/pll_control/_287_  (.A(\u_digital_pll/pll_control/_145_ ),
    .B_N(\u_digital_pll/otrim_12_ ),
    .Y(\u_digital_pll/otrim_5_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_288_  (.Y(\u_digital_pll/pll_control/_146_ ),
    .A(\u_digital_pll/otrim_3_ ),
    .B(\u_digital_pll/pll_control/_140_ ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_289_  (.Y(\u_digital_pll/otrim_2_ ),
    .A(\u_digital_pll/pll_control/_146_ ));
 sg13g2_nor2b_1 \u_digital_pll/pll_control/_290_  (.A(\u_digital_pll/pll_control/net104 ),
    .B_N(\u_digital_pll/pll_control/tval_5_ ),
    .Y(\u_digital_pll/pll_control/_147_ ));
 sg13g2_a21o_1 \u_digital_pll/pll_control/_291_  (.A2(\u_digital_pll/pll_control/_147_ ),
    .A1(\u_digital_pll/pll_control/_052_ ),
    .B1(\u_digital_pll/pll_control/_146_ ),
    .X(\u_digital_pll/pll_control/_148_ ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_292_  (.Y(\u_digital_pll/otrim_1_ ),
    .A(\u_digital_pll/pll_control/_148_ ));
 sg13g2_o21ai_1 \u_digital_pll/pll_control/_293_  (.B1(\u_digital_pll/pll_control/_148_ ),
    .Y(\u_digital_pll/otrim_4_ ),
    .A1(\u_digital_pll/pll_control/_053_ ),
    .A2(\u_digital_pll/pll_control/_146_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_294_  (.Y(\u_digital_pll/otrim_6_ ),
    .A(\u_digital_pll/pll_control/_053_ ),
    .B(\u_digital_pll/pll_control/_137_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_295_  (.A(\u_digital_pll/pll_control/net106 ),
    .B(\u_digital_pll/pll_control/_110_ ),
    .Y(\u_digital_pll/pll_control/_149_ ));
 sg13g2_nor4_1 \u_digital_pll/pll_control/_296_  (.A(\u_digital_pll/pll_control/net104 ),
    .B(\u_digital_pll/pll_control/tval_3_ ),
    .C(\u_digital_pll/pll_control/tval_2_ ),
    .D(\u_digital_pll/pll_control/_110_ ),
    .Y(\u_digital_pll/pll_control/_150_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_297_  (.A(\u_digital_pll/pll_control/_148_ ),
    .B(\u_digital_pll/pll_control/_150_ ),
    .Y(\u_digital_pll/otrim_7_ ));
 sg13g2_o21ai_1 \u_digital_pll/pll_control/_298_  (.B1(\u_digital_pll/pll_control/_148_ ),
    .Y(\u_digital_pll/otrim_9_ ),
    .A1(\u_digital_pll/pll_control/_136_ ),
    .A2(\u_digital_pll/pll_control/_146_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_299_  (.Y(\u_digital_pll/otrim_10_ ),
    .A(\u_digital_pll/pll_control/_134_ ),
    .B(\u_digital_pll/pll_control/_137_ ));
 sg13g2_o21ai_1 \u_digital_pll/pll_control/_300_  (.B1(\u_digital_pll/pll_control/_148_ ),
    .Y(\u_digital_pll/otrim_11_ ),
    .A1(\u_digital_pll/pll_control/_134_ ),
    .A2(\u_digital_pll/pll_control/_146_ ));
 sg13g2_a21oi_1 \u_digital_pll/pll_control/_301_  (.A1(\u_digital_pll/pll_control/_053_ ),
    .A2(\u_digital_pll/pll_control/_149_ ),
    .Y(\u_digital_pll/otrim_13_ ),
    .B1(\u_digital_pll/pll_control/_148_ ));
 sg13g2_nor2b_1 \u_digital_pll/pll_control/_302_  (.A(\u_digital_pll/pll_control/tval_5_ ),
    .B_N(\u_digital_pll/pll_control/net104 ),
    .Y(\u_digital_pll/pll_control/_151_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_303_  (.Y(\u_digital_pll/pll_control/_152_ ),
    .A(\u_digital_pll/pll_control/net104 ),
    .B(\u_digital_pll/pll_control/_108_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_304_  (.Y(\u_digital_pll/pll_control/_153_ ),
    .A(\u_digital_pll/pll_control/net104 ),
    .B(\u_digital_pll/pll_control/tval_5_ ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_305_  (.Y(\u_digital_pll/otrim_24_ ),
    .A(\u_digital_pll/pll_control/_153_ ));
 sg13g2_nor4_1 \u_digital_pll/pll_control/_306_  (.A(\u_digital_pll/pll_control/tval_4_ ),
    .B(\u_digital_pll/pll_control/net107 ),
    .C(\u_digital_pll/pll_control/net108 ),
    .D(\u_digital_pll/pll_control/_153_ ),
    .Y(\u_digital_pll/pll_control/_154_ ));
 sg13g2_a21oi_1 \u_digital_pll/pll_control/_307_  (.A1(\u_digital_pll/pll_control/_134_ ),
    .A2(\u_digital_pll/pll_control/_149_ ),
    .Y(\u_digital_pll/otrim_19_ ),
    .B1(\u_digital_pll/pll_control/_148_ ));
 sg13g2_nor4_1 \u_digital_pll/pll_control/_308_  (.A(\u_digital_pll/pll_control/_146_ ),
    .B(\u_digital_pll/pll_control/_147_ ),
    .C(\u_digital_pll/pll_control/_151_ ),
    .D(\u_digital_pll/pll_control/_154_ ),
    .Y(\u_digital_pll/otrim_14_ ));
 sg13g2_nor2b_1 \u_digital_pll/pll_control/_309_  (.A(\u_digital_pll/pll_control/_108_ ),
    .B_N(\u_digital_pll/pll_control/net105 ),
    .Y(\u_digital_pll/otrim_18_ ));
 sg13g2_nor2b_1 \u_digital_pll/pll_control/_310_  (.A(\u_digital_pll/pll_control/_142_ ),
    .B_N(\u_digital_pll/otrim_18_ ),
    .Y(\u_digital_pll/otrim_15_ ));
 sg13g2_and2_1 \u_digital_pll/pll_control/_311_  (.A(\u_digital_pll/pll_control/_006_ ),
    .B(\u_digital_pll/otrim_19_ ),
    .X(\u_digital_pll/otrim_16_ ));
 sg13g2_nand2_1 \u_digital_pll/pll_control/_312_  (.Y(\u_digital_pll/pll_control/_155_ ),
    .A(\u_digital_pll/pll_control/tval_4_ ),
    .B(\u_digital_pll/pll_control/net107 ));
 sg13g2_a21oi_1 \u_digital_pll/pll_control/_313_  (.A1(\u_digital_pll/pll_control/_151_ ),
    .A2(\u_digital_pll/pll_control/_155_ ),
    .Y(\u_digital_pll/pll_control/_156_ ),
    .B1(\u_digital_pll/pll_control/_147_ ));
 sg13g2_nand3_1 \u_digital_pll/pll_control/_314_  (.B(\u_digital_pll/otrim_12_ ),
    .C(\u_digital_pll/pll_control/_156_ ),
    .A(\u_digital_pll/pll_control/_141_ ),
    .Y(\u_digital_pll/pll_control/_157_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_315_  (.A(\u_digital_pll/pll_control/_144_ ),
    .B(\u_digital_pll/pll_control/_157_ ),
    .Y(\u_digital_pll/otrim_17_ ));
 sg13g2_a21oi_1 \u_digital_pll/pll_control/_316_  (.A1(\u_digital_pll/pll_control/_052_ ),
    .A2(\u_digital_pll/pll_control/_053_ ),
    .Y(\u_digital_pll/otrim_20_ ),
    .B1(\u_digital_pll/pll_control/_153_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_317_  (.A(\u_digital_pll/pll_control/net107 ),
    .B(\u_digital_pll/pll_control/_152_ ),
    .Y(\u_digital_pll/pll_control/_158_ ));
 sg13g2_nor3_1 \u_digital_pll/pll_control/_318_  (.A(\u_digital_pll/pll_control/_146_ ),
    .B(\u_digital_pll/pll_control/_147_ ),
    .C(\u_digital_pll/pll_control/_158_ ),
    .Y(\u_digital_pll/otrim_21_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_319_  (.A(\u_digital_pll/pll_control/_145_ ),
    .B(\u_digital_pll/pll_control/_157_ ),
    .Y(\u_digital_pll/otrim_22_ ));
 sg13g2_nor2_1 \u_digital_pll/pll_control/_320_  (.A(\u_digital_pll/pll_control/_143_ ),
    .B(\u_digital_pll/pll_control/_152_ ),
    .Y(\u_digital_pll/pll_control/_159_ ));
 sg13g2_nor2b_1 \u_digital_pll/pll_control/_321_  (.A(\u_digital_pll/pll_control/_159_ ),
    .B_N(\u_digital_pll/otrim_21_ ),
    .Y(\u_digital_pll/otrim_25_ ));
 sg13g2_buf_1 \u_digital_pll/pll_control/_322_  (.A(\u_digital_pll/pll_control/net106 ),
    .X(\u_digital_pll/otrim_23_ ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_323_  (.Y(\u_digital_pll/pll_control/_010_ ),
    .A(\u_digital_pll/pll_control/net101 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_324_  (.Y(\u_digital_pll/pll_control/_011_ ),
    .A(\u_digital_pll/pll_control/net101 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_325_  (.Y(\u_digital_pll/pll_control/_012_ ),
    .A(\u_digital_pll/pll_control/net102 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_326_  (.Y(\u_digital_pll/pll_control/_013_ ),
    .A(\u_digital_pll/pll_control/net102 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_327_  (.Y(\u_digital_pll/pll_control/_014_ ),
    .A(\u_digital_pll/pll_control/net102 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_328_  (.Y(\u_digital_pll/pll_control/_015_ ),
    .A(\u_digital_pll/pll_control/net101 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_329_  (.Y(\u_digital_pll/pll_control/_016_ ),
    .A(\u_digital_pll/pll_control/net101 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_330_  (.Y(\u_digital_pll/pll_control/_017_ ),
    .A(\u_digital_pll/pll_control/net102 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_331_  (.Y(\u_digital_pll/pll_control/_018_ ),
    .A(\u_digital_pll/pll_control/net102 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_332_  (.Y(\u_digital_pll/pll_control/_019_ ),
    .A(\u_digital_pll/pll_control/net102 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_333_  (.Y(\u_digital_pll/pll_control/_020_ ),
    .A(\u_digital_pll/pll_control/net101 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_334_  (.Y(\u_digital_pll/pll_control/_021_ ),
    .A(\u_digital_pll/pll_control/net101 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_335_  (.Y(\u_digital_pll/pll_control/_022_ ),
    .A(\u_digital_pll/pll_control/net103 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_336_  (.Y(\u_digital_pll/pll_control/_023_ ),
    .A(\u_digital_pll/pll_control/net102 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_337_  (.Y(\u_digital_pll/pll_control/_024_ ),
    .A(\u_digital_pll/pll_control/net103 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_338_  (.Y(\u_digital_pll/pll_control/_025_ ),
    .A(\u_digital_pll/pll_control/net103 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_339_  (.Y(\u_digital_pll/pll_control/_026_ ),
    .A(\u_digital_pll/pll_control/net103 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_340_  (.Y(\u_digital_pll/pll_control/_027_ ),
    .A(\u_digital_pll/pll_control/net103 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_341_  (.Y(\u_digital_pll/pll_control/_028_ ),
    .A(\u_digital_pll/pll_control/net103 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_342_  (.Y(\u_digital_pll/pll_control/_029_ ),
    .A(\u_digital_pll/pll_control/net101 ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_343_  (.Y(\u_digital_pll/pll_control/_030_ ),
    .A(\u_digital_pll/creset ));
 sg13g2_inv_1 \u_digital_pll/pll_control/_344_  (.Y(\u_digital_pll/pll_control/_031_ ),
    .A(\u_digital_pll/pll_control/net103 ));
 sg13g2_inv_1 \u_clk_div1/odd_0/_161__150  (.Y(net149),
    .A(clknet_3_5__leaf_clk1_int_regs));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/count0_0___DFFE_PP0P_  (.RESET_B(\u_digital_pll/pll_control/_012_ ),
    .D(\u_digital_pll/pll_control/_035_ ),
    .Q(\u_digital_pll/pll_control/count0_0_ ),
    .CLK(\clknet_2_3__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/count0_1___DFFE_PP0P_  (.RESET_B(\u_digital_pll/pll_control/_013_ ),
    .D(\u_digital_pll/pll_control/_036_ ),
    .Q(\u_digital_pll/pll_control/count0_1_ ),
    .CLK(\clknet_2_2__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/count0_2___DFFE_PP0P_  (.RESET_B(\u_digital_pll/pll_control/_014_ ),
    .D(\u_digital_pll/pll_control/_037_ ),
    .Q(\u_digital_pll/pll_control/count0_2_ ),
    .CLK(\clknet_2_3__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/count0_3___DFFE_PP0P_  (.RESET_B(\u_digital_pll/pll_control/_015_ ),
    .D(\u_digital_pll/pll_control/_038_ ),
    .Q(\u_digital_pll/pll_control/count0_3_ ),
    .CLK(\clknet_2_0__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/count0_4___DFFE_PP0P_  (.RESET_B(\u_digital_pll/pll_control/_016_ ),
    .D(\u_digital_pll/pll_control/_039_ ),
    .Q(\u_digital_pll/pll_control/count0_4_ ),
    .CLK(\clknet_2_2__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/count1_0___DFFE_PP0N_  (.RESET_B(\u_digital_pll/pll_control/_017_ ),
    .D(\u_digital_pll/pll_control/_040_ ),
    .Q(\u_digital_pll/pll_control/count1_0_ ),
    .CLK(\clknet_2_3__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/count1_1___DFFE_PP0N_  (.RESET_B(\u_digital_pll/pll_control/_018_ ),
    .D(\u_digital_pll/pll_control/_041_ ),
    .Q(\u_digital_pll/pll_control/count1_1_ ),
    .CLK(\clknet_2_3__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/count1_2___DFFE_PP0N_  (.RESET_B(\u_digital_pll/pll_control/_019_ ),
    .D(\u_digital_pll/pll_control/_042_ ),
    .Q(\u_digital_pll/pll_control/count1_2_ ),
    .CLK(\clknet_2_3__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/count1_3___DFFE_PP0N_  (.RESET_B(\u_digital_pll/pll_control/_020_ ),
    .D(\u_digital_pll/pll_control/_043_ ),
    .Q(\u_digital_pll/pll_control/count1_3_ ),
    .CLK(\clknet_2_0__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/count1_4___DFFE_PP0N_  (.RESET_B(\u_digital_pll/pll_control/_021_ ),
    .D(\u_digital_pll/pll_control/_044_ ),
    .Q(\u_digital_pll/pll_control/count1_4_ ),
    .CLK(\clknet_2_2__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/osc_meta__DFF_PP0_  (.RESET_B(\u_digital_pll/pll_control/_029_ ),
    .D(clknet_1_1__leaf_osc),
    .Q(\u_digital_pll/pll_control/osc_meta ),
    .CLK(\clknet_2_2__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/osc_sync__DFF_PP0_  (.RESET_B(\u_digital_pll/pll_control/_030_ ),
    .D(\u_digital_pll/pll_control/osc_meta ),
    .Q(\u_digital_pll/pll_control/osc_sync ),
    .CLK(\clknet_2_2__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/osc_sync_d__DFF_PP0_  (.RESET_B(\u_digital_pll/pll_control/_031_ ),
    .D(\u_digital_pll/pll_control/osc_sync ),
    .Q(\u_digital_pll/pll_control/osc_sync_d ),
    .CLK(\clknet_2_2__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/prep_0___DFFE_PP0N_  (.RESET_B(\u_digital_pll/pll_control/_009_ ),
    .D(\u_digital_pll/pll_control/_032_ ),
    .Q(\u_digital_pll/pll_control/prep_0_ ),
    .CLK(\clknet_2_0__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/prep_1___DFFE_PP0N_  (.RESET_B(\u_digital_pll/pll_control/_010_ ),
    .D(\u_digital_pll/pll_control/_033_ ),
    .Q(\u_digital_pll/pll_control/prep_1_ ),
    .CLK(\clknet_2_0__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/prep_2___DFFE_PP0N_  (.RESET_B(\u_digital_pll/pll_control/_011_ ),
    .D(\u_digital_pll/pll_control/_034_ ),
    .Q(\u_digital_pll/pll_control/prep_2_ ),
    .CLK(\clknet_2_0__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/tval_0___DFFE_PP0P_  (.RESET_B(\u_digital_pll/pll_control/_022_ ),
    .D(\u_digital_pll/pll_control/_045_ ),
    .Q(\u_digital_pll/pll_control/tval_0_ ),
    .CLK(\clknet_2_1__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/tval_1___DFFE_PP0P_  (.RESET_B(\u_digital_pll/pll_control/_023_ ),
    .D(\u_digital_pll/pll_control/_046_ ),
    .Q(\u_digital_pll/pll_control/tval_1_ ),
    .CLK(\clknet_2_0__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/tval_2___DFFE_PP0P_  (.RESET_B(\u_digital_pll/pll_control/_024_ ),
    .D(\u_digital_pll/pll_control/_047_ ),
    .Q(\u_digital_pll/pll_control/tval_2_ ),
    .CLK(\clknet_2_1__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/tval_3___DFFE_PP0P_  (.RESET_B(\u_digital_pll/pll_control/_025_ ),
    .D(\u_digital_pll/pll_control/_048_ ),
    .Q(\u_digital_pll/pll_control/tval_3_ ),
    .CLK(\clknet_2_1__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/tval_4___DFFE_PP0P_  (.RESET_B(\u_digital_pll/pll_control/_026_ ),
    .D(\u_digital_pll/pll_control/_049_ ),
    .Q(\u_digital_pll/pll_control/tval_4_ ),
    .CLK(\clknet_2_1__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/tval_5___DFFE_PP0P_  (.RESET_B(\u_digital_pll/pll_control/_027_ ),
    .D(\u_digital_pll/pll_control/_050_ ),
    .Q(\u_digital_pll/pll_control/tval_5_ ),
    .CLK(\clknet_2_1__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_dfrbpq_1 \u_digital_pll/pll_control/tval_6___DFFE_PP0P_  (.RESET_B(\u_digital_pll/pll_control/_028_ ),
    .D(\u_digital_pll/pll_control/_051_ ),
    .Q(\u_digital_pll/pll_control/tval_6_ ),
    .CLK(\clknet_2_1__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 ring_osc2x13 \u_digital_pll/ringosc  (.reset(\u_digital_pll/ireset ),
    .clockp({\u_digital_pll/clockp_buffer_in_12_ ,
    \u_digital_pll/clockp_buffer_in_11_ ,
    \u_digital_pll/clockp_buffer_in_10_ ,
    \u_digital_pll/clockp_buffer_in_9_ ,
    \u_digital_pll/clockp_buffer_in_8_ ,
    \u_digital_pll/clockp_buffer_in_7_ ,
    \u_digital_pll/clockp_buffer_in_6_ ,
    \u_digital_pll/clockp_buffer_in_5_ ,
    \u_digital_pll/clockp_buffer_in_4_ ,
    \u_digital_pll/clockp_buffer_in_3_ ,
    \u_digital_pll/clockp_buffer_in_2_ ,
    \u_digital_pll/clockp_buffer_in_1_ ,
    \u_digital_pll/clockp_buffer_in_0_ }),
    .trim({\u_digital_pll/itrim_25_ ,
    \u_digital_pll/itrim_24_ ,
    \u_digital_pll/itrim_23_ ,
    \u_digital_pll/itrim_22_ ,
    \u_digital_pll/itrim_21_ ,
    \u_digital_pll/itrim_20_ ,
    \u_digital_pll/itrim_19_ ,
    \u_digital_pll/itrim_18_ ,
    \u_digital_pll/itrim_17_ ,
    \u_digital_pll/itrim_16_ ,
    \u_digital_pll/itrim_15_ ,
    \u_digital_pll/itrim_14_ ,
    \u_digital_pll/itrim_13_ ,
    \u_digital_pll/itrim_12_ ,
    \u_digital_pll/itrim_11_ ,
    \u_digital_pll/itrim_10_ ,
    \u_digital_pll/itrim_9_ ,
    \u_digital_pll/itrim_8_ ,
    \u_digital_pll/itrim_7_ ,
    \u_digital_pll/itrim_6_ ,
    \u_digital_pll/itrim_5_ ,
    \u_digital_pll/itrim_4_ ,
    \u_digital_pll/itrim_3_ ,
    \u_digital_pll/itrim_2_ ,
    \u_digital_pll/itrim_1_ ,
    \u_digital_pll/itrim_0_ }));
 sg13g2_dfrbpq_1 \u_digital_pll/stable_cnt_0___DFFE_PN0N_  (.RESET_B(net114),
    .D(\u_digital_pll/_02_ ),
    .Q(\u_digital_pll/stable_cnt_0_ ),
    .CLK(clknet_1_1__leaf_osc_regs));
 sg13g2_dfrbpq_1 \u_digital_pll/stable_cnt_1___DFFE_PN0N_  (.RESET_B(net115),
    .D(\u_digital_pll/_03_ ),
    .Q(\u_digital_pll/stable_cnt_1_ ),
    .CLK(clknet_1_0__leaf_osc_regs));
 sg13g2_dfrbpq_1 \u_digital_pll/stable_cnt_2___DFFE_PN0N_  (.RESET_B(net115),
    .D(\u_digital_pll/_04_ ),
    .Q(\u_digital_pll/stable_cnt_2_ ),
    .CLK(clknet_1_0__leaf_osc_regs));
 sg13g2_dfrbpq_1 \u_digital_pll/stable_cnt_3___DFFE_PN0N_  (.RESET_B(net114),
    .D(\u_digital_pll/_05_ ),
    .Q(\u_digital_pll/stable_cnt_3_ ),
    .CLK(clknet_1_0__leaf_osc_regs));
 sg13g2_dfrbpq_1 \u_digital_pll/stable_cnt_4___DFFE_PN0N_  (.RESET_B(net114),
    .D(\u_digital_pll/_06_ ),
    .Q(\u_digital_pll/stable_cnt_4_ ),
    .CLK(clknet_1_1__leaf_osc_regs));
 sg13g2_dfrbpq_1 \u_digital_pll/stable_cnt_5___DFFE_PN0N_  (.RESET_B(net114),
    .D(\u_digital_pll/_07_ ),
    .Q(\u_digital_pll/stable_cnt_5_ ),
    .CLK(clknet_1_0__leaf_osc_regs));
 sg13g2_dfrbpq_1 \u_digital_pll/stable_cnt_6___DFFE_PN0N_  (.RESET_B(net114),
    .D(\u_digital_pll/_08_ ),
    .Q(\u_digital_pll/stable_cnt_6_ ),
    .CLK(clknet_1_0__leaf_osc_regs));
 sg13g2_dfrbpq_1 \u_digital_pll/stable_cnt_7___DFFE_PN0N_  (.RESET_B(net114),
    .D(\u_digital_pll/_09_ ),
    .Q(\u_digital_pll/stable_cnt_7_ ),
    .CLK(clknet_1_1__leaf_osc_regs));
 sg13g2_dfrbpq_1 \u_digital_pll/stable_reg__DFF_PN0_  (.RESET_B(net116),
    .D(\u_digital_pll/_00_ ),
    .Q(\u_digital_pll/stable_reg ),
    .CLK(clknet_1_1__leaf_osc_regs));
 sg13g2_buf_1 input1 (.A(bias),
    .X(net1));
 sg13g2_buf_1 input2 (.A(clk0_phase_sel[0]),
    .X(net2));
 sg13g2_buf_1 input3 (.A(clk0_phase_sel[1]),
    .X(net3));
 sg13g2_buf_1 input4 (.A(clk0_phase_sel[2]),
    .X(net4));
 sg13g2_buf_1 input5 (.A(clk0_phase_sel[3]),
    .X(net5));
 sg13g2_buf_1 input6 (.A(clk0_phase_sel[4]),
    .X(net6));
 sg13g2_buf_1 input7 (.A(clk1_phase_sel[0]),
    .X(net7));
 sg13g2_buf_1 input8 (.A(clk1_phase_sel[1]),
    .X(net8));
 sg13g2_buf_1 input9 (.A(clk1_phase_sel[2]),
    .X(net9));
 sg13g2_buf_1 input10 (.A(clk1_phase_sel[3]),
    .X(net10));
 sg13g2_buf_1 input11 (.A(clk1_phase_sel[4]),
    .X(net11));
 sg13g2_buf_1 input12 (.A(clk2_phase_sel[0]),
    .X(net12));
 sg13g2_buf_1 input13 (.A(clk2_phase_sel[1]),
    .X(net13));
 sg13g2_buf_1 input14 (.A(clk2_phase_sel[2]),
    .X(net14));
 sg13g2_buf_1 input15 (.A(clk2_phase_sel[3]),
    .X(net15));
 sg13g2_buf_1 input16 (.A(clk2_phase_sel[4]),
    .X(net16));
 sg13g2_buf_1 input17 (.A(dco),
    .X(net17));
 sg13g2_buf_1 input18 (.A(enable),
    .X(net18));
 sg13g2_buf_1 input19 (.A(ext_trim[0]),
    .X(net19));
 sg13g2_buf_1 input20 (.A(ext_trim[10]),
    .X(net20));
 sg13g2_buf_1 input21 (.A(ext_trim[11]),
    .X(net21));
 sg13g2_buf_1 input22 (.A(ext_trim[12]),
    .X(net22));
 sg13g2_buf_1 input23 (.A(ext_trim[13]),
    .X(net23));
 sg13g2_buf_1 input24 (.A(ext_trim[14]),
    .X(net24));
 sg13g2_buf_1 input25 (.A(ext_trim[15]),
    .X(net25));
 sg13g2_buf_1 input26 (.A(ext_trim[16]),
    .X(net26));
 sg13g2_buf_1 input27 (.A(ext_trim[17]),
    .X(net27));
 sg13g2_buf_1 input28 (.A(ext_trim[18]),
    .X(net28));
 sg13g2_buf_1 input29 (.A(ext_trim[19]),
    .X(net29));
 sg13g2_buf_1 input30 (.A(ext_trim[1]),
    .X(net30));
 sg13g2_buf_1 input31 (.A(ext_trim[20]),
    .X(net31));
 sg13g2_buf_1 input32 (.A(ext_trim[21]),
    .X(net32));
 sg13g2_buf_1 input33 (.A(ext_trim[22]),
    .X(net33));
 sg13g2_buf_1 input34 (.A(ext_trim[23]),
    .X(net34));
 sg13g2_buf_1 input35 (.A(ext_trim[24]),
    .X(net35));
 sg13g2_buf_1 input36 (.A(ext_trim[25]),
    .X(net36));
 sg13g2_buf_1 input37 (.A(ext_trim[2]),
    .X(net37));
 sg13g2_buf_1 input38 (.A(ext_trim[3]),
    .X(net38));
 sg13g2_buf_1 input39 (.A(ext_trim[4]),
    .X(net39));
 sg13g2_buf_1 input40 (.A(ext_trim[5]),
    .X(net40));
 sg13g2_buf_1 input41 (.A(ext_trim[6]),
    .X(net41));
 sg13g2_buf_1 input42 (.A(ext_trim[7]),
    .X(net42));
 sg13g2_buf_1 input43 (.A(ext_trim[8]),
    .X(net43));
 sg13g2_buf_1 input44 (.A(ext_trim[9]),
    .X(net44));
 sg13g2_buf_1 input45 (.A(f_clk0_divider[0]),
    .X(net45));
 sg13g2_buf_1 input46 (.A(f_clk0_divider[1]),
    .X(net46));
 sg13g2_buf_1 input47 (.A(f_clk0_divider[2]),
    .X(net47));
 sg13g2_buf_1 input48 (.A(f_clk0_divider[3]),
    .X(net48));
 sg13g2_buf_1 input49 (.A(f_clk0_divider[4]),
    .X(net49));
 sg13g2_buf_1 input50 (.A(f_clk1_divider[0]),
    .X(net50));
 sg13g2_buf_1 input51 (.A(f_clk1_divider[1]),
    .X(net51));
 sg13g2_buf_1 input52 (.A(f_clk1_divider[2]),
    .X(net52));
 sg13g2_buf_1 input53 (.A(f_clk1_divider[3]),
    .X(net53));
 sg13g2_buf_1 input54 (.A(f_clk1_divider[4]),
    .X(net54));
 sg13g2_buf_1 input55 (.A(f_clk2_divider[0]),
    .X(net55));
 sg13g2_buf_1 input56 (.A(f_clk2_divider[1]),
    .X(net56));
 sg13g2_buf_1 input57 (.A(f_clk2_divider[2]),
    .X(net57));
 sg13g2_buf_1 input58 (.A(f_clk2_divider[3]),
    .X(net58));
 sg13g2_buf_1 input59 (.A(f_clk2_divider[4]),
    .X(net59));
 sg13g2_buf_1 input60 (.A(f_osc_multiply_factor[0]),
    .X(net60));
 sg13g2_buf_1 input61 (.A(f_osc_multiply_factor[1]),
    .X(net61));
 sg13g2_buf_1 input62 (.A(f_osc_multiply_factor[2]),
    .X(net62));
 sg13g2_buf_1 input63 (.A(f_osc_multiply_factor[3]),
    .X(net63));
 sg13g2_buf_1 input64 (.A(f_osc_multiply_factor[4]),
    .X(net64));
 sg13g2_buf_1 input65 (.A(mode_xor[0]),
    .X(net65));
 sg13g2_buf_1 input66 (.A(mode_xor[1]),
    .X(net66));
 sg13g2_buf_1 input67 (.A(mode_xor[2]),
    .X(net67));
 sg13g2_buf_1 input68 (.A(resetb),
    .X(net68));
 sg13g2_buf_1 output69 (.A(net69),
    .X(clk0_out));
 sg13g2_buf_1 output70 (.A(net70),
    .X(clk1_out));
 sg13g2_buf_1 output71 (.A(net71),
    .X(clk2_out));
 sg13g2_buf_1 output72 (.A(net72),
    .X(osc_out));
 sg13g2_buf_1 output73 (.A(net73),
    .X(stable));
 sg13g2_buf_1 \u_clk_div0/fanout74  (.A(\u_clk_div0/syncN_1_ ),
    .X(\u_clk_div0/net74 ));
 sg13g2_buf_1 \u_clk_div2/fanout75  (.A(\u_clk_div2/syncN_1_ ),
    .X(\u_clk_div2/net75 ));
 sg13g2_buf_1 \u_clk_div1/fanout76  (.A(\u_clk_div1/syncN_1_ ),
    .X(\u_clk_div1/net76 ));
 sg13g2_buf_1 \u_clk_div0/fanout77  (.A(\u_clk_div0/syncN_4_ ),
    .X(\u_clk_div0/net77 ));
 sg13g2_buf_1 \u_clk_div0/fanout78  (.A(\u_clk_div0/syncN_3_ ),
    .X(\u_clk_div0/net78 ));
 sg13g2_buf_1 \u_clk_div0/fanout79  (.A(\u_clk_div0/syncN_2_ ),
    .X(\u_clk_div0/net79 ));
 sg13g2_buf_1 \u_clk_div0/fanout80  (.A(\u_clk_div0/syncN_0_ ),
    .X(\u_clk_div0/net80 ));
 sg13g2_buf_1 \u_clk_div2/fanout81  (.A(\u_clk_div2/syncN_4_ ),
    .X(\u_clk_div2/net81 ));
 sg13g2_buf_1 \u_clk_div2/fanout82  (.A(\u_clk_div2/syncN_3_ ),
    .X(\u_clk_div2/net82 ));
 sg13g2_buf_1 \u_clk_div2/fanout83  (.A(\u_clk_div2/syncN_2_ ),
    .X(\u_clk_div2/net83 ));
 sg13g2_buf_1 \u_clk_div2/fanout84  (.A(\u_clk_div2/syncN_0_ ),
    .X(\u_clk_div2/net84 ));
 sg13g2_buf_1 \u_clk_div1/fanout85  (.A(\u_clk_div1/syncN_4_ ),
    .X(\u_clk_div1/net85 ));
 sg13g2_buf_1 \u_clk_div1/fanout86  (.A(\u_clk_div1/syncN_3_ ),
    .X(\u_clk_div1/net86 ));
 sg13g2_buf_1 \u_clk_div1/fanout87  (.A(\u_clk_div1/syncN_2_ ),
    .X(\u_clk_div1/net87 ));
 sg13g2_buf_1 \u_clk_div1/fanout88  (.A(\u_clk_div1/syncN_0_ ),
    .X(\u_clk_div1/net88 ));
 sg13g2_buf_1 \u_digital_pll/pll_control/fanout89  (.A(\u_digital_pll/pll_control/_092_ ),
    .X(\u_digital_pll/pll_control/net89 ));
 sg13g2_buf_1 \u_clk_div0/odd_0/fanout90  (.A(\u_clk_div0/odd_0/net92 ),
    .X(\u_clk_div0/odd_0/net90 ));
 sg13g2_buf_1 \u_clk_div0/odd_0/fanout91  (.A(\u_clk_div0/odd_0/net92 ),
    .X(\u_clk_div0/odd_0/net91 ));
 sg13g2_buf_1 \u_clk_div0/odd_0/fanout92  (.A(\u_clk_div0/odd_0/rst_pulse ),
    .X(\u_clk_div0/odd_0/net92 ));
 sg13g2_buf_1 \u_clk_div2/odd_0/fanout93  (.A(\u_clk_div2/odd_0/net95 ),
    .X(\u_clk_div2/odd_0/net93 ));
 sg13g2_buf_1 \u_clk_div2/odd_0/fanout94  (.A(\u_clk_div2/odd_0/net95 ),
    .X(\u_clk_div2/odd_0/net94 ));
 sg13g2_buf_1 \u_clk_div2/odd_0/fanout95  (.A(\u_clk_div2/odd_0/rst_pulse ),
    .X(\u_clk_div2/odd_0/net95 ));
 sg13g2_buf_1 \u_clk_div1/odd_0/fanout96  (.A(\u_clk_div1/odd_0/net98 ),
    .X(\u_clk_div1/odd_0/net96 ));
 sg13g2_buf_1 \u_clk_div1/odd_0/fanout97  (.A(\u_clk_div1/odd_0/net98 ),
    .X(\u_clk_div1/odd_0/net97 ));
 sg13g2_buf_1 \u_clk_div1/odd_0/fanout98  (.A(\u_clk_div1/odd_0/rst_pulse ),
    .X(\u_clk_div1/odd_0/net98 ));
 sg13g2_buf_1 \u_digital_pll/pll_control/fanout99  (.A(\u_digital_pll/pll_control/_089_ ),
    .X(\u_digital_pll/pll_control/net99 ));
 sg13g2_buf_1 \u_digital_pll/pll_control/fanout100  (.A(\u_digital_pll/pll_control/_089_ ),
    .X(\u_digital_pll/pll_control/net100 ));
 sg13g2_buf_1 \u_digital_pll/pll_control/fanout101  (.A(\u_digital_pll/pll_control/net102 ),
    .X(\u_digital_pll/pll_control/net101 ));
 sg13g2_buf_1 \u_digital_pll/pll_control/fanout102  (.A(\u_digital_pll/pll_control/net103 ),
    .X(\u_digital_pll/pll_control/net102 ));
 sg13g2_buf_1 \u_digital_pll/pll_control/fanout103  (.A(\u_digital_pll/creset ),
    .X(\u_digital_pll/pll_control/net103 ));
 sg13g2_buf_1 \u_digital_pll/pll_control/fanout104  (.A(\u_digital_pll/pll_control/net106 ),
    .X(\u_digital_pll/pll_control/net104 ));
 sg13g2_buf_1 \u_digital_pll/pll_control/fanout105  (.A(\u_digital_pll/pll_control/net106 ),
    .X(\u_digital_pll/pll_control/net105 ));
 sg13g2_buf_1 \u_digital_pll/pll_control/fanout106  (.A(\u_digital_pll/pll_control/tval_6_ ),
    .X(\u_digital_pll/pll_control/net106 ));
 sg13g2_buf_1 \u_digital_pll/pll_control/fanout107  (.A(\u_digital_pll/pll_control/tval_3_ ),
    .X(\u_digital_pll/pll_control/net107 ));
 sg13g2_buf_1 \u_digital_pll/pll_control/fanout108  (.A(\u_digital_pll/pll_control/tval_2_ ),
    .X(\u_digital_pll/pll_control/net108 ));
 sg13g2_buf_1 \u_digital_pll/fanout109  (.A(\u_digital_pll/net111 ),
    .X(\u_digital_pll/net109 ));
 sg13g2_buf_1 \u_digital_pll/fanout110  (.A(\u_digital_pll/net111 ),
    .X(\u_digital_pll/net110 ));
 sg13g2_buf_1 \u_digital_pll/fanout111  (.A(\u_digital_pll/net113 ),
    .X(\u_digital_pll/net111 ));
 sg13g2_buf_1 \u_digital_pll/fanout112  (.A(\u_digital_pll/net113 ),
    .X(\u_digital_pll/net112 ));
 sg13g2_buf_1 \u_digital_pll/fanout113  (.A(net17),
    .X(\u_digital_pll/net113 ));
 sg13g2_buf_1 fanout114 (.A(net115),
    .X(net114));
 sg13g2_buf_1 fanout115 (.A(net116),
    .X(net115));
 sg13g2_buf_1 fanout116 (.A(net133),
    .X(net116));
 sg13g2_buf_1 \u_clk_div1/fanout117  (.A(net120),
    .X(\u_clk_div1/net117 ));
 sg13g2_buf_1 \u_clk_div1/fanout118  (.A(net120),
    .X(\u_clk_div1/net118 ));
 sg13g2_buf_1 \u_clk_div1/fanout119  (.A(net120),
    .X(\u_clk_div1/net119 ));
 sg13g2_buf_1 fanout120 (.A(net133),
    .X(net120));
 sg13g2_buf_1 \u_clk_div2/fanout121  (.A(net122),
    .X(\u_clk_div2/net121 ));
 sg13g2_buf_1 fanout122 (.A(net123),
    .X(net122));
 sg13g2_buf_1 fanout123 (.A(net127),
    .X(net123));
 sg13g2_buf_1 fanout124 (.A(net125),
    .X(net124));
 sg13g2_buf_1 fanout125 (.A(net126),
    .X(net125));
 sg13g2_buf_1 fanout126 (.A(net127),
    .X(net126));
 sg13g2_buf_1 fanout127 (.A(net133),
    .X(net127));
 sg13g2_buf_1 fanout128 (.A(net132),
    .X(net128));
 sg13g2_buf_1 \u_clk_div2/odd_0/fanout129  (.A(net132),
    .X(\u_clk_div2/odd_0/net129 ));
 sg13g2_buf_1 \u_clk_div0/odd_0/fanout130  (.A(\u_clk_div0/net131 ),
    .X(\u_clk_div0/odd_0/net130 ));
 sg13g2_buf_1 \u_clk_div0/fanout131  (.A(net132),
    .X(\u_clk_div0/net131 ));
 sg13g2_buf_1 fanout132 (.A(net133),
    .X(net132));
 sg13g2_buf_1 fanout133 (.A(net68),
    .X(net133));
 sg13g2_tiehi \u_clk_div0/odd_0/old_N_3___DFF_P__134  (.L_HI(net));
 sg13g2_buf_16 clkbuf_regs_1_clk_oscillator (.X(\u_digital_pll/clockp_buffer_in_0__regs ),
    .A(delaynet_7_clk_oscillator));
 sg13g2_buf_16 clkbuf_regs_2_clk_oscillator (.X(clk2_int_regs),
    .A(clk2_int));
 sg13g2_buf_16 clkbuf_regs_3_clk_oscillator (.X(clk2_180_to_360_expand_regs),
    .A(clk2_180_to_360_expand));
 sg13g2_buf_16 clkbuf_regs_4_clk_oscillator (.X(clk1_int_regs),
    .A(clk1_int));
 sg13g2_buf_16 clkbuf_regs_5_clk_oscillator (.X(clk1_180_to_360_expand_regs),
    .A(clk1_180_to_360_expand));
 sg13g2_buf_16 clkbuf_regs_6_clk_oscillator (.X(clk0_int_regs),
    .A(clk0_int));
 sg13g2_buf_16 clkbuf_regs_7_clk_oscillator (.X(clk0_180_to_360_expand_regs),
    .A(clk0_180_to_360_expand));
 sg13g2_buf_16 clkbuf_0_osc (.X(clknet_0_osc),
    .A(osc));
 sg13g2_buf_16 clkbuf_1_0__f_osc (.X(clknet_1_0__leaf_osc),
    .A(clknet_0_osc));
 sg13g2_buf_16 clkbuf_1_1__f_osc (.X(clknet_1_1__leaf_osc),
    .A(clknet_0_osc));
 sg13g2_inv_8 clkload0 (.A(clknet_1_1__leaf_osc));
 sg13g2_buf_16 clkbuf_0_osc_regs (.X(clknet_0_osc_regs),
    .A(osc_regs));
 sg13g2_buf_16 clkbuf_1_0__f_osc_regs (.X(clknet_1_0__leaf_osc_regs),
    .A(clknet_0_osc_regs));
 sg13g2_buf_16 clkbuf_1_1__f_osc_regs (.X(clknet_1_1__leaf_osc_regs),
    .A(clknet_0_osc_regs));
 sg13g2_inv_1 clkload1 (.A(clknet_1_1__leaf_osc_regs));
 sg13g2_buf_16 \clkbuf_0_u_digital_pll/clockp_buffer_in_0_  (.X(\clknet_0_u_digital_pll/clockp_buffer_in_0_ ),
    .A(\u_digital_pll/clockp_buffer_in_0_ ));
 sg13g2_buf_16 \clkbuf_1_0__f_u_digital_pll/clockp_buffer_in_0_  (.X(\clknet_1_0__leaf_u_digital_pll/clockp_buffer_in_0_ ),
    .A(\clknet_0_u_digital_pll/clockp_buffer_in_0_ ));
 sg13g2_buf_16 \clkbuf_0_u_digital_pll/clockp_buffer_in_0__regs  (.X(\clknet_0_u_digital_pll/clockp_buffer_in_0__regs ),
    .A(\u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_buf_16 \clkbuf_2_0__f_u_digital_pll/clockp_buffer_in_0__regs  (.X(\clknet_2_0__leaf_u_digital_pll/clockp_buffer_in_0__regs ),
    .A(\clknet_0_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_buf_16 \clkbuf_2_1__f_u_digital_pll/clockp_buffer_in_0__regs  (.X(\clknet_2_1__leaf_u_digital_pll/clockp_buffer_in_0__regs ),
    .A(\clknet_0_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_buf_16 \clkbuf_2_2__f_u_digital_pll/clockp_buffer_in_0__regs  (.X(\clknet_2_2__leaf_u_digital_pll/clockp_buffer_in_0__regs ),
    .A(\clknet_0_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_buf_16 \clkbuf_2_3__f_u_digital_pll/clockp_buffer_in_0__regs  (.X(\clknet_2_3__leaf_u_digital_pll/clockp_buffer_in_0__regs ),
    .A(\clknet_0_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_inv_1 clkload2 (.A(\clknet_2_3__leaf_u_digital_pll/clockp_buffer_in_0__regs ));
 sg13g2_buf_16 clkbuf_0_dll_clks_0_ (.X(clknet_0_dll_clks_0_),
    .A(dll_clks_0_));
 sg13g2_buf_16 clkbuf_1_0__f_dll_clks_0_ (.X(clknet_1_0__leaf_dll_clks_0_),
    .A(clknet_0_dll_clks_0_));
 sg13g2_buf_16 clkbuf_1_1__f_dll_clks_0_ (.X(clknet_1_1__leaf_dll_clks_0_),
    .A(clknet_0_dll_clks_0_));
 sg13g2_inv_2 clkload3 (.A(clknet_1_1__leaf_dll_clks_0_));
 sg13g2_buf_16 clkbuf_0_clk2_int (.X(clknet_0_clk2_int),
    .A(clk2_int));
 sg13g2_buf_16 clkbuf_1_0__f_clk2_int (.X(clknet_1_0__leaf_clk2_int),
    .A(clknet_0_clk2_int));
 sg13g2_buf_16 clkbuf_0_clk2_int_regs (.X(clknet_0_clk2_int_regs),
    .A(clk2_int_regs));
 sg13g2_buf_16 clkbuf_3_0__f_clk2_int_regs (.X(clknet_3_0__leaf_clk2_int_regs),
    .A(clknet_0_clk2_int_regs));
 sg13g2_buf_16 clkbuf_3_1__f_clk2_int_regs (.X(clknet_3_1__leaf_clk2_int_regs),
    .A(clknet_0_clk2_int_regs));
 sg13g2_buf_16 clkbuf_3_2__f_clk2_int_regs (.X(clknet_3_2__leaf_clk2_int_regs),
    .A(clknet_0_clk2_int_regs));
 sg13g2_buf_16 clkbuf_3_3__f_clk2_int_regs (.X(clknet_3_3__leaf_clk2_int_regs),
    .A(clknet_0_clk2_int_regs));
 sg13g2_buf_16 clkbuf_3_4__f_clk2_int_regs (.X(clknet_3_4__leaf_clk2_int_regs),
    .A(clknet_0_clk2_int_regs));
 sg13g2_buf_16 clkbuf_3_5__f_clk2_int_regs (.X(clknet_3_5__leaf_clk2_int_regs),
    .A(clknet_0_clk2_int_regs));
 sg13g2_buf_16 clkbuf_3_6__f_clk2_int_regs (.X(clknet_3_6__leaf_clk2_int_regs),
    .A(clknet_0_clk2_int_regs));
 sg13g2_buf_16 clkbuf_3_7__f_clk2_int_regs (.X(clknet_3_7__leaf_clk2_int_regs),
    .A(clknet_0_clk2_int_regs));
 sg13g2_inv_1 clkload4 (.A(clknet_3_1__leaf_clk2_int_regs));
 sg13g2_inv_1 clkload5 (.A(clknet_3_3__leaf_clk2_int_regs));
 sg13g2_inv_1 clkload6 (.A(clknet_3_4__leaf_clk2_int_regs));
 sg13g2_inv_1 clkload7 (.A(clknet_3_5__leaf_clk2_int_regs));
 sg13g2_inv_1 clkload8 (.A(clknet_3_6__leaf_clk2_int_regs));
 sg13g2_inv_1 clkload9 (.A(clknet_3_7__leaf_clk2_int_regs));
 sg13g2_buf_16 clkbuf_0_clk2_180_to_360_expand (.X(clknet_0_clk2_180_to_360_expand),
    .A(clk2_180_to_360_expand));
 sg13g2_buf_16 clkbuf_1_0__f_clk2_180_to_360_expand (.X(clknet_1_0__leaf_clk2_180_to_360_expand),
    .A(clknet_0_clk2_180_to_360_expand));
 sg13g2_buf_16 clkbuf_0_clk2_180_to_360_expand_regs (.X(clknet_0_clk2_180_to_360_expand_regs),
    .A(clk2_180_to_360_expand_regs));
 sg13g2_buf_16 clkbuf_1_0__f_clk2_180_to_360_expand_regs (.X(clknet_1_0__leaf_clk2_180_to_360_expand_regs),
    .A(clknet_0_clk2_180_to_360_expand_regs));
 sg13g2_buf_16 clkbuf_1_1__f_clk2_180_to_360_expand_regs (.X(clknet_1_1__leaf_clk2_180_to_360_expand_regs),
    .A(clknet_0_clk2_180_to_360_expand_regs));
 sg13g2_inv_4 clkload10 (.A(clknet_1_1__leaf_clk2_180_to_360_expand_regs));
 sg13g2_buf_16 clkbuf_0_clk2_out_xor (.X(clknet_0_clk2_out_xor),
    .A(clk2_out_xor));
 sg13g2_buf_16 clkbuf_1_0__f_clk2_out_xor (.X(clknet_1_0__leaf_clk2_out_xor),
    .A(clknet_0_clk2_out_xor));
 sg13g2_buf_16 clkbuf_1_1__f_clk2_out_xor (.X(clknet_1_1__leaf_clk2_out_xor),
    .A(clknet_0_clk2_out_xor));
 sg13g2_buf_4 clkload11 (.A(clknet_1_1__leaf_clk2_out_xor));
 sg13g2_buf_16 clkbuf_0_clk1_int (.X(clknet_0_clk1_int),
    .A(clk1_int));
 sg13g2_buf_16 clkbuf_1_0__f_clk1_int (.X(clknet_1_0__leaf_clk1_int),
    .A(clknet_0_clk1_int));
 sg13g2_buf_16 clkbuf_0_clk1_int_regs (.X(clknet_0_clk1_int_regs),
    .A(clk1_int_regs));
 sg13g2_buf_16 clkbuf_3_0__f_clk1_int_regs (.X(clknet_3_0__leaf_clk1_int_regs),
    .A(clknet_0_clk1_int_regs));
 sg13g2_buf_16 clkbuf_3_1__f_clk1_int_regs (.X(clknet_3_1__leaf_clk1_int_regs),
    .A(clknet_0_clk1_int_regs));
 sg13g2_buf_16 clkbuf_3_2__f_clk1_int_regs (.X(clknet_3_2__leaf_clk1_int_regs),
    .A(clknet_0_clk1_int_regs));
 sg13g2_buf_16 clkbuf_3_3__f_clk1_int_regs (.X(clknet_3_3__leaf_clk1_int_regs),
    .A(clknet_0_clk1_int_regs));
 sg13g2_buf_16 clkbuf_3_4__f_clk1_int_regs (.X(clknet_3_4__leaf_clk1_int_regs),
    .A(clknet_0_clk1_int_regs));
 sg13g2_buf_16 clkbuf_3_5__f_clk1_int_regs (.X(clknet_3_5__leaf_clk1_int_regs),
    .A(clknet_0_clk1_int_regs));
 sg13g2_buf_16 clkbuf_3_6__f_clk1_int_regs (.X(clknet_3_6__leaf_clk1_int_regs),
    .A(clknet_0_clk1_int_regs));
 sg13g2_buf_16 clkbuf_3_7__f_clk1_int_regs (.X(clknet_3_7__leaf_clk1_int_regs),
    .A(clknet_0_clk1_int_regs));
 sg13g2_inv_1 clkload12 (.A(clknet_3_3__leaf_clk1_int_regs));
 sg13g2_inv_1 clkload13 (.A(clknet_3_4__leaf_clk1_int_regs));
 sg13g2_inv_1 clkload14 (.A(clknet_3_5__leaf_clk1_int_regs));
 sg13g2_inv_1 clkload15 (.A(clknet_3_6__leaf_clk1_int_regs));
 sg13g2_inv_1 clkload16 (.A(clknet_3_7__leaf_clk1_int_regs));
 sg13g2_buf_16 clkbuf_0_clk1_180_to_360_expand (.X(clknet_0_clk1_180_to_360_expand),
    .A(clk1_180_to_360_expand));
 sg13g2_buf_16 clkbuf_1_0__f_clk1_180_to_360_expand (.X(clknet_1_0__leaf_clk1_180_to_360_expand),
    .A(clknet_0_clk1_180_to_360_expand));
 sg13g2_buf_16 clkbuf_0_clk1_180_to_360_expand_regs (.X(clknet_0_clk1_180_to_360_expand_regs),
    .A(clk1_180_to_360_expand_regs));
 sg13g2_buf_16 clkbuf_1_0__f_clk1_180_to_360_expand_regs (.X(clknet_1_0__leaf_clk1_180_to_360_expand_regs),
    .A(clknet_0_clk1_180_to_360_expand_regs));
 sg13g2_buf_16 clkbuf_1_1__f_clk1_180_to_360_expand_regs (.X(clknet_1_1__leaf_clk1_180_to_360_expand_regs),
    .A(clknet_0_clk1_180_to_360_expand_regs));
 sg13g2_inv_4 clkload17 (.A(clknet_1_1__leaf_clk1_180_to_360_expand_regs));
 sg13g2_buf_16 clkbuf_0_clk1_out_xor (.X(clknet_0_clk1_out_xor),
    .A(clk1_out_xor));
 sg13g2_buf_16 clkbuf_1_0__f_clk1_out_xor (.X(clknet_1_0__leaf_clk1_out_xor),
    .A(clknet_0_clk1_out_xor));
 sg13g2_buf_16 clkbuf_1_1__f_clk1_out_xor (.X(clknet_1_1__leaf_clk1_out_xor),
    .A(clknet_0_clk1_out_xor));
 sg13g2_buf_4 clkload18 (.A(clknet_1_1__leaf_clk1_out_xor));
 sg13g2_buf_16 clkbuf_0_clk0_int (.X(clknet_0_clk0_int),
    .A(clk0_int));
 sg13g2_buf_16 clkbuf_1_0__f_clk0_int (.X(clknet_1_0__leaf_clk0_int),
    .A(clknet_0_clk0_int));
 sg13g2_buf_16 clkbuf_0_clk0_int_regs (.X(clknet_0_clk0_int_regs),
    .A(clk0_int_regs));
 sg13g2_buf_16 clkbuf_3_0__f_clk0_int_regs (.X(clknet_3_0__leaf_clk0_int_regs),
    .A(clknet_0_clk0_int_regs));
 sg13g2_buf_16 clkbuf_3_1__f_clk0_int_regs (.X(clknet_3_1__leaf_clk0_int_regs),
    .A(clknet_0_clk0_int_regs));
 sg13g2_buf_16 clkbuf_3_2__f_clk0_int_regs (.X(clknet_3_2__leaf_clk0_int_regs),
    .A(clknet_0_clk0_int_regs));
 sg13g2_buf_16 clkbuf_3_3__f_clk0_int_regs (.X(clknet_3_3__leaf_clk0_int_regs),
    .A(clknet_0_clk0_int_regs));
 sg13g2_buf_16 clkbuf_3_4__f_clk0_int_regs (.X(clknet_3_4__leaf_clk0_int_regs),
    .A(clknet_0_clk0_int_regs));
 sg13g2_buf_16 clkbuf_3_5__f_clk0_int_regs (.X(clknet_3_5__leaf_clk0_int_regs),
    .A(clknet_0_clk0_int_regs));
 sg13g2_buf_16 clkbuf_3_6__f_clk0_int_regs (.X(clknet_3_6__leaf_clk0_int_regs),
    .A(clknet_0_clk0_int_regs));
 sg13g2_buf_16 clkbuf_3_7__f_clk0_int_regs (.X(clknet_3_7__leaf_clk0_int_regs),
    .A(clknet_0_clk0_int_regs));
 sg13g2_inv_1 clkload19 (.A(clknet_3_3__leaf_clk0_int_regs));
 sg13g2_inv_1 clkload20 (.A(clknet_3_4__leaf_clk0_int_regs));
 sg13g2_inv_1 clkload21 (.A(clknet_3_5__leaf_clk0_int_regs));
 sg13g2_inv_1 clkload22 (.A(clknet_3_6__leaf_clk0_int_regs));
 sg13g2_inv_1 clkload23 (.A(clknet_3_7__leaf_clk0_int_regs));
 sg13g2_buf_16 clkbuf_0_clk0_180_to_360_expand (.X(clknet_0_clk0_180_to_360_expand),
    .A(clk0_180_to_360_expand));
 sg13g2_buf_16 clkbuf_1_0__f_clk0_180_to_360_expand (.X(clknet_1_0__leaf_clk0_180_to_360_expand),
    .A(clknet_0_clk0_180_to_360_expand));
 sg13g2_buf_16 clkbuf_0_clk0_180_to_360_expand_regs (.X(clknet_0_clk0_180_to_360_expand_regs),
    .A(clk0_180_to_360_expand_regs));
 sg13g2_buf_16 clkbuf_1_0__f_clk0_180_to_360_expand_regs (.X(clknet_1_0__leaf_clk0_180_to_360_expand_regs),
    .A(clknet_0_clk0_180_to_360_expand_regs));
 sg13g2_buf_16 clkbuf_1_1__f_clk0_180_to_360_expand_regs (.X(clknet_1_1__leaf_clk0_180_to_360_expand_regs),
    .A(clknet_0_clk0_180_to_360_expand_regs));
 sg13g2_inv_2 clkload24 (.A(clknet_1_0__leaf_clk0_180_to_360_expand_regs));
 sg13g2_buf_16 clkbuf_0_clk0_out_xor (.X(clknet_0_clk0_out_xor),
    .A(clk0_out_xor));
 sg13g2_buf_16 clkbuf_1_0__f_clk0_out_xor (.X(clknet_1_0__leaf_clk0_out_xor),
    .A(clknet_0_clk0_out_xor));
 sg13g2_buf_16 clkbuf_1_1__f_clk0_out_xor (.X(clknet_1_1__leaf_clk0_out_xor),
    .A(clknet_0_clk0_out_xor));
 sg13g2_inv_2 clkload25 (.A(clknet_1_1__leaf_clk0_out_xor));
 sg13g2_buf_16 delaybuf_0_clk_oscillator (.X(delaynet_0_clk_oscillator),
    .A(\u_digital_pll/clockp_buffer_in_0_ ));
 sg13g2_buf_16 delaybuf_1_clk_oscillator (.X(delaynet_1_clk_oscillator),
    .A(delaynet_0_clk_oscillator));
 sg13g2_buf_16 delaybuf_2_clk_oscillator (.X(delaynet_2_clk_oscillator),
    .A(delaynet_1_clk_oscillator));
 sg13g2_buf_16 delaybuf_3_clk_oscillator (.X(delaynet_3_clk_oscillator),
    .A(delaynet_2_clk_oscillator));
 sg13g2_buf_16 delaybuf_4_clk_oscillator (.X(delaynet_4_clk_oscillator),
    .A(delaynet_3_clk_oscillator));
 sg13g2_buf_16 delaybuf_5_clk_oscillator (.X(delaynet_5_clk_oscillator),
    .A(delaynet_4_clk_oscillator));
 sg13g2_buf_16 delaybuf_6_clk_oscillator (.X(delaynet_6_clk_oscillator),
    .A(delaynet_5_clk_oscillator));
 sg13g2_buf_16 delaybuf_7_clk_oscillator (.X(delaynet_7_clk_oscillator),
    .A(delaynet_6_clk_oscillator));
 sg13g2_decap_8 FILLER_0_0 ();
 sg13g2_decap_8 FILLER_0_7 ();
 sg13g2_decap_4 FILLER_0_14 ();
 sg13g2_fill_1 FILLER_0_18 ();
 sg13g2_fill_2 FILLER_0_49 ();
 sg13g2_fill_2 FILLER_0_84 ();
 sg13g2_fill_1 FILLER_0_275 ();
 sg13g2_fill_1 FILLER_0_355 ();
 sg13g2_fill_2 FILLER_0_465 ();
 sg13g2_fill_1 FILLER_0_482 ();
 sg13g2_fill_2 FILLER_0_578 ();
 sg13g2_decap_8 FILLER_0_637 ();
 sg13g2_decap_8 FILLER_0_644 ();
 sg13g2_fill_2 FILLER_0_651 ();
 sg13g2_fill_1 FILLER_0_653 ();
 sg13g2_decap_8 FILLER_1_0 ();
 sg13g2_decap_8 FILLER_1_7 ();
 sg13g2_decap_8 FILLER_1_14 ();
 sg13g2_fill_2 FILLER_1_21 ();
 sg13g2_fill_1 FILLER_1_23 ();
 sg13g2_fill_1 FILLER_1_195 ();
 sg13g2_fill_1 FILLER_1_278 ();
 sg13g2_fill_1 FILLER_1_400 ();
 sg13g2_fill_1 FILLER_1_509 ();
 sg13g2_fill_1 FILLER_1_592 ();
 sg13g2_decap_8 FILLER_1_632 ();
 sg13g2_decap_8 FILLER_1_639 ();
 sg13g2_decap_8 FILLER_1_646 ();
 sg13g2_fill_1 FILLER_1_653 ();
 sg13g2_decap_8 FILLER_2_0 ();
 sg13g2_decap_8 FILLER_2_7 ();
 sg13g2_decap_8 FILLER_2_14 ();
 sg13g2_decap_8 FILLER_2_21 ();
 sg13g2_fill_1 FILLER_2_79 ();
 sg13g2_fill_1 FILLER_2_202 ();
 sg13g2_fill_1 FILLER_2_261 ();
 sg13g2_decap_8 FILLER_2_643 ();
 sg13g2_decap_4 FILLER_2_650 ();
 sg13g2_decap_8 FILLER_3_0 ();
 sg13g2_decap_4 FILLER_3_7 ();
 sg13g2_fill_2 FILLER_3_11 ();
 sg13g2_fill_1 FILLER_3_38 ();
 sg13g2_fill_2 FILLER_3_141 ();
 sg13g2_fill_1 FILLER_3_198 ();
 sg13g2_fill_1 FILLER_3_224 ();
 sg13g2_fill_1 FILLER_3_260 ();
 sg13g2_fill_1 FILLER_3_349 ();
 sg13g2_fill_1 FILLER_3_375 ();
 sg13g2_fill_2 FILLER_3_476 ();
 sg13g2_fill_1 FILLER_3_536 ();
 sg13g2_fill_2 FILLER_3_579 ();
 sg13g2_decap_8 FILLER_3_643 ();
 sg13g2_decap_4 FILLER_3_650 ();
 sg13g2_decap_4 FILLER_4_4 ();
 sg13g2_fill_1 FILLER_4_8 ();
 sg13g2_fill_2 FILLER_4_172 ();
 sg13g2_fill_1 FILLER_4_199 ();
 sg13g2_fill_2 FILLER_4_258 ();
 sg13g2_fill_2 FILLER_4_293 ();
 sg13g2_fill_2 FILLER_4_299 ();
 sg13g2_fill_1 FILLER_4_305 ();
 sg13g2_fill_2 FILLER_4_421 ();
 sg13g2_fill_1 FILLER_4_595 ();
 sg13g2_fill_2 FILLER_4_606 ();
 sg13g2_decap_8 FILLER_4_633 ();
 sg13g2_decap_8 FILLER_4_640 ();
 sg13g2_decap_8 FILLER_4_647 ();
 sg13g2_fill_1 FILLER_5_8 ();
 sg13g2_fill_2 FILLER_5_172 ();
 sg13g2_fill_1 FILLER_5_174 ();
 sg13g2_fill_2 FILLER_5_220 ();
 sg13g2_fill_2 FILLER_5_256 ();
 sg13g2_fill_1 FILLER_5_268 ();
 sg13g2_fill_2 FILLER_5_597 ();
 sg13g2_decap_8 FILLER_5_621 ();
 sg13g2_decap_8 FILLER_5_628 ();
 sg13g2_decap_8 FILLER_5_635 ();
 sg13g2_decap_8 FILLER_5_642 ();
 sg13g2_decap_4 FILLER_5_649 ();
 sg13g2_fill_1 FILLER_5_653 ();
 sg13g2_fill_1 FILLER_6_8 ();
 sg13g2_decap_8 FILLER_6_19 ();
 sg13g2_fill_2 FILLER_6_26 ();
 sg13g2_fill_1 FILLER_6_28 ();
 sg13g2_fill_1 FILLER_6_197 ();
 sg13g2_fill_2 FILLER_6_256 ();
 sg13g2_fill_2 FILLER_6_296 ();
 sg13g2_fill_2 FILLER_6_335 ();
 sg13g2_fill_2 FILLER_6_503 ();
 sg13g2_fill_2 FILLER_6_515 ();
 sg13g2_fill_1 FILLER_6_554 ();
 sg13g2_fill_1 FILLER_6_565 ();
 sg13g2_fill_2 FILLER_6_593 ();
 sg13g2_decap_8 FILLER_6_629 ();
 sg13g2_decap_8 FILLER_6_636 ();
 sg13g2_decap_8 FILLER_6_643 ();
 sg13g2_decap_4 FILLER_6_650 ();
 sg13g2_decap_4 FILLER_7_4 ();
 sg13g2_fill_1 FILLER_7_8 ();
 sg13g2_decap_8 FILLER_7_19 ();
 sg13g2_fill_2 FILLER_7_26 ();
 sg13g2_fill_1 FILLER_7_28 ();
 sg13g2_fill_2 FILLER_7_182 ();
 sg13g2_decap_4 FILLER_7_290 ();
 sg13g2_fill_1 FILLER_7_294 ();
 sg13g2_fill_1 FILLER_7_298 ();
 sg13g2_fill_1 FILLER_7_542 ();
 sg13g2_fill_2 FILLER_7_555 ();
 sg13g2_decap_4 FILLER_8_0 ();
 sg13g2_fill_1 FILLER_8_4 ();
 sg13g2_decap_8 FILLER_8_19 ();
 sg13g2_fill_2 FILLER_8_26 ();
 sg13g2_fill_1 FILLER_8_28 ();
 sg13g2_fill_2 FILLER_8_172 ();
 sg13g2_fill_2 FILLER_8_203 ();
 sg13g2_decap_4 FILLER_8_285 ();
 sg13g2_fill_1 FILLER_8_297 ();
 sg13g2_fill_2 FILLER_8_328 ();
 sg13g2_fill_2 FILLER_8_509 ();
 sg13g2_fill_1 FILLER_8_556 ();
 sg13g2_fill_2 FILLER_8_583 ();
 sg13g2_fill_1 FILLER_8_613 ();
 sg13g2_fill_2 FILLER_8_624 ();
 sg13g2_fill_1 FILLER_8_626 ();
 sg13g2_fill_2 FILLER_9_182 ();
 sg13g2_fill_1 FILLER_9_184 ();
 sg13g2_fill_2 FILLER_9_239 ();
 sg13g2_fill_2 FILLER_9_322 ();
 sg13g2_fill_2 FILLER_9_495 ();
 sg13g2_fill_2 FILLER_9_523 ();
 sg13g2_fill_1 FILLER_9_538 ();
 sg13g2_fill_1 FILLER_9_566 ();
 sg13g2_fill_1 FILLER_9_614 ();
 sg13g2_fill_1 FILLER_9_640 ();
 sg13g2_decap_8 FILLER_9_647 ();
 sg13g2_decap_8 FILLER_10_0 ();
 sg13g2_fill_2 FILLER_10_7 ();
 sg13g2_fill_2 FILLER_10_172 ();
 sg13g2_fill_2 FILLER_10_199 ();
 sg13g2_fill_1 FILLER_10_201 ();
 sg13g2_fill_2 FILLER_10_227 ();
 sg13g2_decap_8 FILLER_10_278 ();
 sg13g2_decap_4 FILLER_10_285 ();
 sg13g2_fill_1 FILLER_10_289 ();
 sg13g2_fill_2 FILLER_10_294 ();
 sg13g2_fill_2 FILLER_10_373 ();
 sg13g2_fill_2 FILLER_10_455 ();
 sg13g2_fill_1 FILLER_10_529 ();
 sg13g2_fill_1 FILLER_10_559 ();
 sg13g2_fill_1 FILLER_10_590 ();
 sg13g2_decap_8 FILLER_10_594 ();
 sg13g2_decap_8 FILLER_10_601 ();
 sg13g2_fill_2 FILLER_10_608 ();
 sg13g2_fill_1 FILLER_10_610 ();
 sg13g2_decap_8 FILLER_10_641 ();
 sg13g2_decap_4 FILLER_10_648 ();
 sg13g2_fill_2 FILLER_10_652 ();
 sg13g2_fill_1 FILLER_11_8 ();
 sg13g2_fill_2 FILLER_11_27 ();
 sg13g2_fill_1 FILLER_11_226 ();
 sg13g2_fill_1 FILLER_11_241 ();
 sg13g2_decap_8 FILLER_11_298 ();
 sg13g2_fill_2 FILLER_11_305 ();
 sg13g2_fill_1 FILLER_11_325 ();
 sg13g2_fill_2 FILLER_11_448 ();
 sg13g2_fill_1 FILLER_11_460 ();
 sg13g2_fill_1 FILLER_11_573 ();
 sg13g2_decap_8 FILLER_11_583 ();
 sg13g2_decap_8 FILLER_11_590 ();
 sg13g2_decap_8 FILLER_11_597 ();
 sg13g2_decap_8 FILLER_11_604 ();
 sg13g2_decap_8 FILLER_11_611 ();
 sg13g2_decap_8 FILLER_11_618 ();
 sg13g2_fill_2 FILLER_11_625 ();
 sg13g2_decap_8 FILLER_11_630 ();
 sg13g2_decap_8 FILLER_11_637 ();
 sg13g2_decap_8 FILLER_11_644 ();
 sg13g2_fill_2 FILLER_11_651 ();
 sg13g2_fill_1 FILLER_11_653 ();
 sg13g2_fill_1 FILLER_12_8 ();
 sg13g2_decap_4 FILLER_12_24 ();
 sg13g2_fill_1 FILLER_12_28 ();
 sg13g2_fill_1 FILLER_12_180 ();
 sg13g2_fill_2 FILLER_12_193 ();
 sg13g2_fill_1 FILLER_12_195 ();
 sg13g2_fill_1 FILLER_12_221 ();
 sg13g2_fill_1 FILLER_12_226 ();
 sg13g2_fill_1 FILLER_12_235 ();
 sg13g2_decap_8 FILLER_12_269 ();
 sg13g2_decap_8 FILLER_12_276 ();
 sg13g2_fill_1 FILLER_12_283 ();
 sg13g2_fill_1 FILLER_12_348 ();
 sg13g2_fill_1 FILLER_12_362 ();
 sg13g2_fill_1 FILLER_12_492 ();
 sg13g2_decap_4 FILLER_12_556 ();
 sg13g2_decap_8 FILLER_12_563 ();
 sg13g2_decap_8 FILLER_12_598 ();
 sg13g2_decap_8 FILLER_12_605 ();
 sg13g2_decap_8 FILLER_12_612 ();
 sg13g2_decap_8 FILLER_12_619 ();
 sg13g2_decap_8 FILLER_12_626 ();
 sg13g2_decap_8 FILLER_12_633 ();
 sg13g2_decap_8 FILLER_12_640 ();
 sg13g2_decap_8 FILLER_12_647 ();
 sg13g2_fill_1 FILLER_13_4 ();
 sg13g2_decap_4 FILLER_13_23 ();
 sg13g2_fill_2 FILLER_13_27 ();
 sg13g2_fill_2 FILLER_13_172 ();
 sg13g2_fill_1 FILLER_13_174 ();
 sg13g2_fill_1 FILLER_13_204 ();
 sg13g2_fill_2 FILLER_13_255 ();
 sg13g2_decap_4 FILLER_13_265 ();
 sg13g2_fill_2 FILLER_13_269 ();
 sg13g2_decap_8 FILLER_13_302 ();
 sg13g2_decap_4 FILLER_13_309 ();
 sg13g2_fill_1 FILLER_13_313 ();
 sg13g2_fill_2 FILLER_13_324 ();
 sg13g2_fill_1 FILLER_13_344 ();
 sg13g2_fill_1 FILLER_13_406 ();
 sg13g2_fill_1 FILLER_13_496 ();
 sg13g2_fill_2 FILLER_13_509 ();
 sg13g2_decap_8 FILLER_13_549 ();
 sg13g2_decap_8 FILLER_13_556 ();
 sg13g2_decap_8 FILLER_13_563 ();
 sg13g2_fill_2 FILLER_13_570 ();
 sg13g2_fill_1 FILLER_13_572 ();
 sg13g2_decap_8 FILLER_13_581 ();
 sg13g2_decap_8 FILLER_13_588 ();
 sg13g2_decap_8 FILLER_13_595 ();
 sg13g2_decap_8 FILLER_13_602 ();
 sg13g2_decap_8 FILLER_13_609 ();
 sg13g2_decap_8 FILLER_13_616 ();
 sg13g2_decap_8 FILLER_13_623 ();
 sg13g2_decap_8 FILLER_13_630 ();
 sg13g2_decap_8 FILLER_13_637 ();
 sg13g2_decap_8 FILLER_13_644 ();
 sg13g2_fill_2 FILLER_13_651 ();
 sg13g2_fill_1 FILLER_13_653 ();
 sg13g2_decap_4 FILLER_14_24 ();
 sg13g2_fill_1 FILLER_14_28 ();
 sg13g2_decap_8 FILLER_14_172 ();
 sg13g2_decap_8 FILLER_14_179 ();
 sg13g2_decap_4 FILLER_14_186 ();
 sg13g2_fill_1 FILLER_14_229 ();
 sg13g2_fill_1 FILLER_14_255 ();
 sg13g2_fill_1 FILLER_14_260 ();
 sg13g2_fill_1 FILLER_14_292 ();
 sg13g2_decap_4 FILLER_14_304 ();
 sg13g2_fill_2 FILLER_14_308 ();
 sg13g2_fill_1 FILLER_14_389 ();
 sg13g2_fill_2 FILLER_14_438 ();
 sg13g2_fill_1 FILLER_14_502 ();
 sg13g2_decap_8 FILLER_14_567 ();
 sg13g2_decap_8 FILLER_14_603 ();
 sg13g2_decap_8 FILLER_14_610 ();
 sg13g2_fill_2 FILLER_14_617 ();
 sg13g2_decap_8 FILLER_14_622 ();
 sg13g2_decap_8 FILLER_14_629 ();
 sg13g2_decap_8 FILLER_14_636 ();
 sg13g2_decap_8 FILLER_14_643 ();
 sg13g2_decap_4 FILLER_14_650 ();
 sg13g2_fill_2 FILLER_15_4 ();
 sg13g2_decap_8 FILLER_15_172 ();
 sg13g2_decap_8 FILLER_15_179 ();
 sg13g2_decap_8 FILLER_15_186 ();
 sg13g2_decap_4 FILLER_15_193 ();
 sg13g2_fill_1 FILLER_15_197 ();
 sg13g2_decap_8 FILLER_15_227 ();
 sg13g2_fill_2 FILLER_15_234 ();
 sg13g2_fill_1 FILLER_15_244 ();
 sg13g2_fill_1 FILLER_15_334 ();
 sg13g2_fill_2 FILLER_15_395 ();
 sg13g2_fill_1 FILLER_15_417 ();
 sg13g2_fill_1 FILLER_15_526 ();
 sg13g2_fill_2 FILLER_15_554 ();
 sg13g2_fill_1 FILLER_15_556 ();
 sg13g2_fill_2 FILLER_15_582 ();
 sg13g2_fill_1 FILLER_15_602 ();
 sg13g2_decap_4 FILLER_15_606 ();
 sg13g2_fill_1 FILLER_15_610 ();
 sg13g2_decap_8 FILLER_15_638 ();
 sg13g2_decap_8 FILLER_15_645 ();
 sg13g2_fill_2 FILLER_15_652 ();
 sg13g2_decap_4 FILLER_16_0 ();
 sg13g2_fill_2 FILLER_16_4 ();
 sg13g2_decap_8 FILLER_16_182 ();
 sg13g2_decap_8 FILLER_16_189 ();
 sg13g2_fill_2 FILLER_16_293 ();
 sg13g2_fill_2 FILLER_16_420 ();
 sg13g2_fill_2 FILLER_16_527 ();
 sg13g2_fill_1 FILLER_16_529 ();
 sg13g2_decap_4 FILLER_16_548 ();
 sg13g2_fill_2 FILLER_16_552 ();
 sg13g2_fill_2 FILLER_16_579 ();
 sg13g2_fill_1 FILLER_16_581 ();
 sg13g2_decap_8 FILLER_16_635 ();
 sg13g2_decap_8 FILLER_16_642 ();
 sg13g2_decap_4 FILLER_16_649 ();
 sg13g2_fill_1 FILLER_16_653 ();
 sg13g2_decap_4 FILLER_17_4 ();
 sg13g2_fill_1 FILLER_17_8 ();
 sg13g2_decap_4 FILLER_17_24 ();
 sg13g2_fill_1 FILLER_17_28 ();
 sg13g2_decap_8 FILLER_17_206 ();
 sg13g2_decap_4 FILLER_17_213 ();
 sg13g2_fill_1 FILLER_17_217 ();
 sg13g2_fill_1 FILLER_17_249 ();
 sg13g2_fill_1 FILLER_17_265 ();
 sg13g2_fill_1 FILLER_17_302 ();
 sg13g2_fill_1 FILLER_17_330 ();
 sg13g2_fill_1 FILLER_17_406 ();
 sg13g2_fill_2 FILLER_17_429 ();
 sg13g2_decap_4 FILLER_17_510 ();
 sg13g2_fill_2 FILLER_17_517 ();
 sg13g2_fill_1 FILLER_17_519 ();
 sg13g2_fill_1 FILLER_17_525 ();
 sg13g2_decap_8 FILLER_17_530 ();
 sg13g2_fill_1 FILLER_17_537 ();
 sg13g2_fill_1 FILLER_17_545 ();
 sg13g2_fill_2 FILLER_17_571 ();
 sg13g2_fill_1 FILLER_17_573 ();
 sg13g2_fill_1 FILLER_17_587 ();
 sg13g2_fill_1 FILLER_18_4 ();
 sg13g2_decap_8 FILLER_18_19 ();
 sg13g2_fill_2 FILLER_18_26 ();
 sg13g2_fill_1 FILLER_18_28 ();
 sg13g2_fill_1 FILLER_18_234 ();
 sg13g2_decap_4 FILLER_18_297 ();
 sg13g2_fill_2 FILLER_18_301 ();
 sg13g2_fill_2 FILLER_18_422 ();
 sg13g2_fill_1 FILLER_18_447 ();
 sg13g2_decap_4 FILLER_18_501 ();
 sg13g2_fill_2 FILLER_18_505 ();
 sg13g2_fill_1 FILLER_18_530 ();
 sg13g2_fill_2 FILLER_18_534 ();
 sg13g2_fill_1 FILLER_18_563 ();
 sg13g2_decap_4 FILLER_18_579 ();
 sg13g2_fill_2 FILLER_18_583 ();
 sg13g2_fill_2 FILLER_18_613 ();
 sg13g2_fill_1 FILLER_18_653 ();
 sg13g2_decap_4 FILLER_19_0 ();
 sg13g2_fill_2 FILLER_19_26 ();
 sg13g2_fill_1 FILLER_19_28 ();
 sg13g2_decap_4 FILLER_19_205 ();
 sg13g2_fill_2 FILLER_19_212 ();
 sg13g2_fill_1 FILLER_19_214 ();
 sg13g2_fill_2 FILLER_19_245 ();
 sg13g2_fill_1 FILLER_19_295 ();
 sg13g2_fill_1 FILLER_19_368 ();
 sg13g2_fill_1 FILLER_19_438 ();
 sg13g2_fill_1 FILLER_19_476 ();
 sg13g2_decap_4 FILLER_19_563 ();
 sg13g2_fill_1 FILLER_19_575 ();
 sg13g2_decap_8 FILLER_19_580 ();
 sg13g2_fill_2 FILLER_19_587 ();
 sg13g2_fill_1 FILLER_19_589 ();
 sg13g2_fill_2 FILLER_19_595 ();
 sg13g2_fill_1 FILLER_19_597 ();
 sg13g2_fill_2 FILLER_19_606 ();
 sg13g2_fill_1 FILLER_19_626 ();
 sg13g2_decap_8 FILLER_20_0 ();
 sg13g2_decap_4 FILLER_20_7 ();
 sg13g2_fill_2 FILLER_20_182 ();
 sg13g2_fill_1 FILLER_20_211 ();
 sg13g2_decap_8 FILLER_20_292 ();
 sg13g2_fill_1 FILLER_20_299 ();
 sg13g2_fill_2 FILLER_20_352 ();
 sg13g2_fill_2 FILLER_20_422 ();
 sg13g2_fill_2 FILLER_20_496 ();
 sg13g2_fill_1 FILLER_20_506 ();
 sg13g2_fill_2 FILLER_20_534 ();
 sg13g2_decap_4 FILLER_20_557 ();
 sg13g2_fill_1 FILLER_20_653 ();
 sg13g2_decap_8 FILLER_21_0 ();
 sg13g2_fill_1 FILLER_21_7 ();
 sg13g2_decap_4 FILLER_21_25 ();
 sg13g2_fill_2 FILLER_21_236 ();
 sg13g2_fill_2 FILLER_21_320 ();
 sg13g2_fill_1 FILLER_21_322 ();
 sg13g2_fill_1 FILLER_21_358 ();
 sg13g2_fill_1 FILLER_21_368 ();
 sg13g2_fill_2 FILLER_21_387 ();
 sg13g2_fill_1 FILLER_21_454 ();
 sg13g2_fill_2 FILLER_21_500 ();
 sg13g2_fill_2 FILLER_21_518 ();
 sg13g2_fill_1 FILLER_21_551 ();
 sg13g2_decap_8 FILLER_21_606 ();
 sg13g2_fill_1 FILLER_21_613 ();
 sg13g2_fill_2 FILLER_21_624 ();
 sg13g2_decap_8 FILLER_22_0 ();
 sg13g2_fill_2 FILLER_22_23 ();
 sg13g2_decap_4 FILLER_22_250 ();
 sg13g2_fill_2 FILLER_22_308 ();
 sg13g2_fill_1 FILLER_22_310 ();
 sg13g2_fill_1 FILLER_22_357 ();
 sg13g2_decap_4 FILLER_22_391 ();
 sg13g2_fill_1 FILLER_22_495 ();
 sg13g2_fill_2 FILLER_22_521 ();
 sg13g2_fill_1 FILLER_22_529 ();
 sg13g2_fill_2 FILLER_22_545 ();
 sg13g2_fill_2 FILLER_22_587 ();
 sg13g2_fill_1 FILLER_22_589 ();
 sg13g2_decap_8 FILLER_22_613 ();
 sg13g2_fill_2 FILLER_22_620 ();
 sg13g2_fill_2 FILLER_22_652 ();
 sg13g2_fill_2 FILLER_23_0 ();
 sg13g2_fill_2 FILLER_23_31 ();
 sg13g2_fill_1 FILLER_23_75 ();
 sg13g2_fill_2 FILLER_23_198 ();
 sg13g2_fill_1 FILLER_23_227 ();
 sg13g2_decap_8 FILLER_23_269 ();
 sg13g2_decap_8 FILLER_23_276 ();
 sg13g2_fill_2 FILLER_23_283 ();
 sg13g2_fill_2 FILLER_23_332 ();
 sg13g2_fill_1 FILLER_23_394 ();
 sg13g2_fill_1 FILLER_23_413 ();
 sg13g2_fill_2 FILLER_23_464 ();
 sg13g2_fill_2 FILLER_23_470 ();
 sg13g2_fill_1 FILLER_23_503 ();
 sg13g2_fill_2 FILLER_23_535 ();
 sg13g2_fill_2 FILLER_23_633 ();
 sg13g2_fill_1 FILLER_23_635 ();
 sg13g2_fill_1 FILLER_23_639 ();
 sg13g2_decap_8 FILLER_23_643 ();
 sg13g2_decap_4 FILLER_23_650 ();
 sg13g2_decap_4 FILLER_24_4 ();
 sg13g2_fill_1 FILLER_24_8 ();
 sg13g2_fill_1 FILLER_24_22 ();
 sg13g2_fill_2 FILLER_24_27 ();
 sg13g2_fill_1 FILLER_24_29 ();
 sg13g2_fill_2 FILLER_24_34 ();
 sg13g2_fill_2 FILLER_24_49 ();
 sg13g2_fill_1 FILLER_24_225 ();
 sg13g2_decap_4 FILLER_24_249 ();
 sg13g2_decap_8 FILLER_24_274 ();
 sg13g2_decap_8 FILLER_24_281 ();
 sg13g2_fill_1 FILLER_24_288 ();
 sg13g2_fill_2 FILLER_24_339 ();
 sg13g2_fill_1 FILLER_24_341 ();
 sg13g2_fill_2 FILLER_24_384 ();
 sg13g2_fill_1 FILLER_24_386 ();
 sg13g2_fill_1 FILLER_24_412 ();
 sg13g2_fill_1 FILLER_24_423 ();
 sg13g2_fill_2 FILLER_24_525 ();
 sg13g2_fill_2 FILLER_24_537 ();
 sg13g2_decap_8 FILLER_24_626 ();
 sg13g2_decap_8 FILLER_24_633 ();
 sg13g2_decap_8 FILLER_24_640 ();
 sg13g2_decap_8 FILLER_24_647 ();
 sg13g2_decap_8 FILLER_25_0 ();
 sg13g2_decap_8 FILLER_25_7 ();
 sg13g2_fill_1 FILLER_25_25 ();
 sg13g2_fill_1 FILLER_25_29 ();
 sg13g2_fill_1 FILLER_25_62 ();
 sg13g2_fill_1 FILLER_25_89 ();
 sg13g2_fill_2 FILLER_25_315 ();
 sg13g2_decap_4 FILLER_25_342 ();
 sg13g2_fill_2 FILLER_25_346 ();
 sg13g2_fill_2 FILLER_25_356 ();
 sg13g2_fill_2 FILLER_25_398 ();
 sg13g2_fill_2 FILLER_25_411 ();
 sg13g2_fill_2 FILLER_25_426 ();
 sg13g2_fill_2 FILLER_25_478 ();
 sg13g2_fill_2 FILLER_25_534 ();
 sg13g2_decap_8 FILLER_25_592 ();
 sg13g2_fill_1 FILLER_25_599 ();
 sg13g2_fill_1 FILLER_25_623 ();
 sg13g2_decap_4 FILLER_25_649 ();
 sg13g2_fill_1 FILLER_25_653 ();
 sg13g2_decap_8 FILLER_26_0 ();
 sg13g2_fill_2 FILLER_26_7 ();
 sg13g2_fill_1 FILLER_26_9 ();
 sg13g2_fill_2 FILLER_26_48 ();
 sg13g2_fill_1 FILLER_26_78 ();
 sg13g2_fill_1 FILLER_26_228 ();
 sg13g2_fill_2 FILLER_26_237 ();
 sg13g2_fill_1 FILLER_26_239 ();
 sg13g2_decap_8 FILLER_26_289 ();
 sg13g2_decap_8 FILLER_26_296 ();
 sg13g2_fill_2 FILLER_26_303 ();
 sg13g2_decap_4 FILLER_26_347 ();
 sg13g2_fill_1 FILLER_26_351 ();
 sg13g2_decap_8 FILLER_26_383 ();
 sg13g2_decap_8 FILLER_26_390 ();
 sg13g2_fill_1 FILLER_26_397 ();
 sg13g2_fill_1 FILLER_26_450 ();
 sg13g2_fill_2 FILLER_26_478 ();
 sg13g2_decap_4 FILLER_26_541 ();
 sg13g2_fill_1 FILLER_26_545 ();
 sg13g2_fill_1 FILLER_26_585 ();
 sg13g2_decap_8 FILLER_26_646 ();
 sg13g2_fill_1 FILLER_26_653 ();
 sg13g2_decap_8 FILLER_27_0 ();
 sg13g2_decap_8 FILLER_27_7 ();
 sg13g2_fill_2 FILLER_27_14 ();
 sg13g2_fill_1 FILLER_27_16 ();
 sg13g2_fill_2 FILLER_27_48 ();
 sg13g2_fill_1 FILLER_27_77 ();
 sg13g2_fill_2 FILLER_27_169 ();
 sg13g2_fill_2 FILLER_27_236 ();
 sg13g2_fill_1 FILLER_27_238 ();
 sg13g2_fill_1 FILLER_27_247 ();
 sg13g2_decap_4 FILLER_27_272 ();
 sg13g2_decap_8 FILLER_27_361 ();
 sg13g2_decap_8 FILLER_27_368 ();
 sg13g2_decap_8 FILLER_27_378 ();
 sg13g2_decap_8 FILLER_27_385 ();
 sg13g2_decap_8 FILLER_27_392 ();
 sg13g2_decap_8 FILLER_27_399 ();
 sg13g2_fill_2 FILLER_27_406 ();
 sg13g2_fill_1 FILLER_27_408 ();
 sg13g2_fill_2 FILLER_27_439 ();
 sg13g2_fill_2 FILLER_27_475 ();
 sg13g2_fill_1 FILLER_27_508 ();
 sg13g2_fill_1 FILLER_27_527 ();
 sg13g2_decap_4 FILLER_27_555 ();
 sg13g2_fill_2 FILLER_27_559 ();
 sg13g2_decap_8 FILLER_27_616 ();
 sg13g2_fill_1 FILLER_27_623 ();
 sg13g2_decap_4 FILLER_27_627 ();
 sg13g2_fill_2 FILLER_27_631 ();
 sg13g2_decap_8 FILLER_27_636 ();
 sg13g2_decap_8 FILLER_27_643 ();
 sg13g2_decap_4 FILLER_27_650 ();
 sg13g2_decap_8 FILLER_28_0 ();
 sg13g2_decap_8 FILLER_28_7 ();
 sg13g2_fill_1 FILLER_28_14 ();
 sg13g2_fill_2 FILLER_28_72 ();
 sg13g2_fill_2 FILLER_28_136 ();
 sg13g2_fill_1 FILLER_28_162 ();
 sg13g2_fill_2 FILLER_28_188 ();
 sg13g2_fill_1 FILLER_28_215 ();
 sg13g2_fill_2 FILLER_28_243 ();
 sg13g2_decap_8 FILLER_28_264 ();
 sg13g2_decap_8 FILLER_28_271 ();
 sg13g2_decap_4 FILLER_28_278 ();
 sg13g2_fill_2 FILLER_28_282 ();
 sg13g2_decap_8 FILLER_28_287 ();
 sg13g2_decap_8 FILLER_28_321 ();
 sg13g2_decap_8 FILLER_28_328 ();
 sg13g2_decap_8 FILLER_28_335 ();
 sg13g2_decap_8 FILLER_28_342 ();
 sg13g2_decap_8 FILLER_28_349 ();
 sg13g2_decap_8 FILLER_28_356 ();
 sg13g2_decap_8 FILLER_28_363 ();
 sg13g2_decap_8 FILLER_28_370 ();
 sg13g2_decap_8 FILLER_28_377 ();
 sg13g2_decap_8 FILLER_28_384 ();
 sg13g2_decap_8 FILLER_28_391 ();
 sg13g2_decap_8 FILLER_28_398 ();
 sg13g2_decap_4 FILLER_28_405 ();
 sg13g2_fill_2 FILLER_28_409 ();
 sg13g2_fill_1 FILLER_28_415 ();
 sg13g2_fill_1 FILLER_28_451 ();
 sg13g2_fill_1 FILLER_28_496 ();
 sg13g2_decap_8 FILLER_28_504 ();
 sg13g2_decap_8 FILLER_28_511 ();
 sg13g2_decap_4 FILLER_28_518 ();
 sg13g2_fill_1 FILLER_28_522 ();
 sg13g2_decap_8 FILLER_28_533 ();
 sg13g2_decap_8 FILLER_28_540 ();
 sg13g2_decap_8 FILLER_28_547 ();
 sg13g2_decap_8 FILLER_28_554 ();
 sg13g2_fill_2 FILLER_28_561 ();
 sg13g2_fill_1 FILLER_28_587 ();
 sg13g2_decap_8 FILLER_28_591 ();
 sg13g2_decap_4 FILLER_28_598 ();
 sg13g2_fill_2 FILLER_28_602 ();
 sg13g2_decap_8 FILLER_28_612 ();
 sg13g2_decap_8 FILLER_28_619 ();
 sg13g2_decap_8 FILLER_28_626 ();
 sg13g2_decap_8 FILLER_28_633 ();
 sg13g2_decap_8 FILLER_28_640 ();
 sg13g2_decap_8 FILLER_28_647 ();
endmodule
