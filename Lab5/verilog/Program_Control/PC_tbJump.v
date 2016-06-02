/*
Author: David Dolengewicz
Summary: Test the operation of the Program_Control module
*/

`include "../shared_modules/synch_register_32bit/d_flipflop/d_flipflop.v"
`include "../shared_modules/synch_register_32bit/synch_register_32bit.v"
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
   .clk(clk),       //input from register Data1
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
      $dumpfile("PC_TestJump.vcd");
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

wire flags [6:0];

//assign flags = {writeEnable, jump, jumpReg, branch, negative, reset, suspendEnable};
 

// print out test results
  initial begin
         $display(" fwd0     fwd1      fr0     fr1      jad \tinstr     wrinstr  wrA\tWe.J.Jr.B.R.Se.j0.j1\tclk\ttime");
         $monitor(" %h %h %h %h %h\t%h  %h  %h\t%b  %b %b  %b %b %b  %b  %b  \t%b  \t%g",
                        fwd_data0,
                        fwd_data1,
                        fr_read0,
                        fr_read1,
                        jump_address,
                        instruction,       
                        writeInstruction,   
                        writeAddress, 
                        writeEnable,      
                        jump,            
                        jumpReg,         
                        branch,
                        reset,            
                        suspendEnable,
                        jmp0_mux,
                        jmp1_mux,
                        clk,
                        $time   
                 );
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
      branch = 1'b0;
      jmp0_mux = 1'b0;
      jmp1_mux = 1'b0;
      reset = 1;      
      suspendEnable = 1;
      reset = 1; #delay;
      reset = 0; #delay;
      reset = 1; #delay;

      // Write Instructions to Memory
      writeEnable = 1;
      writeAddress = 7'h0;
      writeInstruction = 32'h108;
      clk = ~clk; #delay;
      clk = ~clk; #delay;
      for (i = 1; i < 128; i++) begin
         writeInstruction = writeInstruction - 32'b1;
         writeAddress = writeAddress + 7'b1;
         clk = ~clk; #delay;
         clk = ~clk; #delay;
      end
      clk = ~clk; #delay;
      writeEnable = 0;
      suspendEnable = 0;
      clk = ~clk; #delay;
      clk = ~clk; #delay;

      // jump test
      jump = 1;
      jump_address = instruction[25:0];  // jump to destination in last instr
      clk = ~clk; #delay;clk <= ~clk; #delay;
      jump = 0;
      clk = ~clk; #delay;clk = ~clk; #delay;clk = ~clk; #delay;clk = ~clk; #delay;
      clk = ~clk; #delay;clk = ~clk; #delay;clk = ~clk; #delay;clk = ~clk; #delay;
      clk = ~clk; #delay;clk = ~clk; #delay;

      // branch greater than test
      jump_address = instruction[25:0];
      fr_read0 = 32;
      fr_read1 = 24;
      branch = 1;
      jump = 1;
      clk = ~clk; #delay;clk = ~clk; #delay;
      fr_read1 = 44;
      clk = ~clk; #delay;clk = ~clk; #delay;
      fr_read1 = 14;
      jump_address = instruction[25:0];
      clk = ~clk; #delay;clk = ~clk; #delay;
      branch = 0;
      jump = 1'b0;
      // forwarding
      fwd_data0 = 22;
      fwd_data1 = 33;
      clk = ~clk; #delay;clk = ~clk; #delay;
      fwd_data0 = 55;
      clk = ~clk; #delay;clk = ~clk; #delay;
      jmp0_mux = 1'b1;
      jmp1_mux = 1'b1;
      jump = 1;
      branch = 1;
      clk = ~clk; #delay;clk = ~clk; #delay;
      jump = 0;
      branch = 0;

      // jump reg
      clk = ~clk; #delay;clk = ~clk; #delay;
      jump = 1'b1;
      jumpReg = 1'b1;
      clk = ~clk; #delay;clk = ~clk; #delay;
      jumpReg = 1'b0;
      jump = 1'b0;
      clk = ~clk; #delay;clk = ~clk; #delay;clk = ~clk; #delay;clk = ~clk; #delay;
      clk = ~clk; #delay;clk = ~clk; #delay;clk = ~clk; #delay;clk = ~clk; #delay;

      $finish;
      end
   
 endmodule




