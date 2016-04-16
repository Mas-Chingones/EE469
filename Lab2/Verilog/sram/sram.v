
/*
Author: Adolfo Pineda
Title: 2kx16 SRAM 
Summary: 2k memory registers of 16 bits memory with data-in & data-out with
   chip select, output enable, write enable
*/

module sram(clk, cs, oe, rw, addr_bus, data_bus);
	input wire clk, cs, oe, rw;  // clock, !chip select, !out enable, read/!write
	inout wire [31:0] addr_bus;  // address bus to mar
	inout wire [31:0] data_bus;  // data bus to mdr
	reg [15:0] memory [0:2047];  // sram array of 16-bit registers
   reg [10:0] mar;  // memory address reg
   reg [15:0] mdr;  // memory data reg
   wire [10:0] sram_mar_bus;  // address bus from mar to sram
   wire [15:0] sram_data_bus;  // data bus from mdr to sram
   
   // tristate buffers for data buses
   assign data_bus = (!cs && rw && !oe) ? {16'b0, mdr} : 32'bz;
   assign sram_data_bus = (!cs && rw && !oe) ? memory[mar] : ((!cs && !rw && oe) ? mdr : 16'bz);
   
   
   always @(negedge clk) begin
      // chip must be selected to read/write
      if(!cs) begin
         // Memory Address Register Write
         if((rw && !oe) || (!rw && oe))
            mar = addr_bus[10:0];
      end
   end
   
	always @(posedge clk) begin
		// chip must be selected to read/write
      if(!cs) begin
         // Memory Data Register Write
         if(rw && !oe)
            mdr = memory[mar];
         else if(!rw && oe)
            mdr = data_bus[15:0];
   
         // SRAM Write
         if (!rw && oe)
            memory[mar] = sram_data_bus;
      end
	end
endmodule 
