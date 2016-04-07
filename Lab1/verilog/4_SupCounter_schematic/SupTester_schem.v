module supTester (Clock, Reset, Q0, Q1, Q2, Q3);

	integer i;
	input Q0, Q1, Q2, Q3;
	output reg Clock, Reset;
	parameter stimDelay = 1;
	
	wire [3:0] count;
	
	assign count = {Q3, Q2, Q1, Q0};
	initial // Response
	begin
	$display("\t\t clk \t Reset \t q3 \t q2 \t q1 \t q0 \t Count \t Time ");
	$monitor("\t\t %b \t %b \t %b \t %b \t %b \t %b \t %d \t %g", Clock, Reset, Q3, Q2, Q1, Q0, count, $time );
	end

	initial // Stimulus
	begin
	
	// Initialize counter
	Clock = 0; 
	Reset = 1;
	#stimDelay;
	Reset = 0;
	#stimDelay;
	Reset = 1;
	#stimDelay;
	
	// Counting sequence
	for (i = 0; i < 32; i = i + 1) begin
		#stimDelay;
		Clock = ~Clock;
	end
	
	// reset counter
	Reset = 0;
	#stimDelay;
	Reset = 1;
	#stimDelay;
	
	// Continue counting
	for (i = 0; i < 8; i = i + 1) begin
		#stimDelay;
		Clock = ~Clock;
	end

	#(2*stimDelay); // needed to see END of simulation
	$finish; // finish simulation
	end
	endmodule