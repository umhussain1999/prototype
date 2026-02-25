`timescale 1ns/1ps
module packet_generator_random (
    input  wire       clk,
    input  wire       rst,
    output reg [7:0]  packet,
    output reg        packet_valid

);
  reg [5:0] lfsr;
    reg [1:0] payload_cnt;
    wire feedback;
    assign feedback = lfsr[5] ^ lfsr[4];
    always @(posedge clk) begin
        if (rst) begin
            lfsr         <= 6'b000001;
            payload_cnt  <= 2'd0;
            packet       <= 8'd0;
            packet_valid <= 1'b0;
        end else begin
            lfsr         <= {lfsr[4:0], feedback};
            payload_cnt  <= payload_cnt + 1'b1;
            packet       <= {lfsr[5:3], lfsr[2:0], payload_cnt};
            packet_valid <= 1'b1;
        end
    end
endmodule
