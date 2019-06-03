`timescale 1ns / 1ps
module get_data(clk,done,index_reg,index_reg_valid);
reg [2:0] mem[0:7];
input clk;
output reg [2:0] index_reg;
output reg index_reg_valid;
output done;
integer i=0;
initial begin
mem[0]=3;
mem[1]=4;
mem[2]=7;
mem[3]=2;
mem[4]=3;
mem[5]=5;
mem[6]=0;
mem[7]=2;
done=0;
index_reg_valid=0;
index_reg=0;
end
always@(posedge clk) begin
if(done==0) begin
index_reg<=mem[i];
index_reg_valid<=1;
i<=i+1;
end
if(i==8) begin
done<=1;
end
end
endmodule
