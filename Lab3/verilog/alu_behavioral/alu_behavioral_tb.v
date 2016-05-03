
// All files used

/*
`include "alu_behavioral.v"
`include "gate_modules/adder_gate.v"
`include "gate_modules/subtract_gate.v"
`include "gate_modules/and_gate.v"
`include "gate_modules/or_gate.v"
`include "gate_modules/xor_gate.v"
`include "gate_modules/slt_gate.v"
`include "gate_modules/sll_gate.v"
`include "gate_modules/full_adder_gate.v"
`include "gate_modules/mux_2to1.v"
`include "gate_modules/one_complement.v"
`include "gate_modules/negate_signed_gate.v"
*/

`include "alu_behavioral.v"
`include "adder_gate.v"
`include "subtract_gate.v"
`include "and_gate.v"
`include "or_gate.v"
`include "xor_gate.v"
`include "slt_gate.v"
`include "sll_gate.v"
`include "full_adder_gate.v"
`include "mux_2to1.v"
`include "one_complement.v"
`include "negate_signed_gate.v"

// Title: 	ALU behavioral Test bench
// Author: 	Adolfo Pineda
// Summary:	A test bench module
module alu_behavioral_tb;

	wire [31:0] operand0, operand1;
	wire [5:0] shift;
	wire [2:0] control;
	wire [31:0] result;
	wire Z, V, C, N;
	
	// dut
	alu_behavioral operate(operand0, operand1, control, shift, result, Z, V, C, N);
	
	// tester
	aluTester aTester(operand0, operand1, control, shift, result, Z, V, C, N);

	// File for gtkwave
	initial begin
		$dumpfile("alu_behavioral.vcd");
		$dumpvars(1, operate);
	end
endmodule



// Title: ALU behavioral tester
// Author: Adolfo Pineda
// A testing module

module aluTester (operand0, operand1, control, shift, result, Z, V, C, N);
	output reg [31:0] operand0, operand1;
	output reg [2:0] control;
	output reg [5:0] shift;
	input wire [31:0] result;
	input wire Z, V, C, N;
	
	parameter stimdelay = 10;

	initial // Response
	begin

	// Displays the labels and data
	$display("\tcontrol \ta \t  b \tresult \tTime");
	$monitor("\t%b \t%h \t%h \t%h \t%g",
		control, operand0, operand1, result, $time);
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
		#stimdelay; operand0 <= {29'b0, 3'b111}; operand1 <= {29'b0, 3'b011}; 
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
		#stimdelay; control <= 3'b110; operand0 <= 5; operand1 <= 7;
		#stimdelay;
							//sll
		#stimdelay; control <= 3'b111; operand0 <= 1; operand1 <= 7;
		#stimdelay;
		#stimdelay; control <= 3'b010; operand0 <= 100; operand1 <= 32; // subtract
		#stimdelay;
		#stimdelay;
		#stimdelay;

		$finish; // finish simulation
	end

endmodule