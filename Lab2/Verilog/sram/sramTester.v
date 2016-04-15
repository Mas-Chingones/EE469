// Title:
// Author: Adolfo Pineda
// A testing module

module sramTester (read_out, clk, rst, oe, we, address, data);

	integer i;
	input [15:0] read_out;
	output reg clk, rst, oe, we;
	output reg [10:0] address;
	output reg [15:0] data;
	parameter stimDelay = 1;
	
	initial // Response
	begin
	
	// Displays the labels and data
	$display("\t\t clk \t rst \t address \t data \t read_out \t Time");
	$monitor("\t\t %b \t %b \t %d \t %h \t %h \t %g", clk, rst, address, data, read_out, $time);
	end

	initial // Stimulus
	begin
	clk = 0; 
	rst = 1;
	we = 0;
	oe = 0;
	data = 16'b0;
	address = 0;
	
	#stimDelay;
	rst = 0;
	#stimDelay;
	rst = 1;
	#stimDelay;
	clk = 1;
	oe = 1;
	//sram[0] = data;
	for (i = 0; i < 32; i = i + 1) begin
		#stimDelay;
		clk = ~clk;
		if (clk) begin
			address = address + 1;
			data = data + 1;
		end
	end
	
	clk = 0;
	we = 0;
	oe = 0;
	#stimDelay;
	
	clk = 1;
	we = 1;
	oe = 0;
	#stimDelay;

	#(2*stimDelay); // needed to see END of simulation
	$finish; // finish simulation
	end
	
endmodule
