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

module PC_tbJump();

wire [31:0] jumpRegAddr, writeInstruction; //data inputs
wire [6:0] writeAddress;
wire clk, writeEnable, jump, jumpReg, branch, negative, reset, suspendEnable; //1-bit flags
wire [31:0] instruction; // instruction output


PC_tester   tester (         .clk(clk), 
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


Program_Control dut (          .clk(clk), 
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
      $dumpfile("PC_TestJump.vcd");
      $dumpvars(4, dut);
   end

endmodule






module PC_tester(            clk, 
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
parameter CLOCK_PERIOD = 2;
 

// print out test results
 initial begin
         $display("\tjumpAddr \tinstruction \twrInstrct \twrAddr \t(We.J.Jr.B.N.R.Se) \tclk\ttime");
         $monitor("\t%h \t%h  \t%h  \t%h \t%b%b%b%b%b%b%b  \t\t%b\t%g",
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
                        clk,
                        $time   );
   end

   
   parameter delay = 1;
   integer i;
   integer j;

   initial begin
   
      // Initialize PC
      clk <= 0;
      reset <= 1;
      writeEnable <= 0;      
      jump <= 0;            
      jumpReg <= 0;         
      branch <= 0;            
      negative <= 0;         
      reset <= 1;      
      suspendEnable <= 1;
      reset <= 1; #delay;
      reset <= 0; #delay;
      reset <= 1; #delay;
      
      // Write Instructions to Memory
      writeEnable <= 1;
      writeAddress <= 7'h0;
      writeInstruction <= 32'h108;
      clk <= ~clk; #delay;
      clk <= ~clk; #delay;
      for (i = 1; i < 128; i++) begin
         writeInstruction <= writeInstruction - 32'b1;
         writeAddress <= writeAddress + 7'b1;
         clk <= ~clk; #delay;
         clk <= ~clk; #delay;
      end
      clk <= ~clk; #delay;
      clk <= ~clk; #delay;
	  
	  writeEnable <= 0;
	  suspendEnable <= 0;
      
      //PC is active
      // writeEnable <= 0;
      // suspendEnable <= 0;
      // for (i = 0; i < 128; i++) begin
         // clk <= ~clk; #delay;
         // clk <= ~clk; #delay;
      // end
	
		jump <= 1; 
		clk <= ~clk; #delay;clk <= ~clk; #delay;
		
		jump <= 0;
		clk <= ~clk; #delay;clk <= ~clk; #delay;clk <= ~clk; #delay;clk <= ~clk; #delay;
      clk <= ~clk; #delay;clk <= ~clk; #delay;clk <= ~clk; #delay;clk <= ~clk; #delay;
      clk <= ~clk; #delay;clk <= ~clk; #delay;
		
		jump <= 1;
		branch <= 1;
		clk <= ~clk; #delay;clk <= ~clk; #delay;
		
		branch <= 0;
      jump <= 0;
		clk <= ~clk; #delay;clk <= ~clk; #delay;
      
      // branch greater than
      branch <= 1;
      jump <= 1;
		clk <= ~clk; #delay;clk <= ~clk; #delay;
      negative <= 1'b1; 
		clk <= ~clk; #delay;clk <= ~clk; #delay;
      branch <= 0;
      jump <= 1'b0;
      
      
      // jump reg
      jumpRegAddr <= 32'h1F;
		clk <= ~clk; #delay;clk <= ~clk; #delay;
      jump <= 1'b1;
      jumpReg <= 1'b1;
		clk <= ~clk; #delay;clk <= ~clk; #delay;
      jumpReg <= 1'b0;
      jump <= 1'b0;
      
      
		clk <= ~clk; #delay;clk <= ~clk; #delay;clk <= ~clk; #delay;clk <= ~clk; #delay;
		clk <= ~clk; #delay;clk <= ~clk; #delay;clk <= ~clk; #delay;clk <= ~clk; #delay;
   
   $finish;
   end
   
 endmodule




