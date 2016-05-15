/*
Author: Ian Gilman
Title: Computer Integration Tester
Summary: Creates stimulus signals to test a MIPS-like computer integration
*/

module computer_integration_tester(
   clk,
   comp_rst,
   comp_en,
   wr_instr_en,
   wr_instr_addr,
   wr_instr
);
// Outputs
   output reg clk, comp_rst, comp_en,  // clock, computer !reset, computer !enable
       wr_instr_en;  // write instruction enable
   output reg [6:0] wr_instr_addr;  // instruction memory address to write to
   output reg [31:0] wr_instr;  // instruction to write to memory
// Internal
   parameter delay = 10;
   parameter SHIFT = 5'h1F;
   
   // Test Stimulus Signals
   integer i;
   initial begin
   // initialize computer
   clk = 1'b1;
   comp_rst = 1'b1;
   comp_en = 1'b1;
   wr_instr_en = 1'b0;
   #delay; comp_rst = 1'b0;
   #delay; comp_rst = 1'b1;
   
   // write program instructions to memory
   #delay; clk = ~clk;
   #delay; clk = ~clk;
   wr_instr_en = 1'b1;
   
   // mem(0x0) = reg(NOP)
   wr_instr = {6'd0, 5'd0, 5'd0, 5'd0, SHIFT, 6'd0};
   wr_instr_addr = 32'd0;
   #delay; clk = ~clk;
   #delay; clk = ~clk;
   
   // mem(0x1) = addi(zero, t0, 0x13)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd13};
   wr_instr_addr = 32'd1;
   #delay; clk = ~clk;
   #delay; clk = ~clk;
   
   // mem(0x2) = sw(zero, t0, 0x0)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd0};
   wr_instr_addr = 32'd2;
   #delay; clk = ~clk;
   #delay; clk = ~clk;
   
   // mem(0x3) = lw(zero, t1, 0x0)
   wr_instr = {6'd35, 5'd0, 5'd9, 16'd0};
   wr_instr_addr = 32'd3;
   #delay; clk = ~clk;
   #delay; clk = ~clk;
   
   // mem(0x4) = jr(t1)
   wr_instr = {6'd0, 5'd9, 5'd0, 5'd0, SHIFT, 6'd8};
   wr_instr_addr = 32'd4;
   #delay; clk = ~clk;
   #delay; clk = ~clk;
   
   // mem(0x13) = reg(t0, t1, t2, add)
   wr_instr = {6'd0, 5'd8, 5'd9, 5'd10, SHIFT, 6'd32};
   wr_instr_addr = 32'd13;
   #delay; clk = ~clk;
   #delay; clk = ~clk;
   
   // run program
   wr_instr_en = 1'b1;
   comp_en = 1'b0;
   for(i=0; i<20; i=i+1) begin
      #delay; clk = ~clk;
   end
   
   $finish;
   end

endmodule