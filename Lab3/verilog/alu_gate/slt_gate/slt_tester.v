/*
Author: Ian Gilman
Title: SLT Tester
Summary: Provides the stimulus for set less than test, prints logic output data
*/

module slt_tester(result, operand0, operand1);
// I/O
   input wire [31:0] result;
   output reg [31:0] operand0, operand1;
// Internal
   parameter delay = 5;
   
   //print logical data
   initial begin
      $display("\t       op0\t       op1\tres\ttime");
      $monitor("\t%d\t%d\t%b  \t%g", operand0, operand1, result[0], $time);   
   end

   // stimuls values
   initial begin
      // initial values
      #delay;
      operand0 <= 32'b0;
      operand1 <= 32'b0;
      
      // less than
      #delay;
      operand0 <= 32'hFFFFFFF1;
      operand1 <= 32'h2;
      #delay;
      operand0 <= 32'hFFFFFFF1;
      operand1 <= 32'hFFFFFFF3;
      #delay;
      operand0 <= 32'h50;
      operand1 <= 32'h40000040;
      #delay;
      operand0 <= 32'h45804674;
      operand1 <= 32'h56309375;
      #delay;
      operand0 <= 32'h4FFFFF04;
      operand1 <= 32'h4FFFFF05;
      #delay
      
      // greater than
      operand0 <= 32'h75;
      operand1 <= 32'h49;
      #delay;
      operand0 <= 32'h80000004;
      operand1 <= 32'h80000002;
      #delay;
      operand0 <= 32'h34;
      operand1 <= 32'h80000005;
      #delay;
      operand0 <= 32'h40000001;
      operand1 <= 32'h2;
      #delay;
      operand0 <= 32'h80000004;
      operand1 <= 32'h80000002;
      #delay;
      operand0 <= 32'h4FFFFF27;
      operand1 <= 32'h4FFFFF26;
      #delay;
      
      // equal
      operand0 <= 32'hF;
      operand1 <= 32'hFFFFFFF1;
      #delay;
      $finish;
   end
endmodule