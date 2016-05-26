// Pseduo C-code logical descriptions of the hazard and data forwarding controls


/*/// DEFINITION OF TERMS  /////
-------------------------------------------------------------------------------------
||  TERM           ||  Reference
-------------------------------------------------------------------------------------
||  alui_wr        ||  Op-codes for instructions that write data to FR from the ALU:
||                 ||      ADDI, SLTI, ANDI, ORI, XORI, SLLI
-------------------------------------------------------------------------------------
||  aui_rd         ||  Op-codes for instructions that read data to ALU from the FR:
||                 ||      ADDI, SLTI, ANDI, ORI, XORI, SLLI, SW, LW
-------------------------------------------------------------------------------------
||  alur           ||  ALU funct code for register instructions (Op-code = 0) that read
||                 ||  from the FR to the ALU and also write from the ALU to the FR:
||	                ||      ADD, SLT, AND, OR, XOR, SLLV
-------------------------------------------------------------------------------------
||  if/id          ||  Refers to the data buffer between the Instruction Fetch and the 
||                 ||  Instruction Decode pipelining stages
-------------------------------------------------------------------------------------
||  id/ex          ||  Refers to the data buffer between the Instruction Decode and the 
||                 ||  Execution pipelining stages
-------------------------------------------------------------------------------------
||  ex/mem         ||  Refers to the data buffer between the Execution and the 
||                 ||  Memory pipelinging stages
--------------------------------------------------------------------------------------
||  mem/wb         ||  Refers to the data bffer between the Memory and the
||                 ||  Write Back pipelining stages
--------------------------------------------------------------------------------------
||  op             ||  The op-code part of an instruction: instr[31:26] (6-bits)
---------------------------------------------------------------------------------------
||  rs             ||  The 1st FR register address in an instruction: instr[25:21] (5-bits)
||                 ||  this indicates a register that is being read
--------------------------------------------------------------------------------------
||  rt             ||  The 2nd FR register address in an instruction: instr[20:16] (5-bits)
||                 ||  this indicates the register that is written to for immediate instructions
||                 ||  or a register that is read for register instructions
---------------------------------------------------------------------------------------
||  rd             ||  The 2nd FR register address in an instruction (register only): instr[15:11] (5-bits)
||                 ||  this indicates the register that is written to for register instructions
||                 ||  it is invalid for immediate instructions
---------------------------------------------------------------------------------------
||  funct          ||  The part of the instruction that indicates the ALU function to perform:
||                 ||      instr[5:0] (6-bit)
---------------------------------------------------------------------------------------              
*/


///// DATA-FORWARDING /////
// FORWARDING TO ALU
/*
alu mux logic and data (alu_mux == true  means alu_D is forwarded):
signals:
   alu_mux0, alu_mux1
   alu_D0,   alu_D1
*/
// alu_mux logic
if(id/ex_op == alui_rd) {
   alu_mux1 = 0;
   if(ex/mem_op == alui_wr)
      alu_mux0 = ex/mem_rt == id/ex_rs;
   else if(ex/mem_op == 0 && ex/mem_func == alur)
      alu_mux0 = ex/mem_rd == id/ex_rs;
   else if(mem/wb_op == alui_wr || mem/wb_op == lw)
      alu_mux0 = mem/wb_rt == id/ex_rs;
   else if(mem/wb_op == 0 && mem/wb_func == alur)
      alu_mux0 = mem/wb_rd == id/ex_rs;
}
else if(id/ex_op = 0 && id/ex_func == alur) {
   if(ex/mem_op == alui_wr) {
      alu_mux0 = ex/mem_rt == id/ex_rs;
      alu_mux1 = ex/mem_rt == id/ex_rt;
   }
   else if(ex/mem_op == 0 && ex/mem_func == alur) {
      alu_mux0 = ex/mem_rd == id/ex_rs;
      alu_mux1 = ex/mem_rd == id/ex_rt;
   }
   else if(mem/wb_op == alui_wr || mem/wb_op == lw) {
      alu_mux0 = mem/wb_rt == id/ex_rs;
      alu_mux1 = mem/wb_rt == id/ex_rt;
   }
   else if(mem/wb_op == 0 && mem/wb_func == alur) {
      alu_mux0 = mem/wb_rd == id/ex_rs;
      alu_mux1 = mem/wb_rd == id/ex_rt;
   }
}

