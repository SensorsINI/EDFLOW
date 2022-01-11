############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_resource -core RAM_T2P_BRAM "writePix" glPLSlices
set_directive_pipeline "writePix"
set_directive_dependence -variable glPLSlices -type inter -direction RAW -dependent false "writePix"
set_directive_unroll "readPixFromCol/readWiderBitsLoop"
set_directive_unroll "writePixToCol/writeWiderBitsLoop"
set_directive_inline "readPixFromCol"
set_directive_inline "writePixToCol"
set_directive_inline "writePix"
set_directive_pipeline "readBlockCols"
set_directive_array_partition -type complete -dim 0 "readBlockCols" refCol
set_directive_inline -off "readPix"
set_directive_inline -off "readBlockCols"
set_directive_unroll "readPixFromTwoCols/readTwoColsWiderBitsLoop"
set_directive_inline "readPixFromTwoCols"
set_directive_pipeline "topHW"
set_directive_array_partition -type complete -dim 1 "writePix" glPLSlices
set_directive_array_partition -type complete -dim 0 "readBlockCols" tagCol
set_directive_array_partition -type complete -dim 0 "topHW" refCol
set_directive_array_partition -type complete -dim 0 "topHW" tagCol
set_directive_pipeline "parseEvents/loop_1"
set_directive_interface -mode ap_fifo "parseEvents" data
set_directive_interface -mode ap_fifo "parseEvents" eventSlice
set_directive_inline "topHW"
set_directive_loop_tripcount -min 1 -max 10000 "parseEvents/loop_1"
