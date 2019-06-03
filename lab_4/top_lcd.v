`timescale 1ns / 1ps
module top_lcd(clk,LCD_RS,LCD_E,LCD_W,data);
input clk;
output LCD_E,LCD_W,LCD_RS;
output [3:0] data;
LCD_driver driver(clk,"WELCOME TO CSE  ","IIT KANPUR      ",LCD_RS,LCD_E,LCD_W,data);
endmodule
