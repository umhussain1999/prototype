
//input ports
add mapped point clk clk -type PI PI
add mapped point rst_n rst_n -type PI PI
add mapped point w_en w_en -type PI PI
add mapped point data_in[7] data_in[7] -type PI PI
add mapped point data_in[6] data_in[6] -type PI PI
add mapped point data_in[5] data_in[5] -type PI PI
add mapped point data_in[4] data_in[4] -type PI PI
add mapped point data_in[3] data_in[3] -type PI PI
add mapped point data_in[2] data_in[2] -type PI PI
add mapped point data_in[1] data_in[1] -type PI PI
add mapped point data_in[0] data_in[0] -type PI PI
add mapped point r_en r_en -type PI PI

//output ports
add mapped point full full -type PO PO
add mapped point data_out[7] data_out[7] -type PO PO
add mapped point data_out[6] data_out[6] -type PO PO
add mapped point data_out[5] data_out[5] -type PO PO
add mapped point data_out[4] data_out[4] -type PO PO
add mapped point data_out[3] data_out[3] -type PO PO
add mapped point data_out[2] data_out[2] -type PO PO
add mapped point data_out[1] data_out[1] -type PO PO
add mapped point data_out[0] data_out[0] -type PO PO
add mapped point empty empty -type PO PO

//inout ports




