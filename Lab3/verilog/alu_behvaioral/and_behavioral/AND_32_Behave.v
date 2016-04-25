module AND_32_Behav(a, b, sum, zero, overflow, carryOut, negative);

input wire [31:0] a, b;
output wire [31:0] sum;
output wire zero, overflow, carryOut, negative; 

	initial begin
		zero = 0;
		overflow = 0;
		carryOut = 0;
		negative = 0;
	end
	
	always @(*) begin 
		sum = a & b;
		zero = 0;
		overflow = 0;
		carryOut = 0;
		negative = 0;
	end
endmodule;