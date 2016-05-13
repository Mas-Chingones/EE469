/*
Author: David Dolengewicz
Summary: Test the operation of the Program_Control module
*/

`include "../Instruction_Memory/register_32bit/d_flipflop/d_flipflop.v"
`include "../Instruction_Memory/register_32bit/register_32bit.v"
`include "../Instruction_Memory/mux_2to1/mux_2to1.v"
`include "../Instruction_Memory/decoder_7bit/decoder_7bit.v"
`include "../Instruction_Memory/instruction_memory.v"
`include "Program_Control.v"

module PC_tb();

wire [31:0] jumpRegAddr, writeInstruction; //data inputs
wire [6:0] writeAddress;
wire clk, writeEnable, jump, jumpReg, branch, negative, reset, suspendEnable; //1-bit flags
wire [31:0] instruction; // instruction output


PC_tester	tester (			.clk(clk), 
								.jumpRegAddr(jumpRegAddr), 		
								.instruction(instruction), 		
								.writeInstruction(writeInstruction),	
								.writeAddress(writeAddress), 		
								.writeEnable(writeEnable),		
								.jump(jump),				
								.jumpReg(jumpReg),			
								.branch(branch),				
								.negative(negative),			
								.reset(reset),				
								.suspendEnable(suspendEnable)  );	


Program_Control dut ( 			.clk(clk), 
								.jumpRegAddr(jumpRegAddr), 		
								.instruction(instruction), 		
								.writeInstruction(writeInstruction),	
								.writeAddress(writeAddress), 		
								.writeEnable(writeEnable),		
								.jump(jump),				
								.jumpReg(jumpReg),			
								.branch(branch),				
								.negative(negative),			
								.reset(reset),				
								.suspendEnable(suspendEnable)  );	

   // Store waveform data
   initial begin
      $dumpfile("PC_Test.vcd");
      $dumpvars(3, dut);
   end

endmodule






module PC_tester(				clk, 
								jumpRegAddr, 		
								instruction, 		
								writeInstruction,	
								writeAddress, 		
								writeEnable,		
								jump,				
								jumpReg,			
								branch,				
								negative,			
								reset,				
								suspendEnable  );	
								
output reg [31:0] jumpRegAddr, writeInstruction; //data inputs
output reg [6:0] writeAddress;
output reg clk, writeEnable, jump, jumpReg, branch, negative, reset, suspendEnable; //1-bit flags
input wire [31:0] instruction; // instruction output

wire flags [6:0];

//assign flags = {writeEnable, jump, jumpReg, branch, negative, reset, suspendEnable};


// print out test results
 initial begin
         $display("\tjumpAddr \tinstruction \twriteInstruction \t\t\twriteAddress \t\t(We.J.Jr.B.N.R.Se) \ttime");
         $monitor("\t%h \t%h  \t%b  \t%h \t%b%b%b%b%b%b%b  \t%g",
								jumpRegAddr,
								instruction, 		
								writeInstruction,	
								writeAddress, 
								writeEnable,		
								jump,				
								jumpReg,			
								branch,				
								negative,			
								reset,				
								suspendEnable,								
								$time	);
   end

   
   parameter delay = 1;
   integer i;
   integer j;
   
	always begin
		clk = ~clk; #delay;	
	end

	initial begin
	
	reset <= 0; #delay;
		
		writeEnable <= 1;		
		jump <= 0;				
		jumpReg <= 0;			
		branch <= 0;				
		negative <= 0;			
		reset <= 1;				
		suspendEnable <= 0;
		
		#delay;#delay;#delay;#delay;
		
		
		writeAddress = 7'h0;
		writeInstruction = 32'h5ADFACED;
		  for (i = 0; i < 128; i++) begin
			 writeAddress = writeAddress + 7'b1;
			 writeInstruction = writeInstruction - 32'b1;
			 #delay;
		  end      
		
		writeEnable <= 0;
		
		for (i = 0; i < 128; i++) begin
		 writeAddress = writeAddress + 7'b1;
		 #delay;
		end
		
	
	$stop;
	
	end
   
 endmodule




