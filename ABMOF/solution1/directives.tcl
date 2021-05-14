############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_interface -mode ap_fifo -depth 500 "parseEvents" dataStream
set_directive_inline -off "sadSum"
set_directive_unroll -factor 1 "sadSum/calOFLoop2"
set_directive_pipeline "sad"
set_directive_inline -off "sad"
set_directive_array_partition -type complete -dim 0 "colSADSum" t2Col
set_directive_array_partition -type complete -dim 0 "colSADSum" retVal
set_directive_array_partition -type complete -dim 0 "colSADSum" t1Col
set_directive_pipeline "colSADSum"
set_directive_inline -off "colSADSum"
set_directive_array_partition -type complete -dim 0 "colSADSum/colSADSumLoop" input1
set_directive_array_partition -type complete -dim 0 "colSADSum/colSADSumLoop" input2
set_directive_array_reshape -type complete -dim 1 "min" inArr
set_directive_pipeline "min"
set_directive_inline -off "min"
set_directive_inline "readPixFromCol"
set_directive_unroll "readPixFromCol/readWiderBitsLoop"
set_directive_inline "readPixFromTwoCols"
set_directive_unroll "readPixFromTwoCols/readTwoColsWiderBitsLoop"
set_directive_inline "writePixToCol"
set_directive_unroll "writePixToCol/writeWiderBitsLoop"
set_directive_inline "resetPix"
set_directive_dependence -variable glPLSlices -type inter -dependent false "writePix"
set_directive_array_partition -type cyclic -factor 1 -dim 3 "writePix" glPLSlices
set_directive_array_partition -type complete -dim 1 "writePix" glPLSlices
set_directive_inline "writePix"
set_directive_pipeline "writePix"
set_directive_resource -core RAM_T2P_BRAM "writePix" glPLSlices
set_directive_array_reshape -type complete -dim 1 "readBlockCols" tagCol
set_directive_array_reshape -type complete -dim 1 "readBlockCols" refCol
set_directive_pipeline "readBlockCols"
set_directive_inline "readBlockCols"
set_directive_inline "readBlockColsAndMiniSADSum"
set_directive_inline -off "getXandY"
set_directive_pipeline "getXandY/getXandYLoop"
set_directive_loop_tripcount -min 1 -max 10000 "getXandY/getXandYLoop"
set_directive_inline -off "rwSlices"
set_directive_loop_tripcount -min 1 -max 10000 "rwSlices/rwSlicesLoop"
set_directive_pipeline -rewind "rwSlices/rwSlicesInnerLoop"
set_directive_pipeline "rwSlices/resetLoop"
set_directive_loop_tripcount -min 1 -max 10000 "miniSADSumWrapper/wrapperLoop"
set_directive_loop_tripcount -min 1 -max 10000 "outputResult/outputLoop"
set_directive_pipeline "outputResult/outputLoop"
set_directive_resource -core FIFO_SRL "parseEvents/DFRegion" xStream
set_directive_resource -core FIFO_SRL "parseEvents/DFRegion" yStream
set_directive_resource -core FIFO_SRL "parseEvents/DFRegion" refStream
set_directive_stream -depth 2 -dim 1 "parseEvents/DFRegion" refStream
set_directive_resource -core FIFO_SRL "parseEvents/DFRegion" tagStreamIn
set_directive_stream -depth 6 -dim 1 "parseEvents/DFRegion" tagStreamIn
set_directive_resource -core FIFO_SRL "parseEvents/DFRegion" miniSumStream
set_directive_stream -depth 2 -dim 1 "parseEvents/DFRegion" miniSumStream
set_directive_resource -core FIFO_SRL "parseEvents/DFRegion" pktEventDataStream
set_directive_stream -depth 2 -dim 1 "parseEvents/DFRegion" pktEventDataStream
set_directive_interface -mode ap_fifo -depth 1000 "testRwslices" data
set_directive_interface -mode ap_fifo -depth 17000 "testRwslices" refData
set_directive_interface -mode ap_fifo -depth 17000 "testRwslices" tagData
set_directive_stream -depth 2 -dim 1 "testRwslices" pktEventDataStream
set_directive_stream -depth 2 -dim 1 "testRwslices" refStream
set_directive_stream -depth 2 -dim 1 "testRwslices" tagStreamIn
set_directive_dataflow "testRwslices"
set_directive_pipeline "testRwslices/getXandYLoop"
set_directive_pipeline "testRwslices/writeFromStream"
set_directive_loop_tripcount -min 1 -max 170000 "testRwslices/writeFromStream"
set_directive_interface -mode s_axilite -register "parseEvents"
set_directive_inline -off "rotateSlice"
set_directive_interface -mode ap_fifo "getXandY" data
set_directive_array_partition -type complete -dim 2 "rotateSlice" areaEventRegs
set_directive_inline -off "rotateSlice/rotateSliceResetLoop"
set_directive_resource -core RAM_2P_LUTRAM "rotateSlice" areaEventRegs
set_directive_pipeline "feedbackWrapper/feedbackWrapperLoop"
set_directive_resource -core AddSub_DSP "sad/calOFDSPLoop" tmpSum
set_directive_resource -core RAM_2P_LUTRAM "feedback" OFRetRegs
set_directive_pipeline -rewind "readSlices/readSlicesInnerLoop"
set_directive_dataflow "parseEvents/DFRegion"
set_directive_loop_tripcount -min 1 -max 10000 "parseEvents/parseEventsLoop"
set_directive_resource -core RAM_2P_LUTRAM "colStreamToColSum" colData0
set_directive_resource -core RAM_2P_LUTRAM "colStreamToColSum" colData1
set_directive_pipeline -rewind "colStreamToColSum/colStreamToColSum_label2"
set_directive_array_reshape -type complete -dim 1 "accumulateStream" lastSumData
set_directive_array_reshape -type complete -dim 1 "accumulateStream/accumulateStream_label3" inputData
set_directive_pipeline -rewind "accumulateStream/accumulateStream_label3"
set_directive_stream -depth 2 -dim 1 "parseEvents" outStream
set_directive_resource -core FIFO_SRL "parseEvents" outStream
set_directive_pipeline "rwSlicesAndColStreams/rwSlicesLoop"
set_directive_pipeline "rwSlicesAndColStreams/GenerateStreamLoop"
set_directive_dataflow "rwSlicesAndColStreams"
set_directive_resource -core RAM_1P_LUTRAM "rwSlicesAndColStreams" colData0
set_directive_resource -core RAM_2P_LUTRAM "rwSlicesAndColStreams" colData1
set_directive_inline -off "rotateSliceNoRotationFlg"
set_directive_array_partition -type complete -dim 2 "rotateSliceNoRotationFlg" areaEventRegs
set_directive_resource -core RAM_2P_LUTRAM "rotateSliceNoRotationFlg" areaEventRegs
set_directive_pipeline "rotateSliceNoRotationFlg/rotateSliceLoop"
set_directive_pipeline "feedback/feedbackReadOFInnerLoop"
set_directive_stream -depth 3 -dim 1 "parseEvents" thrStream
set_directive_interface -mode m_axi -depth 500 -offset slave -bundle gmem -num_read_outstanding 0 -max_read_burst_length 2 -max_write_burst_length 256 "parseEvents" eventSlice
set_directive_array_partition -type complete -dim 1 "colZeroCnt" t1Col
set_directive_array_partition -type complete -dim 1 "colZeroCnt" t2Col
set_directive_pipeline "colZeroCnt"
set_directive_array_partition -type complete -dim 1 "colZeroCnt" tagValidPixCnt
set_directive_array_partition -type complete -dim 1 "colZeroCnt" refTagValidPixCnt
set_directive_pipeline "rotateSlice/rotateSliceResetLoop"
set_directive_stream -depth 2 -dim 1 "parseEvents" refZeroCntStream
set_directive_stream -depth 2 -dim 1 "parseEvents" tagColValidCntStream
set_directive_stream -depth 2 -dim 1 "parseEvents" refTagValidCntStream
set_directive_array_partition -type complete -dim 1 "writePix" glPLSlicesScale1
set_directive_resource -core RAM_T2P_BRAM "writePix" glPLSlicesScale1
set_directive_array_partition -type cyclic -factor 1 -dim 3 "writePix" glPLSlicesScale1
set_directive_array_partition -type complete -dim 1 "writePix" glPLSlicesScale2
set_directive_array_partition -type cyclic -factor 1 -dim 3 "writePix" glPLSlicesScale2
set_directive_resource -core RAM_T2P_BRAM "writePix" glPLSlicesScale2
set_directive_dependence -variable glPLSlicesScale1 -type inter -dependent false "writePix"
set_directive_dependence -variable glPLSlicesScale2 -type inter -dependent false "writePix"
set_directive_inline "readBlockColsScale1"
set_directive_pipeline "readBlockColsScale1"
set_directive_inline "readBlockColsScale2"
set_directive_pipeline "readBlockColsScale2"
set_directive_array_reshape -type complete -dim 1 "readBlockColsScale2" refColScale2
set_directive_array_reshape -type complete -dim 1 "readBlockColsScale2" tagColScale2
set_directive_array_reshape -type complete -dim 1 "readBlockColsScale1" refColScale1
set_directive_array_reshape -type complete -dim 1 "readBlockColsScale1" tagColScale1
