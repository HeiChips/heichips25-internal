`timescale 1ns/10ps
`celldefine
module latch
(
  output wire Q,
  input wire D,
  input wire GATE
);
endmodule
`endcelldefine

`celldefine
module mux
(
  output wire X,
  input wire A,
  input wire B,
  input wire SEL
);
endmodule
`endcelldefine

`celldefine
module mux_inv
(
  output wire X,
  input wire B,
  input wire A,
  input wire SEL
);
endmodule
`endcelldefine

`celldefine
module SwitchMatrixMultiplexer
(
  output wire X,
  input wire D,
  input wire SEL,
  input wire A,
  input wire B
);
endmodule
`endcelldefine

`celldefine
module SwitchMatrixMultiplexer_inv
(
  output wire X,
  input wire D,
  input wire SEL,
  input wire A,
  input wire B
);
endmodule
`endcelldefine
