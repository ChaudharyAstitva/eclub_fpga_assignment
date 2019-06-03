`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:42:17 05/26/2019
// Design Name:   obtcom_top
// Module Name:   C:/Users/S P Goel/Desktop/New folder/obtcom/obtcomtp.v
// Project Name:  obtcom
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: obtcom_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module obtcomtp;

	// Inputs
	reg pb1;
	reg pb2;
	reg pb3;
	reg pb4;
	reg [3:0] y;

	// Outputs
	wire [7:0] less;
	wire [7:0] great;
	wire [7:0] equal;

	// Instantiate the Unit Under Test (UUT)
	obtcom_top uut (
		.pb1(pb1), 
		.pb2(pb2), 
		.pb3(pb3), 
		.pb4(pb4), 
		.y(y), 
		.less(less), 
		.great(great), 
		.equal(equal)
	);

	initial begin
		// Initialize Inputs
		pb1 = 0;
		pb2 = 0;
		pb3 = 0;
		pb4 = 0;
		y = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

