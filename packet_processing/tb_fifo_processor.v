`timescale 1ns/1ps



module tb_fifo_processor_mux;



    reg  [7:0] in_packet;



    reg  full0, full1, full2, full3;

    reg  full4, full5, full6, full7;



    wire in_ready;



    wire w_en0, w_en1, w_en2, w_en3;

    wire w_en4, w_en5, w_en6, w_en7;



    wire [7:0] data_in0, data_in1, data_in2, data_in3;

    wire [7:0] data_in4, data_in5, data_in6, data_in7;



    fifo_processor_mux dut (

        .in_packet(in_packet),



        .full0(full0),

        .full1(full1),

        .full2(full2),

        .full3(full3),

        .full4(full4),

        .full5(full5),

        .full6(full6),

        .full7(full7),



        .in_ready(in_ready),



        .w_en0(w_en0),

        .w_en1(w_en1),

        .w_en2(w_en2),

        .w_en3(w_en3),

        .w_en4(w_en4),

        .w_en5(w_en5),

        .w_en6(w_en6),

        .w_en7(w_en7),



        .data_in0(data_in0),

        .data_in1(data_in1),

        .data_in2(data_in2),

        .data_in3(data_in3),

        .data_in4(data_in4),

        .data_in5(data_in5),

        .data_in6(data_in6),

        .data_in7(data_in7)

    );



    integer i;



    initial begin

        for (i = 0; i < 20; i = i + 1) begin



            in_packet = $random;



            full0 = $random;

            full1 = $random;

            full2 = $random;

            full3 = $random;

            full4 = $random;

            full5 = $random;

            full6 = $random;

            full7 = $random;



            #1;



            $display("--------------------------------------------------");

            $display("Packet = %02h  Arrival = %0d  Dest = %0d  Payload = %0d",

                     in_packet,

                     in_packet[7:5],

                     in_packet[4:2],

                     in_packet[1:0]);



            $display("Full = %b%b%b%b%b%b%b%b",

                     full7, full6, full5, full4,

                     full3, full2, full1, full0);



            $display("Ready = %b", in_ready);



            $display("Write Enables = %b%b%b%b%b%b%b%b",

                     w_en7, w_en6, w_en5, w_en4,

                     w_en3, w_en2, w_en1, w_en0);



            $display("Selected FIFO = %0d", in_packet[7:5]);



            #9;

        end



        $finish;

    end



endmodule
