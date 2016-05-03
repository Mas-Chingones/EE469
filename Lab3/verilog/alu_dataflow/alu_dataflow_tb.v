/*
Author  : David Dolengewicz
Title   : 32-bit AND testbench
Summary : Test bench that tests the AND_32_Data module. 
*/
 
`include "../alu_gate/adder_gate/adder_gate.v"
	`include "../alu_gate/adder_gate/full_adder_gate.v"
`include "../alu_gate/subtract_gate/subtract_gate.v"
	`include "../alu_gate/subtract_gate/one_complement.v"
`include "and_dataflow/AND_32_Data.v"
`include "or_dataflow/OR_32_Data.v"
`include "xor_dataflow/XOR_32_Data.v"
`include "../alu_gate/slt_gate/slt_gate.v"
`include "../alu_gate/sll_gate/sll_gate.v"
`include "../alu_gate/shared_modules/mux_2to1.v"
`include "alu_dataflow.v"


module alu_dataflow_tb ();
	wire [31:0] operand0, operand1;
	wire [2:0] control;
	wire [31:0] result;
	wire Z, V, C, N; 
	
	// Create an instance of the alu_dataflow module
	alu_dataflow alu (		.operand0(operand0), 
							.operand1(operand1), 
							.control(control), 
							.result(result), 
							.Z(Z), 
							.V(V), 
							.C(C), 
							.N(N)	);
	
	// Create an instance of the alu_dataflow_tester module
	alu_dataflow_tester alu_test (	.operand0(operand0),
									.operand1(operand1),
									.control(control), 
									.result(result), 
									.Z(Z), 
									.V(V), 
									.C(C), 
									.N(N)	);
									
	// Dump variables onto data module
	initial begin
      $dumpfile("alu_test_out.vcd");
      $dumpvars(2, alu);
   end
	
endmodule


/*
Author  : David Dolengewicz
Title   : 32-bit ALU tester
Summary : Tester module that provides the values to the
		  alu_dataflow module for testing.
*/

module alu_dataflow_tester (operand0, 
							operand1, 
							control, 
							result, 
							Z, 
							V, 
							C, 
							N	);
							
	output reg [31:0] operand0, operand1;
	output reg [2:0] control;
	input wire [31:0] result;
	input wire Z, V, C, N; 
	
	//clock delay time
	parameter delay = 10;
	
	// ALU operation control codes
   parameter NOP = 3'b0;
   parameter ADD = 3'b1;
   parameter SUB = 3'b10;
   parameter AND = 3'b11;
   parameter OR  = 3'b100;
   parameter XOR = 3'b101;
   parameter SLT = 3'b110;
   parameter SLL = 3'b111;
	
	// Display variables 
	initial begin
		$display("\t a\t b\t control\t result\t  Z V C N\t time");
		$monitor("\t %d\t %d\t %b\t %d\t  %b %b %b %b \t %g", 
												operand0, 
												operand1, 
												control, 
												result, 
												Z, 
												V, 
												C, 
												N, 
												$time);
	end
	
	initial begin
		#delay; #delay; #delay;
		
		control <= SUB;
		
		 #delay;
		operand0 <= 32'd0;
		operand1 <= 32'd0;
		 #delay;
		operand0 <= 32'd500;
		operand1 <= 32'd500;
		 #delay;
		operand0 <= 32'd500000000;
		operand1 <= 32'd500000000;
		 #delay; #delay;
		operand0 <= 32'hFFFFFFE6;
		operand1 <= 32'd10;

		#delay;
		operand0 <= 32'hFFFFFFFF;
		operand1 <= 32'h00000001;
		 #delay;
		operand0 <= 32'd10;
		operand1 <= 32'hFFFFFFFA;
		 #delay;
		operand0 <= 32'd5;
		operand1 <= 32'hFFFFFFF6;

		#delay;
		operand0 <= 32'd2147483647;
		operand1 <= 32'd2147483647;
		 #delay;#delay;
		operand0 <= 32'd3147483647;
		operand1 <= 32'd3147483647;
		 #delay;#delay;
		operand0 <= 32'hFFFFF000;
		operand1 <= 32'h80000000;
		 #delay;#delay;
		operand0 <= 32'd2147483647;
		operand1 <= 32'd2147483647;
		 #delay;#delay;
		operand0 <= 32'h80000000;
		operand1 <= 32'h00000001;
		 #delay;#delay;
		operand0 <= 32'hC0000000;
		operand1 <= 32'hC0000000;
		 #delay;#delay;
		operand0 <= 32'h80000000;
		operand1 <= 32'h80000000;

		#delay;#delay;
		operand1 <= 32'hFFFFFFF6;
		operand0 <= 32'hFFFFFFF6;
		 #delay; #delay; #delay;
		
		
		
		/* 
		#delay; #delay; #delay;
		control <= SUB; #delay;
		
		#delay;
		operand0 <= 32'd0;
		operand1 <= 32'd0;
		 #delay;
		operand0 <= 32'd500;
		operand1 <= 32'd500;
		 #delay;
		operand0 <= 32'd500000000;
		operand1 <= 32'd500000000;
		 #delay;
		operand0 <= 32'd2147483647;
		operand1 <= 32'd5;
		#delay;
		operand0 <= 32'd5;		
		operand1 <= 32'd2147483647;
		#delay;
		operand0 <= 32'd0;
		operand1 <= 32'd2147483647;
		
		
		
		#delay; #delay; #delay;
		control <= AND; #delay;
		
		#delay;
		operand0 <= 32'd0;
		operand1 <= 32'd1;
		
		#delay;
		operand0 <= 32'd1;
		operand1 <= 32'd0;
		
		#delay;
		operand0 <= 32'd0;
		operand1 <= 32'd0;
		
		#delay;
		operand0 <= 32'd1;
		operand1 <= 32'd1;
		
		#delay;
		operand0 <= 32'd45;
		operand1 <= 32'd85;
		
		
		#delay; #delay; #delay;
		control <= OR; #delay;
		
			#delay;
		operand0 <= 32'd0;
		operand1 <= 32'd1;
		
		#delay;
		operand0 <= 32'd1;
		operand1 <= 32'd0;
		
		#delay;
		operand0 <= 32'd0;
		operand1 <= 32'd0;
		
		#delay;
		operand0 <= 32'd1;
		operand1 <= 32'd1;
		
		#delay;
		operand0 <= 32'd45;
		operand1 <= 32'd85;
		
		
		#delay; #delay; #delay;
		control <= XOR; #delay;
		
			#delay;
		operand0 <= 32'd0;
		operand1 <= 32'd1;
		
		#delay;
		operand0 <= 32'd1;
		operand1 <= 32'd0;
		
		#delay;
		operand0 <= 32'd0;
		operand1 <= 32'd0;
		
		#delay;
		operand0 <= 32'd1;
		operand1 <= 32'd1;
		
		#delay;
		operand0 <= 32'd45;
		operand1 <= 32'd85;
		
		#delay; #delay; #delay;
		control <= SLT; #delay;
		
			#delay;
		operand0 <= 32'd0;
		operand1 <= 32'd1;
		
		#delay;
		operand0 <= 32'd1;
		operand1 <= 32'd0;
		
		#delay;
		operand0 <= 32'd0;
		operand1 <= 32'd0;
		
		#delay;
		operand0 <= 32'd1;
		operand1 <= 32'd1;
		
		#delay;
		operand0 <= 32'd45;
		operand1 <= 32'd85;
		
		#delay; #delay; #delay;		
		control <= SLL; #delay;
		
			#delay;
		operand0 <= 32'd1;
		operand1 <= 32'd5;
		
		#delay;
		operand0 <= 32'd1;
		operand1 <= 32'd10;
		
		#delay;
		operand0 <= 32'd1;
		operand1 <= 32'd30;
		 */
	end

endmodule