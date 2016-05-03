# Create work library
vlib work

# Compile Verilog
#     All Verilog files that are part of this design should have
#     their own "vlog" line below.

vlog "./file_reg_de1soc_test.v"
vlog "./HexEncoder.v"
vlog "./file_register.v"
vlog "./register_32bit/register_32bit.v"
vlog "./decoder_5bit/decoder_5bit.v"
vlog "./register_32bit/d_flipflop/d_flipflop.v"
vlog "./shared_modules/mux_2to1/mux_2to1.v"

# Call vsim to invoke simulator
#     Make sure the last item on the line is the name of the
#     testbench module you want to execute.
vsim -voptargs="+acc" -t 1ps -lib work file_reg_de1soc_testbench

# Source the wave do file
#     This should be the file that sets up the signal window for
#     the module you are testing.
do file_reg_test_wave.do

# Set the window types
view wave
view structure
view signals

# Run the simulation
run -all

# End
