/*
Author: Ian Gilman
Title: Pipelined CPU Buffer Tester
Summary: Provides stimulus signals to test the behavior of the buffers in a
   pipelined CPU
*/


module buffer_tester(
         clk,
         rst,
         if_id_stall,
         id_ex_stall,
         ex_mem_fwd,
         instruction,
         wb_ctrl,
         mem_ctrl,
         ex_ctrl,
         fr_d0,
         fr_d1,
         alu_data,
         data_to_mem,
         mem_data_fwd,
         data_from_mem
);
// OUTPUT
   output reg clk, rst, if_id_stall, id_ex_stall, ex_mem_fwd;  // buffer controls
   output reg [31:0] instruction, fr_d0, fr_d1, alu_data, data_to_mem, 
                     mem_data_fwd, data_from_mem;
   output reg [2:0] wb_ctrl, mem_ctrl;
   output reg [6:0] ex_ctrl;
// INTERNAL
   parameter delay = 10;
   
   
// Stimulus signal logic
   // clock
   always begin
      #delay; clk <= ~clk;
   end
   
   initial begin
      // initial conditions
      clk <= 1;
      rst <= 0;
      rst <= 1;
      if_id_stall <= 0;
      id_ex_stall <= 0;
      ex_mem_fwd <= 0;
      instruction <= 0;
      wb_ctrl <= 3'b0;
      ex_ctrl <= 6'b1;
      mem_ctrl <= 3'b100;
      alu_data <= 0;
      data_to_mem <= 0;
      mem_data_fwd <= 0;
      data_from_mem <= 0;
      
      // reset
      @(posedge clk);
      rst = 0;
      @(posedge clk);
      rst = 1;
      
      // 1ST
      @(posedge clk);
      // if
      instruction <= 32'h70000000;
      
      // 2ND
      @(posedge clk);
      // if
      instruction <= 32'h60000000;
      // id
      wb_ctrl <= 3'b100;
      ex_ctrl <= 6'b1;
      mem_ctrl <= 3'b010;
      fr_d0 <= 32'h30303030;
      fr_d1 <= 32'h06060606;
      
      // 3RD
      @(posedge clk);
      // if
      instruction <= 32'h80000000;
      // id
      wb_ctrl <= 3'b101;
      ex_ctrl <= 6'h2;
      mem_ctrl <= 3'b001;
      fr_d0 <= 32'h23;
      fr_d1 <= 32'h62;
      // ex
      alu_data <= 32'h30303030 + 32'h06060606;
      data_to_mem <= 32'b1;
      mem_data_fwd <= 32'h2;
      
      // 4TH
      @(posedge clk);
      // if
      instruction <= 32'h00000012;
      // id
      wb_ctrl <= 3'b100;
      ex_ctrl <= 6'h0;
      mem_ctrl <= 3'b000;
      fr_d0 <= 32'b1010;
      fr_d1 <= 32'h2;
      // ex
      alu_data <= 32'h23 > 32'h62;
      data_to_mem <= 32'h5;
      mem_data_fwd <= 32'h6;
      // mem
      data_from_mem <= 32'h3;
      
      // 5TH
      @(posedge clk);
      // control / hazard
      if_id_stall <= 1;
      // if
      instruction <= 32'h20000000;
      // id
      wb_ctrl <= 3'b101;
      ex_ctrl <= 6'h03;
      mem_ctrl <= 3'b111;
      fr_d0 <= 32'h13;
      fr_d1 <= 32'h3;
      // ex
      alu_data <= 32'b1010 << 32'h2;
      data_to_mem <= 32'h2;
      mem_data_fwd <= 32'h45;
      // mem
      data_from_mem <= 32'h4;
      
      // 6TH
      @(posedge clk);
      // control / hazard
      if_id_stall <= 0;
      ex_mem_fwd <= 1;
      // if
      instruction <= 32'h19000000;
      // id
      wb_ctrl <= 3'b111;
      ex_ctrl <= 6'h04;
      mem_ctrl <= 3'b100;
      fr_d0 <= 32'h71;
      fr_d1 <= 32'b0;
      // ex
      alu_data <= 32'h13 - 32'h3;
      data_to_mem <= 32'h0;
      mem_data_fwd <= 32'h14;
      // mem
      data_from_mem <= 32'h3;
      
      // 7TH
      @(posedge clk);
      // control / hazard
      ex_mem_fwd <= 0;
      id_ex_stall <= 1;
      // if
      instruction <= 32'h40000000;
      // id
      wb_ctrl <= 3'b010;
      ex_ctrl <= 6'h02;
      mem_ctrl <= 3'b001;
      fr_d0 <= 32'h22;
      fr_d1 <= 32'h378;
      // ex
      alu_data <= 32'h71 + 32'h0;
      data_to_mem <= 32'h1;
      mem_data_fwd <= 32'h8;
      // mem
      data_from_mem <= 32'h7;
      
      // 8TH
      @(posedge clk);
      // control / hazard
      if_id_stall <= 1;
      id_ex_stall <= 1;
      // if
      instruction <= 32'h13000000;
      // id
      wb_ctrl <= 3'b100;
      ex_ctrl <= 6'h0;
      mem_ctrl <= 3'b000;
      fr_d0 <= 32'b1010;
      fr_d1 <= 32'h2;
      // ex
      alu_data <= 32'h23 > 32'h62;
      data_to_mem <= 32'h5;
      mem_data_fwd <= 32'h6;
      // mem
      data_from_mem <= 32'h3;
      
      @(posedge clk);
      $finish;
   end
   
endmodule