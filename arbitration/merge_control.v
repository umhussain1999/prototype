`timescale 1ns / 1ps



module merge_control (

    input wire c1,

    input wire s1,

    input wire c2,

    input wire s2,

    input wire pri,

    output wire cout,

    output wire sout

);



    assign cout = (pri & c1) | (~pri & c2);

    assign sout = (pri & s1) | (~pri & s2);



endmodule
