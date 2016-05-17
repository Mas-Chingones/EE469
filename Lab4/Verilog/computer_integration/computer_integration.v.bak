/*
Author: Ian Gilman
Title: MIPS-Like Computer Integration
Summary: Integrate PC, instruction memory, computer control, alu, file register,
   and sram into a workable MIPS-like computer
*/

/*/ Module Dependencies *//*
`include "../file_register/file_register.v"
`include "../sram/sram.v"
`include "../alu/alu.v"
`include "../instruction_memory/instruction_memory.v"
`include "../instruction_memory/decoder_7bit/decoder_7bit.v"
`include "../Program_Control/Program_Control.v"
`include "../control_signals/control_signals.v"
`include "../file_register/register_32bit/d_flipflop/d_flipflop.v"
`include "../file_register/mux_2to1/mux_2to1.v"
`include "../file_register/register_32bit/register_32bit.v"
`include "../file_register/decoder_5bit/decoder_5bit.v"
*/

module computer_integration(
   clk,
   comp_rst,
   comp_en,
   wr_instr_en,
   wr_instr_addr,
   wr_instr
);
// Inputs
   input wire clk, comp_rst,  // clock, computer !reset, 
              comp_en,  //computer !enable  
              wr_instr_en;  // enable instruction writing
   input wire [6:0] wr_instr_addr;  // instr memory address to be written to
   input wire [31:0] wr_instr;  // instr to be written to instr_addr
// Internal
   ///// Control Path /////
   // From Control Signals
   wire reg_dst, jump,  // register destination flag, jump flag
         jump_reg, branch,  // jump reg flag, brancing flag
         mem_to_reg,  // memory to register flag
         cs, oe, rw,  // sram: !chip select, !output enable, read/!write
         alu_source, reg_write;  // alu source flag, write to fr flag
   wire [5:0] alu_control;  // alu operation
   // From ALU
   wire V, Z, C, N;  // Over/Underflow, Zero Result, Carry Out, Negative Result
   ///// Data Path /////
   // From Program Control
   wire [31:0] instruction,  // current program instruction
               immediate_value;  // immediate value to alu
   // From ALU
   wire [31:0] alu_result;  // result of alu operation
   // From File Register
   wire [31:0] fr_data0, fr_data1;  // read data from file register 
   // From SRAM
   wire [31:0] mem_data;  // read data from sram
   
   // Program Counter and Instruction Memory
   Program_Control PC_InstrMem(     
      .clk(clk), 
      .jumpRegAddr(fr_data0),       
      .instruction(instruction),       
      .writeInstruction(wr_instr),  
      .writeAddress(wr_instr_addr), 
      .writeEnable(wr_instr_en),     
      .jump(jump),           
      .jumpReg(jump_reg),    
      .branch(branch),        
      .negative(N),
      .zero(Z),
      .reset(comp_rst),
      .suspendEnable(comp_en),
      .immediate_value(immediate_value)
   );
   
   // Control Signal Logic
   control_signals Control(
      .op_code(instruction[31:26]),
      .alu_function(instruction[5:0]),
      .reg_dst(reg_dst),
      .jump(jump),
      .jump_reg(jump_reg),
      .branch(branch), 
      .cs(cs), 
      .oe(oe), 
      .rw(rw),
      .mem_to_reg(mem_to_reg),
      .alu_src(alu_source),
      .reg_write(reg_write),
      .alu_op(alu_control)
   );

   // Arithmetic Logic Unit
   alu Arithmetic(
      .fr_read0(fr_data0), 
      .fr_read1(fr_data1), 
      .immediate(immediate_value), 
      .control(alu_control), 
      .alu_source(alu_source), 
      .result(alu_result), 
      .Z(Z), 
      .V(V), 
      .C(C), 
      .N(N)
     );         

   // General Register
   file_register General_Registers(
      .clk(clk), 
      .we(reg_write), 
      .rst_all(rst),
      .reg_dst(reg_dst),
      .mem_to_reg(mem_to_reg),
      .read0_addr(instruction[25:21]),
      .read1_addr(instruction[20:16]),
      .imm_addr(instruction[20:16]),
      .reg_addr(instruction[15:11]),
      .mem_data(mem_data),
      .alu_data(alu_result),
      .read0_data(fr_data0), 
      .read1_data(fr_data1)
   );

   // Static Random Access Memory
   sram Memory(
      .clk(clk), 
      .cs(cs), 
      .oe(oe), 
      .rw(rw), 
      .addr(alu_result), 
      .write_data(fr_data1), 
      .read_data(mem_data)
   );

endmodule