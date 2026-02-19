`timescale 1ns / 1ps






module tb_req_word_gen;






reg [2:0] in_port;

reg [2:0] out_port;

wire [6:0] d;

wire [6:0] c;






req_word_gen dut (

    .in_port(in_port),

    .out_port(out_port),

    .d(d),

    .c(c)

);






initial begin

    in_port = 3'b000;

    out_port = 3'b000;

    #10;

    

    in_port = 3'b101;

    out_port = 3'b011;

    #10;

    

    in_port = 3'b010;

    out_port = 3'b101;

    #10;

    

    in_port = 3'b111;

    out_port = 3'b111;

    #10;






    $finish;

end






endmodule
