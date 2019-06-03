`timescale 1ns / 1ps
module five_bt_adder( A,B,C);
input [4:0] A,B;
output [5:0] C;
wire [4:0] carry;
new33 fa5(A[0],B[0],1'b0,C[0],carry[0]);
new33 fa6(A[1],B[1],carry[0],C[1],carry[1]);
new33 fa7(A[2],B[2],carry[1],C[2],carry[2]);
new33 fa8(A[3],B[3],carry[2],C[3],carry[3]);
new33 fa9(A[4],B[4],carry[3],C[4],carry[4]);
assign C[5]=carry[4];
endmodule
