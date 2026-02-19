`timescale 1ns / 1ps



module level0_cf_mc (

    input [13:0] rw1,

    input [13:0] rw2,

    input pri,

    output [13:0] merged_out

);



    wire [13:0] c_out, s_out;



    conf_detection u1 (.c1(rw1[0]),  .s1(rw1[1]),  .c2(rw2[0]),  .s2(rw2[1]),  .conflict());

    conf_detection u2 (.c1(rw1[2]),  .s1(rw1[3]),  .c2(rw2[2]),  .s2(rw2[3]),  .conflict());

    conf_detection u3 (.c1(rw1[4]),  .s1(rw1[5]),  .c2(rw2[4]),  .s2(rw2[5]),  .conflict());

    conf_detection u4 (.c1(rw1[6]),  .s1(rw1[7]),  .c2(rw2[6]),  .s2(rw2[7]),  .conflict());

    conf_detection u5 (.c1(rw1[8]),  .s1(rw1[9]),  .c2(rw2[8]),  .s2(rw2[9]),  .conflict());

    conf_detection u6 (.c1(rw1[10]), .s1(rw1[11]), .c2(rw2[10]), .s2(rw2[11]), .conflict());

    conf_detection u7 (.c1(rw1[12]), .s1(rw1[13]), .c2(rw2[12]), .s2(rw2[13]), .conflict());



    merge_control v1 (.c1(rw1[0]),  .s1(rw1[1]),  .c2(rw2[0]),  .s2(rw2[1]),  .pri(pri), .cout(c_out[0]), .sout(s_out[0]));

    merge_control v2 (.c1(rw1[2]),  .s1(rw1[3]),  .c2(rw2[2]),  .s2(rw2[3]),  .pri(pri), .cout(c_out[1]), .sout(s_out[1]));

    merge_control v3 (.c1(rw1[4]),  .s1(rw1[5]),  .c2(rw2[4]),  .s2(rw2[5]),  .pri(pri), .cout(c_out[2]), .sout(s_out[2]));

    merge_control v4 (.c1(rw1[6]),  .s1(rw1[7]),  .c2(rw2[6]),  .s2(rw2[7]),  .pri(pri), .cout(c_out[3]), .sout(s_out[3]));

    merge_control v5 (.c1(rw1[8]),  .s1(rw1[9]),  .c2(rw2[8]),  .s2(rw2[9]),  .pri(pri), .cout(c_out[4]), .sout(s_out[4]));

    merge_control v6 (.c1(rw1[10]), .s1(rw1[11]), .c2(rw2[10]), .s2(rw2[11]), .pri(pri), .cout(c_out[5]), .sout(s_out[5]));

    merge_control v7 (.c1(rw1[12]), .s1(rw1[13]), .c2(rw2[12]), .s2(rw2[13]), .pri(pri), .cout(c_out[6]), .sout(s_out[6]));



    assign merged_out = {c_out, s_out};



endmodule
