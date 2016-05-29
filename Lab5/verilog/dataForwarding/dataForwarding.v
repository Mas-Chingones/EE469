/*
Author David Dolengewicz, Ian Gilman
	dataForwarding is handles the logic, datapath and control for the dataforwarding/hazard control
	  handling


*/



module dataForwarding(	instrIFID,	//inputs
								instrIDEX,
								instrEXMEM,
								instrMEMWB,
								aluEXMEM_Data,
								aluMEMWB_Data,
								EXMEM_Data2Mem,
								MEMWB_MemData,
								jmp0D,		//Data outputs
								jmp1D,
								alu0D,
								alu1D,
								exmemD,
								memMemD,
								jmp0,			//Control outputs
								jmp1,
								stall
								calc_branch,
								alu0,
								alu1,
								exmem,
								mem_mem	);
								
input wire [31:0] 	instrIFID,	
							instrIDEX,
							instrEXMEM,
							instrMEMWB,
							aluEXMEM_Data,
							aluMEMWB_Data,
							EXMEM_Data2Mem,
							MEMWB_MemData;
							
output wire [31:0]	jmp0D,		//Data outputs
							jmp1D,
							alu0D,
							alu1D,
							exmemD,
							memMemD;	
							
output wire				jmp0,			//Control outputs
							jmp1,
							stall
							calc_branch,
							alu0,
							alu1,
							exmem,
							mem_mem;	



//assignation 
assign op_IFID = instrIFID[31:26];
assign rs_IFID = instrIFID[25:21];
assign rt_IFID = instrIFID[20:16];						
assign rd_IFID = instrIFID[15:11];
assign funct_IFID = instrIFID[5:0];								
								
assign op_IDEX = instrIDEX[31:26];
assign rs_IDEX = instrIDEX[25:21];
assign rt_IDEX = instrIDEX[20:16];						
assign rd_IDEX = instrIDEX[15:11];
assign funct_IDEX = instrIDEX[5:0];	
								
assign op_EXMEM = instrEXMEM[31:26];
assign rs_EXMEM = instrEXMEM[25:21];
assign rt_EXMEM = instrEXMEM[20:16];						
assign rd_EXMEM = instrEXMEM[15:11];
assign funct_EXMEM = instrEXMEM[5:0];									
								
assign op_MEMWB = instrMEMWB[31:26];
assign rs_MEMWB = instrMEMWB[25:21];
assign rt_MEMWB = instrMEMWB[20:16];						
assign rd_MEMWB = instrMEMWB[15:11];
assign funct_MEMWB = instrMEMWB[5:0];		
							

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



assign op_IFID_is_alui_rd = (	(op_IFID == ADDI) || 
										(op_IFID == SLTI) ||
										(op_IFID == ORI)  ||
										(op_IFID == ANDI) ||
										(op_IFID == XORI) ||
										(op_IFID == SLLI) ||
										(op_IFID == SW) 	||
										(op_IFID == LW)	);
										

assign op_IDEX_is_alui_rd = (	(op_IDEX == ADDI) || 
										(op_IDEX == SLTI) ||
										(op_IDEX == ORI)  ||
										(op_IDEX == ANDI) ||
										(op_IDEX == XORI) ||
										(op_IDEX == SLLI) ||
										(op_IDEX == SW) 	||
										(op_IDEX == LW)	);
										
										
//keep repeating for IDEX, EXMEM, MEMWB										

										
assign op_IFID_is_alui_wr = ( (op_IFID == ADDI) || 
										(op_IFID == SLTI) ||
										(op_IFID == ORI)  ||
										(op_IFID == ANDI) ||
										(op_IFID == XORI) ||
										(op_IFID == SLLI) );
										
//and repeat

assign op_IFID_is_aluir = (	(op_IFID_is_alur == ADD)	||
										(op_IFID_is_alur == SUB)	||
										(op_IFID_is_alur == SLT)	||
										(op_IFID_is_alur == AND)	||
										(op_IFID_is_alur == OR)		||
										(op_IFID_is_alur == XOR)	||
										(op_IFID_is_alur == SLLV)	||
										





					
							
							
								
								

							
						
					
	
								
								
								
								
								