// All files used
`include "alu.v"

// Title: 	ALU behavioral Test bench
// Author: 	Adolfo Pineda & Ian Gilman
// Summary:	A test bench module
module alu_tb;
   wire [31:0] fr_read0, fr_read1,  // file register read data
                     immediate;  // immediate value
	wire [6:0] control;  // determines operation performed
   wire source;  // ALU operand1 Data source
	wire [31:0] result;  // result of operation
	wire Z, V, C, N;  // status flags after operation
	
	// dut
	alu dut(fr_read0, fr_read1, immediate, control, source, result, Z, V, C, N);
	
	// tester
	aluTester tester(fr_read0, fr_read1, immediate, control, source, result, Z, V, C, N);

	// File for gtkwave
	initial begin
		$dumpfile("alu_test.vcd");
		$dumpvars(1, dut);
	end
endmodule



// Title: ALU behavioral tester
// Author: Adolfo Pineda
// A testing module

module aluTester(fr_read0, fr_read1, immediate, control, source, result, Z, V, C, N);
	output reg [31:0] fr_read0, fr_read1,  // file register read data
                     immediate;  // immediate value
	output reg [6:0] control;  // determines operation performed
   output reg source;  // ALU operand1 Data source
	input wire [31:0] result;  // result of operation
	input wire Z, V, C, N;  // status flags after operation
	
	parameter delay = 10;

	// ALU operation control codes
	parameter NOP = 6'b000;
	parameter ADD = 6'b001;
	parameter SUB = 6'b010;
	parameter AND = 6'b011;
	parameter OR  = 6'b100;
	parameter XOR = 6'b101;
	parameter SLT = 6'b110;
	parameter SLL = 6'b111;
	
	// Display variables 
	initial begin
		$display("\t\tfr0\t\tfr1\t\timm\t control\tsor\t result\t Z V C N\t time");
		$monitor("\t %d\t %d\t %d\t %b\t %b\t %d\t %b %b %b %b\t %g", 
												fr_read0, 
												fr_read1,
                                    immediate,
												control,
                                    source,
												result, 
												Z, 
												V, 
												C, 
												N, 
												$time);
	end
	
	initial begin
		#delay; #delay; #delay;
		
      source <= 0;
		control <= SUB;
		immediate <= 32'h14;
      
		 #delay;
		fr_read0 <= 32'd0;
		fr_read1 <= 32'd0;
		 #delay;
		fr_read0 <= 32'd500;
		fr_read1 <= 32'd500;
		 #delay;
		fr_read0 <= 32'd500000000;
		fr_read1 <= 32'd500000000;
		 #delay; #delay;
		fr_read0 <= 32'hFFFFFFE6;
		fr_read1 <= 32'd10;

      control <= ADD;
		#delay;
		fr_read0 <= 32'hFFFFFFFF;
		fr_read1 <= 32'h00000001;
		 #delay;
		fr_read0 <= 32'd10;
		fr_read1 <= 32'hFFFFFFFA;
		 #delay;
		fr_read0 <= 32'd5;
		fr_read1 <= 32'hFFFFFFF6;

		#delay;
		fr_read0 <= 32'd2147483647;
		fr_read1 <= 32'd2147483647;
		 #delay;#delay;
		fr_read0 <= 32'd3147483647;
		fr_read1 <= 32'd3147483647;
		 #delay;#delay;
		fr_read0 <= 32'hFFFFF000;
		fr_read1 <= 32'h80000000;
		 #delay;#delay;
		fr_read0 <= 32'd2147483647;
		fr_read1 <= 32'd2147483647;
		 #delay;#delay;
		fr_read0 <= 32'h80000000;
		fr_read1 <= 32'h00000001;
		 #delay;#delay;
		fr_read0 <= 32'hC0000000;
		fr_read1 <= 32'hC0000000;
		 #delay;#delay;
		fr_read0 <= 32'h80000000;
		fr_read1 <= 32'h80000000;
      source <= 1'b1;
      control <=ADD;
		#delay;#delay;
		fr_read1 <= 32'hFFFFFFF6;
		fr_read0 <= 32'hFFFFFFF6;
		 #delay; #delay; #delay;
	end

endmodule
	
	/*initial // Response
	begin

	// Displays the labels and data
	$display("\tcontrol \ta \t  b \tresult \tTime");
	$monitor("\t%b \t%h \t%h \t%h \t%g",
		control, fr_read0, fr_read1, result, $time);
	end

	
	
	initial // Stimulus
	begin
		#stimdelay; 
		#stimdelay; control <= 3'b000;
		#stimdelay;
		#stimdelay; 
		#stimdelay; control <= 3'b001; // add
		#stimdelay;
		#stimdelay;
		#stimdelay;
		#stimdelay;
		#stimdelay;
		#stimdelay; fr_read0 <= {29'b0, 3'b111}; fr_read1 <= {29'b0, 3'b011}; 
		#stimdelay;
		#stimdelay;
		#stimdelay;
		#stimdelay; control <= 3'b010; // subtract
		#stimdelay;
		#stimdelay;
		#stimdelay; control <= 3'b011; // and
		#stimdelay;
		#stimdelay; control <= 3'b100; // or
		#stimdelay;
		#stimdelay; control <= 3'b101; // xor
		#stimdelay;
							//slt 
		#stimdelay; control <= 3'b110; fr_read0 <= 5; fr_read1 <= 7;
		#stimdelay;
							//sll
		#stimdelay; control <= 3'b111; fr_read0 <= 1; fr_read1 <= 7;
		#stimdelay;
		#stimdelay; control <= 3'b010; fr_read0 <= 100; fr_read1 <= 32; // subtract
		#stimdelay;
		#stimdelay;
		#stimdelay;

		$finish; // finish simulation
	end

endmodule*/