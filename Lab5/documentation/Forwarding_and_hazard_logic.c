// Pseduo C-code logical descriptions of the hazard and data forwarding controls


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
/* Define Terms:
op = alui_wr:
   ADDI, SLTI, ANDI, ORI, XORI, SLLI
op = alui_rd:
	ADDI, SLTI, ANDI, ORI, XORI, SLLI, SW, LW
func = alur:
	REG: ADD, SLT, AND, OR, XOR, SLLV
*/

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
