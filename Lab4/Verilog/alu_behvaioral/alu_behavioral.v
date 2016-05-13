/*
Author: Adolfo Pineda & Ian Gilman
Title: Behavioral Arithmetic Logic Unit
Summary: two-operand / one-result implementation with Add/Sub/And/Or/Xor/Slt/Sll
functions selected by control code and produces status flags for 
zero result (Z), overflow (V), carry out (C), and negative result (N).
*/

module alu_behavioral(fr_read0, fr_read1, immediate, control, source, result, Z, V, C, N);

	// I/O
	input wire [31:0] fr_read0, fr_read,  // file register read data
                     immediate;  // immediate value
	input wire [2:0] control;  // determines operation performed
   input wire source;  // ALU operand1 Data source
	output reg [31:0] result;  // result of operation
	output reg Z, V, C, N;  // status flags after operation
	
	// Internal
	wire [31:0] add_result, sub_result, and_result,     //  wires connected to 
			   or_result, xor_result, slt_result,       	//  operation sub-module
			   sll_result, operand0, operand1;          //  results
			   
	wire add_Z, sub_Z, // zero flags
		 add_V, sub_V, // overflow flags
		 add_C, sub_C, // carry flags
		 add_N, sub_N; // negative value flags   
       
	reg op0_msb, op1_msb, result_msb;
	reg [31:0] twos_comp_op1, result_manip;

   // Determine operands
   assign operand0 = fr_read0;
   assign operand1 = source ? immediate : operand1;
	
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
				result = operand0 + operand1;
				result_msb = result[31];
				
				Z = (result == 0);
				V = (~(op0_msb ^ op1_msb)) & (op0_msb ^ result_msb);
				C = (op0_msb & op1_msb) | (op0_msb & ~result_msb) | (op1_msb & ~result_msb);
				N = (result_msb == 1);
				
			end
			
			SUB: begin
				twos_comp_op1 = ~operand1 + 32'b1;
				result_manip = operand0 + twos_comp_op1;
				op0_msb = operand0[31];
				op1_msb = twos_comp_op1[31];
				result_msb = result_manip[31];
				result = operand0 - operand1;
				
				Z = (result == 0);
				V = (op0_msb & op1_msb & ~result_msb) | (~op0_msb & ~op1_msb & result_msb);
				//V = ((op0_msb ~^ op1_msb)) & (op0_msb ^ result_msb);
				C = (op0_msb & op1_msb) | (op0_msb & ~result_msb) | (op1_msb & ~result_msb) | ((operand0 == 0) & (operand1 == 0) & (result == 0));
				N = (result_msb == 1);
				
			end
			
			AND: begin
				result = operand0 & operand1;
				Z = (result == 0);
				V = 0; 
				C = 0;
				N = (result[31] == 1);
					
			end
			
			OR: begin
				result = operand0 | operand1;
				Z = (result == 0);
				V = 0; 
				C = 0;
				N = (result[31] == 1);
				
			end
			
			XOR: begin
				result = operand0 ^ operand1;
				Z = (result == 0);
				V = 0; 
				C = 0;
				N = (result[31] == 1);
				
			end
			
			SLT: begin
				result = (operand0 < operand1) ? 1 : 0;
				Z = (result == 0);
				V = 0; 
				C = 0;
				N = (result[31] == 1);
				
			end
			
			SLL: begin
				result = operand0 << operand1;
				Z = (result == 0);
				V = 0; 
				C = 0;
				N = (result[31] == 1);
				
			end
		
		endcase
	end
	
endmodule
