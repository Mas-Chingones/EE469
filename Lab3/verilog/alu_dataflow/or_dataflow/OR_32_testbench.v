/*
Author  : Adolfo Pineda
Title   : 32-bit OR testbench
Summary : Test bench that tests the OR_32_Data module. 
*/

`include "OR_32_Data.v"

module OR_32_testbench;
	wire [31:0] a, b;
	wire [31:0] sum;
	wire zero, overflow, carryOut, negative; 
	
	// Create an instance of the OR_32_Data module
	OR_32_Data data(a, b, sum, zero, overflow, carryOut, negative);
	
	// Create an instance of the OR_32_tester module
	OR_32_tester atester(a, b, sum, zero, overflow, carryOut, negative);
	
	// Dump variables onto data module
	initial begin
      $dumpfile("OR_32_Data.vcd");
      $dumpvars(1, data);
   end
	
endmodule

/*
Author  : Adolfo Pineda
Title   : 32-bit OR tester
Summary : Tester module that provides the values to the
		  OR_32_Data module for testing.
*/

module OR_32_tester(a, b, sum, zero, overflow, carryOut, negative);
	output reg [31:0] a, b;
	input wire [31:0] sum;
	input wire zero, overflow, carryOut, negative;
	
	parameter delay = 10;
	
	// Display variables
	initial begin
		$display("\ta \t\tb \t\tor_result \ttime");
		$monitor("\t%h\t%h\t%h\t%g", a, b, sum, $time);
	end
	
	initial begin
		#delay;
		#delay;
		#delay;
		a <= 32'b0;
		b <= 32'b0;
		#delay;
		#delay;
		#delay;
		// Values to be OR-ed together
		a <= {25'b0, 7'b1001111};
		b <= {25'b0, 7'b0011011};
		#delay;
		#delay;
		#delay;
		a <= {8'b11010101, 24'b0};
		b <= {8'b00100101, 24'b0};
		#delay;
		#delay;
		a <= 32'b11011101110101011101010111010101;
		b <= 32'b00100101110111011101010111010101;
	end

endmodule