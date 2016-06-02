// All files used
`include "alu.v"

// Title: 	ALU behavioral Test bench
// Author: 	Adolfo Pineda & Ian Gilman
// Summary:	A test bench module
module alu_tb;
   wire [31:0] fr_read0, fr_read1,  // file register read data
                     immediate,  // immediate value
                     forward0, forward1;  // data forwarded to alu mux 0 & 1
	wire [5:0] control;  // determines operation performed
   wire alu1_src, alu0_fwd;  // alu op1 source, alu op0 forwarded, alu op1 forwarded
	wire [31:0] result;  // result of operation
	wire Z, V, C, N;  // status flags after operation
	
	// dut
	alu dut(fr_read0, 
         fr_read1, 
         immediate, 
         forward0, 
         forward1, 
         control, 
         alu1_src,
         alu0_fwd,
         alu1_fwd, 
         result, 
         Z, 
         V, 
         C, 
         N
   );
	
	// tester
	aluTester tester(
         fr_read0, 
         fr_read1, 
         immediate, 
         forward0, 
         forward1, 
         control, 
         alu1_src,
         alu0_fwd,
         alu1_fwd, 
         result, 
         Z, 
         V, 
         C, 
         N
   );

	// File for gtkwave
	initial begin
		$dumpfile("alu_test.vcd");
		$dumpvars(1, dut);
	end
endmodule



// Title: ALU behavioral tester
// Author: Adolfo Pineda
// A testing module

module aluTester(
         fr_read0, 
         fr_read1, 
         immediate, 
         forward0, 
         forward1, 
         control, 
         alu1_src,
         alu0_fwd,
         alu1_fwd, 
         result, 
         Z, 
         V, 
         C, 
         N
   );
	// I/O
	output reg [31:0] fr_read0, fr_read1,  // file register read data
                     immediate,  // immediate value
                     forward0, forward1;  // data forwarded to alu mux 0 & 1
	output reg [5:0] control;  // determines operation performed
   output reg alu1_src, alu0_fwd, alu1_fwd;  // alu op1 source, alu op0 forwarded, alu op1 forwar
	input wire [31:0] result;  // result of operation
	input wire Z, V, C, N;  // status flags after operation
	
	parameter delay = 10;

	// ALU operation control codes
	parameter NOP = 6'd0;
	parameter ADD = 6'd32;
	parameter SUB = 6'd34;
	parameter AND = 6'd36;
	parameter OR  = 6'd37;
	parameter XOR = 6'd38;
	parameter SLT = 6'd42;
	parameter SLL = 6'd4;
	
	// Display variables 
	initial begin
		$display("\tfr0\t\tfr1\t   imm\t      FD0\t FD1\tcontrol  sor F0 F1\t res\t Z V C N\t time");
		$monitor(" %d\t %d %d %d %d\t %b  %b   %b  %b %d\t %b %b %b %b\t %g", 
												fr_read0, 
												fr_read1,
                                    immediate,
                                    forward0,
                                    forward1,
												control,
                                    alu1_src,
                                    alu0_fwd,
                                    alu1_fwd,
												result, 
												Z, 
												V, 
												C, 
												N, 
												$time);
	end
	
	initial begin
		#delay; #delay; #delay;
		
      alu1_src <= 0;
      alu0_fwd <= 0;
      alu1_fwd <= 0;
		control <= SUB;
		immediate <= 32'h14;
      
      // Subtraction
		 #delay;
		fr_read0 <= 32'd0;
		fr_read1 <= 32'd0;
		#delay;
      alu1_src <= 1;
		fr_read0 <= 32'd500;
		immediate <= 32'd500;
      forward0 <= 32'd500000000;
      forward1 <= 32'd300000000;
		#delay;
      alu1_src <=0;
      alu0_fwd <=1;
		fr_read0 <= 32'd30000000;
		fr_read1 <= 32'd30000000;
		#delay; #delay;
      alu1_fwd <= 1;
		fr_read0 <= 32'hFFFFFFE6;
		fr_read1 <= 32'd10;

      // Addition
      control <= ADD;
		#delay;
		fr_read0 <= 32'hFFFFFFFF;
		fr_read1 <= 32'h00000001;
		#delay;
      alu0_fwd <= 0;
		fr_read0 <= 32'd10;
		fr_read1 <= 32'hFFFFFFFA;
		#delay;
      alu1_fwd <= 0;
      alu1_src <= 1;
		fr_read0 <= 32'd5;
		fr_read1 <= 32'hFFFFFFF6;

		#delay;
      alu1_src = 0;
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
      alu1_src <= 1'b1;
      control <=ADD;
		#delay;#delay;
		fr_read1 <= 32'hFFFFFFF6;
		fr_read0 <= 32'hFFFFFFF6;
		#delay; #delay; #delay;
	end
endmodule