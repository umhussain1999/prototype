`timescale 1ns/1ps



module tb_banyan8x8;



  reg  [7:0] in;

  reg  [3:0] sel_s1;

  reg  [3:0] sel_s2;

  reg  [3:0] sel_s3;

  wire [7:0] out;



  banyan8x8 dut (

    .in(in),

    .sel_s1(sel_s1),

    .sel_s2(sel_s2),

    .sel_s3(sel_s3),

    .out(out)

  );



  task automatic apply_case(

    input [7:0] tin,

    input [3:0] t1,

    input [3:0] t2,

    input [3:0] t3

  );

  begin

    in     = tin;

    sel_s1 = t1;

    sel_s2 = t2;

    sel_s3 = t3;

    #5;

    $display("T=%0t  in=%b  s1=%b s2=%b s3=%b  out=%b", $time, in, sel_s1, sel_s2, sel_s3, out);

  end

  endtask



  integer i;



  initial begin

    $dumpfile("tb_banyan8x8.vcd");

    $dumpvars(0, tb_banyan8x8);



    in     = 8'b0;

    sel_s1 = 4'b0;

    sel_s2 = 4'b0;

    sel_s3 = 4'b0;

    #10;



    apply_case(8'h01, 4'h0, 4'h0, 4'h0);

    apply_case(8'h01, 4'hF, 4'h0, 4'h0);

    apply_case(8'h01, 4'h0, 4'hF, 4'h0);

    apply_case(8'h01, 4'h0, 4'h0, 4'hF);

    apply_case(8'h01, 4'hF, 4'hF, 4'hF);



    apply_case(8'hA5, 4'h0, 4'h0, 4'h0);

    apply_case(8'hA5, 4'hF, 4'h0, 4'h0);

    apply_case(8'hA5, 4'h0, 4'hF, 4'h0);

    apply_case(8'hA5, 4'h0, 4'h0, 4'hF);

    apply_case(8'hA5, 4'hF, 4'hF, 4'hF);



    apply_case(8'hAC, 4'h0, 4'h0, 4'h0);

    apply_case(8'hAC, 4'hF, 4'h0, 4'h0);

    apply_case(8'hAC, 4'h0, 4'hF, 4'h0);

    apply_case(8'hAC, 4'h0, 4'h0, 4'hF);

    apply_case(8'hAC, 4'hF, 4'hF, 4'hF);



    for (i = 0; i < 100; i = i + 1) begin

      apply_case($random, $random, $random, $random);

    end



    #20;

    $finish;

  end



endmodule

