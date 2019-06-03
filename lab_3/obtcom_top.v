`timescale 1ns / 1ps
module obtcom_top(pb1,pb2,pb3,pb4,y,less,great,equal);
reg [7:0] A;
reg [7:0] B;
input [3:0] y;
input pb1,pb2,pb3,pb4;
output wire[7:0] less,great,equal;
always@(posedge pb1)
A[3:0]<=y;
always@(posedge pb2)
A[7:4]<=y[3:0];
always@(posedge pb3)
B[3:0]<=y;
always@(posedge pb4)
B[7:4]<=y[3:0];
obtcom com1(A[7],B[7],1'b0,1'b0,1'b1,less[7],great[7],equal[7]);
obtcom com2(A[6],B[6],less[7],great[7],equal[7],less[6],great[6],equal[6]);
obtcom com3(A[5],B[5],less[6],great[6],equal[6],less[5],great[5],equal[5]);
obtcom com4(A[4],B[4],less[5],great[5],equal[5],less[4],great[4],equal[4]);
obtcom com5(A[3],B[3],less[4],great[4],equal[4],less[3],great[3],equal[3]);
obtcom com6(A[2],B[2],less[3],great[3],equal[3],less[2],great[2],equal[2]);
obtcom com7(A[1],B[1],less[2],great[2],equal[2],less[1],great[1],equal[1]);
obtcom com8(A[0],B[0],less[1],great[1],equal[1],less[0],great[0],equal[0]);
endmodule
