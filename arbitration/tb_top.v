`timescale 1ns / 1ps

module tb_top;

  reg  [13:0] rw0_a, rw0_b, rw1_a, rw1_b, rw2_a, rw2_b, rw3_a, rw3_b;
  reg         pri_l0_0, pri_l0_1, pri_l0_2, pri_l0_3;
  reg         pri_l1_0, pri_l1_1;
  reg         pri_l2;
  wire [13:0] merged_out;

  cru_top_tree dut (
    .rw0_a(rw0_a), .rw0_b(rw0_b),
    .rw1_a(rw1_a), .rw1_b(rw1_b),
    .rw2_a(rw2_a), .rw2_b(rw2_b),
    .rw3_a(rw3_a), .rw3_b(rw3_b),
    .pri_l0_0(pri_l0_0), .pri_l0_1(pri_l0_1), .pri_l0_2(pri_l0_2), .pri_l0_3(pri_l0_3),
    .pri_l1_0(pri_l1_0), .pri_l1_1(pri_l1_1),
    .pri_l2(pri_l2),
    .merged_out(merged_out)
  );

  initial begin
    rw0_a = 14'h0000; rw0_b = 14'h0000;
    rw1_a = 14'h0000; rw1_b = 14'h0000;
    rw2_a = 14'h0000; rw2_b = 14'h0000;
    rw3_a = 14'h0000; rw3_b = 14'h0000;

    pri_l0_0 = 1'b0; pri_l0_1 = 1'b0; pri_l0_2 = 1'b0; pri_l0_3 = 1'b0;
    pri_l1_0 = 1'b0; pri_l1_1 = 1'b0;
    pri_l2   = 1'b0;

    #5;

    rw0_a = 14'h1555; rw0_b = 14'h2AAA;
    rw1_a = 14'h000F; rw1_b = 14'h00F0;
    rw2_a = 14'h0F00; rw2_b = 14'h3000;
    rw3_a = 14'h3333; rw3_b = 14'h2CCC;

    pri_l0_0 = 1'b1; pri_l0_1 = 1'b0; pri_l0_2 = 1'b1; pri_l0_3 = 1'b0;
    pri_l1_0 = 1'b1; pri_l1_1 = 1'b0;
    pri_l2   = 1'b1;

    #5;

    pri_l0_0 = ~pri_l0_0;
    pri_l0_1 = ~pri_l0_1;
    pri_l0_2 = ~pri_l0_2;
    pri_l0_3 = ~pri_l0_3;
    pri_l1_0 = ~pri_l1_0;
    pri_l1_1 = ~pri_l1_1;
    pri_l2   = ~pri_l2;

    #5;

    $finish;
  end

endmodule
