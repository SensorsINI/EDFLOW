#include <iostream>
#include "sfast.h"
//#include "hls_math.h"
#include "utils/x_hls_utils.h"

// Event slice memory buffer, SFAST only uses scale 2 (coarse scale)
static col_pix_t glPLSFASTSliceScale2[SLICES_NUMBER][SLICE_WIDTH/4][SLICE_HEIGHT/COMBINED_PIXELS/4];

sliceIdx_t oldIdx = 0;

static ap_uint<32> glConfig;
static status_t glStatus;
static uint64_t inEventsNum;
uint8_t glSFASTThr = SFAST_THRESHOLD, glSFASTThrBak = glSFASTThr; // Init value
uint16_t glSFASTAreaCntThr = INIT_AREA_THERSHOLD, glSFASTAreaCntThrBak = glSFASTAreaCntThr; // Init value

//const int innerCircleOffset[INNER_SIZE][2] = {{0, 1}, {1, 1}, {1, 0}, {1, -1},
//		{0, -1}, {-1, -1}, {-1, 0}, {-1, 1}};
//const int outerCircleOffset[OUTER_SIZE][2] = {{0, 2}, {1, 2}, {2, 1}, {2, 0},
//		{2, -1}, {1, -2}, {0, -2}, {-1, -2},
//		{-2, -1}, {-2, 0}, {-2, 1}, {-1, 2}};

//const ap_int<64> innerTest =  ap_int<64>("0111101f0ffff0f1", 16);
//const ap_int<96> outerTest = ap_int<96>("021221202f1e0efeefe0e1f2", 16);

const ap_int<96> innerTest = ap_int<96>("1f0ffff0f1011110", 16);
const ap_int<96> outerTest = ap_int<96>("2f1e0efeefe0e1f202122120", 16);

static ap_uint<2> glStage = 0;
static ap_uint<2> glStageBak = 0;
static hls::stream< ap_uint<2> >  glStageInStream("stageInStream");

static uint32_t glInitCounter = 0, glFeedbackCounter = 0;

// It takes 8192 cycles to reset the whole slice, so we use 13 bits.
static ap_uint<10> resetCnt;

pix_t readPixFromCol(col_pix_t colData, ap_uint<8> idx)
{
#pragma HLS INLINE
	pix_t retData;
	// Use bit selection plus for-loop to read multi-bits from a wider bit width value
	// rather than use range selection directly. The reason is that the latter will use
	// a lot of shift-register which will increase a lot of LUTs consumed.
	readWiderBitsLoop: for(int8_t yIndex = 0; yIndex < BITS_PER_PIXEL; yIndex++)
	{
#pragma HLS UNROLL
		const int bitOffset = BITS_PER_PIXEL >> 1;
		ap_uint<8 + bitOffset> colIdx;
		// Concatenate and bit shift rather than multiple and accumulation (MAC) can save area.
		colIdx.range(8 + bitOffset - 1, bitOffset) = ap_uint<10>(idx * BITS_PER_PIXEL).range(8 + bitOffset - 1, bitOffset);
		colIdx.range(bitOffset - 1, 0) = ap_uint<2>(yIndex);

		retData[yIndex] = colData[colIdx];
//		retData[yIndex] = colData[BITS_PER_PIXEL*idx + yIndex];
	}
	return retData;
}

pix_t readPixFromTwoCols(two_cols_pix_t colData, ap_uint<8> idx)
{
#pragma HLS INLINE
	pix_t retData;
	// Use bit selection plus for-loop to read multi-bits from a wider bit width value
	// rather than use range selection directly. The reason is that the latter will use
	// a lot of shift-register which will increase a lot of LUTs consumed.
//	ap_uint<256> colIdxHi, colIdxLo;
//	colIdxHi = (ap_uint<8>(idx * BITS_PER_PIXEL)(8,2), ap_uint<2>(0));
//	colIdxLo = (ap_uint<8>(idx * BITS_PER_PIXEL)(8,2), ap_uint<2>(BITS_PER_PIXEL - 1));
//	retData = colData(colIdxHi, colIdxLo);
	readTwoColsWiderBitsLoop: for(int8_t yIndex = 0; yIndex < BITS_PER_PIXEL; yIndex++)
	{
#pragma HLS UNROLL
		const int bitOffset = BITS_PER_PIXEL >> 1;
		ap_uint<8 + bitOffset> colIdx;
		// Concatenate and bit shift rather than multiple and accumulation (MAC) can save area.
		colIdx.range(8 + bitOffset - 1, bitOffset) = ap_uint<10>(idx * BITS_PER_PIXEL).range(8 + bitOffset - 1, bitOffset);
		colIdx.range(bitOffset - 1, 0) = ap_uint<2>(yIndex);

		retData[yIndex] = colData[colIdx];
//		retData[yIndex] = colData[BITS_PER_PIXEL*idx + yIndex];
	}
	return retData;
}

void writePixToCol(col_pix_t *colData, ap_uint<8> idx, pix_t pixData)
{
#pragma HLS INLINE
	writeWiderBitsLoop: for(int8_t yIndex = 0; yIndex < BITS_PER_PIXEL; yIndex++)
	{
#pragma HLS UNROLL
		const int bitOffset = BITS_PER_PIXEL >> 1;
		ap_uint<8 + bitOffset> colIdx;
		// Concatenate and bit shift rather than multiple and accumulation (MAC) can save area.
		colIdx.range(8 + bitOffset - 1, bitOffset) = ap_uint<10>(idx * BITS_PER_PIXEL).range(8 + bitOffset - 1, bitOffset);
		colIdx.range(bitOffset - 1, 0) = ap_uint<2>(yIndex);

		(*colData)[colIdx] = pixData[yIndex];
	}
}

void resetSFASTPix(apUint10_t y, apUint10_t x, sliceIdx_t sliceIdx)
{
#pragma HLS INLINE
	glPLSFASTSliceScale2[sliceIdx][y][x/COMBINED_PIXELS] = 0;
}

