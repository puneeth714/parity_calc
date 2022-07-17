# Makefile

# defaults
SIM ?= icarus
TOPLEVEL_LANG ?= verilog
WIDTH ?=20
VERILOG_SOURCES += $(PWD)/parity_calc.v

# use VHDL_SOURCES for VHDL files

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = parity_calc
# MODULE is the basename of the Python test file


MODULE = parity_calc_test

COMPILE_ARGS+=-Pparity_calc.WIDTH=$(WIDTH)
# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim

clean_all:clean
	rm -rf *.xml __pycache__ sim_build