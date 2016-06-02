/*
Author David Dolengewicz, Ian Gilman
	dataForwarding is handles the logic, datapath and control for the dataforwarding/hazard control
	


*/



module dataForwarding(			instrIFID,	//inputs
								instrIDEX,
								instrEXMEM,
								instrMEMWB,
								aluEXMEM_Data,
								aluMEMWB_Data,
								EXMEM_Data2Mem,
								MEMWB_MemData,
								jmp0D,		//Data outputs
								jmp1D,
								aluD0,
								aluD1,
								exmemD,
								memMemD,
								jmp0,			//Control outputs
								jmp1,
								stall
								calc_branch,
								alu0,
								alu1,
								exmem,
								mem_mem		);
								
input wire [31:0] 			instrIFID,	
							instrIDEX,
							instrEXMEM,
							instrMEMWB,
							aluEXMEM_Data,
							aluMEMWB_Data,
							EXMEM_Data2Mem,
							MEMWB_MemData;
							
output wire [31:0]			jmp0D,		//Data outputs
							jmp1D,
							aluD0,
							aluD1,
							exmemD,
							memMemD;	
							
output wire					jmp0,			//Control outputs
							jmp1,
							stall
							calc_branch,
							alu0,
							alu1,
							exmem,
							mem_mem;	



	
							

//parameters
// Instruction OP Codes
parameter REG = 6'd0;
parameter JUMP = 6'd2;
parameter BGTI = 6'd7;
parameter ADDI = 6'd8;
parameter SLTI = 6'd10;
parameter ANDI = 6'd12;
parameter ORI = 6'd13;
parameter XORI = 6'd14;
parameter SLLI = 6'd15;
parameter LW = 6'd35;
parameter SW = 6'd43;

// ALU Functions
parameter NOP = 6'd0;
parameter SLLV = 6'd4;
parameter JR = 6'd8;
parameter ADD = 6'd32;
parameter SUB = 6'd34;
parameter AND = 6'd36;
parameter OR = 6'd37;
parameter XOR = 6'd38;
parameter SLT = 6'd42;

wire op_IFID_is_alui_rd;
wire op_IDEX_is_alui_rd;
wire op_EXMEM_is_alui_rd;
wire op_MEMWB_is_alui_rd;

wire op_IFID_is_alui_wr;
wire op_IDEX_is_alui_wr;
wire op_EXMEM_is_alui_wr;
wire op_MEMWB_is_alui_wr;

wire op_IFID_is_alur;
wire op_IDEX_is_alur;
wire op_EXMEM_is_alur;
wire op_MEMWB_is_alur;

wire funct_IFID_is_alur;
wire funct_IDEX_is_alur;
wire funct_EXMEM_is_alur;
wire funct_MEMWB_is_alur;

//assignation 
assign op_IFID = 	instrIFID[31:26];
assign rs_IFID = 	instrIFID[25:21];
assign rt_IFID = 	instrIFID[20:16];						
assign rd_IFID = 	instrIFID[15:11];
assign funct_IFID = instrIFID[5:0];								
								
assign op_IDEX = 	instrIDEX[31:26];
assign rs_IDEX = 	instrIDEX[25:21];
assign rt_IDEX = 	instrIDEX[20:16];						
assign rd_IDEX = 	instrIDEX[15:11];
assign funct_IDEX = instrIDEX[5:0];	
								
assign op_EXMEM = 		instrEXMEM[31:26];
assign rs_EXMEM = 		instrEXMEM[25:21];
assign rt_EXMEM = 		instrEXMEM[20:16];						
assign rd_EXMEM = 		instrEXMEM[15:11];
assign funct_EXMEM = 	instrEXMEM[5:0];									
								
assign op_MEMWB = 	instrMEMWB[31:26];
assign rs_MEMWB = 	instrMEMWB[25:21];
assign rt_MEMWB = 	instrMEMWB[20:16];						
assign rd_MEMWB = 	instrMEMWB[15:11];
assign funct_MEMWB = instrMEMWB[5:0];	

//is_alui_rd assigns
assign op_IFID_is_alui_rd = (			(op_IFID == ADDI) || 
										(op_IFID == SLTI) ||
										(op_IFID == ORI)  ||
										(op_IFID == ANDI) ||
										(op_IFID == XORI) ||
										(op_IFID == SLLI) ||
										(op_IFID == SW)   ||
										(op_IFID == LW)	);
										
