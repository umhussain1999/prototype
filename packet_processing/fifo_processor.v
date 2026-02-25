`timescale 1ns/1ps
module fifo_processor_mux #(
    parameter integer WIDTH = 8
)(

    input  wire [WIDTH-1:0] in_packet,

    input  wire             full0,
    input  wire             full1,
    input  wire             full2,
    input  wire             full3,
    input  wire             full4,
    input  wire             full5,
    input  wire             full6,
    input  wire             full7,
    output wire             in_ready,
    output wire             w_en0,
    output wire             w_en1,
    output wire             w_en2,
    output wire             w_en3,
    output wire             w_en4,
    output wire             w_en5,
    output wire             w_en6,
    output wire             w_en7,



    output wire [WIDTH-1:0] data_in0,
    output wire [WIDTH-1:0] data_in1,
    output wire [WIDTH-1:0] data_in2,
    output wire [WIDTH-1:0] data_in3,
    output wire [WIDTH-1:0] data_in4,
    output wire [WIDTH-1:0] data_in5,
    output wire [WIDTH-1:0] data_in6,
    output wire [WIDTH-1:0] data_in7

);



    wire [2:0] sel;

    assign sel = in_packet[7:5];



    reg  sel_full;



    always @(*) begin

        case (sel)

            3'd0: sel_full = full0;

            3'd1: sel_full = full1;

            3'd2: sel_full = full2;

            3'd3: sel_full = full3;

            3'd4: sel_full = full4;

            3'd5: sel_full = full5;

            3'd6: sel_full = full6;

            3'd7: sel_full = full7;

            default: sel_full = 1'b1;

        endcase

    end



    assign in_ready = ~sel_full;



    assign w_en0 = in_ready && (sel == 3'd0);

    assign w_en1 = in_ready && (sel == 3'd1);

    assign w_en2 = in_ready && (sel == 3'd2);

    assign w_en3 = in_ready && (sel == 3'd3);

    assign w_en4 = in_ready && (sel == 3'd4);

    assign w_en5 = in_ready && (sel == 3'd5);

    assign w_en6 = in_ready && (sel == 3'd6);

    assign w_en7 = in_ready && (sel == 3'd7);



    assign data_in0 = in_packet;

    assign data_in1 = in_packet;

    assign data_in2 = in_packet;

    assign data_in3 = in_packet;

    assign data_in4 = in_packet;

    assign data_in5 = in_packet;

    assign data_in6 = in_packet;

    assign data_in7 = in_packet;



endmodule
