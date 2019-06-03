`timescale 1ns / 1ps
module decode(clk,index_reg,index_reg_valid,done,output_parity,xored_output);
input clk;
input reg index_reg_valid;
input reg [2:0] index_reg;
input reg done;
output wire [7:0] xored_output;
output wire output_parity;
initial begin
xored_output=0;
end
always@(posedge clk) begin
if((done==1)&&(index_reg_valid==1)) begin
xored_output[0]<=xored_output[0]^(~index_reg[2]&~index_reg[1]&~index_reg[0]);
xored_output[1]<=xored_output[1]^(~index_reg[2]&~index_reg[1]&index_reg[0]);
xored_output[2]<=xored_output[2]^(~index_reg[2]&index_reg[1]&~index_reg[0]);
xored_output[3]<=xored_output[3]^(~index_reg[2]&index_reg[1]&index_reg[0]);
xored_output[4]<=xored_output[4]^(index_reg[2]&~index_reg[1]&~index_reg[0]);
xored_output[5]<=xored_output[5]^(index_reg[2]&~index_reg[1]&index_reg[0]);
xored_output[6]<=xored_output[6]^(index_reg[2]&index_reg[1]&~index_reg[0]);
xored_output[7]<=xored_output[7]^(index_reg[2]&index_reg[1]&index_reg[0]);
end
if(done==1) begin
output_parity<=^xored_output;
end
end
endmodule