assign op_IDEX_is_alui_rd = (			(op_IDEX == ADDI) || 
										(op_IDEX == SLTI) ||
										(op_IDEX == ORI)  ||
										(op_IDEX == ANDI) ||
										(op_IDEX == XORI) ||
										(op_IDEX == SLLI) ||
										(op_IDEX == SW)   ||
										(op_IDEX == LW)	);
										
assign op_EXMEM_is_alui_rd = (			(op_EXMEM == ADDI) || 
										(op_EXMEM == SLTI) ||
										(op_EXMEM == ANDI) ||
										(op_EXMEM == XORI) ||
										(op_EXMEM == SLLI) ||
										(op_EXMEM == SW)   ||
										(op_EXMEM == ORI)  ||
										(op_EXMEM == LW)	);
										
assign op_MEMWB_is_alui_rd = (			(op_MEMWB == ADDI) || 
										(op_MEMWB == SLTI) ||
										(op_MEMWB == ORI)  ||
										(op_MEMWB == ANDI) ||
										(op_MEMWB == XORI) ||
										(op_MEMWB == SLLI) ||
										(op_MEMWB == SW)   ||
										(op_MEMWB == LW)	);


//is_alui_wr										
assign op_IFID_is_alui_wr = ( 			(op_IFID == ADDI) || 
										(op_IFID == SLTI) ||
										(op_IFID == ORI)  ||
										(op_IFID == ANDI) ||
										(op_IFID == XORI) ||
										(op_IFID == SLLI) );
										
assign op_IDEX_is_alui_wr = ( 			(op_IFID == ADDI) || 
										(op_IDEX == SLTI) ||
										(op_IDEX == ORI)  ||
										(op_IDEX == ANDI) ||
										(op_IDEX == XORI) ||
										(op_IDEX == SLLI) );
										
assign op_EXMEM_is_alui_wr = ( 			(op_IFID == ADDI)  || 
										(op_EXMEM == SLTI) ||
										(op_EXMEM == ORI)  ||
										(op_EXMEM == ANDI) ||
										(op_EXMEM == XORI) ||
										(op_EXMEM == SLLI) );
										
assign op_MEMWB_is_alui_wr = ( 			(op_IFID == ADDI)  || 
										(op_MEMWB == SLTI) ||
										(op_MEMWB == ORI)  ||
										(op_MEMWB == ANDI) ||
										(op_MEMWB == XORI) ||
										(op_MEMWB == SLLI) );
										

//is_alur
assign op_IFID_is_alur = (				(op_IFID == ADD)	||
										(op_IFID == SUB)	||
										(op_IFID == SLT)	||
										(op_IFID == AND)	||
										(op_IFID == OR)		||
										(op_IFID == XOR)	||
										(op_IFID == SLLV)	);
										
assign op_IDEX_is_alur = (				(op_IDEX == ADD)	||
										(op_IDEX == SUB)	||
										(op_IDEX == SLT)	||
										(op_IDEX == AND)	||
										(op_IDEX == OR)		||
										(op_IDEX == XOR)	||
										(op_IDEX == SLLV)	);
										
assign op_EXMEM_is_alur = (				(op_EXMEM == ADD)	||
										(op_EXMEM == SUB)	||
										(op_EXMEM == SLT)	||
										(op_EXMEM == AND)	||
										(op_EXMEM == OR)	||
										(op_EXMEM == XOR)	||
										(op_EXMEM == SLLV)	);
										
assign op_MEMWB_is_alur = (				(op_MEMWB == ADD)	||
										(op_MEMWB == SUB)	||
										(op_MEMWB == SLT)	||
										(op_MEMWB == AND)	||
										(op_MEMWB == OR)	||
										(op_MEMWB == XOR)	||
										(op_MEMWB == SLLV)	);
										
assign funct_IFID_is_alur = (			(funct_IFID == ADD)	||
										(funct_IFID == SUB)	||
										(funct_IFID == SLT)	||
										(funct_IFID == AND)	||
										(funct_IFID == OR)	||
										(funct_IFID == XOR)	||
										(funct_IFID == SLLV)	);
										
assign funct_IDEX_is_alur = (			(funct_IDEX == ADD)	||
										(funct_IDEX == SUB)	||
										(funct_IDEX == SLT)	||
										(funct_IDEX == AND)	||
										(funct_IDEX == OR)	||
										(funct_IDEX == XOR)	||
										(funct_IDEX == SLLV)	);
										
