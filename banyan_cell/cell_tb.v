`timescale 1ns/1ps
module banyan_cell_tb;
  reg x = 0;
  reg y = 0;
  reg sel = 0;
  wire a;
  wire b;
  banyan_cell dut (
    .x(x),
    .y(y),
    .sel(sel),
    .a(a),
    .b(b)
  );


  initial begin
    x = 0; y = 0; sel = 0;
    #10;
    x = 1; y = 0; sel = 0;
    #20;
    sel = 1;
    #20;
    x = 0; y = 1; sel = 0;
    #20;
    sel = 1;
    #20;
    x = 1; y = 1; sel = 0;
    #20;
    sel = 1;
    #20;
    #50;
    $finish;
  end
endmodule

