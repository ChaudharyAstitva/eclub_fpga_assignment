`timescale 1ns / 1ps
module final_top(pb1,pb2,pb3,pb4,pb5,y,o);
input pb1,pb2,pb3,pb4,pb5;
input [3:0] y;
output wire [6:0] o;
reg [3:0] a,b,c,d,e;
wire [4:0] x,y1;
wire [5:0] z1,z2;
always@(posedge pb1)
a[3:0]<=y[3:0];
always@(posedge pb2)
b[3:0]<=y[3:0];
always@(posedge pb3)
c[3:0]<=y[3:0];
always@(posedge pb4)
d[3:0]<=y[3:0];
always@(posedge pb5)
e[3:0]<=y[3:0];
assign z2[5:4]=2'b00;
assign z2[3:0]=e[3:0];
four_bt_adder fouradd1(a,b,x);
four_bt_adder fouradd2(c,d,y1);
five_bt_adder fiveadd1(x,y1,z);
sx_bt_adder sxadd1(z1,z2,o);
endmodule
