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

