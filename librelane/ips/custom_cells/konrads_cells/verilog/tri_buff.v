// sch_path: /home/luemmel/Dokumente/Studienarbeit/new_lib/layouts/sch/tri_buff.sch
module tri_buff
(
  output wire X,
  input wire A,
  input wire S,
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
