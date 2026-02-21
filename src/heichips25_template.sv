// SPDX-FileCopyrightText: © 2025 XXX Authors
// SPDX-License-Identifier: Apache-2.0

// Adapted from the Tiny Tapeout template

`default_nettype none

module heichips25_template (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    localparam integer WIDTH = 79;
    wire [WIDTH-1:0] data;
    
    wire clk0_out;
    wire clk1_out;
    wire clk2_out;
    wire osc_out;
    wire stable;
    wire adc_ready;
    wire [7:0] adc_data;
    wire clk_delayed;
    wire custom_y;
    wire custom_z;

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

    adc u_adc (
        .clk      (clk),
        .start    (data[66]),
        .analog_in(data[74:67]),
        .ready    (adc_ready),
        .data_out (adc_data)
    );

    // That we should see how to size for now it does not fit
    /*custom_cells u_custom_cells (
        .a   (ui_in[1]),
        .b   (ui_in[2]),
        .clk (clk),
        .sel (ui_in[3]),
        .y   (custom_y),
        .z   (custom_z)
    );*/

    delay_line u_delay_line (
        .clk        (clk),
        .delay      (data[78:75]),
        .clk_delayed(clk_delayed)
    );

    // Select which of the four designs should be output
    // to all dedicated outputs and IOs. The selection is based on ui_in[3:2].
    mux_8x4_to_8 u_mux_8x4_to_8 (
        .sel (ui_in[3:2]),
        // Multimode DLL outputs.
        .in0 ({clk0_out, clk1_out, clk2_out, osc_out, stable, 1'b0, 1'b0, 1'b0}),
        // ADC outputs.
        .in1 ({adc_ready, adc_data}),
        // Delayed clock output.
        .in2 ({clk_delayed, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}),
        // Custom cell outputs (if any).
        .in3 ({custom_z, custom_y, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}),
        // Dedicated outputs.
        .out (uio_out)
    );

endmodule