//Sequential Pins
add mapped point data_out[6]/q data_out_reg[6]/Q -type DFF DFF
add mapped point data_out[0]/q data_out_reg[0]/Q -type DFF DFF
add mapped point data_out[2]/q data_out_reg[2]/Q -type DFF DFF
add mapped point data_out[4]/q data_out_reg[4]/Q -type DFF DFF
add mapped point data_out[1]/q data_out_reg[1]/Q -type DFF DFF
add mapped point data_out[7]/q data_out_reg[7]/Q -type DFF DFF
add mapped point data_out[5]/q data_out_reg[5]/Q -type DFF DFF
add mapped point data_out[3]/q data_out_reg[3]/Q -type DFF DFF
add mapped point count[2]/q count_reg[2]/QN -type DFF DFF
add mapped point count[1]/q count_reg[1]/QN -type DFF DFF
add mapped point count[3]/q count_reg[3]/QN -type DFF DFF
add mapped point mem[0][0]/q mem_reg[0][0]/Q -type DFF DFF
add mapped point mem[0][6]/q mem_reg[0][6]/Q -type DFF DFF
add mapped point mem[0][1]/q mem_reg[0][1]/Q -type DFF DFF
add mapped point mem[0][3]/q mem_reg[0][3]/Q -type DFF DFF
add mapped point mem[0][4]/q mem_reg[0][4]/Q -type DFF DFF
add mapped point mem[0][5]/q mem_reg[0][5]/Q -type DFF DFF
add mapped point mem[0][7]/q mem_reg[0][7]/Q -type DFF DFF
add mapped point mem[0][2]/q mem_reg[0][2]/Q -type DFF DFF
add mapped point mem[3][1]/q mem_reg[3][1]/Q -type DFF DFF
add mapped point mem[3][4]/q mem_reg[3][4]/Q -type DFF DFF
add mapped point mem[3][7]/q mem_reg[3][7]/Q -type DFF DFF
add mapped point mem[3][6]/q mem_reg[3][6]/Q -type DFF DFF
add mapped point mem[3][5]/q mem_reg[3][5]/Q -type DFF DFF
add mapped point mem[2][1]/q mem_reg[2][1]/Q -type DFF DFF
add mapped point mem[3][3]/q mem_reg[3][3]/Q -type DFF DFF
add mapped point mem[3][2]/q mem_reg[3][2]/Q -type DFF DFF
add mapped point mem[3][0]/q mem_reg[3][0]/Q -type DFF DFF
add mapped point mem[2][7]/q mem_reg[2][7]/Q -type DFF DFF
add mapped point mem[2][6]/q mem_reg[2][6]/Q -type DFF DFF
add mapped point mem[2][4]/q mem_reg[2][4]/Q -type DFF DFF
add mapped point mem[2][2]/q mem_reg[2][2]/Q -type DFF DFF
add mapped point mem[2][3]/q mem_reg[2][3]/Q -type DFF DFF
add mapped point mem[2][0]/q mem_reg[2][0]/Q -type DFF DFF
add mapped point mem[1][2]/q mem_reg[1][2]/Q -type DFF DFF
add mapped point mem[1][0]/q mem_reg[1][0]/Q -type DFF DFF
add mapped point mem[1][1]/q mem_reg[1][1]/Q -type DFF DFF
add mapped point mem[1][3]/q mem_reg[1][3]/Q -type DFF DFF
add mapped point mem[1][4]/q mem_reg[1][4]/Q -type DFF DFF
add mapped point mem[1][5]/q mem_reg[1][5]/Q -type DFF DFF
add mapped point mem[1][6]/q mem_reg[1][6]/Q -type DFF DFF
add mapped point mem[1][7]/q mem_reg[1][7]/Q -type DFF DFF
add mapped point mem[2][5]/q mem_reg[2][5]/Q -type DFF DFF
add mapped point mem[5][0]/q mem_reg[5][0]/Q -type DFF DFF
add mapped point mem[5][2]/q mem_reg[5][2]/Q -type DFF DFF
add mapped point mem[7][5]/q mem_reg[7][5]/Q -type DFF DFF
add mapped point mem[5][7]/q mem_reg[5][7]/Q -type DFF DFF
add mapped point mem[4][5]/q mem_reg[4][5]/Q -type DFF DFF
add mapped point mem[5][6]/q mem_reg[5][6]/Q -type DFF DFF
add mapped point mem[6][5]/q mem_reg[6][5]/Q -type DFF DFF
add mapped point mem[6][7]/q mem_reg[6][7]/Q -type DFF DFF
add mapped point mem[7][1]/q mem_reg[7][1]/Q -type DFF DFF
add mapped point mem[5][5]/q mem_reg[5][5]/Q -type DFF DFF
add mapped point mem[5][3]/q mem_reg[5][3]/Q -type DFF DFF
add mapped point mem[4][2]/q mem_reg[4][2]/Q -type DFF DFF
add mapped point mem[5][4]/q mem_reg[5][4]/Q -type DFF DFF
add mapped point mem[5][1]/q mem_reg[5][1]/Q -type DFF DFF
add mapped point mem[4][0]/q mem_reg[4][0]/Q -type DFF DFF
add mapped point mem[6][3]/q mem_reg[6][3]/Q -type DFF DFF
add mapped point mem[4][1]/q mem_reg[4][1]/Q -type DFF DFF
add mapped point mem[4][3]/q mem_reg[4][3]/Q -type DFF DFF
add mapped point mem[6][0]/q mem_reg[6][0]/Q -type DFF DFF
add mapped point mem[4][4]/q mem_reg[4][4]/Q -type DFF DFF
add mapped point mem[4][7]/q mem_reg[4][7]/Q -type DFF DFF
add mapped point mem[4][6]/q mem_reg[4][6]/Q -type DFF DFF
add mapped point mem[6][2]/q mem_reg[6][2]/Q -type DFF DFF
add mapped point mem[6][1]/q mem_reg[6][1]/Q -type DFF DFF
add mapped point mem[6][4]/q mem_reg[6][4]/Q -type DFF DFF
add mapped point mem[6][6]/q mem_reg[6][6]/Q -type DFF DFF
add mapped point mem[7][0]/q mem_reg[7][0]/Q -type DFF DFF
add mapped point mem[7][2]/q mem_reg[7][2]/Q -type DFF DFF
add mapped point mem[7][3]/q mem_reg[7][3]/Q -type DFF DFF
add mapped point mem[7][4]/q mem_reg[7][4]/Q -type DFF DFF
add mapped point mem[7][7]/q mem_reg[7][7]/Q -type DFF DFF
add mapped point mem[7][6]/q mem_reg[7][6]/Q -type DFF DFF
add mapped point count[0]/q count_reg[0]/QN -type DFF DFF
add mapped point w_ptr[2]/q w_ptr_reg[2]/Q -type DFF DFF
add mapped point r_ptr[2]/q r_ptr_reg[2]/Q -type DFF DFF
add mapped point w_ptr[0]/q w_ptr_reg[0]/QN -type DFF DFF
add mapped point w_ptr[1]/q w_ptr_reg[1]/Q -type DFF DFF
add mapped point r_ptr[1]/q r_ptr_reg[1]/Q -type DFF DFF
add mapped point r_ptr[0]/q r_ptr_reg[0]/QN -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
