`timescale 1ns / 1ps
module four_bt_adder(A,B,C);
input [3:0] A,B;
output [4:0] C;
wire [3:0] carry;
new33 fa1(A[0],B[0],1'b0,C[0],carry[0]);
new33 fa2(A[1],B[1],carry[0],C[1],carry[1]);
new33 fa3(A[2],B[2],carry[1],C[2],carry[2]);
new33 fa4(A[3],B[3],carry[2],C[3],carry[3]);
assign C[4]=carry[3];
endmodule
