// Title:  4-bit Synchronous Up Counter Tester File
// Author: Adolfo Pineda
// A testing module for the 4-bit synchronous up counter
// that gets the counter to start counting

module SupTester (clk, rst, q0, q1, q2, q3);

	integer i;
	input q0, q1, q2, q3;
	output reg clk, rst;
	parameter stimDelay = 1;
	wire [3:0] count;
	assign count = {q3, q2, q1, q0};
	
	initial // Response
	begin
	// Displays the labels and data
	$display("\t\t clk \t rst \t q0 \t q1 \t q2 \t q3 \t Count \t Time ");	
	$monitor("\t\t %b \t %b \t %b \t %b \t %b \t %b \t %d \t %g", clk, rst, q3, q2, q1, q0, count, $time );
	end

	initial // Stimulus
	begin
	clk = 0; 
	rst = 1;
	#stimDelay;
	rst = 0;
	#stimDelay;
	// Counting starts at this point
	rst = 1;
	#stimDelay;
	for (i = 0; i < 32; i = i + 1) begin
		#stimDelay;
		clk = ~clk;
	end
	
	rst = 0;
	#stimDelay;
	rst = 1;
	#stimDelay;
	for (i = 0; i < 8; i = i + 1) begin
		#stimDelay;
		clk = ~clk;
	end

	#(2*stimDelay); // needed to see END of simulation
	$finish; // finish simulation
	end
	endmodule