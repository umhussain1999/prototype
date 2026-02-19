`timescale 1ns/1ps

module fifo #(
    parameter DATA_WIDTH = 8,
    parameter DEPTH      = 8,
    parameter ADDR_WIDTH = $clog2(DEPTH)
)(

    input  wire                    clk,
    input  wire                    rst_n,
    input  wire                    w_en,
    input  wire [DATA_WIDTH-1:0]   data_in,
    output wire                    full,
    input  wire                    r_en,
    output reg  [DATA_WIDTH-1:0]   data_out,
    output wire                    empty
);
    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];
    reg [ADDR_WIDTH-1:0] w_ptr;
    reg [ADDR_WIDTH-1:0] r_ptr;
    reg [ADDR_WIDTH:0] count;
    assign full  = (count == DEPTH);
    assign empty = (count == 0);
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            w_ptr <= 0;
        else if (w_en && !full) begin
            mem[w_ptr] <= data_in;
            w_ptr <= w_ptr + 1'b1;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            r_ptr <= 0;
            data_out <= 0;
        end
        else if (r_en && !empty) begin
            data_out <= mem[r_ptr];
            r_ptr <= r_ptr + 1'b1;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            count <= 0;
        else begin
            case ({w_en && !full, r_en && !empty})
                2'b10: count <= count + 1'b1;
                2'b01: count <= count - 1'b1;
                default: count <= count;
            endcase
        end
    end
endmodule

