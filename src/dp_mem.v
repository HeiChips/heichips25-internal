`default_nettype none

module tdp_dblpump_1p_wrap #(
  parameter int AW = 9,
  parameter int DW = 32
)(
  input  wire          rst_n,
  input  wire          clk,
  input  wire          clk90,

  input  wire          a_en,
  input  wire          a_we,
  input  wire [AW-1:0] a_addr,
  input  wire [DW-1:0] a_wdata,
  input  wire [DW-1:0] a_bm,
  output reg  [DW-1:0] a_rdata,

  input  wire          b_en,
  input  wire          b_we,
  input  wire [AW-1:0] b_addr,
  input  wire [DW-1:0] b_wdata,
  input  wire [DW-1:0] b_bm,
  output reg  [DW-1:0] b_rdata,

  output wire          A_CLK,
  output reg  [DW-1:0] A_DIN,
  output reg  [DW-1:0] A_BM,
  output reg  [AW-1:0] A_ADDR,
  output reg           A_MEN,
  output reg           A_REN,
  output reg           A_WEN,
  output wire          A_DLY,
  input  wire [DW-1:0] A_DOUT,

  output wire [DW-1:0] A_BIST_DIN,
  output wire [DW-1:0] A_BIST_BM,
  output wire [AW-1:0] A_BIST_ADDR,
  output wire          A_BIST_MEN,
  output wire          A_BIST_REN,
  output wire          A_BIST_WEN,
  output wire          A_BIST_CLK,
  output wire          A_BIST_EN
);

  wire clk2x = clk ^ clk90;

  assign A_CLK = clk2x;
  assign A_DLY = 1'b1;

  assign A_BIST_EN   = 1'b0;
  assign A_BIST_DIN  = {DW{1'b0}};
  assign A_BIST_BM   = {DW{1'b0}};
  assign A_BIST_ADDR = {AW{1'b0}};
  assign A_BIST_MEN  = 1'b0;
  assign A_BIST_REN  = 1'b0;
  assign A_BIST_WEN  = 1'b0;
  assign A_BIST_CLK  = 1'b0;

  // 1x request capture
  reg          a_en_q, a_we_q;
  reg [AW-1:0] a_addr_q;
  reg [DW-1:0] a_wdata_q, a_bm_q;

  reg          b_en_q, b_we_q;
  reg [AW-1:0] b_addr_q;
  reg [DW-1:0] b_wdata_q, b_bm_q;

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      a_en_q <= 1'b0; a_we_q <= 1'b0; a_addr_q <= '0; a_wdata_q <= '0; a_bm_q <= '0;
      b_en_q <= 1'b0; b_we_q <= 1'b0; b_addr_q <= '0; b_wdata_q <= '0; b_bm_q <= '0;
    end else begin
      a_en_q    <= a_en;
      a_we_q    <= a_we;
      a_addr_q  <= a_addr;
      a_wdata_q <= a_wdata;
      a_bm_q    <= a_bm;

      b_en_q    <= b_en;
      b_we_q    <= b_we;
      b_addr_q  <= b_addr;
      b_wdata_q <= b_wdata;
      b_bm_q    <= b_bm;
    end
  end

  // 2x schedule: A then B
  reg phase;
  reg exec_port;
  reg exec_rd;

  reg [DW-1:0] a_buf, b_buf;

  always @(negedge clk2x or negedge rst_n) begin
    if (!rst_n) begin
      phase  <= 1'b0;
      A_DIN  <= '0;
      A_BM   <= '0;
      A_ADDR <= '0;
      A_MEN  <= 1'b0;
      A_REN  <= 1'b0;
      A_WEN  <= 1'b0;
    end else begin
      if (!phase) begin
        A_ADDR <= a_addr_q;
        A_DIN  <= a_wdata_q;
        A_BM   <= a_bm_q;
        A_MEN  <= a_en_q;
        A_WEN  <= a_en_q && a_we_q;
        A_REN  <= a_en_q && !a_we_q;
      end else begin
        A_ADDR <= b_addr_q;
        A_DIN  <= b_wdata_q;
        A_BM   <= b_bm_q;
        A_MEN  <= b_en_q;
        A_WEN  <= b_en_q && b_we_q;
        A_REN  <= b_en_q && !b_we_q;
      end
      phase <= ~phase;
    end
  end

  always @(posedge clk2x or negedge rst_n) begin
    if (!rst_n) begin
      exec_port <= 1'b0;
      exec_rd   <= 1'b0;
    end else begin
      exec_port <= ~phase;
      exec_rd   <= (A_MEN && A_REN);
    end
  end

  always @(negedge clk2x or negedge rst_n) begin
    if (!rst_n) begin
      a_buf <= '0;
      b_buf <= '0;
    end else begin
      if (exec_rd) begin
        if (!exec_port) a_buf <= A_DOUT;
        else            b_buf <= A_DOUT;
      end
    end
  end

  // ------------------------------------------------------------------
  // add one extra clk-stage for A so both are 3 cycles
  // ------------------------------------------------------------------
  reg [DW-1:0] a_rdata_d1;

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      a_rdata_d1 <= '0;
      a_rdata    <= '0;
      b_rdata    <= '0;
    end else begin
      // B is already effectively "late" -> keep direct
      b_rdata <= b_buf;

      // Add +1 clk cycle delay to A
      a_rdata_d1 <= a_buf;
      a_rdata    <= a_rdata_d1;
    end
  end

endmodule

`default_nettype wire