// DATA-FORWARDING
// FORWARDING TO ALU
/*
alu mux logic and data (alu_mux == true  means alu_D is forwarded):
   alu_mux0, alu_mux1
   alu_D0,   alu_D1
*/
// alu_mux logic
if(id/ex_op == alu) {
   alu_mux1 = 0;
   if(ex/mem_op == alu)
      alu_mux0 = ex/mem_rt == id/ex_rs;
   else if(ex/mem_op == 0 && ex/mem_func == alu)
      alu_mux0 = ex/mem_rd == id/ex_rs;
   else if(mem/wb_op == alu || mem/wb_op == lw)
      alu_mux0 = mem/wb_rt == id/ex_rs;
   else if(mem/wb_op == 0 && mem/wb_func == alu)
      alu_mux0 = mem/wb_rd == id/ex_rs;
}
else if(id/ex_op = 0 && id/ex_func == alu) {
   if(ex/mem_op == alu) {
      alu_mux0 = ex/mem_rt == id/ex_rs;
      alu_mux1 = ex/mem_rt == id/ex_rt;
   }
   else if(ex/mem_op == 0 && ex/mem_func == alu) {
      alu_mux0 = ex/mem_rd == id/ex_rs;
      alu_mux1 = ex/mem_rd == id/ex_rt;
   }
   else if(mem/wb_op == alu || mem/wb_op == lw) {
      alu_mux0 = mem/wb_rt == id/ex_rs;
      alu_mux1 = mem/wb_rt == id/ex_rt;
   }
   else if(mem/wb_op == 0 && mem/wb_func == alu) {
      alu_mux0 = mem/wb_rd == id/ex_rs;
      alu_mux1 = mem/wb_rd == id/ex_rt;
   }
}
/*
*func = alu:
	ADDI, SLTI, ANDI, ORI, XORI, SLLI
*op = alu:
	REG: ADD, SLT, AND, OR, XOR, SLLV
*/

// alu mux0 data
if(id/ex_op == alu || (id/ex_op = 0 && id/ex_func == alu)) {
   if(ex/mem_op == alu || (ex/mem_op == 0 && ex/mem_func == alu))
      alu_D0 = ex/mem_ALU_D;
   else if(mem/wb_op == alu || (mem/wb_op == 0 && mem/wb_func == alu))
      alu_D0 = mem/wb_ALU_D;
   else if(mem/wb_op == lw)
      alu_D0 = mem/wb_MEM_D;
}
// alu mux1 data
if(id/ex_op == alu) {
   alu_D1 = X;
}
else if(id/ex_op = 0 && id/ex_func == alu) {
   if(ex/mem_op == 0 && ex/mem_func == alu)
      alu_D1 = ex/mem_ALU_D;
   if(mem/wb_op == 0 && mem/wb_func == alu)
      alu_D1 = mem/wb_ALU_D;
}


// FORWARDING TO DATA MEMORY