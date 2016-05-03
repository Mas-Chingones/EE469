
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
	
   /////  DATA BUS  /////
	// drive data to data_bus from mdr if reading sram else hi-z
   assign data_bus = (!cs && rw && !oe) ? {{16{mdr[15]}}, mdr} : 32'bz;  // sign extend stored value
	// drive data to sram from mdr if writing, drive data to mdr from sram if reading
	// else hi-z
   assign sram_data_bus = (!cs && rw && !oe) ? memory[sram_mar_bus] : ((!cs && !rw && oe) ? mdr : 16'bz);
   
	/////  ADDRESS BUS  /////
	// addr_bus not driven by sram
	assign addr_bus = 32'bz;
	// drive address from mar to sram if reading or writing else hi-z
	assign sram_mar_bus = (!cs && ((rw && !oe) || (!rw && oe))) ? mar : 11'bz;
   
   /////  MAR & MDR  /////
   always @(*) begin
      if(!cs) begin	  
         // Memory Address Register write:
         if ((rw && !oe) || (!rw && oe))
            mar = addr_bus[10:0];
         else
            mar = mar;
         
         // Memory Data Register	write:
         if (!rw && oe)  // bus writes to MDR
            mdr = data_bus[15:0];
         else if(rw && !oe)  // SRAM writes to MDR
            mdr = sram_data_bus;
         else
            mdr = mdr;
      end
      else begin
         mar = mar;
         mdr = mdr;
      end
   end
   
    ///// SRAM WRITE  /////
	always @(posedge clk) begin
      if (!cs && (!rw && oe))
         memory[sram_mar_bus] = sram_data_bus;
	end
endmodule