void writeSFASTPix(apUint10_t x, apUint10_t y, sliceIdx_t sliceIdx)
{
#pragma HLS DEPENDENCE variable=glPLSFASTSliceScale2 inter false
#pragma HLS RESOURCE variable=glPLSFASTSliceScale2 core=RAM_T2P_BRAM
#pragma HLS ARRAY_PARTITION variable=glPLSFASTSliceScale2 cyclic factor=1 dim=3
#pragma HLS ARRAY_PARTITION variable=glPLSFASTSliceScale2 complete dim=1
    // write sfast slice
    apUint10_t xSFASTScale2 = x/4;
    apUint10_t ySFASTScale2 = y/4;
    ap_uint<8> xNewIdxSFASTScale2 = xSFASTScale2%COMBINED_PIXELS;

	col_pix_t tmpDataSFASTScale2;
	pix_t tmpTmpDataSFASTScale2;

	tmpDataSFASTScale2 = glPLSFASTSliceScale2[sliceIdx][ySFASTScale2][xSFASTScale2/COMBINED_PIXELS];
	tmpTmpDataSFASTScale2 = readPixFromCol(tmpDataSFASTScale2, xNewIdxSFASTScale2);
	ap_uint<1> cmpFlgSFASTScale2 = ap_uint<1>(tmpTmpDataSFASTScale2 < (ap_uint< BITS_PER_PIXEL >(0xff)));
	tmpTmpDataSFASTScale2 +=  cmpFlgSFASTScale2;
	writePixToCol(&tmpDataSFASTScale2, xNewIdxSFASTScale2, tmpTmpDataSFASTScale2);
	glPLSFASTSliceScale2[sliceIdx][ySFASTScale2][xSFASTScale2/COMBINED_PIXELS] = tmpDataSFASTScale2;
}

static uint16_t areaEventRegs[AREA_NUMBER][AREA_NUMBER];

/**
 * Function description:
 * The pre-processing module.
 * It accepts the raw event data stream as input and combines the seperate streams into one data stream for
 * transfer to the final output module convieniently.
 * It is also responsible for removing boarder events and rotating event slices.
 * Input:
 * xStreamIn, yStreamIn, polStreamIn, tsStreamIn: raw event stream in seperate channels
 * xStreamOut, yStreamOut, polStreamOut, tsStreamOut: event stream sent for further processing
 * idxStreamOut: curent event slice index stream
 * packetStreamOut: The packed event data stream
 */
void preProcessStream(hls::stream< ap_uint<16> > &xStreamIn, hls::stream< ap_uint<16> > &yStreamIn,
		hls::stream< ap_uint<1> > &polStreamIn,
		hls::stream< ap_uint<64> > &tsStreamIn,
		hls::stream<X_TYPE> &xStreamOut, hls::stream<Y_TYPE> &yStreamOut, hls::stream< ap_uint<1> > &polStreamOut,
		hls::stream<sliceIdx_t> &idxStreamOut,
		hls::stream< ap_uint<TS_TYPE_BIT_WIDTH> > &tsStreamOut, hls::stream< ap_uint<96> > &packetEventDataStream)
{
//#pragma HLS PIPELINE
#pragma HLS RESOURCE variable=areaEventRegs core=RAM_2P_LUTRAM
#pragma HLS ARRAY_PARTITION variable=areaEventRegs complete dim=2
	ap_uint<16> x;
	ap_uint<16> y;
	ap_uint<64> ts;
	ap_uint<1> pol;

	xStreamIn >> x;
	yStreamIn >> y;
	tsStreamIn >> ts;
	polStreamIn >> pol;

	// A register to store current slice index and init it as 0
	// Update it only when the input idxStreamIn is not empty;
	static sliceIdx_t sliceIdxReg = 0;
	static sliceIdx_t lastSiceIdx = 0, currentSliceIdx = 0;
	static uint32_t lastTsHW = 0, currentTsHW = 0;
	static ap_uint<1> areaCountExceeded = false;

	if(glConfig[3] == 1)         // Using external threshold
	{
		glSFASTAreaCntThr = glConfig.range(23, 8);
	}
	glSFASTAreaCntThrBak = glSFASTAreaCntThr;  // store it in the shadow register for status output

	ap_uint<1> rotateFlagTmp = 0;
	if ( areaCountExceeded || (ts - currentTsHW) >= MAX_SLICE_DURATION_US )
	{
		rotateFlagTmp = 1;
		sliceIdxReg--;

		lastSiceIdx = currentSliceIdx;
		currentSliceIdx = sliceIdxReg;

	    lastTsHW = currentTsHW;
	    currentTsHW = ts;

	    for(int r = 0; r < 1; r++)
		{
			std::cout << "Rotated successfully from HW!!!!" << std::endl;
			std::cout << "x is: " << x << "\t y is: " << y << "\t idx is: " << sliceIdxReg << std::endl;
			std::cout << "delataTsHW is: " << ((currentTsHW - lastTsHW) >> 9) << std::endl;
		}

		rotateSliceResetLoop:for(int areaX = 0; areaX < AREA_NUMBER; areaX += 1)
		{
#pragma HLS PIPELINE
#pragma HLS INLINE off
			for(int areaY = 0; areaY < AREA_NUMBER; areaY++)
			{
				areaEventRegs[areaX][areaY] = 0;
			}
		}
	}

	uint16_t c = areaEventRegs[x/AREA_SIZE][y/AREA_SIZE];
	c = c + 1;
	areaEventRegs[x/AREA_SIZE][y/AREA_SIZE] = c;
    areaCountExceeded = (c >= glSFASTAreaCntThr);

	ap_uint<96> tmpOutput;
	tmpOutput[32] = ap_uint<1>(pol);
	tmpOutput.range(31, 16) = y;
	tmpOutput.range(15, 0) = x;
	tmpOutput.range(95, 33) = ts.range(62, 0);
	packetEventDataStream << tmpOutput;

	const int max_scale = 2;
	// only check if not too close to border
	const int cs = 4;
	// Make this event an invalid event
	// 4 is the corner block range.
	// Remember x,y is inverted in the raw stream.
	if ((x >> max_scale) < cs || (x >> max_scale) >= (DVS_REAL_WIDTH >> max_scale) - cs ||
			(y >> max_scale) < cs || (y >> max_scale) >= (DVS_REAL_HEIGHT >> max_scale) - cs)
	{
		ts = 0;
	}

	xStreamOut << (X_TYPE)x;
	yStreamOut << (Y_TYPE)y;
	polStreamOut << pol;
	tsStreamOut << (ap_uint<TS_TYPE_BIT_WIDTH>)ts;
	idxStreamOut << sliceIdxReg;

	inEventsNum++;
	glStatus.inEventsNum = inEventsNum;
	glStatus.currentAreaCntThr = glSFASTAreaCntThr;
}

