
// Plain Verilog testbench for `heichips25_internal`.
// Minimal: provides a global CONFIG_STREAM and SELECT value, a clock and reset,
// streams CONFIG_STREAM LSB-first into the DUT shift register via ui_in[1]
// while ui_in[0] (enable) is high. Does not declare or stub any other modules.

`timescale 1ns/1ps

module testbench;

	// --- Global configuration parameters (change these at the top of the file)
	// Which of the 4 mux inputs to present on the outputs (maps to ui_in[3:2])
	parameter [1:0] SELECT = 2'b00;

	// Width of the configuration stream used by the DUT (matches internal width)
	// Default in DUT: CONFIG_BASE=102, AW=4, DW=4 -> WIDTH = 126
	parameter integer CONFIG_WIDTH = 126;

	// Provide a global configuration bitstream (LSB first when shifting into DUT)
	parameter [CONFIG_WIDTH-1:0] CONFIG_STREAM = {CONFIG_WIDTH{1'b0}};

	// --- DUT interface signals
	reg  [7:0] ui_in;
	wire [7:0] uo_out;
	wire [7:0] uio_in;   // tied low in this simple bench
	wire [7:0] uio_out;
	wire [7:0] uio_oe;
	reg        ena;
	reg        clk;
	reg        rst_n;

	// analog pins (inout in DUT) - left as wires in this bench
	wire analog_pin0;
	wire analog_pin1;
	wire analog_pin2;

	// tie unused external inputs
	assign uio_in = 8'h00;

	// Instantiate DUT (no parameter override)
	heichips25_internal dut (
		.ui_in    (ui_in),
		.uo_out   (uo_out),
		.uio_in   (uio_in),
		.uio_out  (uio_out),
		.uio_oe   (uio_oe),
		.ena      (ena),
		.clk      (clk),
		.rst_n    (rst_n),
		.analog_pin0(analog_pin0),
		.analog_pin1(analog_pin1),
		.analog_pin2(analog_pin2)
	);

	// --- Clock generator
	initial begin
		clk = 1'b0;
		forever #5 clk = ~clk; // 100 MHz nominal (10 ns period)
	end

	// --- Simple reset and stimulus
	integer i;
	reg [CONFIG_WIDTH-1:0] cfg_bits;

	initial begin
		// default inputs
		ui_in = 8'h00;
		ena   = 1'b1; // as per DUT comment, design sees ena=1 when powered

		// reset pulse
		rst_n = 1'b0;
		#20;
		rst_n = 1'b1;

		// set mux select (ui_in[3:2]) and keep other control bits low
		ui_in[3:2] = SELECT;
		ui_in[7:4] = 4'h0; // memory controls left zero for this simple bench

		// prepare configuration stream (use parameter value)
		cfg_bits = CONFIG_STREAM;

		// Drive enable high and shift CONFIG_WIDTH bits LSB-first into ui_in[1]
		ui_in[0] = 1'b1; // shift enable
		for (i = 0; i < CONFIG_WIDTH; i = i + 1) begin
			ui_in[1] = cfg_bits[i];
			@(posedge clk);
		end

		// stop enabling further shifts
		ui_in[0] = 1'b0;

		// wait a few cycles for DUT to respond
		repeat (10) @(posedge clk);

		// Print the selected output bytes
		$display("Time=%0t SELECT=%b uo_out=%02x uio_out=%02x uio_oe=%02x", $time, SELECT, uo_out, uio_out, uio_oe);

		// finish simulation
		#10 $finish;
	end

endmodule
