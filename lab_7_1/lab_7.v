`timescale 1ns / 1ps
module lab_7(clk,i1,i2,i3,i4,LCD_E,LCD_RS,LCD_W,data);
input clk;
input [3:0] i1,i2,i3,i4;
reg [3:0] max_index,m1,m2,mm1,mm2;
output reg LCD_E,LCD_RS,LCD_W;
output reg [3:0] data;
reg counter,state_counter;
initial begin
	counter<=0;
	state_counter<=0;
end
m1=(i1>i2)?4'b0001:4'b0010;
m2=(i3>i4)?4'b0011:4'b0100;
mm1=(i1>i2)?i1:i2;
mm2=(i3>i4)?i3:i4;
max_index=(mm1>mm2)?m1:m2;
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
			data[3:0]<=4'b0011;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=i1;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 2
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b1100;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 3
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 4
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0011;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=i2;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 5
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b1100;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 6
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 7
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0011;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=i3;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 8
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b1100;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 9
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 10
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0011;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=i4;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 11
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 12
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 13
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 14
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 15
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 16
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
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
			data[3:0]<=4'b0011;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=max_index[3:0];
			LCD_E<=1;
			
				LCD_E<=0;        //display char 2
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
				LCD_E<=0;        //display char 3
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
				LCD_E<=0;        //display char 4
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
				LCD_E<=0;        //display char 5
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
				LCD_E<=0;        //display char 6
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
				LCD_E<=0;        //display char 7
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
				LCD_E<=0;        //display char 8
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
				LCD_E<=0;        //display char 9
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
				LCD_E<=0;        //display char 10
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
				LCD_E<=0;        //display char 11
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 12
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 13
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 14
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 15
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
			LCD_E<=0;        //display char 16
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0010;
			LCD_E<=1;
			LCD_E<=0;
			LCD_RS<=1;
			LCD_W<=0;
			data[3:0]<=4'b0000;
			LCD_E<=1;
			
			state_counter<=0;
		end
		counter<=0;
	end
end
endmodule
