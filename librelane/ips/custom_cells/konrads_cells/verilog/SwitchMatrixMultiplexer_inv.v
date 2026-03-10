// sch_path: /home/luemmel/Dokumente/Studienarbeit/new_lib/layouts/sch/SwitchMatrixMultiplexer_inv.sch
module SwitchMatrixMultiplexer_inv
(
  output wire X,
  input wire D,
  input wire SEL,
  input wire A,
  input wire B
);
wire VDD ;
wire net1 ;
wire net2 ;
wire net3 ;
wire net4 ;
wire net5 ;
wire net6 ;
wire net7 ;
wire GND ;

tri_buff
#(
.WP ( 8.4e-07 ) ,
.WN ( 5.5e-07 )
)
x1 ( 
 .S( SEL ),
 .A( net2 ),
 .X( net3 ),
 .S_N( net1 )
);


tri_buff
#(
.WP ( 8.4e-07 ) ,
.WN ( 5.5e-07 )
)
x2 ( 
 .S( net1 ),
 .A( D ),
 .X( net3 ),
 .S_N( SEL )
);


inv
#(
.WP ( 1.3e-06 ) ,
.WN ( 8.8e-07 )
)
x3 ( 
 .IN( net3 ),
 .OUT( net2 )
);


inv
#(
.WP ( 8.4e-07 ) ,
.WN ( 5.5e-07 )
)
x4 ( 
 .IN( SEL ),
 .OUT( net1 )
);


sg13_lv_pmos
#(
.l ( 1.3e-07 ) ,
.w ( 8.2e-07 ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_pmos ) ,
.spiceprefix ( X )
)
M7 ( 
 .D( net7 ),
 .G( B ),
 .S( X ),
 .B( VDD )
);


sg13_lv_nmos
#(
.l ( 1.3e-07 ) ,
.w ( 5.5e-07 ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_nmos ) ,
.spiceprefix ( X )
)
M8 ( 
 .D( X ),
 .G( B ),
 .S( net5 ),
 .B( GND )
);


sg13_lv_pmos
#(
.l ( 1.3e-07 ) ,
.w ( 8.2e-07 ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_pmos ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( X ),
 .G( A ),
 .S( net4 ),
 .B( VDD )
);


sg13_lv_nmos
#(
.l ( 1.3e-07 ) ,
.w ( 5.5e-07 ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_nmos ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( net6 ),
 .G( A ),
 .S( X ),
 .B( GND )
);


sg13_lv_pmos
#(
.l ( 1.3e-07 ) ,
.w ( 8.2e-07 ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_pmos ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( net4 ),
 .G( net2 ),
 .S( VDD ),
 .B( VDD )
);


sg13_lv_nmos
#(
.l ( 1.3e-07 ) ,
.w ( 5.5e-07 ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_nmos ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( net5 ),
 .G( net2 ),
 .S( GND ),
 .B( GND )
);


sg13_lv_nmos
#(
.l ( 1.3e-07 ) ,
.w ( 5.5e-07 ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_nmos ) ,
.spiceprefix ( X )
)
M5 ( 
 .D( net2 ),
 .G( net3 ),
 .S( net6 ),
 .B( GND )
);


sg13_lv_pmos
#(
.l ( 1.3e-07 ) ,
.w ( 8.2e-07 ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_pmos ) ,
.spiceprefix ( X )
)
M6 ( 
 .D( net2 ),
 .G( net3 ),
 .S( net7 ),
 .B( VDD )
);

endmodule

// expanding   symbol:  /home/luemmel/Dokumente/Studienarbeit/new_lib/schematics/tri_buff.sym # of pins=4
// sym_path: /home/luemmel/Dokumente/Studienarbeit/new_lib/schematics/tri_buff.sym
// sch_path: /home/luemmel/Dokumente/Studienarbeit/new_lib/schematics/tri_buff.sch
module tri_buff
#(
  parameter WP = 1.02e-06,
  parameter WN = 6.8e-07
)
(
  input wire S,
  input wire A,
  output wire X,
  input wire S_N
);
wire VDD ;
wire net1 ;
wire net2 ;
wire GND ;


sg13_lv_pmos
#(
.l ( 1.3e-07 ) ,
.w ( WP ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_pmos ) ,
.spiceprefix ( X )
)
M5 ( 
 .D( net1 ),
 .G( S ),
 .S( VDD ),
 .B( VDD )
);


sg13_lv_nmos
#(
.l ( 1.3e-07 ) ,
.w ( WN ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_nmos ) ,
.spiceprefix ( X )
)
M6 ( 
 .D( net2 ),
 .G( S_N ),
 .S( GND ),
 .B( GND )
);


sg13_lv_pmos
#(
.l ( 1.3e-07 ) ,
.w ( WP ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_pmos ) ,
.spiceprefix ( X )
)
M7 ( 
 .D( X ),
 .G( A ),
 .S( net1 ),
 .B( VDD )
);


sg13_lv_nmos
#(
.l ( 1.3e-07 ) ,
.w ( WN ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_nmos ) ,
.spiceprefix ( X )
)
M8 ( 
 .D( X ),
 .G( A ),
 .S( net2 ),
 .B( GND )
);

endmodule

// expanding   symbol:  /home/luemmel/Dokumente/Studienarbeit/new_lib/schematics/inv.sym # of pins=2
// sym_path: /home/luemmel/Dokumente/Studienarbeit/new_lib/schematics/inv.sym
// sch_path: /home/luemmel/Dokumente/Studienarbeit/new_lib/schematics/inv.sch
module inv
#(
  parameter WP = 1.3e-06,
  parameter WN = 8.8e-07
)
(
  input wire IN,
  output wire OUT
);
wire VDD ;
wire GND ;


sg13_lv_pmos
#(
.l ( 1.3e-07 ) ,
.w ( WP ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_pmos ) ,
.spiceprefix ( X )
)
M9 ( 
 .D( OUT ),
 .G( IN ),
 .S( VDD ),
 .B( VDD )
);


sg13_lv_nmos
#(
.l ( 1.3e-07 ) ,
.w ( WN ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_nmos ) ,
.spiceprefix ( X )
)
M10 ( 
 .D( OUT ),
 .G( IN ),
 .S( GND ),
 .B( GND )
);

endmodule