assign funct_EXMEM_is_alur = (			(funct_EXMEM == ADD)	||
										(funct_EXMEM == SUB)	||
										(funct_EXMEM == SLT)	||
										(funct_EXMEM == AND)	||
										(funct_EXMEM == OR)		||
										(funct_EXMEM == XOR)	||
										(funct_EXMEM == SLLV)	);
										
assign funct_MEMWB_is_alur = (			(funct_MEMWB == ADD)	||
										(funct_MEMWB == SUB)	||
										(funct_MEMWB == SLT)	||
										(funct_MEMWB == AND)	||
										(funct_MEMWB == OR)		||
										(funct_MEMWB == XOR)	||
										(funct_MEMWB == SLLV)	);
										
										
										

always @(*) begin

	if(op_IDEX_is_alui_rd) begin 	//58
		
		alu1 = 0;

		if(op_EXMEM_is_alui_wr)
			alu0 = (rt_EXMEM == rs_IDEX);
		else if(op_EXMEM == 0 && funct_EXMEM_is_alur)
			alu0 = (rd_EXMEM == rs_IDEX);
		else if(op_MEMWB_is_alui_wr || op_MEMWB == LW)
			alu0 = (rd_MEMWB == rs_IDEX);
		else
			alu0 = (rd_MEMWB == rs_IDEX);
			
			
		if(op_EXMEM_is_alui_wr || (op_EXMEM == 0 && funct_EXMEM_is_alur))
			aluD0 = aluEXMEM_Data;
		else //don't care
			aluD0 = aluD0;
			
		aluD1 = aluD1; //don't care

	end
	else if(op_IDEX == 0 && funct_IDEX_is_alur) begin //80
		if(op_EXMEM_is_alui_wr) begin
			if(op_MEMWB_is_alui_wr || (op_MEMWB == LW)) begin
				alu0 = (rt_EXMEM == rs_IDEX) || (rt_MEMWB == rs_IDEX);
				alu1 = (rt_EXMEM == rt_IDEX) || (rt_MEMWB == rt_IDEX);
			end
			else if(op_MEMWB == 0 || funct_MEMWB_is_alur) begin
				alu0 = (rt_EXMEM == rs_IDEX) || (rd_MEMWB == rs_IDEX);
				alu1 = (rt_EXMEM == rt_IDEX) || (rd_MEMWB == rt_IDEX);
			end
			else begin
				alu0 = (rt_EXMEM == rs_IDEX);
				alu1 = (rt_EXMEM == rt_IDEX);
			end
			
			if(rt_EXMEM == rs_IDEX)
				aluD0 = aluEXMEM_Data;
			else
				aluD0 = aluMEMWB_Data;
				
			if(rt_EXMEM == rt_IDEX)
				aluD1 = aluEXMEM_Data;
			else
				aluD1 = aluMEMWB_Data;
		end
		else if(op_EXMEM == 0 && funct_EXMEM_is_alur) begin	//107
			if(op_MEMWB_is_alui_wr || op_MEMWB == LW) begin
				alu0 = (rd_EXMEM == rs_IDEX) || (rt_MEMWB == rs_IDEX);
				alu1 = (rd_EXMEM == rt_IDEX) || (rt_MEMWB == rt_IDEX);			
			end
			else if(op_MEMWB == 0 && funct_MEMWB_is_alur) begin
				alu0 = (rd_EXMEM == rs_IDEX) || (rd_MEMWB == rs_IDEX);
				alu1 = (rd_EXMEM == rt_IDEX) || (rd_MEMWB == rt_IDEX);	
			end 
			else begin
				alu0 = (rd_EXMEM == rs_IDEX);
				alu1 = (rd_EXMEM == rt_IDEX);
			end
			
			// data logic
			// mux 0 data
			if(rd_EXMEM == rs_IDEX)
				aluD0 = aluEXMEM_Data;
			else
				aluD0 = aluMEMWB_Data;
			
			// mux 1 data
			if(rd_EXMEM == rt_IDEX)
				aluD1 = aluEXMEM_Data;
			else
				aluD1 = aluMEMWB_Data;
		end
	end	
	
	
