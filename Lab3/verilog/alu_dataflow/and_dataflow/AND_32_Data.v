module AND_32_Data(a, b, sum, zero, overflow, carryOut, negative);

input wire [31:0] a, b;
output wire [31:0] sum;
output wire zero, overflow, carryOut, negative; 

	/*initial begin
		zero = 0;
		overflow = 0;
		carryOut = 0;
		negative = 0;
	end*/
	
	assign sum = a & b;
	assign zero = 0;
	assign overflow = 0;
	assign carryOut = 0;
	assign negative = 0;
	
endmodule;