transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/EE_469/git/EE469/Lab2/verilog/shared_modules/d_flipflop {C:/EE_469/git/EE469/Lab2/verilog/shared_modules/d_flipflop/d_flipflop.v}
vlog -vlog01compat -work work +incdir+C:/EE_469/git/EE469/Lab2/verilog/file_register/decoder_5bit {C:/EE_469/git/EE469/Lab2/verilog/file_register/decoder_5bit/decoder_5bit.v}
vlog -vlog01compat -work work +incdir+C:/EE_469/git/EE469/Lab2/verilog/file_register/register_32bit {C:/EE_469/git/EE469/Lab2/verilog/file_register/register_32bit/register_32bit.v}
vlog -vlog01compat -work work +incdir+C:/EE_469/git/EE469/Lab2/verilog/file_register {C:/EE_469/git/EE469/Lab2/verilog/file_register/file_register.v}

