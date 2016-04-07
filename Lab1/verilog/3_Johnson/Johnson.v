// Title:  4-bit Synchronous Johnson Counter
// Author: Adolfo Pineda
// This module is the 4-bit synchronous johnson counter
// with active low reset

module Johnson(q0, q1, q2, q3, clk, rst);
input clk, rst;
output reg q0, q1, q2, q3;

	// A johnson counter using behavioral level model logic 
	always @(negedge rst or posedge clk) begin
		if (!rst) begin
			q0 <= 0;
			q1 <= 0;
			q2 <= 0;
			q3 <= 0;
		end else begin
			q0 <= ~q3;
			q1 <= q0;
			q2 <= q1;
			q3 <= q2;
		end
	end

endmodule 