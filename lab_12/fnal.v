`timescale 1ns / 1ps 
module decoder_top(clk, pb, led0, led1, led2, led3, led4, led5, led6, led7);
input clk, pb;
output led0, led1, led2, led3, led4, led5, led6, led7;
reg led0, led1, led2, led3, led4, led5, led6, led7,pb_pressed;;
wire [2:0] index_reg;
wire index_reg_valid,output_parity,done;
wire [7:0] xored_output;
initial begin
pb_pressed = 0;
end
get_data getData (clk, done, index_reg, index_reg_valid);
decode Decode (clk, index_reg, index_reg_valid, done, output_parity, xored_output);
	
always @ (posedge clk) begin
	 if (done == 1) begin
		  if ((pb == 1) || (pb_pressed == 1)) begin
			   	pb_pressed <= 1;
				led0 <= output_parity;
				led1 <= 0;
				led2 <= 0;
				led3 <= 0;
				led4 <= 0;
				led5 <= 0;
				led6 <= 0;
				led7 <= 0;
		  end
	   else begin
			   	led0 <= xored_output[0];
				led1 <= xored_output[1];
				led2 <= xored_output[2];
				led3 <= xored_output[3];
				led4 <= xored_output[4];
				led5 <= xored_output[5];
				led6 <= xored_output[6];
				led7 <= xored_output[7];
		end
	end
end
endmodule

