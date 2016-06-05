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
   // clock
   always begin
      #delay; clk = ~clk;
   end
   
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
   @(posedge clk);
   wr_instr_en = 1'b1;
   /*
   // mem(0) = reg(NOP)
   wr_instr = {6'd0, 5'd0, 5'd0, 5'd0, SHIFT, 6'd0};
   wr_instr_addr = 32'd0;
   @(posedge clk);
   
   // mem(1) = addi(zero, t0, 13)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd13};
   wr_instr_addr = 32'd1;
   @(posedge clk);
   
   // mem(2) = sw(zero, t0, 0)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd0};
   wr_instr_addr = 32'd2;
   @(posedge clk);
   
   // mem(3) = lw(zero, t1, 0)
   wr_instr = {6'd35, 5'd0, 5'd9, 16'd0};
   wr_instr_addr = 32'd3;
   @(posedge clk);
   
   // mem(4) = jr(t1)
   wr_instr = {6'd0, 5'd9, 5'd0, 5'd0, SHIFT, 6'd8};
   wr_instr_addr = 32'd4;
   @(posedge clk);
   
   // mem(13) = reg(t0, t1, t2, add)
   wr_instr = {6'd0, 5'd8, 5'd9, 5'd10, SHIFT, 6'd32};
   wr_instr_addr = 32'd13;
   @(posedge clk);
   
   // mem(14) = j(17)
   wr_instr = {6'd2, 26'd17};
   wr_instr_addr = 32'd14;
   @(posedge clk);
   
   // mem(17) = reg(t0, t1, t0, sub)
   wr_instr = {6'd0, 5'd8, 5'd9, 5'd8, SHIFT, 6'd34};
   wr_instr_addr = 32'd17;
   @(posedge clk);
   
   // mem(18) = bgt(t0, t1, 26)
   wr_instr = {6'd7, 5'd8, 5'd9, 16'd24};
   wr_instr_addr = 32'd18;
   @(posedge clk);
   
   // mem(19) = bgt(t0, t0, 26)
   wr_instr = {6'd7, 5'd8, 5'd8, 16'd24};
   wr_instr_addr = 32'd19;
   @(posedge clk);
   
   // mem(20) = bgt(t2, t1, 26)
   wr_instr = {6'd7, 5'd10, 5'd9, 16'd26};
   wr_instr_addr = 32'd20;
   @(posedge clk);
   
   // mem(26) = slli(t1, t1, 2)
   wr_instr = {6'd15, 5'd9, 5'd9, 16'd2};
   wr_instr_addr = 32'd26;
   @(posedge clk);

   // mem(27) = sw(t1, t2, 0x1)
   wr_instr = {6'd43, 5'd9, 5'd10, 16'd1};
   wr_instr_addr = 32'd27;
   @(posedge clk);
   
   // mem(28) = lw(t1, t1, 0x1)
   wr_instr = {6'd35, 5'd9, 5'd9, 16'd1};
   wr_instr_addr = 32'd28;
   @(posedge clk);
   
   // mem(29) = reg(t1, t2, t2, add)
   wr_instr = {6'd0, 5'd9, 5'd9, 5'd10, SHIFT, 6'd32};
   wr_instr_addr = 32'd29;
   @(posedge clk);
   
   // mem(30) = addi(t1, t2, 2)
   wr_instr = {6'd8, 5'd9, 5'd10, 16'd2};
   wr_instr_addr = 32'd30;
   @(posedge clk);
   
   // mem(31) = reg(t1, t2, t0, sub)
   wr_instr = {6'd0, 5'd10, 5'd10, 5'd8, SHIFT, 6'd34};
   wr_instr_addr = 32'd31;
   @(posedge clk);
   */
   
   /////////////////////////////////////////////////////////
   /* Program 1 */ /*
   // mem(0) = addi(0, t0, 16'd7)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd7};
   wr_instr_addr = 32'd0;
   @(posedge clk);
   
   // mem(1) = sw (0, t0, 0)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd0};
   wr_instr_addr = 32'd1;
   @(posedge clk);
   
   // mem(2) = addi(0, t0, 16'd5)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd5};
   wr_instr_addr = 32'd2;
   @(posedge clk);
   
   // mem(3) = sw (0, t0, 1)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd1};
   wr_instr_addr = 32'd3;
   @(posedge clk);
   
   // mem(4) = addi(0, t0, 16'd2)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd4;
   @(posedge clk);
   
   // mem(5) = sw (0, t0, 2)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd5;
   @(posedge clk);
   
   // mem(6) = addi(0, t0, 16'd7)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd4};
   wr_instr_addr = 32'd6;
   @(posedge clk);
   
   // mem(7) = sw (0, t0, 3)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd7;
   @(posedge clk);
   
   // mem(8) = addi(0, t0, 3)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd8;
   @(posedge clk);
   
   // mem(9) = sw (0, t0, 4)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd4};
   wr_instr_addr = 32'd9;
   @(posedge clk);
   
   // mem(10) = lw (0, t0, 0)
   wr_instr = {6'd35, 5'd0, 5'd8, 16'd0};
   wr_instr_addr = 32'd10;
   @(posedge clk);
   
   // mem(11) = lw (0, t1, 1)
   wr_instr = {6'd35, 5'd0, 5'd9, 16'd1};
   wr_instr_addr = 32'd11;
   @(posedge clk);
   
   // mem(12) = reg(t0, t1, t1, sub)
   wr_instr = {6'd0, 5'd8, 5'd9, 5'd9, 5'b11111, 6'd34};
   wr_instr_addr = 32'd12;
   @(posedge clk);
   
   // mem(13) = addi(0, t0, 16'd3)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd13;
   @(posedge clk);
   
   // mem(14) = bgt(t1, t0, 16'd6)
   wr_instr = {6'd7, 5'd8, 5'd9, 16'd6};
   wr_instr_addr = 32'd14;
   @(posedge clk);
   
   // mem(15) = addi(0, t0, 16'd6)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd6};
   wr_instr_addr = 32'd15;
   @(posedge clk);
   
   // mem(16) = sw(0, t0, 16'd2)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd16;
   @(posedge clk);
   
   // mem(17) = lw(0, t0, 16'd3)
   wr_instr =  {6'd35, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd17;
   @(posedge clk);   
      
   // mem(18) = slli(t0, t0, 16'd2)
   wr_instr = {6'd15, 5'd8, 5'd8, 16'd5};
   wr_instr_addr = 32'd18;
   @(posedge clk);
   
   // mem(19) = sw(0, t0, 16'd3)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd19;
   @(posedge clk);
   
   // mem(20) = jmp(27)
   wr_instr = {6'd2, 26'd27};
   wr_instr_addr = 32'd20;
   @(posedge clk);
   
   // mem(21) = lw(0, t0, 16'd2)
   wr_instr = {6'd35, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd21;
   @(posedge clk);
   
   // mem(22) = slli(t0, t0, 16'd2)
   wr_instr = {6'd15, 5'd8, 5'd8, 16'd5};
   wr_instr_addr = 32'd22;
   @(posedge clk);
   
   // mem(23) = sw(0, t0, 16'd2)
   wr_instr =  {6'd43, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd23;
   @(posedge clk);
   
   // mem(24) = lw(0, t0, 4)
   wr_instr = {6'd35, 5'd0, 5'd8, 16'd4};
   wr_instr_addr = 32'd24;
   @(posedge clk);
   
   // mem(25) = addi(0, t1, 16'd7)
   wr_instr = {6'd8, 5'd0, 5'd9, 16'd7};
   wr_instr_addr = 32'd25;
   @(posedge clk);
   
   // mem(26) = sw(t0, t1, 16'd0)   
   wr_instr = {6'd43, 5'd8, 5'd9, 16'd0};
   wr_instr_addr = 32'd26;
   @(posedge clk);
   */
   
   /////////////////////////////////////////////////////////////
   /* Program 2 */
   // Program
   // mem(0) = addi(0, t0, 16'd7)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd8};
   wr_instr_addr = 32'd0;
   @(posedge clk);
   
   // mem(1) = sw (0, t0, 0)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd0};
   wr_instr_addr = 32'd1;
   @(posedge clk);
   
   // mem(2) = addi(0, t0, 16'd5)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd4};
   wr_instr_addr = 32'd2;
   @(posedge clk);
   
   // mem(3) = sw (0, t0, 1)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd1};
   wr_instr_addr = 32'd3;
   @(posedge clk);
   
   // mem(4) = addi(0, t0, 16'd2)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd4;
   @(posedge clk);
   
   // mem(5) = sw (0, t0, 2)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd5;
   @(posedge clk);
   
   // mem(6) = addi(0, t0, 16'd7)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd4};
   wr_instr_addr = 32'd6;
   @(posedge clk);
   
   // mem(7) = sw (0, t0, 3)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd7;
   @(posedge clk);
   
   // mem(8) = addi(0, t0, 3)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd8;
   @(posedge clk);
   
   // mem(9) = sw (0, t0, 4)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd4};
   wr_instr_addr = 32'd9;
   @(posedge clk);
   
   // mem(10) = lw (0, t0, 0)
   wr_instr = {6'd35, 5'd0, 5'd8, 16'd0};
   wr_instr_addr = 32'd10;
   @(posedge clk);
   
   // mem(11) = lw (0, t1, 1)
   wr_instr = {6'd35, 5'd0, 5'd9, 16'd1};
   wr_instr_addr = 32'd11;
   @(posedge clk);
   
   // mem(12) = reg(t0, t1, t1, sub)
   wr_instr = {6'd0, 5'd8, 5'd9, 5'd9, 5'b11111, 6'd34};
   wr_instr_addr = 32'd12;
   @(posedge clk);
   
   // mem(13) = addi(0, t0, 16'd3)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd13;
   @(posedge clk);
   
   // mem(14) = bgt(t1, t0, 16'd6)
   wr_instr = {6'd7, 5'd8, 5'd9, 16'd6};
   wr_instr_addr = 32'd14;
   @(posedge clk);
   
   // mem(15) = addi(0, t0, 16'd6)
   wr_instr = {6'd8, 5'd0, 5'd8, 16'd6};
   wr_instr_addr = 32'd15;
   @(posedge clk);
   
   // mem(16) = sw(0, t0, 16'd2)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd16;
   @(posedge clk);
   
   // mem(17) = lw(0, t0, 16'd3)
   wr_instr =  {6'd35, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd17;
   @(posedge clk);   
      
   // mem(18) = slli(t0, t0, 16'd2)
   wr_instr = {6'd15, 5'd8, 5'd8, 16'd2};
   wr_instr_addr = 32'd18;
   @(posedge clk);
   
   // mem(19) = sw(0, t0, 16'd3)
   wr_instr = {6'd43, 5'd0, 5'd8, 16'd3};
   wr_instr_addr = 32'd19;
   @(posedge clk);
   
   // mem(20) = jmp(27)
   wr_instr = {6'd2, 26'd27};
   wr_instr_addr = 32'd20;
   @(posedge clk);
   
   // mem(21) = lw(0, t0, 16'd2)
   wr_instr = {6'd35, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd21;
   @(posedge clk);
   
   // mem(22) = slli(t0, t0, 16'd2)
   wr_instr = {6'd15, 5'd8, 5'd8, 16'd5};
   wr_instr_addr = 32'd22;
   @(posedge clk);
   
   // mem(23) = sw(0, t0, 16'd2)
   wr_instr =  {6'd43, 5'd0, 5'd8, 16'd2};
   wr_instr_addr = 32'd23;
   @(posedge clk);
   
   // mem(24) = lw(0, t0, 4)
   wr_instr = {6'd35, 5'd0, 5'd8, 16'd4};
   wr_instr_addr = 32'd24;
   @(posedge clk);
   
   // mem(25) = addi(0, t1, 16'd7)
   wr_instr = {6'd8, 5'd0, 5'd9, 16'd7};
   wr_instr_addr = 32'd25;
   @(posedge clk);
   
   // mem(26) = sw(t0, t1, 16'd0)   
   wr_instr = {6'd43, 5'd8, 5'd9, 16'd0};
   wr_instr_addr = 32'd26;
   @(posedge clk);
   
   // run program
   wr_instr_en = 1'b0;
   comp_en = 1'b0;
   for(i=0; i<64; i=i+1) begin
      #delay;
   end
   
   $finish;
   end

   // Reference
   parameter A = 5'd0;
   parameter B = 5'd1;
   parameter C = 5'd2;
   parameter D = 5'd3;
   parameter DPtr = 5'd4;
   
   parameter zero = 5'd0;
   parameter t0 = 5'd8;
   parameter t1 = 5'd9;
   
   parameter ADDI = 6'd8;
   parameter SW = 6'd43;
   parameter LW = 6'd35;
   parameter SLLI = 6'd15;
   
   parameter SUB = 6'd34;
   
   parameter SHAMT = 5'b11111;
   
endmodule