
/*
Author: Ian Gilman
Title: 32x32 File Register HW Tester
Summary: Create test stimulus for 32x32 file register, prints out logic results
*/

module file_register_tester(
         clk, 
         we,
         re,
         rst, 
         read0_addr, 
         read1_addr, 
         write_addr, 
         data_bus
       );
   input wire [31:0] read0_data,  // data to be read from read0 address
                     read1_data;  // data to be read from read1 address
   output reg clk, we, re, rst;  // clock, write enable, read enable, low reset
   output reg [4:0] read0_addr,  // read0 register address selection
                    read1_addr,  // read1 register address selection
                    write_addr;  // write register address selection
   inout wire [31:0] data_bus;  // data to be read/written from/to file reg
   reg [31:0] write_data; // data to write to bus
   
   // print out test results
   initial begin
         $display("   RA1\tRD1     \tdat     \tWrA\tWrD     \twe \tre \trst\tclk\ttime");
         $monitor("   %h\t%h\t%h \t%h\t%h\t%b  \t%b  \t%b  \t%b  \t%g",
                  read1_addr, read1_data, data_bus, write_addr,
                  write_data, we, re, rst, clk, $time);
   end
   
   // write data to file reg
   assign data_bus = (we && !re) ? write_data : 32'bz;
   //read data from file reg
   assign read1_data = (re && !we) ? data_bus : 32'bz;
   
   // create stimulus signals
   parameter delay = 1;
   integer i;
   initial begin
   
      // initial file register state
      clk = 1'b1;
      we = 1'b0;
      re = 1'b0;
      read1_addr = 5'b0;
      write_addr = 5'b0;
      write_data = 32'h0;
      rst = 1'b1;   #delay;
      rst = 1'b0;   #delay;
      rst = 1'b1;   #delay;
      for(i=0; i<2; i=i+1) begin
         clk = ~clk;    #delay;
      end
      
      // write data to register
      write_addr = 5'b1;
      write_data = 32'h5ADFACED;
      for(i=0; i<4; i=i+1) begin
         clk = ~clk;    #delay;
      end
      we = 1'b1;
      for(i=0; i<4; i=i+1) begin
         clk = ~clk;    #delay;
      end
      we = 1'b0;
      
      // second write
      write_addr = 5'b10101;
      write_data = 32'hEA770A57;
      for(i=0; i<4; i=i+1) begin
         clk = ~clk;    #delay;
      end
      we = 1'b1;
      for(i=0; i<4; i=i+1) begin
         clk = ~clk;    #delay;
      end
      we = 1'b0;
      
      // 1st read
      read1_addr = 5'b1;
      for(i=0; i<4; i=i+1) begin
         clk = ~clk;    #delay;
      end
      re = 1'b1;
      for(i=0; i<4; i=i+1) begin
         clk = ~clk;    #delay;
      end
      re = 1'b0;
      
      // 2nd read
      read1_addr = 5'b10101;
      for(i=0; i<4; i=i+1) begin
         clk = ~clk;    #delay;
      end
      re = 1'b1;
      for(i=0; i<4; i=i+1) begin
         clk = ~clk;    #delay;
      end
      re = 1'b0;
      for(i=0; i<2; i=i+1) begin
         clk = ~clk;    #delay;
      end
      
      $finish;
   end
endmodule