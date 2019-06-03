`timescale 1ns / 1ps
module obtcom(a,b,li,gi,ei,lo,go,eo);
input a,b,li,gi,ei;
output reg lo,go,eo;
always@(a or b or li or gi or ei) begin
lo<=li?1'b0:(~a&b);
go<=gi?1'b1:(~b&a);
if(ei) eo<=~(a^b);
end
endmodule
