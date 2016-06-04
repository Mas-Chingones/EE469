/*
Author: Ian Gilman
Title: MIPS-Like Pipelined Computer Integration
Summary: Integrate PC, instruction memory, computer control, alu, file register,
   and sram into a workable MIPS-like Pipelined computer
*/

/*/ Module Dependencies */ /*
`include "../file_register/file_register.v"
`include "../file_register/decoder_5bit/decoder_5bit.v"
`include "../shared_modules/mux_2to1/mux_2to1.v"
`include "../shared_modules/synch_register_32bit/synch_register_32bit.v"
`include "../shared_modules/synch_register_32bit/d_flipflop/d_flipflop.v"
`include "../sram/sram.v"
`include "../alu/alu.v"
`include "../buffers/if_id_buffer.v"
`include "../buffers/id_ex_buffer.v"
`include "../buffers/ex_mem_buffer.v"
`include "../buffers/mem_wb_buffer.v"
`include "../instruction_memory/instruction_memory.v"
`include "../instruction_memory/decoder_7bit/decoder_7bit.v"
`include "../Program_Control/Program_Control.v"
`include "../control_signals/control_signals.v"
`include "../dataForwarding/dataForwarding.v"
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
   ////////////////////////
   ///// Control Path /////
   // From Control Signals
   wire reg_dst, jump,  // register destination flag, jump flag,
        jump_reg, branch,  // jump reg flag, brancing flag
        mem_to_reg,  // memory to register flag
        cs, oe, rw,  // sram: !chip select, !output enable, read/!write
        alu_source, reg_write;  // alu source flag, write to fr flag
   wire [5:0] alu_control;  // alu operation
   // From Data Forwarding and Hazard Control
   wire flush,  // flush current instruction from instr mem
        stall_ifid, stall_idex,  // stall PC and if_id buf, stall PC and id_ex buf
        jmp0_fwd, jmp1_fwd,  // determine if data is forwarded for jump calc
        alu0_fwd, alu1_fwd,  // determine if data is forwarded to alu
        mem_fwd_exmem, mem_fwd_memory;  // determine if data is forwarded to write memory bus   
   // From IFID Buffer
   wire [31:0] instruction_ifid, instruction_fwd_ifid;
   // From IDEX Buffer
   wire [31:0] instruction_idex, instruction_fwd_idex;
   wire [2:0] wb_ctrl_idex, wb_ctrl_fwd_idex,  // writeback stage control
              mem_ctrl_idex, mem_ctrl_fwd_idex;  // memory stage control
   wire [6:0] ex_ctrl_idex, ex_ctrl_fwd_idex;  // execution stage control
   // From EXMEM Buffer
   wire [31:0] instruction_exmem;
   wire [2:0] wb_ctrl_exmem,  // writeback stage control
              mem_ctrl_exmem;  // memory stage control
   // From MEMWB Buffer
   wire [31:0] instruction_memwb;
   wire [2:0] wb_ctrl_memwb;  // writeback stage control
   // From ALU
   wire V, Z, C, N;  // Over/Underflow, Zero Result, Carry Out, Negative Result
   /////////////////////
   ///// Data Path /////
   // From Program Control
   wire [31:0] instruction;  // current program instruction
   // From Data Forwarding and Hazard Control
   wire [31:0] jmp0_data, jmp1_data,  // data forwarded to jumps
               alu0_data, alu1_data,  // data forwarded to alu inputs
               mem_data_fwd_exmem,  mem_data_fwd_memory;  // data forwarded to memory path
   // From IDEX Buffer
   wire [31:0] fr_data0_idex, fr_data1_idex;  // fr data
   // From EXMEM Buffer
   wire [31:0] alu_data_exmem, data_to_mem_exmem;
   // From MEMWB Buffer
   wire [31:0] alu_data_memwb, data_from_mem_memwb;
   // From ALU
   wire [31:0] alu_result;  // result of alu operation
   // From File Register
   wire [31:0] fr_data0, fr_data1;  // read data from file register 
   // From SRAM
   wire [31:0] mem_data;  // read data from sram
   
   
   
   // Program Counter and Instruction Memory
   Program_Control PC_InstrMem(     
      .clk(clk),
      .stall(stall_ifid || stall_idex),
      .flush(flush),
      .instruction(instruction),
      .writeInstruction(wr_instr), 
      .writeAddress(wr_instr_addr),
      .writeEnable(wr_instr_en),
      .jump_address(instruction_ifid[25:0]),
      .jump(jump),
      .jumpReg(jump_reg),
      .branch(branch),  
      .fr_read0(fr_data0),
      .fr_read1(fr_data1),
      .fwd_data0(jmp0_data),
      .fwd_data1(jmp1_data),
      .jmp0_mux(jmp0_fwd),
      .jmp1_mux(jmp1_fwd),
      .reset(comp_rst),
      .suspendEnable(comp_en)
   );
   
   ////////////////
   // IF_ID BUFFER
   if_id_buffer IFID(
      .clk(clk),
      .rst(comp_rst),
      .stall(stall_ifid || stall_idex),
      .instruction(instruction),
      .instruction_out(instruction_ifid),
      .instruction_saved(instruction_fwd_ifid)
   );
   
   // Control Signal Logic
   control_signals Control(
      .op_code(instruction_ifid[31:26]),
      .alu_function(instruction_ifid[5:0]),
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

   // General Register
   file_register General_Registers(
      .clk(clk), 
      .we(wb_ctrl_memwb[0]), 
      .rst_all(comp_rst),
      .reg_dst(wb_ctrl_memwb[1]),
      .mem_to_reg(wb_ctrl_memwb[2]),
      .read0_addr(instruction_ifid[25:21]),
      .read1_addr(instruction_ifid[20:16]),
      .imm_addr(instruction_memwb[20:16]),
      .reg_addr(instruction_memwb[15:11]),
      .mem_data(data_from_mem_memwb),
      .alu_data(alu_data_memwb),
      .read0_data(fr_data0), 
      .read1_data(fr_data1)
   );
   
   ////////////////
   // ID_EX BUFFER
   id_ex_buffer IDEX( 
      .clk(clk),
      .stall(stall_idex),
      .rst(comp_rst),
      .ex_ctrl({alu_source, alu_control}),
      .wb_ctrl({mem_to_reg, reg_dst, reg_write}),
      .mem_ctrl({cs, oe, rw}),
      .r_data_0(fr_data0),
      .r_data_1(fr_data1),
      .instruction(instruction_ifid),
      .wb_ctrl_out(wb_ctrl_idex), 
      .mem_ctrl_out(mem_ctrl_idex),
      .ex_ctrl_out(ex_ctrl_idex),
      .wb_ctrl_saved(wb_ctrl_fwd_idex), 
      .mem_ctrl_saved(mem_ctrl_fwd_idex),
      .ex_ctrl_saved(ex_ctrl_fwd_idex),
      .r_data_0_out(fr_data0_idex),
      .r_data_1_out(fr_data1_idex),
      .instruction_out(instruction_idex),
      .instruction_saved(instruction_fwd_idex)
   );
   
   // Arithmetic Logic Unit
   alu Arithmetic(
      .fr_read0(fr_data0_idex), 
      .fr_read1(fr_data1_idex), 
      .immediate({{16{instruction_idex[15]}}, {instruction_idex[15:0]}}), 
      .forward0(alu0_data),
      .forward1(alu1_data),
      .control(ex_ctrl_idex[5:0]), 
      .alu1_src(ex_ctrl_idex[6]),
      .alu0_fwd(alu0_fwd),
      .alu1_fwd(alu1_fwd),
      .result(alu_result), 
      .Z(Z), 
      .V(V), 
      .C(C), 
      .N(N)
     );         

   /////////////////
   // EX_MEM Buffer
   ex_mem_buffer EXMEM( 
      .clk(clk),
      .rst(comp_rst),
      .mem_fwd(mem_fwd_exmem),
      .wb_ctrl(wb_ctrl_idex),
      .mem_ctrl(mem_ctrl_idex),
      .alu_data(alu_result),
      .data_to_mem(fr_data1_idex),
      .mem_data_forward(mem_data_fwd_exmem),
      .instruction(instruction_idex),
      .wb_ctrl_out(wb_ctrl_exmem),
      .mem_ctrl_out(mem_ctrl_exmem),
      .alu_data_out(alu_data_exmem),
      .data_to_mem_out(data_to_mem_exmem),
      .instruction_out(instruction_exmem)
   );

   // Static Random Access Memory
   sram Memory(
      .clk(clk), 
      .cs(mem_ctrl_exmem[2]), 
      .oe(mem_ctrl_exmem[1]), 
      .rw(mem_ctrl_exmem[0]),
      .wr_fwd(mem_fwd_memory),
      .addr(alu_data_exmem), 
      .write_data(data_to_mem_exmem),
      .forward(mem_data_fwd_memory),
      .read_data(mem_data)
   );

   /////////////////
   // MEM_WB Buffer
   mem_wb_buffer MEMWB( 
      .clk(clk),
      .rst(comp_rst),
      .wb_ctrl(wb_ctrl_exmem),
      .alu_data(alu_data_exmem),
      .mem_data(mem_data),
      .instruction(instruction_exmem),
      .wb_ctrl_out(wb_ctrl_memwb),
      .alu_data_out(alu_data_memwb),
      .mem_data_out(data_from_mem_memwb),
      .instruction_out(instruction_memwb)
   );
   
   // Data Forwarding and Hazard Control
   dataForwarding DF_HAZ_CONTROL(
      .instrIFID(instruction_fwd_ifid),	
      .instrIDEX(instruction_fwd_idex),
      .instrEXMEM(instruction_exmem),
      .instrMEMWB(instruction_memwb),
      .aluEXMEM_Data(alu_data_exmem),
      .aluMEMWB_Data(alu_data_memwb),
      .EXMEM_Data2Mem(data_to_mem_exmem),
      .MEMWB_MemData(data_from_mem_memwb),
      .jmp0D(jmp0_data),		
      .jmp1D(jmp1_data),
      .aluD0(alu0_data),
      .aluD1(alu1_data),
      .exmemD(mem_data_fwd_exmem),
      .memMemD(mem_data_fwd_memory),
      .jmp0(jmp0_fwd),			
      .jmp1(jmp1_fwd),
      .stall_idex(stall_idex),
      .stall_ifid(stall_ifid),
      .flush(flush),
      .alu0(alu0_fwd),
      .alu1(alu1_fwd),
      .exmem(mem_fwd_exmem),
      .mem_mem(mem_fwd_memory)		
   );
endmodule