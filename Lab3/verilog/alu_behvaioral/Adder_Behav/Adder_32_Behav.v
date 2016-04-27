// Title:  32-bit adder
// Author: David Dolengewicz
// A 32-bit adder


module Adder_32_Behav(a, b, sum, zero, overflow, carryOut, negative);

input wire [31:0] a, b;
output reg [31:0] sum;
output reg zero, overflow, carryOut, negative;

reg [32:0] overflowCheck;

reg msbA, msbB, msbSum;


always @(*) begin 

	overflowCheck = (a + b);

	sum = a + b;
	
	msbA = a[31];
	msbB = b[31];
	msbSum = sum[31];
	
	overflow = (msbA & msbB & ~msbSum) + (~msbA & ~msbB & msbSum); 
	carryOut = overflowCheck[32];
	negative = sum[31];
	zero = (sum == 0);
	
end

endmodule
