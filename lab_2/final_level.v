`timescale 1ns / 1ps
module final_level(A,B,C,D,E,y,pb1,pb2,pb3,pb4,pb5,Z);
input pb1,pb2,pb3,pb4,pb5;
input [3:0] y;
reg [3:0] A,B,C,D,E;
output wire [6:0] Z;
wire [4:0] X,Y;
wire [5:0] ZZ;
always@(posedge pb1)
A[3:0]<=y;
always@(posedge pb2)
B[3:0]<=y;
always@(posedge pb3)
C[3:0]<=y;
always@(posedge pb4)
D[3:0]<=y;
always@(posedge pb5)
E[3:0]<=y;
four_bt_adder FOURA1(A,B,X);
four_btC,D,Y);
five_bt_adder Fi
endmodule
