module shift_reg #(
    parameter integer N = 8
) (
    input  wire         clk,
    input  wire         reset_n,
    input  wire         enable,
    input  wire         data_in,
    output reg  [N-1:0] data_out
);

    localparam integer CNT_W = (N <= 1) ? 1 : $clog2(N + 1);

    reg [CNT_W-1:0] bit_count;
    reg             locked;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            data_out  <= {N{1'b0}};
            bit_count <= {CNT_W{1'b0}};
            locked    <= 1'b0;
        end else if (enable && !locked) begin
            data_out <= (data_out << 1) | data_in;

            if (bit_count == N-1) begin
                locked <= 1'b1;
            end else begin
                bit_count <= bit_count + 1'b1;
            end
        end
    end

endmodule