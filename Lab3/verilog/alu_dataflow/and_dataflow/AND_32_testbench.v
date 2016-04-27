/*
Author  : Adolfo Pineda
Title   : 32-bit AND testbench
Summary : Test bench that tests the AND_32_Data module. 
*/

`include "AND_32_Data.v"

module AND_32_testbench;
	wire [31:0] a, b;
	wire [31:0] sum;
	wire zero, overflow, carryOut, negative; 
	
	// Create an instance of the AND_32_Data module
	AND_32_Data data(a, b, sum, zero, overflow, carryOut, negative);
	
	// Create an instance of the AND_32_tester module
	AND_32_tester atester(a, b, sum, zero, overflow, carryOut, negative);
	
	// Dump variables onto data module
	initial begin
      $dumpfile("AND_32_Data.vcd");
      $dumpvars(1, data);
   end
	
endmodule


/*
Author  : Adolfo Pineda
Title   : 32-bit AND tester
Summary : Tester module that provides the values to the
		  AND_32_Data module for testing.
*/

module AND_32_tester(a, b, sum, zero, overflow, carryOut, negative);
	output reg [31:0] a, b;
	input wire [31:0] sum;
	input wire zero, overflow, carryOut, negative;
	
	parameter delay = 10;
	
	// Display variables 
	initial begin
		$display("\ta \t\tb \t\tand_result \ttime");
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
		// Values to be AND-ed together
		a <= {25'b0, 7'b1001111};
		b <= {25'b0, 7'b0011011};
		#delay;
		#delay;
		#delay;
		a <= {8'b11010101, 24'b0};
		b <= {8'b00100101, 24'b0};
		#delay;
		#delay;
		a <= 32'b11010101110101011101010111010101;
		b <= 32'b00100101110101011101010111010101;
	end

endmodule