/*
Author: David Dolengewicz
Summary: Test the operation of the Program_Control module
*/

`include "../Instruction_Memory/synch_register_32bit/d_flipflop/d_flipflop.v"
`include "../Instruction_Memory/synch_register_32bit/synch_register_32bit.v"
`include "../shared_modules/mux_2to1/mux_2to1.v"
`include "../Instruction_Memory/decoder_7bit/decoder_7bit.v"
`include "../Instruction_Memory/instruction_memory.v"
`include "Program_Control.v"

module PC_tbJump();
wire [31:0] writeInstruction, fr_read0, fr_read1, fwd_data0, fwd_data1;
wire [25:0] jump_address;
wire [6:0] writeAddress;
wire clk, writeEnable, jump, jumpReg, branch, reset, 
     suspendEnable, jmp0_mux, jmp1_mux;  // 1-bit flags
wire [31:0] instruction; // instruction output


PC_tester   tester(         
   .clk(clk), 
   .instruction(instruction),       //main output
   .writeInstruction(writeInstruction),   // for loading instruction data
   .writeAddress(writeAddress),       // for loading instruction data
   .writeEnable(writeEnable),      // for loading instruction data
   .jump_address(jump_address),
   .jump(jump),            //
   .jumpReg(jumpReg),         //
   .branch(branch),            //
   .fr_read0(fr_read0),         //
   .fr_read1(fr_read1),
   .fwd_data0(fwd_data0),
   .fwd_data1(fwd_data1),
   .jmp0_mux(jmp0_mux),
   .jmp1_mux(jmp1_mux),
   .reset(reset),            // active low
   .suspendEnable(suspendEnable) 
);   


Program_Control dut( 
   .clk(clk), 
   .instruction(instruction),       //main output
   .writeInstruction(writeInstruction),   // for loading instruction data
   .writeAddress(writeAddress),       // for loading instruction data
   .writeEnable(writeEnable),      // for loading instruction data
   .jump_address(jump_address),
   .jump(jump),            //
   .jumpReg(jumpReg),         //
   .branch(branch),            //
   .fr_read0(fr_read0),         //
   .fr_read1(fr_read1),
   .fwd_data0(fwd_data0),
   .fwd_data1(fwd_data1),
   .jmp0_mux(jmp0_mux),
   .jmp1_mux(jmp1_mux),
   .reset(reset),            // active low
   .suspendEnable(suspendEnable)
);  

   // Store waveform data
   initial begin
      $dumpfile("PC_Test.vcd");
      $dumpvars(4, dut);
   end

endmodule




module PC_tester( 
         clk,
         instruction,       //main output
         writeInstruction,   // for loading instruction data
         writeAddress,       // for loading instruction data
         writeEnable,      // for loading instruction data
         jump_address,
         jump,            //
         jumpReg,         //
         branch,            //
         fr_read0,         //
         fr_read1,
         fwd_data0,
         fwd_data1,
         jmp0_mux,
         jmp1_mux,
         reset,            // active low
         suspendEnable
);
// I/O
output reg [31:0] writeInstruction, //data inputs
                  fr_read0, fr_read1,  // used for calc branch and jumpreg
                  fwd_data0, fwd_data1;  // forwarded data fr_data
output reg [25:0] jump_address;
output reg [6:0] writeAddress;
output reg clk, writeEnable, jump, jumpReg, branch, reset, suspendEnable, //1-bit flags
           jmp0_mux, jmp1_mux;  // jump data muxes
input wire [31:0] instruction; // instruction output, immediate value to alu

//wire flags [6:0];

//assign flags = {writeEnable, jump, jumpReg, branch, negative, reset, suspendEnable};
parameter CLOCK_PERIOD = 2;
 

// print out test results
 initial begin
         $display("\tinstruction \twrInstrct \twrAddr \t(We.J.Jr.B.R.Se) \tclk\ttime");
         $monitor("\t%h  \t%h  \t%h \t%b%b%b%b%b%b  \t\t%b\t%g",
                        instruction,       
                        writeInstruction,   
                        writeAddress,
                        writeEnable,
                        jump, 
                        jumpReg,         
                        branch,  
                        reset,            
                        suspendEnable,
                        clk,
                        $time   );
   end

   
   parameter delay = 50;
   integer i;
   integer j;

   initial begin
   
      // Initialize PC
      clk = 1'b1;
      reset = 1'b1;
      writeEnable = 1'b0;
      jump = 1'b0;
      jumpReg = 1'b0;
      jmp0_mux = 1'b0;
      jmp1_mux = 1'b0;
      reset = 1'b1;
      branch = 1'b0;
      suspendEnable = 1'b1;
      reset = 1'b1; #delay;
      reset = 1'b0; #delay;
      reset = 1'b1; #delay;
      
      // Write Instructions to Memory
      writeEnable = 1'b1;
      writeAddress = 7'h0;
      writeInstruction = 32'h5ADFACED;
      #delay; clk = ~clk;  // clk low
      #delay; clk = ~clk;  // clk high
      for (i = 1; i < 128; i++) begin
         writeInstruction = writeInstruction - 32'b1;
         writeAddress = writeAddress + 7'b1;
         #delay; clk = ~clk;  // clk low
         #delay; clk = ~clk;  // clk high
      end
      writeEnable = 1'b0;
      #delay; clk = ~clk;  // clk low
      #delay; clk = ~clk;  // clk high
      
      // PC is active
      #1;
      suspendEnable = 1'b0;
      for (i = 0; i < 128; i++) begin
         #delay; clk = ~clk;  // clk low
         #delay; clk = ~clk;  // clk high
      end
   
   $finish;
   end
   
 endmodule




