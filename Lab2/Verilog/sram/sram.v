
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
	
   //// Tristate Buffers for data buses //
	// drive data to data_bus from mdr if reading sram else hi-z
   assign data_bus = (!cs && rw && !oe) ? {16'b0, mdr} : 32'bz;
	// drive data to sram from mdr if writing, drive data to mdr from sram if reading
	// else hi-z
   assign sram_data_bus = (!cs && rw && !oe) ? memory[mar] : ((!cs && !rw && oe) ? mdr : 16'bz);
   
	//// Tristate Buffers for address buses //
	// addr_bus not driven by sram
	assign addr_bus = 32'bz;
	// drive address from mar to sram if reading or writing else hi-z
	assign sram_mar_bus = (!cs && ((rw && !oe) || (!rw && oe))) ? mar : 11'bz;
   
   // Memory Address Register write:
   always @(negedge clk) begin
      if(!cs && ((rw && !oe) || (!rw && oe)))
         mar = addr_bus[10:0];
   end
   
   // Memory Data Register write:
   // write from sram to mdr on posedge clk, 
   // write from data bus to mdr on negedge clk
   always @(clk) begin
      if(!cs) begin
         if(!clk && (!rw && oe))
            mdr = data_bus[15:0];
         else if(clk &&((rw && !oe)))
            mdr = memory[sram_mar_bus];
      end
   end   
   
   // SRAM write:
	always @(posedge clk) begin
      if (!cs && (!rw && oe))
         memory[sram_mar_bus] = sram_data_bus;
	end
endmodule 
