`timescale 1ns / 1ps



module conf_detection (

    input wire c1,

    input wire s1,

    input wire c2,

    input wire s2,

    output wire conflict

);

    wire n1, n2, n3;



    assign n1 = c1 & s1;

    assign n2 = c2 & ~s1;

    assign n3 = s2 & ~c1;

    assign conflict = n1 & (n2 | n3);



endmodule
