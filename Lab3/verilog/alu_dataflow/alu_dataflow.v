/*
Author: Ian Gilman, David Dolengewicz
Title: Gate-Level Arithmetic Logic Unit
Summary: two-operand / one-result implementation with Add/Sub/And/Or/Xor/Slt/Sll
   functions selected by control code and produces status flags for 
   zero result (Z), overflow (V), carry out (C), and negative result (N).
*/

// Module Dependencies:


module alu_dataflow (operand0, operand1, control, result, Z, V, C, N);
   // I/O
   input wire [31:0] operand0, operand1;  // values used as operands
   input wire [2:0] control;  // determines operation performed
   output wire [31:0] result;  // result of operation
   output wire Z, V, C, N;  // status flags after operation
   // Internal
   wire [31:0] sum, difference, and_result,         //  wires connected to 
               or_result, xor_result, slt_result,   //  operation sub-module
               sll_result;                          //  results
   wire 				  	// zero flag
        add_V, sub_V,  		// overflow flags
        add_C, sub_C,  		// carry flags
        add_N, sub_N;  				// negative value flag
		
   // ALU operation control codes
   parameter NOP = 3'b000;
   parameter ADD = 3'b001;
   parameter SUB = 3'b010;
   parameter AND = 3'b011;
   parameter OR  = 3'b100;
   parameter XOR = 3'b101;
   parameter SLT = 3'b110;
   parameter SLL = 3'b111;
   
   
    // operation sub-modules
	
	adder_gate adder_module (.addend0(operand0), .addend1(operand1), .Cin(1'b0), .sum(sum), 
								.Z(), .V(add_V), .C(add_C), .N(add_N));
    

	subtract_gate subtract_module (	.minuend(operand0), .subtrahend(operand1), .difference(difference), 
									.Z(), .V(sub_V), .C(sub_C), .N(sub_N));
	
	AND_32_Data and_module (.a(operand0), .b(operand1), .sum(and_result), 
								.zero(), .overflow(), .carryOut(), .negative());
    
	OR_32_Data or_module (.a(operand0), .b(operand1), .sum(or_result), 
								.zero(), .overflow(), .carryOut(), .negative());
    
	XOR_32_Data xor_module (.a(operand0), .b(operand1), .sum(xor_result), 
								.zero(), .overflow(), .carryOut(), .negative());
    
	slt_gate slt_module (	.operand0(operand0), .operand1(operand1), .result(slt_result)	);
    
	sll_gate sll_module (	.num(operand0), .shift(operand1[5:0]), .shift_num(sll_result)	);
    
   
   
   //// Store Operation Results and flags ////
   // use and-or mask with control to assign valid operation to result
   assign result = (	
						({32{control == ADD}} & sum) |
						({32{(control == SUB)}} & difference) |
						({32{control == AND}} & and_result) |
						({32{control == OR }} & or_result)  |
						({32{control == XOR}} & xor_result) |
						({32{control == SLT}} & slt_result) |
						({32{control == SLL}} & sll_result)
                   );
   // over/underflow flag assignment with and-or mask using control
   assign V = (
                 ((control == ADD) & add_V) |
                 ((control == SUB) & sub_V)
              );
   // carry flag assignment with and-or mask using control
   assign C = (
                 ((control == ADD) & add_C) |
                 ((control == SUB) & sub_C)
              );
	assign N = ( ((control == ADD) & add_N) |
                 ((control == SUB) & sub_N)	);
    
	assign Z = 	(   result == 32'b0  );

endmodule