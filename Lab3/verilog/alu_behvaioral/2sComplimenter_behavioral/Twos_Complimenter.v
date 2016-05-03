module Twos_Complimenter(in, out);

input wire [31:0] in;
output reg [31:0] out;

reg [31:0] var;

always @(*) begin


		out = ~in + 32'b1;
	


end

endmodule
