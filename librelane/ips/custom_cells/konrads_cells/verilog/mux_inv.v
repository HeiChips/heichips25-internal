// sch_path: /home/luemmel/Dokumente/Studienarbeit/new_lib/layouts/sch/mux_inv.sch
module mux_inv
(
  output wire !OUT,
  input wire B,
  input wire A,
  input wire SEL
);
wire VDD ;
wire net1 ;
wire net2 ;
wire net3 ;
wire GND ;

sg13_lv_pmos
#(
.l ( PL ) ,
.w ( PW ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_pmos ) ,
.spiceprefix ( X )
)
M5 ( 
 .D( net2 ),
 .G( net1 ),
 .S( VDD ),
 .B( VDD )
);


sg13_lv_nmos
#(
.l ( NL ) ,
.w ( NW ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_nmos ) ,
.spiceprefix ( X )
)
M6 ( 
 .D( net1 ),
 .G( SEL ),
 .S( GND ),
 .B( GND )
);


sg13_lv_pmos
#(
.l ( PL ) ,
.w ( PW ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_pmos ) ,
.spiceprefix ( X )
)
M7 ( 
 .D( !OUT ),
 .G( B ),
 .S( net2 ),
 .B( VDD )
);


sg13_lv_nmos
#(
.l ( NL ) ,
.w ( NW ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_nmos ) ,
.spiceprefix ( X )
)
M8 ( 
 .D( !OUT ),
 .G( B ),
 .S( net1 ),
 .B( GND )
);


sg13_lv_pmos
#(
.l ( PL ) ,
.w ( PW ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_pmos ) ,
.spiceprefix ( X )
)
M1 ( 
 .D( net1 ),
 .G( SEL ),
 .S( VDD ),
 .B( VDD )
);


sg13_lv_nmos
#(
.l ( NL ) ,
.w ( NW ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_nmos ) ,
.spiceprefix ( X )
)
M2 ( 
 .D( net3 ),
 .G( net1 ),
 .S( GND ),
 .B( GND )
);


sg13_lv_pmos
#(
.l ( PL ) ,
.w ( PW ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_pmos ) ,
.spiceprefix ( X )
)
M3 ( 
 .D( !OUT ),
 .G( A ),
 .S( net1 ),
 .B( VDD )
);


sg13_lv_nmos
#(
.l ( NL ) ,
.w ( NW ) ,
.ng ( 1 ) ,
.m ( 1 ) ,
.model ( sg13_lv_nmos ) ,
.spiceprefix ( X )
)
M4 ( 
 .D( !OUT ),
 .G( A ),
 .S( net3 ),
 .B( GND )
);

endmodule
