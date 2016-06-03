/*
Author: David Dolengewicz
Summary: Test the operation of the Program_Control module
*/

`include "dataForwarding.v"

//test bench
module df_tb();

wire [31:0] 	instrIFID,	//Data inputs
				instrIDEX,
				instrEXMEM,
				instrMEMWB,
				aluEXMEM_Data,
				aluMEMWB_Data,
				EXMEM_Data2Mem,
				MEMWB_MemData;
					
wire [31:0]		jmp0D,		//Data outputs
				jmp1D,
				aluD0,
				aluD1,
				exmemD,
				memMemD;	
					
wire			jmp0,			//Control outputs
				jmp1,
				stall,
				calc_branch,
				alu0,
				alu1,
				exmem,
				mem_mem;		

df_tester tester(	.instrIFID(instrIFID),	//inputs
					.instrIDEX(instrIDEX),
					.instrEXMEM(instrEXMEM),
					.instrMEMWB(instrMEMWB),
					.aluEXMEM_Data(aluEXMEM_Data),
					.aluMEMWB_Data(aluMEMWB_Data),
					.EXMEM_Data2Mem(EXMEM_Data2Mem),
					.MEMWB_MemData(MEMWB_MemData),
					.jmp0D(jmp0D),		//Data outputs
					.jmp1D(jmp1D),
					.aluD0(aluD0),
					.aluD1(aluD1),
					.exmemD(exmemD),
					.memMemD(memMemD),
					.jmp0(jmp0),			//Control outputs
					.jmp1(jmp1),
					.stall(stall),
					.calc_branch(calc_branch),
					.alu0(alu0),
					.alu1(alu1),
					.exmem(exmem),
					.mem_mem(mem_mem)		);							

dataForwarding dut(	.instrIFID(instrIFID),	//inputs
					.instrIDEX(instrIDEX),
					.instrEXMEM(instrEXMEM),
					.instrMEMWB(instrMEMWB),
					.aluEXMEM_Data(aluEXMEM_Data),
					.aluMEMWB_Data(aluMEMWB_Data),
					.EXMEM_Data2Mem(EXMEM_Data2Mem),
					.MEMWB_MemData(MEMWB_MemData),
					.jmp0D(jmp0D),		//Data outputs
					.jmp1D(jmp1D),
					.aluD0(aluD0),
					.aluD1(aluD1),
					.exmemD(exmemD),
					.memMemD(memMemD),
					.jmp0(jmp0),			//Control outputs
					.jmp1(jmp1),
					.stall(stall),
					.calc_branch(calc_branch),
					.alu0(alu0),
					.alu1(alu1),
					.exmem(exmem),
					.mem_mem(mem_mem)		);								
								
   // Store waveform data
   initial begin
      $dumpfile("DFTest.vcd");
      $dumpvars(4, dut);
   end
																
endmodule





//tester							
								
module df_tester(	instrIFID,	//inputs (tester outputs)
					instrIDEX,
					instrEXMEM,
					instrMEMWB,
					aluEXMEM_Data,
					aluMEMWB_Data,
					EXMEM_Data2Mem,
					MEMWB_MemData,
					jmp0D,		//Data outputs (tester inputs)
					jmp1D,
					aluD0,
					aluD1,
					exmemD,
					memMemD,
					jmp0,			//Control outputs (tester inputs)
					jmp1,
					stall,
					calc_branch,
					alu0,
					alu1,
					exmem,
					mem_mem		);
								
output reg [31:0] 	instrIFID,	//outputs
					instrIDEX,
					instrEXMEM,
					instrMEMWB,
					aluEXMEM_Data,
					aluMEMWB_Data,
					EXMEM_Data2Mem,
					MEMWB_MemData;
					
input wire [31:0]	jmp0D,		//inputs
					jmp1D,
					aluD0,
					aluD1,
					exmemD,
					memMemD;	
					
input wire			jmp0,		//inputs
					jmp1,
					stall,
					calc_branch,
					alu0,
					alu1,
					exmem,
					mem_mem;
/*
reg				op_IFID, 		
                    rs_IFID, 		
                    rt_IFID, 		
                    rd_IFID, 		
                    funct_IFID, 	 			
                    op_IDEX, 		
                    rs_IDEX, 		
                    rt_IDEX, 		
                    rd_IDEX, 		
                    funct_IDEX, 				
                    op_EXMEM, 	
                    rs_EXMEM, 	
                    rt_EXMEM, 	
                    rd_EXMEM, 	
                    funct_EXMEM, 				
                    op_MEMWB, 	
                    rs_MEMWB, 	
                    rt_MEMWB, 	
                    rd_MEMWB, 	
                    funct_MEMWB; 	
*/
					
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
					
//assignation 
assign op_IFID 		= 	instrIFID[31:26];
assign rs_IFID 		= 	instrIFID[25:21];
assign rt_IFID 		= 	instrIFID[20:16];						
assign rd_IFID 		= 	instrIFID[15:11];
assign funct_IFID 	= 	instrIFID[5:0];								
									
assign op_IDEX 		= 	instrIDEX[31:26];
assign rs_IDEX 		= 	instrIDEX[25:21];
assign rt_IDEX 		= 	instrIDEX[20:16];						
assign rd_IDEX 		= 	instrIDEX[15:11];
assign funct_IDEX 	= 	instrIDEX[5:0];	
								
assign op_EXMEM 	= 	instrEXMEM[31:26];
assign rs_EXMEM 	= 	instrEXMEM[25:21];
assign rt_EXMEM 	= 	instrEXMEM[20:16];						
assign rd_EXMEM 	= 	instrEXMEM[15:11];
assign funct_EXMEM 	= 	instrEXMEM[5:0];									
								
assign op_MEMWB 	= 	instrMEMWB[31:26];
assign rs_MEMWB 	= 	instrMEMWB[25:21];
assign rt_MEMWB 	= 	instrMEMWB[20:16];						
assign rd_MEMWB 	= 	instrMEMWB[15:11];
assign funct_MEMWB 	= 	instrMEMWB[5:0];						
					
initial begin
	$display("\tIFID \tIDEX \tEXMEM \tMEMWB \talu0	\talu1	\ttime");
    $monitor("\t%b  \t%b  \t%b \t%b  \t%b	\t%b  \t%g",
              instrIFID,
					insrtIDEX,
						  instrEXMEM,
								instrMEMWB,
									  alu0,
											alu1,
												$time   );
   end					
					
   parameter delay = 10;					
					
					
	initial begin
	
	instrIFID = 32'b0;
	instrIDEX = 32'b0;
	instrEXMEM = 32'b0;
	instrMEMWB = 32'b0;
	aluEXMEM_Data = 32'b0;
	aluMEMWB_Data = 32'b0;
	EXMEM_Data2Mem = 32'b0;
	MEMWB_MemData = 32'b0;
	#delay; 
	op_IDEX = ADDI;
	
	#delay; //Case 1, op_IDEX_is_alui_rd && op_EXMEM_is_alui_wr && rt_EXMEM == rs_IDEX ====> alu1 = 0, alu0 = 1;
	rt_EXMEM = 5'b10101;
	rs_IDEX =  5'b10101;
	#delay; #delay;
	rt_EXMEM = 5'b0;
	rs_IDEX =  5'b0;
	
	#delay; #delay;	 //Case 1, op_IDEX_is_alui_rd && op_EXMEM ==0
	op_EXMEM = 6'b0;
	funct_EXMEM = ADD;
	rd_EXMEM = 5'b10101;
	rs_IDEX = 5'b10101;
	#delay; #delay;
	



	$finish;
	end
					
					
endmodule					