`default_nettype none

/*
================================================
NOTE: EDIT THID FILE IN x_custom_cells/rtl/custom_cells.v 
SINCE IT IS OVERWRITTEN BY THE MAKEFILE
CHANGES MADE IN heichips25-template/src/custom_cells.v WILL BE LOST!
================================================
*/

// We dont have liberty files for the custom cells, 
// so we declare them as blackboxes here.

(* blackbox *)
module latch
(
  output wire Q,
  input wire D,
  input wire GATE
);
endmodule

(* blackbox *)
module mux
(
  output wire X,
  input wire A,
  input wire B,
  input wire SEL
);
endmodule

(* blackbox *)
module mux_inv
(
  output wire X,
  input wire B,
  input wire A,
  input wire SEL
);
endmodule

(* blackbox *)
module SwitchMatrixMultiplexer
(
  output wire X,
  input wire D,
  input wire SEL,
  input wire A,
  input wire B
);
endmodule

(* blackbox *)
module SwitchMatrixMultiplexer_inv
(
  output wire X,
  input wire D,
  input wire SEL,
  input wire A,
  input wire B
);
endmodule

// ============================================================
// custom_cells.v  (behavioral models of the custom cells)
// ============================================================

// 2:1 mux
module mux2_1 (
    input  wire A,
    input  wire B,
    input  wire S,
    output wire Y
);
    /*(* keep *)
    mux mux_inst(
        .X(Y),
        .A(A),
        .B(B),
        .SEL(S)
    );*/
    
    assign Y = S ? B : A;
endmodule

// 2:1 mux with inverted output
module mux2_1_inv (
    input  wire A,
    input  wire B,
    input  wire S,
    output wire Y
);
    /*(* keep *)
    mux_inv mux_inv_inst(
        .X(Y),
        .A(A),
        .B(B),
        .SEL(S)
    );*/

    assign Y = ~(S ? B : A);
endmodule

// Level-sensitive latch (transparent when EN=1, holds when EN=0)
module dlatch (
    input  wire D,
    input  wire EN,
    output reg  Q
);
    /*(* keep *)
    latch latch_inst(
        .D(D),
        .Q(Q),
        .GATE(EN)
    );*/

    always @(D or EN) begin
        if (EN)
            Q <= D;
    end
endmodule

// 2:1 mux whose output is latched (transparent when EN=1, holds when EN=0)
module mux2_1_latched (
    input  wire A,
    input  wire B,
    input  wire S,
    input  wire EN,
    output reg  Y
);
    /*(* keep *)
    SwitchMatrixMultiplexer SwitchMatrixMultiplexer_inst(
        .X(Y),
        .A(A),
        .B(B),
        .SEL(S),
        .D(EN)
    );*/

    always @(A or B or S or EN) begin
        if (EN)
            Y <= (S ? B : A);
    end
endmodule

module mux2_1_latched_inv (
    input  wire A,
    input  wire B,
    input  wire S,
    input  wire EN,
    output reg  Y
);
    /*(* keep *)
    SwitchMatrixMultiplexer_inv SwitchMatrixMultiplexer_inv_inst(
        .X(Y),
        .A(A),
        .B(B),
        .SEL(S),
        .D(EN)
    );*/

    always @(A or B or S or EN) begin
        if (EN)
            Y <= ~(S ? B : A);
    end
endmodule

// ============================================================
// Comprehensive "test circuit" that uses instances of all cells
// ============================================================
module custom_cells (
    input  wire a,
    input  wire b,
    input  wire c,
    input  wire d,
    input  wire s0,
    input  wire s1,
    input  wire en0,
    input  wire en1,
    output wire y_mux,
    output wire y_mux_inv,
    output wire y_latch,
    output wire y_mux_latched,
    output wire y_final
);
    // combinational muxes
    mux2_1 u_mux0 (
        .A(a), .B(b), .S(s0), .Y(y_mux)
    );

    mux2_1_inv u_mux1 (
        .A(c), .B(d), .S(s0), .Y(y_mux_inv)
    );

    // latched mux: selects between the two mux outputs and latches it on en0
    mux2_1_latched u_latmux (
        .A(y_mux),
        .B(y_mux_inv),
        .S(s1),
        .EN(en0),
        .Y(y_mux_latched)
    );

    // latch the latched-mux output on en1
    dlatch u_latch0 (
        .D(y_mux_latched),
        .EN(en1),
        .Q(y_latch)
    );

    // a final mux stage to exercise chaining (select between latched and direct)
    mux2_1_latched_inv u_final_mux (
        .A(y_latch),
        .B(y_mux),
        .S(s1),
        .EN(en1),
        .Y(y_final)
    );
endmodule
`default_nettype wire