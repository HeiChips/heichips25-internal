`timescale 1ns/1ps

module tb_shift_reg;

    parameter integer N = 8;

    reg             clk;
    reg             reset_n;
    reg             enable;
    reg             data_in;
    wire [N-1:0]    data_out;

    // DUT
    shift_reg #(
        .N(N)
    ) dut (
        .clk(clk),
        .reset_n(reset_n),
        .enable(enable),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Clock: 100 MHz -> 10 ns period
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    // Dump waveforms
    initial begin
        $dumpfile("./tb/out/shift_reg.vcd");
        $dumpvars(0, tb_shift_reg);
    end

    // Stimulus
    integer i;
    reg [N-1:0] test_pattern;
    reg [N-1:0] expected;

    initial begin
        $display("Starting shift_reg testbench...");

        // Init
        reset_n      = 1'b0;
        enable       = 1'b0;
        data_in      = 1'b0;
        test_pattern = 8'b10110011;
        expected     = {N{1'b0}};

        // Hold reset for a bit
        #20;
        reset_n = 1'b1;
        #10;

        // Shift in N bits, MSB first
        enable = 1'b1;
        for (i = N-1; i >= 0; i = i - 1) begin
            data_in = test_pattern[i];
            @(posedge clk);
            expected = (expected << 1) | test_pattern[i];

            #1;
            $display("time=%0t  data_in=%b  data_out=%b  expected=%b",
                     $time, test_pattern[i], data_out, expected);

            if (data_out !== expected) begin
                $display("ERROR: mismatch at bit %0d: got %b expected %b",
                         i, data_out, expected);
                $stop;
            end
        end

        // Try shifting more after lock, output should stay unchanged
        data_in = 1'b0;
        @(posedge clk);
        #1;
        if (data_out !== test_pattern) begin
            $display("ERROR: data_out changed after lock. got=%b expected=%b",
                     data_out, test_pattern);
            $stop;
        end

        data_in = 1'b1;
        @(posedge clk);
        #1;
        if (data_out !== test_pattern) begin
            $display("ERROR: data_out changed after lock. got=%b expected=%b",
                     data_out, test_pattern);
            $stop;
        end

        $display("Test passed. Final data_out = %b", data_out);
        #20;
        $finish;
    end

endmodule