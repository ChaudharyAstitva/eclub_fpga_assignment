`timescale 1ns / 1ps
module sx_bt_adder(A,B,C);
input [5:0] A,B;
output [6:0] C;
wire [5:0] carry;
new33 fa10(A[0],B[0],1'b0,C[0],carry[0]);
new33 fa11(A[1],B[1],carry[0],C[1],carry[1]);
new33 fa12(A[2],B[2],carry[1],C[2],carry[2]);
new33 fa13(A[3],B[3],carry[2],C[3],carry[3]);
new33 fa14(A[4],B[4],carry[3],C[4],carry[4]);
new33 fa15(A[5],B[5],carry[4],C[5],carry[5]);
assign C[6]=carry[5];
endmodule
