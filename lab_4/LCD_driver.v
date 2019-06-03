`timescale 1ns / 1ps
module LCD_driver(clk,line1,line2,LCD_RS,LCD_E,LCD_W,data);
input clk;
input [0:127] line1,line2;
output reg LCD_RS,LCD_E,LCD_W;
output reg [3:0] data;
reg counter,state_counter;
initial begin
	counter<=0;
	state_counter<=0;
end
always@(posedge clk) begin
	if(counter!=1000000) begin
		counter<=counter+1;
	end
	else begin
		if(state_counter==0) begin
			LCD_E<=0;        //initialization
			LCD_RS<=0;
			LCD_W<=0;
			data<=4'b0011;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=0;
			LCD_W<=0;
			data<=4'b0010;
			LCD_E<=1;
			
			LCD_E<=0;        //config. step 1
			LCD_RS<=0;
			LCD_W<=0;
			data<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=0;
			LCD_W<=0;
			data<=4'b1000;
			LCD_E<=1;
			
			LCD_E<=0;        //config. step 2
			LCD_RS<=0;
			LCD_W<=0;
			data<=4'b0000;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=0;
			LCD_W<=0;
			data<=4'b0100;
			LCD_E<=1;
			
			LCD_E<=0;        //config. step 3
			LCD_RS<=0;
			LCD_W<=0;
			data<=4'b0000;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=0;
			LCD_W<=0;
			data<=4'b1100;
			LCD_E<=1;
			
			LCD_E<=0;        //config. step 4
			LCD_RS<=0;
			LCD_W<=0;
			data<=4'b0000;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=0;
			LCD_W<=0;
			data<=4'b0001;
			LCD_E<=1;
			
			state_counter<=state_counter+1;
		end
		else if(state_counter==1) begin
			LCD_E<=0;        //set address to line 1
			LCD_RS<=0;
			LCD_W<=0;
			data<=4'b1000;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=0;
			LCD_W<=0;
			data<=4'b0000;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 1
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[0:3];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[4:7];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 2
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[8:11];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[12:15];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 3
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[16:19];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[20:23];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 4
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[24:27];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[28:31];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 5
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[32:35];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[36:39];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 6
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[40:43];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[44:47];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 7
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[48:51];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[52:55];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 8
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[56:59];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[60:63];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 9
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[64:67];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[68:71];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 10
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[72:75];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[76:79];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 11
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[80:83];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[84:87];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 12
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[88:91];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[92:95];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 13
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[96:99];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[100:103];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 14
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[104:107];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[108:111];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 15
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[112:115];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[116:119];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 16
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[120:123];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line1[123:127];
			LCD_E<=1;
			
			state_counter<=state_counter+1;
		end
		else if(state_counter==2) begin
			LCD_E<=0;        //set address to line2
			LCD_RS<=0;
			LCD_W<=0;
			data<=4'b1100;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=0;
			LCD_W<=0;
			data<=4'b0000;
			LCD_E<=1;
			
			state_counter<=state_counter+1;
		end
		else begin
			LCD_E<=0;        //display char 1 of line2
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[0:3];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[4:7];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 2
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[8:11];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[12:15];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 3
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[16:19];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[20:23];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 4
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[24:27];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[28:31];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 5
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[32:35];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[36:39];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 6
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[40:43];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[44:47];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 7
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[48:51];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[52:55];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 8
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[56:59];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[60:63];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 9
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[64:67];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[68:71];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 10
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[72:75];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[76:79];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 11
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[80:83];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[84:87];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 12
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[88:91];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[92:95];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 13
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[96:99];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[100:103];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 14
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[104:107];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[108:111];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 15
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[112:115];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[116:119];
			LCD_E<=1;
			
			LCD_E<=0;        //display char 16
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[120:123];
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=line2[123:127];
			LCD_E<=1;
			
			state_counter<=0;
		end
		counter<=0;
	end
end
endmodule
