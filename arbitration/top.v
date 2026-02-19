`timescale 1ns / 1ps



module cru_top_tree (

    input  wire [13:0] rw0_a,

    input  wire [13:0] rw0_b,

    input  wire [13:0] rw1_a,

    input  wire [13:0] rw1_b,

    input  wire [13:0] rw2_a,

    input  wire [13:0] rw2_b,

    input  wire [13:0] rw3_a,

    input  wire [13:0] rw3_b,



    input  wire        pri_l0_0,

    input  wire        pri_l0_1,

    input  wire        pri_l0_2,

    input  wire        pri_l0_3,



    input  wire        pri_l1_0,

    input  wire        pri_l1_1,



    input  wire        pri_l2,



    output wire [13:0] merged_out

);



    wire [13:0] l0_out0, l0_out1, l0_out2, l0_out3;

    wire [13:0] l1_out0, l1_out1;



    level0_cf_mc u_l0_0 (.rw1(rw0_a), .rw2(rw0_b), .pri(pri_l0_0), .merged_out(l0_out0));

    level0_cf_mc u_l0_1 (.rw1(rw1_a), .rw2(rw1_b), .pri(pri_l0_1), .merged_out(l0_out1));

    level0_cf_mc u_l0_2 (.rw1(rw2_a), .rw2(rw2_b), .pri(pri_l0_2), .merged_out(l0_out2));

    level0_cf_mc u_l0_3 (.rw1(rw3_a), .rw2(rw3_b), .pri(pri_l0_3), .merged_out(l0_out3));



    level1_cf_mc u_l1_0 (.lw1(l0_out0), .lw2(l0_out1), .pri(pri_l1_0), .merged_out(l1_out0));

    level1_cf_mc u_l1_1 (.lw1(l0_out2), .lw2(l0_out3), .pri(pri_l1_1), .merged_out(l1_out1));



    level2_cf_mc u_l2_0 (.lw1(l1_out0), .lw2(l1_out1), .pri(pri_l2),   .merged_out(merged_out));



endmodule
