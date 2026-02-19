`timescale 1ns/1ps



module fifo_tb;



    parameter DATA_WIDTH = 8;

    parameter DEPTH = 8;

    parameter ADDR_WIDTH = $clog2(DEPTH);



    reg clk;

    reg rst_n;



    reg w_en;

    reg r_en;

    reg [DATA_WIDTH-1:0] data_in;



    wire [DATA_WIDTH-1:0] data_out;

    wire full;

    wire empty;



    fifo #(

        .DATA_WIDTH(DATA_WIDTH),

        .DEPTH(DEPTH)

    ) dut (

        .clk(clk),

        .rst_n(rst_n),

        .w_en(w_en),

        .data_in(data_in),

        .full(full),

        .r_en(r_en),

        .data_out(data_out),

        .empty(empty)

    );



    always #5 clk = ~clk;



    integer i;



    initial begin

        clk = 0;

        rst_n = 0;

        w_en = 0;

        r_en = 0;

        data_in = 0;



        #20;

        rst_n = 1;



        for (i = 0; i < DEPTH; i = i + 1) begin

            @(posedge clk);

            w_en = 1;

            data_in = i;

        end



        @(posedge clk);

        w_en = 0;



        repeat (DEPTH) begin

            @(posedge clk);

            r_en = 1;

        end



        @(posedge clk);

        r_en = 0;



        for (i = 0; i < 4; i = i + 1) begin

            @(posedge clk);

            w_en = 1;

            data_in = i + 100;

            r_en = 1;

        end



        @(posedge clk);

        w_en = 0;

        r_en = 0;



        #50;

        $finish;

    end



endmodule

