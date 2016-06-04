/*
Author David Dolengewicz, Ian Gilman
	dataForwarding is handles the logic, datapath and control for the dataforwarding/hazard control
*/

/*/// DEFINITION OF TERMS  /////
-------------------------------------------------------------------------------------
||  TERM           ||  Reference
-------------------------------------------------------------------------------------
||  IFID           ||  Refers to the data buffer between the Instruction Fetch and the 
||                 ||  Instruction Decode pipelining stages
-------------------------------------------------------------------------------------
||  IDEX           ||  Refers to the data buffer between the Instruction Decode and the 
||                 ||  Execution pipelining stages
-------------------------------------------------------------------------------------
||  EXMEM          ||  Refers to the data buffer between the Execution and the 
||                 ||  Memory pipelinging stages
--------------------------------------------------------------------------------------
||  MEMWB          ||  Refers to the data bffer between the Memory and the
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
||  alui_wr        ||  Op-codes for instructions that write data to FR from the ALU:
||                 ||      ADDI, SLTI, ANDI, ORI, XORI, SLLI
-------------------------------------------------------------------------------------
||  alui_rd         ||  Op-codes for instructions that read data to ALU from the FR:
||                 ||      ADDI, SLTI, ANDI, ORI, XORI, SLLI, SW, LW
-------------------------------------------------------------------------------------
||  alur           ||  ALU funct code for register instructions (Op-code = 0) that read
||                 ||  from the FR to the ALU and also write from the ALU to the FR:
||	               ||      ADD, SUB, SLT, AND, OR, XOR, SLLV
-------------------------------------------------------------------------------------
*/

