`timescale 1ns/1ps

module tb_packet_generator_random;
    reg clk;
    reg rst;
    wire [7:0] packet;
    wire       packet_valid;

    packet_generator_random dut (
        .clk(clk),
        .rst(rst),
        .packet(packet),
        .packet_valid(packet_valid)

    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        rst = 1;
        #20;
        rst = 0;
        #200;
        $finish;
    end
    always @(posedge clk) begin
        if (packet_valid) begin
            $display("time=%0t | packet=%02h | arrival=%0d | dest=%0d | payload=%0d",
                     $time,
                     packet,
                     packet[7:5],
                     packet[4:2],
                     packet[1:0]);
        end
    end
endmodule
