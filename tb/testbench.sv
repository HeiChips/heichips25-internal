`timescale 1ns/1ps
`default_nettype none

module tb_heichips25_internal;

    parameter integer AW = 4;
    parameter integer DW = 4;
    parameter integer MUX_W = 24;

    parameter integer CONFIG_BASE = 102;
    parameter integer WIDTH = CONFIG_BASE + (2*AW) + (4*DW);

    // Global simulation parameters
    parameter real CLK_FREQ_MHZ = 10;
    parameter [WIDTH-1:0] SHIFT_WORD = {{(WIDTH-5){1'b0}}, 5'd12};
    parameter [1:0] MUX_SEL = 2'b00;
    parameter integer SIM_TIME_US = 50;

    localparam real CLK_PERIOD_NS = 1000.0 / CLK_FREQ_MHZ;
    localparam real HALF_PERIOD_NS = CLK_PERIOD_NS / 2.0;
    localparam integer SIM_TIME_NS = SIM_TIME_US * 1000;

    reg  [7:0] ui_in;
    wire [7:0] uo_out;
    reg  [7:0] uio_in;
    wire [7:0] uio_out;
    wire [7:0] uio_oe;
    reg        ena;
    reg        clk;
    reg        rst_n;

    wire analog_pin0;
    wire analog_pin1;
    wire analog_pin2;

    integer i;

    heichips25_internal dut (
        .ui_in(ui_in),
        .uo_out(uo_out),
        .uio_in(uio_in),
        .uio_out(uio_out),
        .uio_oe(uio_oe),
        .ena(ena),
        .clk(clk),
        .rst_n(rst_n),
        .analog_pin0(analog_pin0),
        .analog_pin1(analog_pin1),
        .analog_pin2(analog_pin2)
    );

    // Clock generation
    initial begin
        clk = 1'b0;
        forever #(HALF_PERIOD_NS) clk = ~clk;
    end

    function [WIDTH-1:0] reverse_bits;
        input [WIDTH-1:0] in_word;
        integer k;
        begin
            for (k = 0; k < WIDTH; k = k + 1)
                reverse_bits[k] = in_word[WIDTH-1-k];
        end
    endfunction

    task apply_reset;
        begin
            ui_in   = 8'b0;
            uio_in  = 8'b0;
            ena     = 1'b0;
            rst_n   = 1'b0;

            // Keep mux select fixed, memory controls low
            ui_in[7:4] = 4'b0000;
            ui_in[3:2] = MUX_SEL;
            ui_in[1]   = 1'b0;
            ui_in[0]   = 1'b0;

            repeat (4) @(posedge clk);
            rst_n = 1'b1;
            repeat (2) @(posedge clk);
        end
    endtask

    task shift_word_msb_first;
        begin
            for (i = WIDTH-1; i >= 0; i = i - 1) begin
                @(negedge clk);
                ui_in[3:2] = MUX_SEL;
                ui_in[1]   = SHIFT_WORD[i];
                ui_in[0]   = 1'b1;
            end

            @(negedge clk);
            ui_in[0] = 1'b0;
            ui_in[1] = 1'b0;
        end
    endtask

    initial begin
        apply_reset();

        $display("--------------------------------------------------");
        $display("TB start");
        $display("WIDTH       = %0d bits", WIDTH);
        $display("CLK FREQ    = %0f MHz", CLK_FREQ_MHZ);
        $display("MUX_SEL     = %b", MUX_SEL);
        $display("SHIFT_WORD  = %b", SHIFT_WORD);
        $display("SIM_TIME_US = %0d us", SIM_TIME_US);
        $display("--------------------------------------------------");

        shift_word_msb_first();

        // ena only goes high after all bits were shifted in
        @(negedge clk);
        ena = 1'b1;

        repeat (2) @(posedge clk);

        $display("uo_out  = %b", uo_out);
        $display("uio_out = %b", uio_out);
        $display("uio_oe  = %b", uio_oe);
        $display("--------------------------------------------------");
    end

    initial begin
        #SIM_TIME_NS;
        $display("Reached simulation limit of %0d us", SIM_TIME_US);
        $finish;
    end

endmodule

`default_nettype wire