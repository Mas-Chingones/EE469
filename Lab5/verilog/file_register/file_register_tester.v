/*
Author: Ian Gilman
Title: 32x32 File Register HW Tester
Summary: Create test stimulus for 32x32 file register, prints out logic results
*/

module file_register_tester(
         clk,
         we, 
         rst_all,
         reg_dst,
         mem_to_reg,
         read0_addr,
         read1_addr,
         imm_addr,
         reg_addr,
         mem_data,
         alu_data,
         read0_data, 
         read1_data
       );
   input wire [31:0] read0_data,  // data to be read from read0 address
                     read1_data;  // data to be read from read1 address
   output reg clk, we, rst_all,  // clock, write enable, low reset
              reg_dst, mem_to_reg;  // register destination selector, write data selection
   output reg [4:0] read0_addr,  // read0 register address selection
                    read1_addr,  // read1 register address selection
                    imm_addr, reg_addr;  // write register address selection
   output reg [31:0] mem_data, alu_data;  // data to be written to write address
   
   // print out test results
   initial begin
         $display("clk t\tRA0 RD0     \tRA1 RD1     \timmA regA memD     ",
                  "\taluD {dst,m2r,we,rst} \tclk\tt");
         $monitor("%b   %g\t%h  %h\t%h  %h\t%h   %h   %h\t%h\t%b%b%b%b\t%b\t%g",
                  clk, $time, read0_addr, read0_data, read1_addr, read1_data, imm_addr,
                  reg_addr, mem_data, alu_data, reg_dst, mem_to_reg, we, rst_all,
                  clk, $time);
   end
   
   // create stimulus signals
   parameter delay = 5;
   integer i;
   initial begin
   
      // initial file register state
      clk = 1'b1;
      we = 1'b0;
      reg_dst = 1'b0;
      mem_to_reg = 1'b0;
      read0_addr = 5'b0;
      read1_addr = 5'b0;
      imm_addr = 5'b0;
      reg_addr = 5'b0;
      mem_data = 32'h0;
      alu_data = 43'h0;
      rst_all = 1'b1;   #delay;
      rst_all = 1'b0;   #delay;
      rst_all = 1'b1;   #delay; #delay
      
      // write/read data to/from register
      clk = ~clk; #delay;
      clk = ~clk;
      read0_addr = 5'b1;
      #(delay/2);
      imm_addr = 5'b1;
      alu_data = 32'h5ADFACED;
      we = 1'b1;
      #(delay/2 + delay%2);
      for(i=0; i<2; i=i+1) begin
         clk = ~clk; #delay;
      end
      we = 1'b0;
      reg_dst = 1'b1;
      alu_data = 32'b0;
      for(i=0; i<1; i=i+1) begin
         clk = ~clk; #delay;
      end
      read0_addr = 0;
      
      // second read/write
      clk = ~clk;
      read1_addr = 5'b10101;
      #(delay/2);
      reg_dst = 1'b1;
      mem_to_reg = 1'b1;
      reg_addr = 5'b10101;
      mem_data = 32'hEA770A57;
      we = 1'b1;
      #(delay/2 + delay%2);
      for(i=0; i<2; i=i+1) begin
         clk = ~clk; #delay;
      end
      read1_addr = 0;
      we = 1'b0;
      mem_data = 32'b0;
      
      // read both read0 and read1
      read0_addr = 5'b1;
      for(i=0; i<2; i=i+1) begin
         clk = ~clk; #delay;
      end
      read1_addr = 5'b10101;
      for(i=0; i<2; i=i+1) begin
         clk = ~clk; #delay;
      end
      
      $finish;
   end
endmodule