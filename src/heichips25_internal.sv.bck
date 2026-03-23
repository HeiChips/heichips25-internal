/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module clkbuf_8 (input  wire A, output wire X);
  sg13g2_buf_8 u_buf (.A(A), .X(X));
endmodule

module clkbuf_16 (input  wire A, output wire X);
  sg13g2_buf_16 u_buf (.A(A), .X(X));
endmodule

(* noblackbox *)
module heichips25_internal (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n,    // reset_n - low to reset
    
    // Dedicated pins
    inout  wire       analog_pin0,
    inout  wire       analog_pin1,
    inout  wire       analog_pin2
);

    localparam integer WIDTH = 102;
    wire [WIDTH-1:0] data;
    
    wire clk0_out;
    wire clk1_out;
    wire clk2_out;
    wire osc_out;
    wire stable;
    wire clk_delayed;
    wire y_mux, y_mux_inv, y_latch, y_mux_latched, y_final;

    // Configure register to  read in serially from ui_in[1] when ui_in[0] is high, and output to data
    // The shift register is used to load the configuration data for the multimode DLL and other components.
    // The order of the configuration data matters.
    shift_reg #(
        .N(WIDTH)
    ) u_shift_reg (
        .clk    (clk),
        .reset_n(rst_n),
        .enable (ui_in[0]),
        .data_in(ui_in[1]),
        .data_out(data)
    );

    // Config data width is 66 => [0:65] bits.
    multimode_dll u_multimode_dll (
        .resetb                (rst_n),
        .enable                (ena),
        .osc                   (clk),
        .f_osc_multiply_factor (data[4:0]),
        .f_clk0_divider        (data[9:5]),
        .f_clk1_divider        (data[14:10]),
        .f_clk2_divider        (data[19:15]),
        .clk0_phase_sel        (data[24:20]),
        .clk1_phase_sel        (data[29:25]),
        .clk2_phase_sel        (data[34:30]),
        .mode_xor              (data[37:35]),
        .bias                  (data[38]),
        .dco                   (data[39]),
        .ext_trim              (data[65:40]),
        .clk0_out              (clk0_out),
        .clk1_out              (clk1_out),
        .clk2_out              (clk2_out),
        .osc_out               (osc_out),
        .stable                (stable)
    );
    (* keep *)
    clkbuf_16 u_clkbuf_analog_pin0 (.A(clk0_out), .X(analog_pin0));
    (* keep *)
    clkbuf_16 u_clkbuf_analog_pin1 (.A(clk1_out), .X(analog_pin1));

    // Config data width is 28 => [93:66] bits.
    delay_line u_delay_line (
        .reset  (rst_n),
        .trim   (data[89:66]),
        .sel    (data[93:90]),
        .clk    (clk),
        .clk_delayed(clk_delayed)
    );
    (* keep *)
    clkbuf_16 u_clkbuf_analog_pin2 (.A(clk_delayed), .X(analog_pin2));

    // Config data width is 8 => [101:94] bits.
    custom_cells u_custom_cells (
        .a(data[94]), .b(data[95]), .c(data[96]), .d(data[97]),
        .s0(data[98]), .s1(data[99]),
        .en0(data[100]), .en1(data[101]),
        .y_mux(y_mux),
        .y_mux_inv(y_mux_inv),
        .y_latch(y_latch),
        .y_mux_latched(y_mux_latched),
        .y_final(y_final)
    );

    // Select which of the four designs should be output
    // to all dedicated outputs and IOs. The selection is based on ui_in[3:2].
    mux_8x4_to_8 u_mux_8x4_to_8 (
        .sel (ui_in[3:2]),
        // Multimode DLL outputs.
        .in0 ({clk0_out, clk1_out, clk2_out, osc_out, stable, 1'b0, 1'b0, 1'b0}),
        // Delayed Line output.
        .in1 ({clk_delayed, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}),
        // Custom cell outputs (if any).
        .in2 ({y_mux, y_mux_inv, y_latch, y_mux_latched, y_final, 1'b0, 1'b0, 1'b0}),
        // Some
        .in3 ({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}),
        // Dedicated outputs.
        .out (uio_out)
    );

endmodule