void initStageInterleaveStream(ap_uint<2> *stageOutStream)
{
#pragma HLS INLINE off
	ap_uint<2> stageIn = 0;
	ap_uint<1> isStageCorner = 0;
	if(glInitCounter%(GROUP_EVENTS_NUM*2) < GROUP_EVENTS_NUM)
	{
		stageIn = 0;
	}
    else
    {
    	stageIn = glStageInStream.read();
//    	stageIn = 1;
    }
//	glStage = stageIn;

	// This counter is used to synchronize this module and the feedback module.
	// Make them have the common adder source.
	glFeedbackCounter = glInitCounter;
    glInitCounter++;

	*stageOutStream = stageIn;
}


/**
 * Function description:
 * Read circle data from the event slice.
 * It is a general circle that supports read inner or outer circle based on the current stage.
 * Input:
 * xStream, yStream, polStream, tsStream: current event stream
 * idxStream: current event slice index stream
 * Output:
 * outputDataStream: inner/outer circle data
 * *sizeStreamOut1, *sizeStreamOut2: the circle data length, it will be used by 2 other PEs to 
 * determine if it is an inner circle 
 */
template<int READ_NPC>   //  Due to the memory has 2 ports at most for arbitrary reading, here this number could be only 1 or 2.
void rwSAEPerfectLoopStreamV2(hls::stream<X_TYPE> &xStream, hls::stream<Y_TYPE> &yStream,
		hls::stream< ap_uint<1> > &polStream, hls::stream<sliceIdx_t> &idxStream,
		hls::stream< ap_uint<TS_TYPE_BIT_WIDTH> > &tsStream,
		hls::stream< ap_uint<BITS_PER_PIXEL * OUTER_SIZE> > &outputDataStream,
		ap_uint<5> *sizeStreamOut1,
		ap_uint<5> *sizeStreamOut2)
{
#pragma HLS INLINE off

	X_TYPE x;
	Y_TYPE y;
	ap_uint<1> pol;
	ap_uint<TS_TYPE_BIT_WIDTH> ts;
	ap_uint<2> stage = 1;
	sliceIdx_t idx;

	ap_uint<BITS_PER_PIXEL * OUTER_SIZE> tmpData = 0;
	ap_uint<5> size = OUTER_SIZE;

	for(ap_int<8> i = -1 * READ_NPC; i < OUTER_SIZE; i = i + READ_NPC)
	{
#pragma HLS PIPELINE rewind

		if(i == -1 * READ_NPC)
		{
			x = xStream.read();
			y = yStream.read();
			pol = polStream.read();
			ts = tsStream.read();
			idx = idxStream.read();
			writeSFASTPix(x, y, idx);

			resetSFASTPix(ap_uint<10>((resetCnt/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCnt % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(idx + 3));
			resetCnt++;

			if(ts == 0)
			{
				size = 0;
			}
		}
		else
		{
            ap_uint<8 * READ_NPC> xInnerTest, xOuterTest, indexUnified;
            X_TYPE xInner[READ_NPC], xInnerNewIdx[READ_NPC];
            Y_TYPE yInner[READ_NPC];
        	rwSAEReadOffsetBitsLoop:
            for (ap_uint<8> j = 0; j < 8 * READ_NPC; j++)
            {
#pragma HLS UNROLL
            	ap_uint<8> tmpIndex;   // In  order to save the resource, we use bit operation to get the index of the inner/outer offset.
            	tmpIndex.range(7, 2 + READ_NPC) = ap_uint<8>(i * 8).range(7, 2 + READ_NPC);
            	tmpIndex.range(1 + READ_NPC, 0) = j.range(1 + READ_NPC, 0);
            	xInnerTest[j] = innerTest[tmpIndex];
            	xOuterTest[j] = outerTest[tmpIndex];
            }

            if(stage == 0)
            {
            	indexUnified = xInnerTest;
            }
            else if(stage == 1)
            {
            	indexUnified = xOuterTest;
            }

            readNPCLoop:
            for (ap_uint<8> k = 0; k < READ_NPC; k++)
            {
            	pix_t tmpTmpData, tmpTmpData0, tmpTmpData1;

                xInner[k] = x/4 + ap_int<4>(indexUnified(8 * k + 3, 8  * k));  // Change back from unsigned to signed.
                yInner[k] = y/4 + ap_int<4>(indexUnified(8 * k + 7, 8 * k + 4));          // Change back from unsigned to signed.
                xInnerNewIdx[k] = xInner[k]%COMBINED_PIXELS;

                tmpTmpData = readPixFromCol(glPLSFASTSliceScale2[sliceIdx_t(idx + 1)][yInner[k]][xInner[k]/COMBINED_PIXELS], xInnerNewIdx[k]);

    			// By doing this, we can avoid swapping the data order.
                tmpData = tmpData >> BITS_PER_PIXEL;
                tmpData.range(BITS_PER_PIXEL * OUTER_SIZE - 1, BITS_PER_PIXEL * OUTER_SIZE - BITS_PER_PIXEL) = ((stage == 0) && (i >= INNER_SIZE)) ?  pix_t(0) : tmpTmpData;
            }
		}
	}

    outputDataStream << tmpData;

	*sizeStreamOut1 = size;
	*sizeStreamOut2 = size;
}

/**
 * Function description: 
 * data array is stored as a wide data. 
 * This function is used to read a signle data from a wide data.
 * Input:
 * colData: The wide data to be read
 * idx: the position of the single data to be read
 * Output:
 * The desired single data
 */
template<int UNIT_DATA_BITS, int WIDE_DATA_BITS>
ap_uint< UNIT_DATA_BITS > readUnitDataFromWideData(ap_uint< WIDE_DATA_BITS > colData, uint8_t idx)
{
#pragma HLS INLINE
	ap_uint< UNIT_DATA_BITS > retData;
	// Use bit selection plus for-loop to read multi-bits from a wider bit width value
	// rather than use range selection directly. The reason is that the latter will use
	// a lot of shift-register which will increase a lot of LUTs consumed.
	ap_uint<8> colIndexBase = UNIT_DATA_BITS*idx;
	readWiderBitsLoop: for(int8_t yIndex = 0; yIndex < UNIT_DATA_BITS; yIndex++)
	{
#pragma HLS UNROLL
		retData[yIndex] = colData[colIndexBase + yIndex];
	}
	return retData;
}

template<int UNIT_DATA_BITS, int WIDE_DATA_BITS>
void WriteUnitDataToWideData(ap_uint< WIDE_DATA_BITS > *colData, uint8_t idx, ap_uint< UNIT_DATA_BITS > pixData)
{
#pragma HLS INLINE
	ap_uint<8> colIndexBase = UNIT_DATA_BITS*idx;
	writeWiderBitsLoop: for(int8_t yIndex = 0; yIndex < UNIT_DATA_BITS; yIndex++)
	{
#pragma HLS UNROLL
		(*colData)[colIndexBase + yIndex] = pixData[yIndex];
	}
}

/**
 * Function Description: convert the current data array to sorted idx array.
 * Compared with V2, this version use a lot of shift logic tricks and it saves a lot of LUTs (most of them are MUXs).
 * Input:
 * tsStream: input circle data. EFAST use timestamp surface and thus this name is kept to SFAST.
 * Output:
 * newIdx: the sorted index array
 * sortedData: sorted output data
 */
template<int NPC>
void sortedIdxStreamV3(hls::stream< ap_uint<BITS_PER_PIXEL * OUTER_SIZE> > &tsStream, ap_uint<5> size, ap_uint<5*OUTER_SIZE> *newIdx, ap_uint<BITS_PER_PIXEL * OUTER_SIZE> *sortedData)
{
assert(size <= OUTER_SIZE);
#pragma HLS INLINE off
	ap_uint<BITS_PER_PIXEL * OUTER_SIZE> tmpData = tsStream.read();
	ap_uint<BITS_PER_PIXEL> inData[OUTER_SIZE];

	ap_uint<5*OUTER_SIZE> tmpDataRet = 0;
	ap_uint<BITS_PER_PIXEL * OUTER_SIZE> dataToBeComp = tmpData;

	ap_uint<BITS_PER_PIXEL * OUTER_SIZE> sortedDataRet;

	// This array is used to record same elements. All the initial value is 0.
	ap_uint<5*OUTER_SIZE> accessCntIdx = 0;

	for(uint8_t i = 0; i < OUTER_SIZE/NPC; i = i + 1)
	{
// #pragma HLS LOOP_TRIPCOUNT min=0 max=20/NPC
#pragma HLS PIPELINE rewind
		if (0 == size)
		{
			break;
		}
		for(uint8_t j = 0; j < NPC; j++)
		{
			ap_uint<5> tmpIdx = 0;
			ap_uint<BITS_PER_PIXEL * OUTER_SIZE> tsWideData = tmpData;

			// We always shift the data to 5 MSBs and then shift right.
			// By doing this, we can avoid swapping the data order.
			tmpDataRet = tmpDataRet >> 5;
//			idxSorted(dataToBeComp.range(TS_TYPE_BIT_WIDTH - 1, 0), inData, size, &tmpIdx);

			sortedRegion:
			{
				for(uint8_t i = 0; i < OUTER_SIZE; i++ )
				{
					ap_uint<1> cond1 = (tsWideData.range(BITS_PER_PIXEL - 1, 0) < dataToBeComp.range(BITS_PER_PIXEL - 1, 0));  // Notice the difference between < and <= here.
					tmpIdx += cond1;
					tsWideData = tsWideData >> BITS_PER_PIXEL;
				}
			}
			// Read current access times
			ap_uint<5> currentAccessTime = readUnitDataFromWideData<5, 5*OUTER_SIZE>(accessCntIdx, tmpIdx);
			// The real order of a value in the list consists of how many elements is smaller than it and
			// the repeat order.
			ap_uint<5> newTmpIdxWithoutRepeat = tmpIdx + currentAccessTime;
			currentAccessTime += 1;
			// Write it back
			WriteUnitDataToWideData<5, 5*OUTER_SIZE>(&accessCntIdx, tmpIdx, currentAccessTime);

			// Store the data in a sorted list considering repeat elements.
			WriteUnitDataToWideData<BITS_PER_PIXEL, BITS_PER_PIXEL * OUTER_SIZE>(&sortedDataRet, newTmpIdxWithoutRepeat, dataToBeComp.range(BITS_PER_PIXEL - 1, 0));

			tmpDataRet.range(5*OUTER_SIZE - 1, 5*OUTER_SIZE - 5) = tmpIdx;
			dataToBeComp = dataToBeComp >> BITS_PER_PIXEL;
		}
	}
	*newIdx = tmpDataRet;
	*sortedData = sortedDataRet;
}

template<int DATA_SIZE, int NUM>
void muxWithPrior(ap_uint< NUM*DATA_SIZE > din, ap_uint< NUM > sel, ap_uint< DATA_SIZE > *dout)
{
#pragma HLS INLINE off
#pragma HLS PIPELINE

	ap_uint< DATA_SIZE > retData = 0;

//	ap_uint< NUM > sel_prio;
//
//	// Convert sel to sel_prio with priority. Here less significant bits have higher priority
//	// For example, if sel = b'1010, then sel_prio = 0010
//	for(int i = NUM - 1; i >= 0; i--)
//	{
//		ap_uint<1> temp = 0;
//		for(int j = NUM - 1; j > i; j--)
//			{
//				temp = temp | sel[j];
//			}
//		sel_prio[i] = sel[i] && !temp;
//	}

	// Convert wide bits to array for convenience
	ap_uint< DATA_SIZE > dinArr[NUM];
	for(int i = 0; i < NUM; i++)
	{
		dinArr[i] = din.range(DATA_SIZE - 1, 0);
		din = din >> DATA_SIZE;
	}

	for(int i = 0; i < NUM; i++)
	{
		if(sel[i] == 1)
		{
			retData = dinArr[i];
		}
	}

	*dout = retData;
}

void testMuxWithPrior(ap_uint< 12*4 > din,  ap_uint<12> sel, ap_uint<4> *dout)
{
#pragma HLS PIPELINE
	muxWithPrior<4, 12>(din, sel, dout);
}

static ap_uint<8> glFinalMaxOuterStreakSize = 0;
static ap_uint<8> glFinalMaxOuterStreakStartPosition = 0;

/**
 * Function description:
 * Check if the sorted index array contains a corner
 * Input:
 * idxData: sorted index data array
 * sortedData: sorted data
 * size: the circle size (to determine weather it is inner or outer)
 * Output:
 * isCorner: return if this circle contains a corner
 */
template<int NPC>
void checkIdxGeneralV3(ap_uint<5*OUTER_SIZE> idxData, ap_uint<BITS_PER_PIXEL * OUTER_SIZE> sortedData, ap_uint<5> size, ap_uint<1> *isCorner)
{
#pragma HLS INLINE off

	ap_uint<1> isCornerTemp = 0, isCornerRet = 0;
	ap_uint<5*INNER_SIZE> tmpIdxInnerData;
	ap_uint<5*OUTER_SIZE> tmpIdxOuterData;
	ap_uint<5> idxInnerData[INNER_SIZE];
	ap_uint<5> idxOuterData[OUTER_SIZE];
	ap_uint<BITS_PER_PIXEL> rawSliceDataArray[OUTER_SIZE];

	// This list is used to record the outer corner result for all different size streak.
	ap_uint<1> streakOutCorner[5] = {0, 0, 0, 0, 0};
	ap_uint<8> streakStartPosOutCorner[5] = {0, 0, 0, 0, 0};
	ap_uint<8> streakSizeOutCorner[5] = {0, 0, 0, 0, 0};
	ap_uint<8> streakOutCornerCnt = 0;

	ap_uint<8> finalMaxOuterStreakSize = 0;
	ap_uint<8> finalMaxOuterStreakStartPosition = 0;


	for(uint8_t i = 0; i < OUTER_SIZE; i = i + NPC)
	{
#pragma HLS PIPELINE rewind

		ap_uint<OUTER_STREAK_SIZE_DATA_BITS> currentMaxOuterStreakSize = 0;
		ap_uint<OUTER_STREAK_POSITION_DATA_BITS> currentMaxOuterStreakStartPosition = 0;

		InitRegion:
		{
			if (i == 0)
			{
				tmpIdxInnerData = idxData;
				tmpIdxOuterData = idxData;
				if(glConfig[2] == 1)         // Using external threshold
				{
					glSFASTThr = glConfig.range(15, 8);
				}
//				else                        // Using the onboard hardcoded threshold
//				{
//					glSFASTThr = SFAST_THRESHOLD;
//				}
				glSFASTThrBak = glSFASTThr;  // store it in the shadow register for status output
			}
		}

		if(size == INNER_SIZE)
		{
			ap_uint<1> innerCond[INNER_STREAK_SIZE_END - INNER_STREAK_SIZE_START + 1][INNER_STREAK_SIZE_END + NPC - 1] = {0};
#pragma HLS ARRAY_PARTITION variable=innerCond complete dim=0

			for(int innerStreakSize = INNER_STREAK_SIZE_START; innerStreakSize <= INNER_STREAK_SIZE_END; innerStreakSize++)
			{
				for (uint8_t m = 0; m < innerStreakSize + NPC - 1; m++)
				{
					// The condition should be the idxData > (INNER_SIZE -3).
					// However, in order to make the idxSorted could be shared by inner circle and outer circle together.
					// We use a method that compare "size" values to all the input data which has OUTER_SIZE values in total.
					// On the other hand, if the valid input data number is less than OUTER_SIZE, the other input data will be filled with 0.
					// Thus, all the idxData for inner circle value will be added 4 (OUTER_SIZE - INNER_SIZE = 20 - 16 =4)
					// When we check the innner idx data, we need to remove it.
					int mIdx = m;
					if(m >= INNER_SIZE)  mIdx = m - INNER_SIZE;
					innerCond[innerStreakSize - INNER_STREAK_SIZE_START][m] = (tmpIdxInnerData.range(5 * mIdx + 4, 5 * mIdx) >= INNER_SIZE - innerStreakSize + OUTER_SIZE - INNER_SIZE);
				}
			}

			ap_uint<1> tempCond[INNER_STREAK_SIZE_END - INNER_STREAK_SIZE_START + 1][NPC];
			for (uint8_t streakSizeIdx = 0; streakSizeIdx < INNER_STREAK_SIZE_END - INNER_STREAK_SIZE_START + 1; streakSizeIdx++)
			{
				for (uint8_t position = 0; position < NPC; position++)
				{
					tempCond[streakSizeIdx][position] = 1;
					for (uint8_t j = 0; j < INNER_STREAK_SIZE_START + streakSizeIdx; j++)
					{
						tempCond[streakSizeIdx][position] &= innerCond[streakSizeIdx][j + position];
					}
					// Check if the minimum of streak value is bigger than the maximum of non-streak value plus a threshold value
					uint8_t streakSize = INNER_STREAK_SIZE_START + streakSizeIdx;
					ap_uint<BITS_PER_PIXEL> minStreakValue = readUnitDataFromWideData<BITS_PER_PIXEL, BITS_PER_PIXEL * OUTER_SIZE>(sortedData, OUTER_SIZE - streakSize);
					ap_uint<BITS_PER_PIXEL> maxNonStreakValue = readUnitDataFromWideData<BITS_PER_PIXEL, BITS_PER_PIXEL * OUTER_SIZE>(sortedData, OUTER_SIZE - streakSize - 1);

					ap_uint<1> isCornerTemp = tempCond[streakSizeIdx][position] & (minStreakValue > maxNonStreakValue + glSFASTThr);
					if (isCornerTemp == 1)
					{
						isCornerRet = 1;
	//					std::cout << "HW: Position is :" << (int)(i + k) << " and streak size is: " << (int)(n + 3) << std::endl;
	//					return;
					}
				}
			}

			// Cycle shift the data list NPC times since we have processed NPC data.
			// In this loop, every loop shift the data one time.
			for(int shiftCnt = 0; shiftCnt < NPC; shiftCnt++)
			{
				tmpIdxInnerData = (tmpIdxInnerData >> 5) | (tmpIdxInnerData << (5*INNER_SIZE - 5));
			}

		}
		else
		if(size == OUTER_SIZE)
		{
			ap_uint<1> outerCond[OUTER_STREAK_SIZE_END - OUTER_STREAK_SIZE_START + 1][OUTER_STREAK_SIZE_END + NPC - 1] = {0};
#pragma HLS ARRAY_PARTITION variable=outerCond complete dim=0

			for(int outerStreakSize = OUTER_STREAK_SIZE_START; outerStreakSize <= OUTER_STREAK_SIZE_END; outerStreakSize++)
			{
				for (uint8_t m = 0; m < outerStreakSize + NPC - 1; m++)
				{
					int mIdx = m;
					if(m >= OUTER_SIZE)  mIdx = m - OUTER_SIZE;
					outerCond[outerStreakSize - OUTER_STREAK_SIZE_START][m] = (tmpIdxOuterData.range(5 * mIdx + 4, 5 * mIdx) >= OUTER_SIZE - outerStreakSize);
				}
			}

			ap_uint< NPC > tempCond[OUTER_STREAK_SIZE_END - OUTER_STREAK_SIZE_START + 1];

			for (uint8_t streakSizeIdx = 0; streakSizeIdx < OUTER_STREAK_SIZE_END - OUTER_STREAK_SIZE_START + 1; streakSizeIdx++)
			{
				for (uint8_t position = 0; position < NPC; position++)
				{
					tempCond[streakSizeIdx][position] = 1;
					for (uint8_t j = 0; j < OUTER_STREAK_SIZE_START + streakSizeIdx; j++)
					{
						tempCond[streakSizeIdx][position] = tempCond[streakSizeIdx][position] & outerCond[streakSizeIdx][j + position];
					}

					// Check if the minimum of streak value is bigger than the maximum of non-streak value plus a threshold value
					uint8_t streakSize = OUTER_STREAK_SIZE_START + streakSizeIdx;
					ap_uint<BITS_PER_PIXEL> minStreakValue = readUnitDataFromWideData<BITS_PER_PIXEL, BITS_PER_PIXEL * OUTER_SIZE>(sortedData, OUTER_SIZE - streakSize);
					ap_uint<BITS_PER_PIXEL> maxNonStreakValue = readUnitDataFromWideData<BITS_PER_PIXEL, BITS_PER_PIXEL * OUTER_SIZE>(sortedData, OUTER_SIZE - streakSize - 1);

					tempCond[streakSizeIdx][position] = tempCond[streakSizeIdx][position] & (minStreakValue > maxNonStreakValue + glSFASTThr);
					ap_uint<1> isCornerTemp = tempCond[streakSizeIdx][position];
					if(isCornerTemp == 1)
					{
						currentMaxOuterStreakSize = streakSize;
						currentMaxOuterStreakStartPosition = i + position;
						isCornerRet = 1;
//						streakOutCornerCnt++;
//						std::cout << "HW: Streak corner "<< streakOutCornerCnt << ". Position is :" << (int)(i + position) << " and streak size is: " << (int)(streakSizeIdx + 4) << std::endl;
					}
				}
			}

			// Compare the iteration max streak size to the current max streak size.
			if(currentMaxOuterStreakSize > finalMaxOuterStreakSize)
			{
				finalMaxOuterStreakSize = currentMaxOuterStreakSize;
				finalMaxOuterStreakStartPosition = currentMaxOuterStreakStartPosition;
			}

			// Cycle shift the data list NPC times since we have processed NPC data.
			// In this loop, every loop shift the data one time.
			for(int shiftCnt = 0; shiftCnt < NPC; shiftCnt++)
			{
				tmpIdxOuterData = (tmpIdxOuterData >> 5) | (tmpIdxOuterData << (5*OUTER_SIZE - 5));
			}
		}
		else
		{
			break;
		}
	}

	*isCorner = isCornerRet;
	glFinalMaxOuterStreakSize = finalMaxOuterStreakSize;
	glFinalMaxOuterStreakStartPosition = finalMaxOuterStreakStartPosition;
}

// This function checks if the maximum streak size corner satisfy some specific conditions.
// Filter some invalid corners.
void finalCornerChecking(ap_uint<1> isCornerIn, ap_uint<1> *isCornerOut)
{
#pragma HLS PIPELINE
	ap_uint<1> isCornerRet = 0;

	if(isCornerIn == 0)
	{
		isCornerRet = 0;
	}
	else
	{
		uint8_t outerStartIdx = glFinalMaxOuterStreakStartPosition;
		uint8_t outerEndIdx = (glFinalMaxOuterStreakStartPosition + glFinalMaxOuterStreakSize - 1);
		if(outerEndIdx >= OUTER_SIZE)
		{
			outerEndIdx = outerEndIdx - OUTER_SIZE;
		}

		ap_uint<8> outerStart = readUnitDataFromWideData<8, 96>(outerTest, outerStartIdx);
		ap_uint<8> outerEnd = readUnitDataFromWideData<8, 96>(outerTest, outerEndIdx);

		ap_int<4> outerStartX = outerStart.range(3,0);
	    ap_int<4> outerEndX = outerEnd.range(3,0);
	    ap_int<4> outerStartY = outerStart.range(7,4);
	    ap_int<4> outerEndY = outerEnd.range(7,4);

		ap_uint<1> condDiff = (glFinalMaxOuterStreakSize%2 == 1) ? 0 : 1;

		if( glFinalMaxOuterStreakSize == OUTER_SIZE - 1 || abs(outerStartX - outerEndX) <= condDiff  || abs(outerStartY - outerEndY) <= condDiff )
		{
			isCornerRet = 0;
		}
		else
		{
			isCornerRet = 1;
		}
	}

	*isCornerOut = isCornerRet;
}

/**
 * Function description:
 * If a corner is both an inner corner and outer corner, then it is the final corner.
 */
void feedbackInterleaveStream(ap_uint<1> isStageCorner, hls::stream< ap_uint<1> > &isFinalCornerStream)
{
#pragma HLS INLINE off
#pragma HLS PIPELINE
	ap_uint<2> outputStage;

	static ap_uint<2> currentStage[GROUP_EVENTS_NUM];
#pragma HLS ARRAY_PARTITION variable=currentStage complete dim=1

	ap_uint<2> tmpStage = currentStage[glFeedbackCounter%GROUP_EVENTS_NUM];

	if(tmpStage == 0)
	{
		if(isStageCorner)
		{
			tmpStage =  1;
		}
		else
		{
			tmpStage =  2;
		}
	}
	else
	{
		tmpStage =  0;
	}


	if(glFeedbackCounter%(GROUP_EVENTS_NUM * 2) < GROUP_EVENTS_NUM)
	{
		isFinalCornerStream << isStageCorner;
	}
	else
	{
		isFinalCornerStream << isStageCorner;
	}
}

static uint64_t outEventsNum, cornerEventsNum;

/**
 * Function description:
 * Split the packed event data stream to several seperate data stram for following IP to process.
 * It also sends the custom data stream (here is simply the corner flag stream) along with the event stream.
 * Input:
 * packetEventDataStream: packed event data stream
 * stageCornerStream: the inner/outer circle corner result stream
 * Output:
 * xStreamOut, yStreamoUT, polStreamOut, tsStreamOut: output raw event data stream
 * custDataStreamOut: custom data (here is the corner flag) stream
 */
void combineOutputStream(hls::stream< ap_uint<96> > &packetEventDataStream, hls::stream< ap_uint<1> > &stageCornerStream,
						hls::stream< ap_uint<16> > &xStreamOut, hls::stream< ap_uint<16> > &yStreamOut,
						hls::stream< ap_uint<1> > &polStreamOut,
						hls::stream< ap_uint<64> > &tsStreamOut, hls::stream< ap_uint<10> > &custDataStreamOut)
{
#pragma HLS PIPELINE
	ap_uint<96> tmpOutput;
	packetEventDataStream >> tmpOutput;
	ap_uint<16> x;
	ap_uint<16> y;
	ap_uint<64> ts;
	ap_uint<1> pol;

	y = tmpOutput.range(31, 16);
	x = tmpOutput.range(15, 0);
	pol = tmpOutput[32];
	ts.range(62, 0) = tmpOutput.range(95, 33);

//	ap_uint<1> isCornerStage0 = isFinalCornerStream.read();
//	ap_uint<1> isCornerStage1 = isFinalCornerStream.read();
//	ap_uint<1> cornerRet = isCornerStage0 & isCornerStage1;

	ap_uint<1> cornerRet = stageCornerStream.read();

	ap_uint<8> pixelData;
	pixelData = (cornerRet == 1) ? 0xaa : 0;

	ap_uint<10> retData;
//	retData = (glConfig[0] == 1) ? ap_uint<10>(pixelData) : ap_uint<10>(cornerRet);
	retData = (glConfig[0] == 1) ?  ap_uint<10>(1) : ap_uint<10>(cornerRet); // glConfig[0] = 1 means set all events as corners, fake corner mode.

	if(glConfig[1])                   // This is filter mode.
	{
		if(cornerRet == 1)
		{
			xStreamOut << x;
			yStreamOut << y;
			polStreamOut << pol;
			tsStreamOut << ts;
			custDataStreamOut << retData;

		}
	}
	else                           // This is forward mode.
	{
		xStreamOut << x;
		yStreamOut << y;
		polStreamOut << pol;
		tsStreamOut << ts;
		custDataStreamOut << retData;
	}

	outEventsNum++;
	if(cornerRet == 1)
	{
		cornerEventsNum++;
	}
	outEventsNum++;
	glStatus.cornerEventsNum = cornerEventsNum;
	glStatus.outEventsNum = outEventsNum;
	glStatus.currentThreshold = glSFASTThrBak;
}


/**
 * Function description: 
 * This is the top module. It accepts the raw event stream as input.
 * It returns the event stream along with its corner flag.
 * The data exchange of the module is desigend in AXIS interface.
 * Control and status is designed as AXI4Liet interface.
 * Input:
 * xStreamIn, yStreamIn, tsStreamIn, polStreamIn: the raw event stream but in seperated stream channel.
 * Output:
 * xStreamOut, yStreamOut, tsStreamOut, polStreamOut: the same raw event stream as input
 * isFinalCornerStream: the corner flag stream
 */
void SFAST_process_data(hls::stream< ap_uint<16> > &xStreamIn, hls::stream< ap_uint<16> > &yStreamIn,
		hls::stream< ap_uint<64> > &tsStreamIn, hls::stream< ap_uint<1> > &polStreamIn,
		hls::stream< ap_uint<16> > &xStreamOut, hls::stream< ap_uint<16> > &yStreamOut, hls::stream< ap_uint<64> > &tsStreamOut, hls::stream< ap_uint<1> > &polStreamOut,
		hls::stream< ap_uint<10> > &isFinalCornerStream,
		ap_uint<32> config, status_t *status)
{
#pragma HLS STREAM variable=glStageInStream depth=10 dim=1
#pragma HLS INTERFACE axis register both port=isFinalCornerStream
#pragma HLS INTERFACE s_axilite port=status bundle=config
#pragma HLS INTERFACE s_axilite port=config bundle=config
#pragma HLS INTERFACE axis register both port=tsStreamOut
#pragma HLS INTERFACE axis register both port=polStreamOut
#pragma HLS INTERFACE axis register both port=yStreamOut
#pragma HLS INTERFACE axis register both port=xStreamOut

#pragma HLS INTERFACE axis register both port=tsStreamIn
#pragma HLS INTERFACE axis register both port=yStreamIn
#pragma HLS INTERFACE axis register both port=xStreamIn
#pragma HLS INTERFACE axis register both port=polStreamIn
//#pragma HLS INTERFACE axis register both port=idxStreamIn
#pragma HLS DATAFLOW

	ap_uint<TS_TYPE_BIT_WIDTH> outer[OUTER_SIZE];

	hls::stream< ap_uint<BITS_PER_PIXEL * OUTER_SIZE> > inStream("dataStream");
#pragma HLS STREAM variable=inStream depth=10 dim=1
#pragma HLS RESOURCE variable=inStream core=FIFO_SRL

	ap_uint<5> size;

	hls::stream< ap_uint<5> > sizeStream1("sizeStream1");
#pragma HLS STREAM variable=sizeStream1 depth=10 dim=1
#pragma HLS RESOURCE variable=sizeStream1 core=FIFO_SRL

	hls::stream< ap_uint<5> > sizeStream2("sizeStream2");
#pragma HLS STREAM variable=sizeStream2 depth=10 dim=1
#pragma HLS RESOURCE variable=sizeStream2 core=FIFO_SRL

	hls::stream< ap_uint<5> > sizeStream3("sizeStream3");
#pragma HLS STREAM variable=sizeStream3 depth=10 dim=1
#pragma HLS RESOURCE variable=sizeStream3 core=FIFO_SRL

	ap_uint<5> size1, size2, size3;

    hls::stream<X_TYPE>  xStream("xStream");
#pragma HLS RESOURCE variable=xStream core=FIFO_SRL
    hls::stream<Y_TYPE>  yStream("yStream");
#pragma HLS RESOURCE variable=yStream core=FIFO_SRL
    hls::stream< ap_uint<1> >  polStream("polStream");
#pragma HLS RESOURCE variable=polStream core=FIFO_SRL
    hls::stream< ap_uint<TS_TYPE_BIT_WIDTH> > tsStream("tsStream");
#pragma HLS RESOURCE variable=tsStream core=FIFO_SRL
    hls::stream< sliceIdx_t > idxStream("idxStream");
#pragma HLS RESOURCE variable=idxStream core=FIFO_SRL

    hls::stream< ap_uint<96> > pktEventDataStream("pktEventDataStream");
#pragma HLS STREAM variable=pktEventDataStream depth=10 dim=1
#pragma HLS RESOURCE variable=pktEventDataStream core=FIFO_SRL

	hls::stream< ap_uint<2> >  stageOutStream("stageOutStream");
#pragma HLS STREAM variable=stageOutStream depth=10 dim=1
#pragma HLS RESOURCE variable=stageOutStream core=FIFO_SRL

	hls::stream< ap_uint<1> > stageCornerStream("stageCornerStream");

	ap_uint<5*OUTER_SIZE> idxDataWide;
	ap_uint<BITS_PER_PIXEL * OUTER_SIZE> sortedData;
    ap_uint<5> idxData[OUTER_SIZE];
    ap_uint<1> isCorner;
    ap_uint<1> isStageCorner;

    ap_uint<2> stageOut;

    glConfig = config;

    GetData: preProcessStream(xStreamIn, yStreamIn, polStreamIn, tsStreamIn, xStream, yStream, polStream, idxStream, tsStream, pktEventDataStream);
    Processing:
	{
        // use 2 copies
		rwSAEPerfectLoopStreamV2<2>(xStream, yStream, polStream, idxStream, tsStream, inStream, &size1, &size2);
        // use 4 copies
		sortedIdxStreamV3<4>(inStream, size1, &idxDataWide, &sortedData);
        // use 4 copies
		checkIdxGeneralV3<4>(idxDataWide, sortedData, size2, &isStageCorner);   // If resource is not enough, decrease this number to increase II a little.
		finalCornerChecking(isStageCorner, &isCorner);
		feedbackInterleaveStream(isCorner, stageCornerStream);
	}
    Output: combineOutputStream(pktEventDataStream, stageCornerStream, xStreamOut, yStreamOut, polStreamOut, tsStreamOut, isFinalCornerStream);
	*status = glStatus;
}
