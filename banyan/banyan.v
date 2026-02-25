`timescale 1ns/1ps
module banyan_cell (
  input  wire x,
  input  wire y,
  input  wire sel,
  output wire a,
  output wire b

);

  assign a = (sel == 1'b0) ? x : y;
  assign b = (sel == 1'b0) ? y : x;

endmodule



module banyan8x8 (

  input  wire [7:0] in,
  input  wire [3:0] sel_s1,
  input  wire [3:0] sel_s2,
  input  wire [3:0] sel_s3,
  output wire [7:0] out

);


  wire [7:0] s1_out;
  wire [7:0] s1_shuf;
  wire [7:0] s2_out;
  wire [7:0] s2_shuf;
  wire [7:0] s3_out;
  banyan_cell u_s1_0 (.x(in[0]), .y(in[1]), .sel(sel_s1[0]), .a(s1_out[0]), .b(s1_out[1]));
  banyan_cell u_s1_1 (.x(in[2]), .y(in[3]), .sel(sel_s1[1]), .a(s1_out[2]), .b(s1_out[3]));
  banyan_cell u_s1_2 (.x(in[4]), .y(in[5]), .sel(sel_s1[2]), .a(s1_out[4]), .b(s1_out[5]));
  banyan_cell u_s1_3 (.x(in[6]), .y(in[7]), .sel(sel_s1[3]), .a(s1_out[6]), .b(s1_out[7]));

  assign s1_shuf[0] = s1_out[0];
  assign s1_shuf[2] = s1_out[1];
  assign s1_shuf[4] = s1_out[2];
  assign s1_shuf[6] = s1_out[3];
  assign s1_shuf[1] = s1_out[4];
  assign s1_shuf[3] = s1_out[5];
  assign s1_shuf[5] = s1_out[6];
  assign s1_shuf[7] = s1_out[7];

  banyan_cell u_s2_0 (.x(s1_shuf[0]), .y(s1_shuf[1]), .sel(sel_s2[0]), .a(s2_out[0]), .b(s2_out[1]));
  banyan_cell u_s2_1 (.x(s1_shuf[2]), .y(s1_shuf[3]), .sel(sel_s2[1]), .a(s2_out[2]), .b(s2_out[3]));
  banyan_cell u_s2_2 (.x(s1_shuf[4]), .y(s1_shuf[5]), .sel(sel_s2[2]), .a(s2_out[4]), .b(s2_out[5]));
  banyan_cell u_s2_3 (.x(s1_shuf[6]), .y(s1_shuf[7]), .sel(sel_s2[3]), .a(s2_out[6]), .b(s2_out[7]));
  assign s2_shuf[0] = s2_out[0];
  assign s2_shuf[2] = s2_out[1];

  assign s2_shuf[4] = s2_out[2];
  assign s2_shuf[6] = s2_out[3];
  assign s2_shuf[1] = s2_out[4];
  assign s2_shuf[3] = s2_out[5];
  assign s2_shuf[5] = s2_out[6];
  assign s2_shuf[7] = s2_out[7];

  banyan_cell u_s3_0 (.x(s2_shuf[0]), .y(s2_shuf[1]), .sel(sel_s3[0]), .a(s3_out[0]), .b(s3_out[1]));
  banyan_cell u_s3_1 (.x(s2_shuf[2]), .y(s2_shuf[3]), .sel(sel_s3[1]), .a(s3_out[2]), .b(s3_out[3]));
  banyan_cell u_s3_2 (.x(s2_shuf[4]), .y(s2_shuf[5]), .sel(sel_s3[2]), .a(s3_out[4]), .b(s3_out[5]));
  banyan_cell u_s3_3 (.x(s2_shuf[6]), .y(s2_shuf[7]), .sel(sel_s3[3]), .a(s3_out[6]), .b(s3_out[7]));
  assign out = s3_out;
endmodule


