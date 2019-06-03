`timescale 1ns / 1ps
module top(clk,pb1,pb2,pb3,pb4,y,LCD_RS,LCD_W,LCD_E,data);
reg [3:0] i1,i2,i3,i4;
input [3:0] y;
input pb1,pb2,pb3,pb4,clk;
output LCD_RS,LCD_W,LCD_E;
output [3:0] data;
always@(posedge pb1)
i1<=y;
always@(posedge pb2)
i2<=y;
always@(posedge pb3)
i3<=y;
always@(posedge pb4)
i4<=y;
lab_7 Mi(clk,i1,i2,i3,i4,LCD_E,LCD_RS,LCD_W,data);
endmodule
