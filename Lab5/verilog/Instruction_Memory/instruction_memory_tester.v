/*
Author: Ian Gilman
Title: 128x32 Instruction Memory HW Tester
Summary: Create test stimulus for 128x32 instruction memory prints out
   logic results
*/

module instruction_memory_tester(
         clk, 
         we, 
         rst_all, 
         read_addr,
		   read_data, 	
         write_addr, 
         write_data
       );
   input wire [31:0] read_data;  // data to be read from read address
   output reg clk, we, rst_all;  // clock, write enable, low reset
   output reg [6:0] read_addr,  // read address selection
                    write_addr;  // write register address selection
   output reg [31:0] write_data;  // data to be written to write address
   
   // print out test results
   initial begin
         $display("\tRdA\tRdD     \tWrA\tWrD     \twe \trst\tclk\ttime");
         $monitor("\t%h \t%h\t%h \t%h\t%b  \t%b  \t%b  \t%g",
                  read_addr, read_data, write_addr,
                  write_data, we, rst_all, clk, $time);
   end
   
   // create stimulus signals
   parameter delay = 5;
   integer i;
   integer j;
   initial begin
   
      // initial file register state
      clk = 1'b1;
      we = 1'b0;
      rst_all = 1'b1;   #delay;
      rst_all = 1'b0;   #delay;
      rst_all = 1'b1;   #delay;
      for(i=0; i<2; i=i+1) begin
         clk = ~clk;    #delay;
      end
      
      // write data to memory
      we = 1'b1;
      write_addr = 7'h0;
      write_data = 32'h5ADFACED;
      for(j=0; j<127; j++) begin
         for(i=0; i<2; i=i+1) begin
            clk = ~clk;    #delay;
         end
         write_addr = write_addr + 7'b1;
         write_data = write_data + 32'b1;
      end      
      for(i=0; i<2; i=i+1) begin
         clk = ~clk;    #delay;
      end
      we = 1'b0;
      
      // read data from memory 
      read_addr = 7'h0;
      for(j=0; j<127; j++) begin
         for(i=0; i<2; i=i+1) begin
            clk = ~clk;    #delay;
         end
         read_addr = read_addr + 7'b1;
      end   
      for(i=0; i<2; i=i+1) begin
         clk = ~clk;    #delay;
      end
      
      $finish;
   end
endmodule