// alu mux0 data
if(id/ex_op == alui_rd || (id/ex_op = 0 && id/ex_func == alur)) {
   if(ex/mem_op == alui_wr || (ex/mem_op == 0 && ex/mem_func == alur))
      alu_D0 = ex/mem_ALU_D;
   else if(mem/wb_op == alui_wr || (mem/wb_op == 0 && mem/wb_func == alur))
      alu_D0 = mem/wb_ALU_D;
   else if(mem/wb_op == lw)
      alu_D0 = mem/wb_MEM_D;
}
// alu mux1 data
if(id/ex_op == alui_rd) {
   alu_D1 = X;
}
else if(id/ex_op = 0 && id/ex_func == alur) {
   if(ex/mem_op == 0 && ex/mem_func == alur)
      alu_D1 = ex/mem_ALU_D;
   if(mem/wb_op == 0 && mem/wb_func == alur)
      alu_D1 = mem/wb_ALU_D;
}


// FORWARDING TO DATA MEMORY
/*
mem mux logic and data (memD_mux == true  means memD is forwarded):
signals:
   ex_memD_mux, mem_memD_mux
   ex_memD,     mem_memD
*/
// ex mem mux
if(id/ex_op == sw) {
   if(ex/mem_op == alui_wr)
      ex_memD_mux = ex/mem_rt == id/ex_rt;
   else if(ex/mem_op == 0 && ex/mem_func == alur)
      ex_memD_mux = ex/mem_rd == id/ex_rt;
   else if(mem/wb_op == alui_wr || mem/wb_op == lw)
      ex_memD_mux = mem/wb_rt == id/ex_rt;
   else if(mem/wb_op == 0 && mem/wb_func = alur)
      ex_memD_mux = mem/wb_rd == id/ex_rt;
}
// ex mem mux data
if(id/ex_op == sw) {
   if(ex/mem_op == alui_wr || (ex/mem_op == 0 && ex/mem_func == alur))
      ex_memD = ex/mem_ALU_D;
   if(mem/wb_op == alui_wr || (mem/wb_op == 0 && mem/wb_func = alur))
      ex_memD = mem/wb_ALU_D;
   if(mem/wb_op == lw)
      ex_memD = mem/wb_MEM_D;
}
// mem mem mux and data
if(ex/mem_op == sw) {
   mem_memD = mem/wb_MEM_D;
   if(mem/wb_op == lw)
      mem_memD_mux = mem/wb_rt == ex/mem_rt;
}


// FORWARDING TO JUMPS
/*
jmp mux logic and data (jmp_mux == true  means jmpD is forwarded)
signals:
   jmp0_mux,   jmpD0
   jmp1_mux,   jmpD1
*/
// jmp mux
if((if/id_op == 0 && if/id_func == jr) || if/id == bgt) {
   if(ex/mem_op == alui_wr) {
      jmp0_mux = ex/mem_rt == if/id_rs;
      jmp1_mux = ex/mem_rt == if/id_rt;
   }
   else if(ex/mem_op == 0 && ex/mem_func == alur) {
      jmp0_mux = ex/mem_rd == if/id_rs;
      jmp1_mux = ex/mem_rd == if/id_rt;
   }
}
// jmp mux data
if((if/id_op == 0 && if/id_func == jr) || if/id == bgt) {
   if(ex/mem_op == alui_wr || (ex/mem_op == 0 && ex/mem_func == alur)) {
      jmpD0 = ex/mem_ALU_D;
      jmpD1 = ex/mem_ALU_D;
   }
}


///// HAZARD CONTROL /////
/*
signals:
   stall
   calc_branch
   guess_brnch (currently not implemented)
*/
// stall
if(ex/mem_op == lw) {  // stall for forwarding from memory to alu
   if(id/ex_op == alui_rd)
      stall = ex/mem_rt == id/ex_rs;
   if(id/ex_op == 0 && id/ex_func == alur)
      stall = ex/mem_rt == id/ex_rs || ex/mem_rt == id/ex_rt;
}
else if(if/id_op == 0 && if/id_func == jr)  {  // stall for data from alu / memory to jr
   if(id/ex_op == alui_wr || id/ex_op == lw)
      stall = id/ex_rt == if/id_rs;
   else if(id/ex_op == 0 && id/ex_func == alur)
      stall = id/ex_rd == if/id_rs;
   else if(ex/mem_op == lw)
      stall = ex/mem_rt == if/id_rs;
}
else if(if/id_op == bgt) {  // stall for data from alu / memory to bgt
   if(id/ex_op == alui_wr || id/ex_op == lw)
      stall = id/ex_rt == if/id_rs || id/ex_rt == if/id_rt;
   else if(id/ex_op == 0 && id/ex_func == alur)
      stall = id/ex_rt == (
                           id/ex_rt == if/id_rs || id/ex_rt == if/id_rt || 
                           id/ex_rs == if/id_rs || id/ex_rs == if/id_rt 
                          );
   else if(ex/mem_op == lw)
      stall = ex/mem_rt == if/id_rs || ex/mem_rt == if/id_rt;
}

// calc_branch
calc_branch = !stall && (if/id_op == 0 && if/id_func == jr) || if/id_op == bgt || if/id_op == jmp)
