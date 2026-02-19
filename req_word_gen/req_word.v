module req_word_gen (

    input wire [2:0] in_port,

    input wire [2:0] out_port,

    output reg [6:0] d,

    output reg [6:0] c

);



    wire [2:0] sig;

    wire [1:0] care1;

    wire [3:0] care2;

    wire [6:0] care_combined;



    assign sig = in_port ^ out_port;

    assign care1 = {~out_port, out_port};

    assign care2 = {~out_port & ~out_port, ~out_port & out_port, out_port & ~out_port, out_port & out_port};

    assign care_combined = {1'b1, care1, care2};



    always_comb begin



        c = care_combined;

        d[0] = in_port[2]  ^ out_port[2];

        d[1] = care1[0] ^ sig[1];

        d[2] = care1[1] ^ sig[1];

        d[3] = care2[0] ^ sig[2];

        d[4] = care2[1] ^ sig[2];

        d[5] = care2[2] ^ sig[2];

        d[6] = care2[3] ^ sig[2];

    end



endmodule
