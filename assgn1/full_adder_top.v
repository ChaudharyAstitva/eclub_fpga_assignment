`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:39:52 05/25/2019
// Design Name:   assgn1
// Module Name:   C:/Users/S P Goel/Desktop/New folder/assgn1/full_adder_top.v
// Project Name:  assgn1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: assgn1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_adder_top;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	assgn1 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.sum(sum), 
		.carry(carry)
	);
	always@(sum or carry) begin
	$write("time=%d: %b+%b+%b=%b, carry=%b\n",$time,a,b,c,sum,carry);
	end

	initial begin
		a=0;b=0;c=0;
		#5
		a=0;b=1;c=0;
		#5
		a=1;b=0;c=1;
		#5
		a=1;b=1;c=1;
		#5
		$finish;

	end
      
endmodule

