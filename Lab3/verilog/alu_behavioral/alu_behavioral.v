/*
Author: Ian Gilman
Title: Behavioral Arithmetic Logic Unit
Summary: two-operand / one-result implementation with Add/Sub/And/Or/Xor/Slt/Sll
functions selected by control code and produces status flags for 
zero result (Z), overflow (V), carry out (C), and negative result (N).
*/

// Module Dependencies:
/*`include "adder_gate.v"
`include "subtract_gate.v"
`include "and_gate.v"
`include "or_gate.v"
`include "xor_gate.v"
`include "slt_gate.v"
`include "sll_gate.v"
`include "full_adder_gate.v"
`include "mux_2to1.v"
`include "one_complement.v"
`include "negate_signed_gate.v"*/

/*
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

module alu_behavioral(operand0, operand1, control, shift, result, Z, V, C, N);

	// I/O
	input wire [31:0] operand0, operand1;  // values used as operands
	input wire [5:0] shift;
	input wire [2:0] control;  // determines operation performed
	output reg [31:0] result;  // result of operation
	output reg Z, V, C, N;  // status flags after operation
	
	// Internal
	wire [31:0] add_result, sub_result, and_result,     //  wires connected to 
			   or_result, xor_result, slt_result,   	//  operation sub-module
			   sll_result;                          	//  results
			   
	wire add_Z, sub_Z, // zero flags
		 add_V, sub_V, // overflow flags
		 add_C, sub_C, // carry flags
		 add_N, sub_N; // negative value flags   

	//// Store Operation Results and flags ////
	// use and-or mask with control to assign valid operation to result
	
	/*
	adder_gate adder (
					  .addend0(operand0),
					  .addend1(operand1),
					  .Cin(),
 					  .sum(add_result),
					  .Z(add_Z),
					  .V(add_V),
					  .C(add_C),
					  .N(add_N)
					  );
					  
	subtract_gate subtract (
							.minuend(operand0),
							.subtrahend(operand1),
							.difference(sub_result),
							.Z(sub_Z),
							.V(sub_V),
							.C(sub_C),
							.N(sub_N)
							);
							
	and_gate and_mod (
					  .operand0(operand0),
					  .operand1(operand1), 
					  .result(and_result)
					  );
					  
	or_gate or_mod (
					.operand0(operand0),
					.operand1(operand1),
					.result(or_result)
					);
					
	xor_gate xor_mod (
					  .operand0(operand0),
					  .operand1(operand1),
					  .result(xor_result)
					  );
					  
	slt_gate slt (
				  .operand0(operand0),
				  .operand1(operand1),
				  .result(slt_result)
				  );
	
	sll_gate sll (
				  .num(operand0),
				  .shift(shift),
				  .shift_num(sll_result)
				  );*/
				  
	reg op0_msb, op1_msb, result_msb;
	reg [31:0] twos_comp_op1, result_manip;
	
	// ALU operation control codes
	parameter NOP = 3'b000;
	parameter ADD = 3'b001;
	parameter SUB = 3'b010;
	parameter AND = 3'b011;
	parameter OR  = 3'b100;
	parameter XOR = 3'b101;
	parameter SLT = 3'b110;
	parameter SLL = 3'b111;
	
	always @ (*) begin
		case (control)
		
			NOP: begin
				Z = 0;
				V = 0;
				C = 0;
				N = 0;
				result = 0;
			end
			
			ADD: begin
				op0_msb = operand0[31];
				op1_msb = operand1[31];
				result_msb = result[31];
				
				Z = (result == 0);
				V = (~(op0_msb ^ op1_msb)) & (op0_msb ^ result_msb);
				C = (op0_msb & op1_msb) | (op0_msb & ~result_msb) | (op1_msb & ~result_msb);
				N = (result_msb == 1);
				result = operand0 + operand1;
				
			end
			
			SUB: begin
				twos_comp_op1 = ~operand1 + 32'b1;
				result_manip = operand0 + twos_comp_op1;
				op0_msb = operand0[31];
				op1_msb = twos_comp_op1[31];
				result_msb = result_manip[31];

				Z = (result == 0);
				V = (~(op0_msb ^ op1_msb)) & (op0_msb ^ result_msb);
				C = (op0_msb & op1_msb) | (op0_msb & ~result_msb) | (op1_msb & ~result_msb);
				N = (result_msb == 1);
				result = operand0 - operand1;
				
			end
			
			AND: begin
				Z = (result == 0);
				V = 0; 
				C = 0;
				N = (result[31] == 1);
				result = operand0 & operand1;
					
			end
			
			OR: begin
				Z = (result == 0);
				V = 0; 
				C = 0;
				N = (result[31] == 1);
				result = operand0 | operand1;
				
			end
			
			XOR: begin
				Z = (result == 0);
				V = 0; 
				C = 0;
				N = (result[31] == 1);
				result = operand0 ^ operand1;
				
			end
			
			SLT: begin
				Z = (result == 0);
				V = 0; 
				C = 0;
				N = (result[31] == 1);
				result = (operand0 < operand1) ? 1 : 0;
				
			end
			
			SLL: begin
				Z = (result == 0);
				V = 0; 
				C = 0;
				N = (result[31] == 1);
				result = operand0 << operand1;
				
			end
		
		endcase
	end
	
endmodule
