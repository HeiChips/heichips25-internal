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
module heichips25_internal #(
    parameter integer AW = 4,    // 16 addresses
    parameter integer DW = 4,    // 4-bit nibbles
    parameter integer MUX_W = 24 
)(
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
    

    // --- 1. Configuration Shift Register ---
    // Total bits: DLL(66) + Delay(28) + Custom(8) + Mem_A_Addr(4) + Mem_A_Data(4) = 110
    localparam integer CONFIG_BASE = 102;
    localparam integer WIDTH = CONFIG_BASE + (2*AW) + (4*DW); 
    wire [WIDTH-1:0] data;
    
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


    // ---  DLL Instance ---
    // Config data width is 66 => [0:65] bits.

    wire clk0_out, clk1_out, clk2_out, osc_out, stable;
    multimode_dll u_multimode_dll (
        .resetb(rst_n), .enable(ena), .osc(clk),
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
        .clk0_out(clk0_out), .clk1_out(clk1_out), .clk2_out(clk2_out),
        .osc_out(osc_out), .stable(stable)
    );
    
    (* keep *)
    clkbuf_16 u_clkbuf_analog_pin0 (.A(clk0_out), .X(analog_pin0));
    (* keep *)
    clkbuf_16 u_clkbuf_analog_pin1 (.A(clk1_out), .X(analog_pin1));


    // ---  Delay Line Instance ---
    // Config data width is 28 => [93:66] bits. data[89:66] data[93:90]
    wire clk_delayed;
    delay_line u_delay_line (
        .reset(rst_n), .trim(data[89:66]), .sel(data[93:90]),
        .clk(clk), .clk_delayed(clk_delayed)
    );
    (* keep *)
    clkbuf_16 u_clkbuf_analog_pin2 (.A(clk_delayed), .X(analog_pin2));

    // ---  Custom Cells Instance ---
    // Config data width is 8 => [101:94] bits.

    wire y_mux, y_mux_inv, y_latch, y_mux_latched, y_final;
    custom_cells u_custom_cells (
        .a(data[94]), .b(data[95]), .c(data[96]), .d(data[97]),
        .s0(data[98]), .s1(data[99]), .en0(data[100]), .en1(data[101]),
        .y_mux(y_mux), .y_mux_inv(y_mux_inv), .y_latch(y_latch),
        .y_mux_latched(y_mux_latched), .y_final(y_final)
    );

    // ---  Double-Pumped Memory Wrapper ---
    wire [DW-1:0] a_rdata, b_rdata;
    wire mem_phy_clk, mem_phy_men, mem_phy_wen, mem_phy_ren;
    wire [AW-1:0] mem_phy_addr;
    wire [DW-1:0] mem_phy_din,bit_mask;
    wire delay;
    tdp_dblpump_1p_wrap #(.AW(AW), .DW(DW)) u_mem (
        .clk(clk), .clk90(clk_delayed), .rst_n(rst_n),
        .a_en(ui_in[4]), .a_we(ui_in[5]),
        .a_addr(data[CONFIG_BASE +: AW]),
        .a_wdata(data[(CONFIG_BASE+AW) +: DW]),
        .a_bm(data[(CONFIG_BASE+AW +DW) +: DW]), .a_rdata(a_rdata),
        .b_en(ui_in[6]), .b_we(ui_in[7]),
        .b_addr(data[(CONFIG_BASE + AW + (2*DW)) +: AW]), .b_wdata(data[(CONFIG_BASE + (2*AW) + (2*DW) ) +: DW]),
        .b_bm(data[(CONFIG_BASE + (2*AW) + (3*DW) ) +: DW]), .b_rdata(b_rdata),
        // Physical interface to SRAM macro
        .A_CLK(mem_phy_clk), .A_ADDR(mem_phy_addr), .A_DIN(mem_phy_din),
        .A_MEN(mem_phy_men), .A_REN(),.A_WEN(mem_phy_wen), .A_DOUT(uio_in[3:0]) , .A_DLY(delay), .A_BM(bit_mask)
    );

    // --- 24-bit Output Mux ---
    wire [MUX_W-1:0] mux_bus;
    mux_Nx4_to_N #(.MUX_W(MUX_W)) u_mux (
        .sel(ui_in[3:2]),
        .in0({{(MUX_W-5){1'b0}}, osc_out, stable,clk2_out, clk1_out, clk0_out}),
        .in1({{(MUX_W-1){1'b0}}, clk_delayed}),
        .in2({{(MUX_W-5){1'b0}}, y_mux, y_mux_inv, y_latch, y_mux_latched, y_final}),
        .in3({mem_phy_clk,mem_phy_wen,mem_phy_men,mem_phy_din,mem_phy_addr,delay,bit_mask,b_rdata, a_rdata}),
        .out(mux_bus)
    );

    // --- 7. Output Assignments (Total 24 bits) ---
    assign uo_out  = mux_bus[7:0];   
    assign uio_out = mux_bus[15:8];  
    assign uio_oe = mux_bus[23:16]; 
endmodule