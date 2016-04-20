/*
Author: Ian Gilman
Title: Tristate Test Device
Summary: Provides stimulus signals for testing tristate register, prints out
   logic from test
*/

module tristate_tester(data, rwi, clk, rst);
   inout wire data;  // data bus input/output to register
   output reg clk, rst;  // clock, reset
   output reg [1:0] rwi;  // read/write/initialize
   reg to_reg, from_reg;  // value to reg, value from reg
   
   // print test data
   initial begin
      $display("\trst\ttrg\tfrg\tdat\trwi\tclk\ttime");
      $monitor("\t%b  \t%b  \t%b  \t%b  \t%b  \t%b  \t%g",
               rst, to_reg, from_reg, data, rwi, clk, $time);
   end
   
   // data bus logic
   assign data = (rwi[1] == 1'b1) ? to_reg : 1'bz;  // rwi[1] hi initialize dat
   
   // create stimulus signals
   parameter delay = 1;
   integer i;
   initial begin
   
      // initial test state
      clk = 1'b1;
      rst = 1'b1;    #delay;
      rst = 1'b0;    #delay;
      for(i=0; i<2; i=i+1) begin
         clk = ~clk;  #delay;
      end
      
      // write reg1 to reg0 (read data in reg1: confirm 1'b0)
      rwi = 2'b01;
      for(i=0; i<2; i=i+1) begin
         clk = ~clk;  #delay;
      end
      from_reg = data;
      rst = 1'b1;
      for(i=0; i<2; i=i+1) begin
         clk = ~clk;  #delay;
      end
      from_reg = 1'bx;  // clear from_reg
      
      // write data to reg0
      to_reg = 1'b1;
      rwi = 2'b10;  
      for(i=0; i<2; i=i+1) begin
         clk = ~clk;  #delay;
      end
      
      // write data from reg0 to reg1    
      rwi = 2'b00;
      for(i=0; i<2; i=i+1) begin
         clk = ~clk;  #delay;
      end
      
      // write data from reg1 to reg 0 (read data in reg1)
      rwi = 2'b01;
      for(i=0; i<2; i=i+1) begin
         clk = ~clk;  #delay;
      end
      from_reg = data;
      for(i=0; i<2; i=i+1) begin
         clk = ~clk;  #delay;
      end
   
   $finish;
   end
endmodule