module dataForwarding(		instrIFID,	//inputs
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
							stall_idex,
                     stall_ifid,
							flush_ifid,
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
							
output reg [31:0]			jmp0D,		//Data outputs
							jmp1D,
							aluD0,
							aluD1,
							exmemD,
							memMemD;	
							
output reg					jmp0,			//Control outputs
							jmp1,
							stall_idex,
                     stall_ifid,
							flush_ifid,
							alu0,
							alu1,
							exmem,
							mem_mem;	

//parameters
// Instruction OP Codes
parameter REG  = 6'd0;
parameter JUMP = 6'd2;
parameter BGTI = 6'd7;
parameter ADDI = 6'd8;
parameter SLTI = 6'd10;
parameter ANDI = 6'd12;
parameter ORI  = 6'd13;
parameter XORI = 6'd14;
parameter SLLI = 6'd15;
parameter LW   = 6'd35;
parameter SW   = 6'd43;

// ALU Functions
parameter NOP  = 6'd0;
parameter SLLV = 6'd4;
parameter JR   = 6'd8;
parameter ADD  = 6'd32;
parameter SUB  = 6'd34;
parameter AND  = 6'd36;
parameter OR   = 6'd37;
parameter XOR  = 6'd38;
parameter SLT  = 6'd42;

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

wire IFID_is_alur;
wire IDEX_is_alur;
wire EXMEM_is_alur;
wire MEMWB_is_alur;

wire	[5:0]	op_IFID,
				op_IDEX,
				op_EXMEM,
				op_MEMWB;	
wire	[4:0]     rs_IFID,
				rs_IDEX,
				rs_EXMEM,
				rs_MEMWB,
                rt_IFID, 
				rt_IDEX,
				rt_EXMEM,
				rt_MEMWB,
                rd_IFID,
				rd_IDEX,
				rd_EXMEM,
				rd_MEMWB;
				
wire [5:0]      funct_IFID, 	 			 		
                funct_IDEX,	
                funct_EXMEM, 	
                funct_MEMWB; 	

//assignation 
assign op_IFID = 		instrIFID[31:26];
assign rs_IFID = 		instrIFID[25:21];
assign rt_IFID = 		instrIFID[20:16];						
assign rd_IFID = 		instrIFID[15:11];
assign funct_IFID = 	instrIFID[5:0];								
									
assign op_IDEX = 		instrIDEX[31:26];
assign rs_IDEX = 		instrIDEX[25:21];
assign rt_IDEX = 		instrIDEX[20:16];						
assign rd_IDEX = 		instrIDEX[15:11];
assign funct_IDEX = 	instrIDEX[5:0];	
								
assign op_EXMEM = 		instrEXMEM[31:26];
assign rs_EXMEM = 		instrEXMEM[25:21];
assign rt_EXMEM = 		instrEXMEM[20:16];						
assign rd_EXMEM = 		instrEXMEM[15:11];
assign funct_EXMEM = 	instrEXMEM[5:0];									
								
assign op_MEMWB = 		instrMEMWB[31:26];
assign rs_MEMWB = 		instrMEMWB[25:21];
assign rt_MEMWB = 		instrMEMWB[20:16];						
assign rd_MEMWB = 		instrMEMWB[15:11];
assign funct_MEMWB = 	instrMEMWB[5:0];	

//is_alui_rd assigns
assign op_IFID_is_alui_rd = (		
                           (op_IFID == ADDI) || 
									(op_IFID == SLTI) ||
									(op_IFID == ORI)  ||
									(op_IFID == ANDI) ||
									(op_IFID == XORI) ||
									(op_IFID == SLLI) ||
									(op_IFID == SW)   ||
									(op_IFID == LW)	);
									
assign op_IDEX_is_alui_rd = (		
                           (op_IDEX == ADDI) || 
									(op_IDEX == SLTI) ||
									(op_IDEX == ORI)  ||
									(op_IDEX == ANDI) ||
									(op_IDEX == XORI) ||
									(op_IDEX == SLLI) ||
									(op_IDEX == SW)   ||
									(op_IDEX == LW)	);
									
assign op_EXMEM_is_alui_rd = (		
                           (op_EXMEM == ADDI) || 
									(op_EXMEM == SLTI) ||
									(op_EXMEM == ANDI) ||
									(op_EXMEM == XORI) ||
									(op_EXMEM == SLLI) ||
									(op_EXMEM == SW)   ||
									(op_EXMEM == ORI)  ||
									(op_EXMEM == LW)	);
									
assign op_MEMWB_is_alui_rd = (		
                           (op_MEMWB == ADDI) || 
									(op_MEMWB == SLTI) ||
									(op_MEMWB == ORI)  ||
									(op_MEMWB == ANDI) ||
									(op_MEMWB == XORI) ||
									(op_MEMWB == SLLI) ||
									(op_MEMWB == SW)   ||
									(op_MEMWB == LW)	);


//is_alui_wr									
assign op_IFID_is_alui_wr = ( 		
                           (op_IFID == ADDI) || 
									(op_IFID == SLTI) ||
									(op_IFID == ORI)  ||
									(op_IFID == ANDI) ||
									(op_IFID == XORI) ||
									(op_IFID == SLLI) );
									
assign op_IDEX_is_alui_wr = ( 		
                           (op_IDEX == ADDI) || 
									(op_IDEX == SLTI) ||
									(op_IDEX == ORI)  ||
									(op_IDEX == ANDI) ||
									(op_IDEX == XORI) ||
									(op_IDEX == SLLI) );
									
assign op_EXMEM_is_alui_wr = ( 		
                           (op_EXMEM == ADDI) || 
									(op_EXMEM == SLTI) ||
									(op_EXMEM == ORI)  ||
									(op_EXMEM == ANDI) ||
									(op_EXMEM == XORI) ||
									(op_EXMEM == SLLI) );
									
assign op_MEMWB_is_alui_wr = ( 		
                           (op_MEMWB == ADDI) || 
									(op_MEMWB == SLTI) ||
									(op_MEMWB == ORI)  ||
									(op_MEMWB == ANDI) ||
									(op_MEMWB == XORI) ||
									(op_MEMWB == SLLI) );
									

//is_alur
assign IFID_is_alur = (			(op_IFID == 0) && 
                        (  (funct_IFID == ADD)	||
									(funct_IFID == SUB)	||
									(funct_IFID == SLT)	||
									(funct_IFID == AND)	||
									(funct_IFID == OR)	||
									(funct_IFID == XOR)	||
									(funct_IFID == SLLV)	));
									
assign IDEX_is_alur = (			(op_IDEX == 0)	&&
								(	(funct_IDEX == ADD)	||
									(funct_IDEX == SUB)	||
									(funct_IDEX == SLT)	||
									(funct_IDEX == AND)	||
									(funct_IDEX == OR)	||
									(funct_IDEX == XOR)	||
									(funct_IDEX == SLLV)	));
									
assign EXMEM_is_alur = (		(op_EXMEM == 0) &&
								(	(funct_EXMEM == ADD) ||
                           (funct_EXMEM == SUB)	||
									(funct_EXMEM == SLT)	||
									(funct_EXMEM == AND)	||
									(funct_EXMEM == OR)	||
									(funct_EXMEM == XOR)	||
									(funct_EXMEM == SLLV) ));
									
assign MEMWB_is_alur = (		(op_MEMWB == 0) &&
								(	(funct_MEMWB == ADD) ||
                           (funct_MEMWB == SUB)	||
									(funct_MEMWB == SLT)	||
									(funct_MEMWB == AND)	||
									(funct_MEMWB == OR)	||
									(funct_MEMWB == XOR)	||
									(funct_MEMWB == SLLV) ));
										
										
always @(*) begin
	// BLOCK 1 forwarding to the ALU
	if(op_IDEX_is_alui_rd) begin 
		
		alu1 = 0;

		if(op_EXMEM_is_alui_wr)
			alu0 = (rt_EXMEM == rs_IDEX);
		else if(EXMEM_is_alur)
			alu0 = (rd_EXMEM == rs_IDEX);
		else if(op_MEMWB_is_alui_wr || op_MEMWB == LW)
			alu0 = (rd_MEMWB == rs_IDEX);
		else
			alu0 = (rd_MEMWB == rs_IDEX);
			
		//should this be dependant on alu0??	
		if(op_EXMEM_is_alui_wr || (EXMEM_is_alur))
			aluD0 = aluEXMEM_Data;
		else 
			aluD0 = aluD0;
			
		aluD1 = aluD1; 

	end
	
	//BLOCK 2
	else if(IDEX_is_alur) begin //
		if(op_EXMEM_is_alui_wr) begin				//SUB-BLOCK A
			if(op_MEMWB_is_alui_wr || (op_MEMWB == LW)) begin
				alu0 = (rt_EXMEM == rs_IDEX) || (rt_MEMWB == rs_IDEX);
				alu1 = (rt_EXMEM == rt_IDEX) || (rt_MEMWB == rt_IDEX);
			end
			else if(MEMWB_is_alur) begin
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
		else if(EXMEM_is_alur) begin	//SUB-BLOCK B
			if(op_MEMWB_is_alui_wr || op_MEMWB == LW) begin
				alu0 = (rd_EXMEM == rs_IDEX) || (rt_MEMWB == rs_IDEX);
				alu1 = (rd_EXMEM == rt_IDEX) || (rt_MEMWB == rt_IDEX);			
			end
			else if(MEMWB_is_alur) begin
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

	//BLOCK 3
	if(op_IDEX == SW) begin	//144
		if((op_EXMEM_is_alui_wr) && (rt_EXMEM == rt_IDEX))
			exmem = 1;
		else if(EXMEM_is_alur && rd_EXMEM == rt_IDEX)
			exmem = 1;
		else if((op_MEMWB_is_alui_wr || op_MEMWB == LW) && rt_MEMWB == rt_IDEX)
			exmem = 1;
		else if(MEMWB_is_alur)
			exmem = rd_MEMWB == rt_IDEX;
      else
         exmem = 0;
	end	
	
	
		//BLOCK 4
	// ex mem mux data
	if(op_IDEX == SW) begin //155
		if((op_EXMEM_is_alui_wr) && (rt_EXMEM == rt_IDEX))
			exmemD = aluEXMEM_Data;
		else if(EXMEM_is_alur && rd_EXMEM == rt_IDEX)
			exmemD = aluEXMEM_Data;
		else if(op_MEMWB_is_alui_wr && rt_MEMWB == rt_IDEX)
			exmemD = aluMEMWB_Data;
		else if(MEMWB_is_alur && rd_MEMWB == rt_IDEX)
			exmemD = aluMEMWB_Data;
		else
			exmemD = MEMWB_MemData;
	end
	
	// mem mem mux and data
	//BLOCK 5
   memMemD = MEMWB_MemData;
	if(op_EXMEM == SW && op_MEMWB == LW)
			mem_mem = (rt_MEMWB == rt_EXMEM);
   else
         mem_mem = 0;

// FORWARDING TO JUMPS
/*
jmp mux logic and data (jmp_mux == true  means jmpD is forwarded)
signals:
   jmp0_mux,   jmpD0
   jmp1_mux,   jmpD1
*/
// jmp mux	

		//BLOCK 6
	if((op_IFID == 0 && funct_IFID == JR) || op_IFID == BGTI) begin //183
		if(op_EXMEM_is_alui_wr) begin
			jmp0 = rt_EXMEM == rs_IFID;
			jmp1 = rt_EXMEM == rt_IFID;
		end
		else if(EXMEM_is_alur) begin
			jmp0 = rd_EXMEM == rs_IFID;
			jmp1 = rd_EXMEM == rt_IFID;
		end
      else begin
         jmp0 = 0;
         jmp1 = 0;
      end
	end
   else begin
      jmp0 = 0;
      jmp1 = 0;
   end
   
// jmp mux data	
	if((op_IFID == 0 && funct_IFID == JR) || op_IFID == BGTI) begin
		if(op_EXMEM_is_alui_wr || (op_EXMEM == 0 && EXMEM_is_alur)) begin
			jmp0D = aluEXMEM_Data;
			jmp1D = aluEXMEM_Data;
		end
	end
	
	
///// HAZARD CONTROL /////
/*
signals:
   stall_idex
   stall_ifid
   flush_ifid
   guess_brnch (currently not implemented)
*/
// stall

	//BLOCK 7
	if(op_EXMEM == LW) begin //// stall for forwarding from memory to alu
		if(op_IDEX_is_alui_rd)
			stall_idex = rt_EXMEM == rs_IDEX;
		if(IDEX_is_alur)
			stall_idex = (rt_EXMEM == rs_IDEX) || (rt_EXMEM == rt_IDEX);
	end
	else if(op_IFID == 0 && funct_IFID == JR) begin  // stall for data from alu / memory to jr
		if(op_IDEX_is_alui_wr || op_IDEX == LW)
			stall_ifid = rt_IDEX == rs_IFID;
		else if(IDEX_is_alur)
			stall_ifid = rd_IDEX == rs_IFID;
		else if(op_EXMEM == LW)
			stall_ifid = rt_EXMEM == rs_IFID;
	end
	else if(op_IFID == BGTI) begin // stall for data from alu / memory to bgt
		if(op_IDEX_is_alui_wr || op_IDEX == LW)
			stall_ifid = (rt_IDEX == rs_IFID) || (rt_IDEX == rt_IFID);
		else if(IDEX_is_alur)
			stall_ifid = rt_IDEX == (	rt_IDEX == rs_IFID || rt_IDEX == rt_IFID ||
									rs_IDEX == rs_IFID || rs_IDEX == rt_IFID  	);
		else if(op_EXMEM == LW)
			stall_ifid = rt_EXMEM == rs_IFID || rt_EXMEM == rt_IFID;
	end	
	
   flush_ifid = !(
      (op_IFID == 0 && funct_IFID == JR) || 
      (op_IFID == BGTI) || 
      (op_IFID == JUMP)
   );
	
end

endmodule							
								
								
								
								