// FORWARDING TO DATA MEMORY
/*
mem mux logic and data (memD_mux == true  means memD is forwarded):
signals:
   ex_memD_mux, mem_memD_mux
   ex_memD,     mem_memD
*/
// ex mem mux

	if(op_IDEX == SW) begin	//144
		if((op_EXMEM_is_alui_wr) && (rt_EXMEM == rt_IDEX))
			exmem = 1;
		else if(op_EXMEM == 0 && funct_EXMEM_is_alur && rd_EXMEM == rt_IDEX)
			exmem = 1;
		else if((op_MEMWB_is_alui_wr || op_MEMWB == LW) && rt_MEMWB == rt_IDEX)
			exmem = 1;
		else
			exmem = rd_MEMWB == rt_IDEX;
	end	
	// ex mem mux data
	if(op_IDEX == SW) begin //155
		if((op_EXMEM_is_alui_wr) && (rt_EXMEM == rt_IDEX))
			exmemD = aluEXMEM_Data;
		else if(op_EXMEM == 0 && funct_EXMEM_is_alur && rd_EXMEM == rt_IDEX)
			exmemD = aluEXMEM_Data;
		else if(op_MEMWB_is_alui_wr && rt_MEMWB == rt_IDEX)
			exmemD = aluMEMWB_Data;
		else if(op_MEMWB == 0 && funct_MEMWB_is_alur && rd_MEMWB == rt_IDEX)
			exmemD = aluMEMWB_Data;
		else
			exmemD = MEMWB_MemData;
	end
	// mem mem mux and data
	if(op_EXMEM == SW) begin
		memMemD == MEMWB_MemData;
		if(op_MEMWB == LW)
			mem_mem = (rt_MEMWB == rt_EXMEM);
	end

// FORWARDING TO JUMPS
/*
jmp mux logic and data (jmp_mux == true  means jmpD is forwarded)
signals:
   jmp0_mux,   jmpD0
   jmp1_mux,   jmpD1
*/
// jmp mux	
	if((op_IFID == 0 && funct_IFID == JR) || op_IFID == BGT) begin //183
		if(op_EXMEM_is_alui_wr) begin
			jmp0 = rt_EXMEM == rs_IFID;
			jpm1 = rt_EXMEM == rt_IFID;
		end
		else if(op_EXMEM == 0 && funct_EXMEM_is_alur) begin
			jmp0 = rd_EXMEM == rs_IFID;
			jpm1 = rd_EXMEM == rt_IFID;
		end
	end
// jmp mux data	
	if((op_IFID == 0 && funct_IFID == jr) || op_IFID == BGT) begin
		if(op_EXMEM_is_alui_wr || (op_EXMEM == 0 && funct_EXMEM_is_alur)) begin
			jmp0 = aluEXMEM_Data;
			jmp1 = aluEXMEM_Data;
		end
	end
	
	
///// HAZARD CONTROL /////
/*
signals:
   stall
   calc_branch
   guess_brnch (currently not implemented)
*/
// stall
	if(op_EXMEM == LW) begin //// stall for forwarding from memory to alu
		if(op_IDEX_is_alui_rd)
			stall = rt_EXMEM == rs_IDEX;
		if(op_IDEX == 0 && funct_IDEX_is_alur)
			stall = (rt_EXMEM == rs_IDEX) || (rt_EXMEM == rt_IDEX);
	end
	else if(op_IFID == 0 && funct_IFID == JR) begin  // stall for data from alu / memory to jr
		if(op_IDEX_is_alui_wr || op_IDEX == LW)
			stall = rt_IDEX == rs_IFID;
		else if(op_IDEX == 0 && funct_IDEX_is_alur)
			stall = rd_IDEX == rs_IFID;
		else if(op_EXMEM == LW)
			stall = rt_EXMEM == rs_IFID;
	end
	else if(op_IFID == BGT) begin // stall for data from alu / memory to bgt
		if(op_IDEX_is_alui_wr || op_IDEX == LW)
			stall = (rt_IDEX == rs_IFID) || (rt_IDEX == rt_IFID);
		else if(op_IDEX == 0 && funct_IDEX_is_alur)
			stall = rt_IDEX == (	rt_IDEX == rs_IFID || rt_IDEX == rt_IFID ||
									rs_IDEX == rs_IFID || rs_IDEX == rt_IFID  	);
		else if(op_EXMEM == LW)
			stall = rt_EXMEM == rs_IFID || rt_EXMEM == rt_IFID;
	end	
		
end

calc_branch = ~stall && (op_IFID == 0 && funct_IFID == JR) || op_IFID == BGT || op_IFID == JUMP;


end

				
	
endmodule							
								
								
								
								