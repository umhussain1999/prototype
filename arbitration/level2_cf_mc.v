`timescale 1ns / 1ps



module level2_cf_mc (

    input [13:0] lw1,

    input [13:0] lw2,

    input pri,

    output [13:0] merged_out

);



    wire [13:0] c_out, s_out;



    conf_detection u1 (.c1(lw1[0]), .s1(lw1[1]), .c2(lw2[0]), .s2(lw2[1]), .conflict());

    conf_detection u2 (.c1(lw1[2]), .s1(lw1[3]), .c2(lw2[2]), .s2(lw2[3]), .conflict());

    conf_detection u3 (.c1(lw1[4]), .s1(lw1[5]), .c2(lw2[4]), .s2(lw2[5]), .conflict());

    conf_detection u4 (.c1(lw1[6]), .s1(lw1[7]), .c2(lw2[6]), .s2(lw2[7]), .conflict());



    merge_control v1 (.c1(lw1[0]), .s1(lw1[1]), .c2(lw2[0]), .s2(lw2[1]), .pri(pri), .cout(c_out[0]), .sout(s_out[0]));

    merge_control v2 (.c1(lw1[2]), .s1(lw1[3]), .c2(lw2[2]), .s2(lw2[3]), .pri(pri), .cout(c_out[1]), .sout(s_out[1]));

    merge_control v3 (.c1(lw1[4]), .s1(lw1[5]), .c2(lw2[4]), .s2(lw2[5]), .pri(pri), .cout(c_out[2]), .sout(s_out[2]));

    merge_control v4 (.c1(lw1[6]), .s1(lw1[7]), .c2(lw2[6]), .s2(lw2[7]), .pri(pri), .cout(c_out[3]), .sout(s_out[3]));



    assign merged_out = {c_out, s_out};



endmodule
