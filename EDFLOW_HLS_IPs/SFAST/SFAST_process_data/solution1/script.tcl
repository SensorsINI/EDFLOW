############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project SFAST_process_data
set_top SFAST_process_data
add_files SFAST_process_data/src/sfast.h
add_files SFAST_process_data/src/sfast.cpp
add_files -tb SFAST_process_data/src/test.cpp
open_solution "solution1"
set_part {xc7z100ffg900-1} -tool vivado
create_clock -period 10 -name default
#source "./SFAST_process_data/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -rtl verilog -format ip_catalog
