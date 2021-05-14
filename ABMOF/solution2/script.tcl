############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project topParseEvents
set_top EVABMOFStreamWithControl
add_files topParseEvents/src/abmofAccel.h
add_files topParseEvents/src/abmofAccel.cpp
add_files -tb topParseEvents/src/test.cpp
open_solution "solution2"
set_part {xc7z045ffg900-1}
create_clock -period 10 -name default
set_clock_uncertainty 0.1
config_dataflow -default_channel fifo -fifo_depth 0
source "./topParseEvents/solution2/directives.tcl"
csim_design -setup
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog
