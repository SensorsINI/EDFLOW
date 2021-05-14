#include <iostream>
#include "ap_int.h"
#include "abmofAccel.h"
//#include "hls_math.h"
#include "utils/x_hls_utils.h"

static col_pix_t glPLSlices[SLICES_NUMBER][SLICE_WIDTH][SLICE_HEIGHT/COMBINED_PIXELS];
static col_pix_t glPLSlicesScale1[SLICES_NUMBER][SLICE_WIDTH/2][SLICE_HEIGHT/COMBINED_PIXELS/2];
static col_pix_t glPLSlicesScale2[SLICES_NUMBER][SLICE_WIDTH/4][SLICE_HEIGHT/COMBINED_PIXELS/4];
static sliceIdx_t glPLActiveSliceIdx = 0, glPLTminus1SliceIdx, glPLTminus2SliceIdx;
sliceIdx_t oldIdx = glPLActiveSliceIdx;
sliceIdx_t oldIdxScale1 = glPLActiveSliceIdx;
sliceIdx_t oldIdxScale2 = glPLActiveSliceIdx;

// This flag is only for ABMOF processing
apUint1_t glRotateFlg = 0;
// This flag is only for forward bypass directly.
apUint1_t glRotateFlgBypass = 0;

static uint16_t eventIterSize = 100;

static hls::stream<uint16_t> glThrStream("glThresholdStream");

static ap_uint<13> resetCnt, resetCntScale0, resetCntScale1, resetCntScale2;

static ap_uint<1> areaCountExceeded = false;

static ap_uint<32> glConfig;
static status_t glStatus;
uint16_t glSFASTAreaCntThr = INIT_AREA_THERSHOLD, glSFASTAreaCntThrBak = glSFASTAreaCntThr; // Init value
uint16_t glAverageTargetValue = AVE_TARGET_MATCH_DISTANCE_INIT_VALUE, glAverageTargetValueBak = glAverageTargetValue;

#define INPUT_COLS 4

//void sadSum(ap_int<BITS_PER_PIXEL+1> sum[BLOCK_SIZE], int16_t *sadRet)
//{
//#pragma HLS INLINE off
//	ap_int<16> tmp = 0;
//	calOFLoop2:for(ap_uint<4> i = 0; i < BLOCK_SIZE; i++)
//	{
//#pragma HLS UNROLL factor=1
//		if(sum[i] < 0) sum[i] = -sum[i];
////		sum[i] = sum[i] < 0 ? ap_int<BITS_PER_PIXEL+1>(-sum[i]) : sum[i];
//		tmp = tmp + sum[i];
//	}
//
//	*sadRet = tmp.to_short();
//}

void sadSumScale0(ap_int<BITS_PER_PIXEL+1> sum[BLOCK_SIZE_SCALE_0], int16_t *sadRet)
{
#pragma HLS INLINE off
	ap_int<16> tmp = 0;
	calOFLoop2:for(ap_uint<8> i = 0; i < BLOCK_SIZE_SCALE_0; i++)
	{
#pragma HLS UNROLL factor=1
		if(sum[i] < 0) sum[i] = -sum[i];
//		sum[i] = sum[i] < 0 ? ap_int<BITS_PER_PIXEL+1>(-sum[i]) : sum[i];
		tmp = tmp + sum[i];
	}

	*sadRet = tmp.to_short();
}

void sadSumScale1(ap_int<BITS_PER_PIXEL+1> sum[BLOCK_SIZE_SCALE_1], int16_t *sadRet)
{
#pragma HLS INLINE off
	ap_int<16> tmp = 0;
	calOFLoop2:for(ap_uint<8> i = 0; i < BLOCK_SIZE_SCALE_1; i++)
	{
#pragma HLS UNROLL factor=1
		if(sum[i] < 0) sum[i] = -sum[i];
//		sum[i] = sum[i] < 0 ? ap_int<BITS_PER_PIXEL+1>(-sum[i]) : sum[i];
		tmp = tmp + sum[i];
	}

	*sadRet = tmp.to_short();
}

void sadSumScale2(ap_int<BITS_PER_PIXEL+1> sum[BLOCK_SIZE_SCALE_2], int16_t *sadRet)
{
#pragma HLS INLINE off
	ap_int<16> tmp = 0;
	calOFLoop2:for(ap_uint<8> i = 0; i < BLOCK_SIZE_SCALE_2; i++)
	{
#pragma HLS UNROLL factor=1
		if(sum[i] < 0) sum[i] = -sum[i];
//		sum[i] = sum[i] < 0 ? ap_int<BITS_PER_PIXEL+1>(-sum[i]) : sum[i];
		tmp = tmp + sum[i];
	}

	*sadRet = tmp.to_short();
}


//void sad(pix_t refBlock[BLOCK_SIZE], pix_t targetBlocks[BLOCK_SIZE], int16_t *sadRet)
//{
//#pragma HLS PIPELINE
//#pragma HLS INLINE off
//	int16_t retVal = 0;
//	ap_int<pix_t::width+1> sum[BLOCK_SIZE];
////	*sadRet = 0;
//
//	DFRegion:
//	{
////		calOFLoop1:for(int16_t m = 0; m < BLOCK_SIZE; m++)
////		{
////			ap_int<5> tmpSum = refBlock[m] - targetBlocks[m];
////			sum[m] = tmpSum;
////		}
//
//		calOFDSPLoop: for(uint8_t m = 0; m < 5; m++)
//		{
//			ap_int<5> tmpSum = refBlock[m] - targetBlocks[m];
//#pragma HLS RESOURCE variable=tmpSum core=AddSub_DSP
//			sum[m] = tmpSum;
//		}
//
//		calOFNoDSPLoop: for(uint8_t m = 5; m < BLOCK_SIZE; m++)
//		{
//			ap_int<5> tmpSum = refBlock[m] - targetBlocks[m];
//			sum[m] = tmpSum;
//		}
//
//		sadSum(sum, sadRet);
////		std::cout<<"sadRet is " << *sadRet << std::endl;
//	}
//
//}

void sadScale0(pix_t refBlock[BLOCK_SIZE_SCALE_0], pix_t targetBlocks[BLOCK_SIZE_SCALE_0], int16_t *sadRet)
{
#pragma HLS PIPELINE
#pragma HLS INLINE off
	int16_t retVal = 0;
	ap_int<pix_t::width+1> sum[BLOCK_SIZE_SCALE_0];
//	*sadRet = 0;

	DFRegion:
	{
//		calOFLoop1:for(int16_t m = 0; m < BLOCK_SIZE; m++)
//		{
//			ap_int<5> tmpSum = refBlock[m] - targetBlocks[m];
//			sum[m] = tmpSum;
//		}

		calOFDSPLoop: for(uint8_t m = 0; m < BLOCK_SIZE_SCALE_0; m++)
		{
			ap_int<5> tmpSum = refBlock[m] - targetBlocks[m];
#pragma HLS RESOURCE variable=tmpSum core=AddSub_DSP
			sum[m] = tmpSum;
		}

		calOFNoDSPLoop: for(uint8_t m = BLOCK_SIZE_SCALE_0; m < BLOCK_SIZE_SCALE_0; m++)
		{
			ap_int<5> tmpSum = refBlock[m] - targetBlocks[m];
			sum[m] = tmpSum;
		}

		sadSumScale0(sum, sadRet);
//		std::cout<<"sadRet is " << *sadRet << std::endl;
	}

}

void sadScale1(pix_t refBlock[BLOCK_SIZE_SCALE_1], pix_t targetBlocks[BLOCK_SIZE_SCALE_1], int16_t *sadRet)
{
#pragma HLS PIPELINE
#pragma HLS INLINE off
	int16_t retVal = 0;
	ap_int<pix_t::width+1> sum[BLOCK_SIZE_SCALE_1];
//	*sadRet = 0;

	DFRegion:
	{
//		calOFLoop1:for(int16_t m = 0; m < BLOCK_SIZE; m++)
//		{
//			ap_int<5> tmpSum = refBlock[m] - targetBlocks[m];
//			sum[m] = tmpSum;
//		}

		calOFDSPLoop: for(uint8_t m = 0; m < BLOCK_SIZE_SCALE_1; m++)
		{
			ap_int<5> tmpSum = refBlock[m] - targetBlocks[m];
#pragma HLS RESOURCE variable=tmpSum core=AddSub_DSP
			sum[m] = tmpSum;
		}

		calOFNoDSPLoop: for(uint8_t m = BLOCK_SIZE_SCALE_1; m < BLOCK_SIZE_SCALE_1; m++)
		{
			ap_int<5> tmpSum = refBlock[m] - targetBlocks[m];
			sum[m] = tmpSum;
		}

		sadSumScale1(sum, sadRet);
//		std::cout<<"sadRet is " << *sadRet << std::endl;
	}

}

void sadScale2(pix_t refBlock[BLOCK_SIZE_SCALE_2], pix_t targetBlocks[BLOCK_SIZE_SCALE_2], int16_t *sadRet)
{
#pragma HLS PIPELINE
#pragma HLS INLINE off
	int16_t retVal = 0;
	ap_int<pix_t::width+1> sum[BLOCK_SIZE_SCALE_2];
//	*sadRet = 0;

	DFRegion:
	{
//		calOFLoop1:for(int16_t m = 0; m < BLOCK_SIZE; m++)
//		{
//			ap_int<5> tmpSum = refBlock[m] - targetBlocks[m];
//			sum[m] = tmpSum;
//		}

		calOFDSPLoop: for(uint8_t m = 0; m < BLOCK_SIZE_SCALE_2; m++)
		{
			ap_int<5> tmpSum = refBlock[m] - targetBlocks[m];
#pragma HLS RESOURCE variable=tmpSum core=AddSub_DSP
			sum[m] = tmpSum;
		}

		calOFNoDSPLoop: for(uint8_t m = BLOCK_SIZE_SCALE_2; m < BLOCK_SIZE_SCALE_2; m++)
		{
			ap_int<5> tmpSum = refBlock[m] - targetBlocks[m];
			sum[m] = tmpSum;
		}

		sadSumScale2(sum, sadRet);
//		std::cout<<"sadRet is " << *sadRet << std::endl;
	}

}

//void colSADSum(pix_t t1Col[BLOCK_SIZE + 2 * SEARCH_DISTANCE],
//			pix_t t2Col[BLOCK_SIZE + 2 * SEARCH_DISTANCE],
//			int16_t retVal[2*SEARCH_DISTANCE + 1])
//{
//#pragma HLS INLINE off
//#pragma HLS PIPELINE
//#pragma HLS ARRAY_PARTITION variable=t1Col complete dim=0
//#pragma HLS ARRAY_PARTITION variable=retVal complete dim=0
//#pragma HLS ARRAY_PARTITION variable=t2Col complete dim=0
////	std::cout << "HW in1 is: " << std::endl;
////	for (int m = 0; m < BLOCK_SIZE + 2 * SEARCH_DISTANCE; m++)
////	{
////		std::cout << t1Col[m] << " ";
////	}
////	std::cout << std::endl;
////
////	std::cout << "HW in2 is: " << std::endl;
////	for (int m = 0; m < BLOCK_SIZE + 2 * SEARCH_DISTANCE; m++)
////	{
////		std::cout << t2Col[m] << " ";
////	}
////	std::cout << std::endl;
//
//	colSADSumLoop:for(ap_uint<4> i = 0; i <= 2*SEARCH_DISTANCE; i++)
//	{
//		pix_t input1[BLOCK_SIZE], input2[BLOCK_SIZE];
//#pragma HLS ARRAY_PARTITION variable=input1 complete dim=0
//#pragma HLS ARRAY_PARTITION variable=input2 complete dim=0
//		int refTmpZeroCnt = 0, tagTmpZeroCnt = 0;
//		colSADSumInnerLoop:for(ap_uint<4> j = 0; j < BLOCK_SIZE; j++)
//		{
//			input1[j] = t1Col[j + SEARCH_DISTANCE];   // Get the col data centered on current event.
//			input2[j] = t2Col[i+j];
//			refTmpZeroCnt++;
//			tagTmpZeroCnt++;
//		}
//		sad(input1, input2, &retVal[i]);
//	}
//
//}

void colSADSumScale0(pix_t t1Col[BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE],
			pix_t t2Col[BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE],
			int16_t retVal[2*SEARCH_DISTANCE + 1])
{
#pragma HLS INLINE off
#pragma HLS PIPELINE
#pragma HLS ARRAY_PARTITION variable=t1Col complete dim=0
#pragma HLS ARRAY_PARTITION variable=retVal complete dim=0
#pragma HLS ARRAY_PARTITION variable=t2Col complete dim=0
//	std::cout << "HW in1 is: " << std::endl;
//	for (int m = 0; m < BLOCK_SIZE + 2 * SEARCH_DISTANCE; m++)
//	{
//		std::cout << t1Col[m] << " ";
//	}
//	std::cout << std::endl;
//
//	std::cout << "HW in2 is: " << std::endl;
//	for (int m = 0; m < BLOCK_SIZE + 2 * SEARCH_DISTANCE; m++)
//	{
//		std::cout << t2Col[m] << " ";
//	}
//	std::cout << std::endl;

	colSADSumLoop:for(ap_uint<4> i = 0; i <= 2*SEARCH_DISTANCE; i++)
	{
		pix_t input1[BLOCK_SIZE_SCALE_0], input2[BLOCK_SIZE_SCALE_0];
#pragma HLS ARRAY_PARTITION variable=input1 complete dim=0
#pragma HLS ARRAY_PARTITION variable=input2 complete dim=0
		int refTmpZeroCnt = 0, tagTmpZeroCnt = 0;
		colSADSumInnerLoop:for(ap_uint<8> j = 0; j < BLOCK_SIZE_SCALE_0; j++)
		{
			input1[j] = t1Col[j + SEARCH_DISTANCE];   // Get the col data centered on current event.
			input2[j] = t2Col[i+j];
			refTmpZeroCnt++;
			tagTmpZeroCnt++;
		}
		sadScale0(input1, input2, &retVal[i]);
	}

}

void colSADSumScale1(pix_t t1Col[BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE],
			pix_t t2Col[BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE],
			int16_t retVal[2*SEARCH_DISTANCE + 1])
{
#pragma HLS INLINE off
#pragma HLS PIPELINE
#pragma HLS ARRAY_PARTITION variable=t1Col complete dim=0
#pragma HLS ARRAY_PARTITION variable=retVal complete dim=0
#pragma HLS ARRAY_PARTITION variable=t2Col complete dim=0
//	std::cout << "HW in1 is: " << std::endl;
//	for (int m = 0; m < BLOCK_SIZE + 2 * SEARCH_DISTANCE; m++)
//	{
//		std::cout << t1Col[m] << " ";
//	}
//	std::cout << std::endl;
//
//	std::cout << "HW in2 is: " << std::endl;
//	for (int m = 0; m < BLOCK_SIZE + 2 * SEARCH_DISTANCE; m++)
//	{
//		std::cout << t2Col[m] << " ";
//	}
//	std::cout << std::endl;

	colSADSumLoop:for(ap_uint<4> i = 0; i <= 2*SEARCH_DISTANCE; i++)
	{
		pix_t input1[BLOCK_SIZE_SCALE_1], input2[BLOCK_SIZE_SCALE_1];
#pragma HLS ARRAY_PARTITION variable=input1 complete dim=0
#pragma HLS ARRAY_PARTITION variable=input2 complete dim=0
		int refTmpZeroCnt = 0, tagTmpZeroCnt = 0;
		colSADSumInnerLoop:for(ap_uint<8> j = 0; j < BLOCK_SIZE_SCALE_1; j++)
		{
			input1[j] = t1Col[j + SEARCH_DISTANCE];   // Get the col data centered on current event.
			input2[j] = t2Col[i+j];
			refTmpZeroCnt++;
			tagTmpZeroCnt++;
		}
		sadScale1(input1, input2, &retVal[i]);
	}

}

void colSADSumScale2(pix_t t1Col[BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE],
			pix_t t2Col[BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE],
			int16_t retVal[2*SEARCH_DISTANCE + 1])
{
#pragma HLS INLINE off
#pragma HLS PIPELINE
#pragma HLS ARRAY_PARTITION variable=t1Col complete dim=0
#pragma HLS ARRAY_PARTITION variable=retVal complete dim=0
#pragma HLS ARRAY_PARTITION variable=t2Col complete dim=0
//	std::cout << "HW in1 is: " << std::endl;
//	for (int m = 0; m < BLOCK_SIZE + 2 * SEARCH_DISTANCE; m++)
//	{
//		std::cout << t1Col[m] << " ";
//	}
//	std::cout << std::endl;
//
//	std::cout << "HW in2 is: " << std::endl;
//	for (int m = 0; m < BLOCK_SIZE + 2 * SEARCH_DISTANCE; m++)
//	{
//		std::cout << t2Col[m] << " ";
//	}
//	std::cout << std::endl;

	colSADSumLoop:for(ap_uint<4> i = 0; i <= 2*SEARCH_DISTANCE; i++)
	{
		pix_t input1[BLOCK_SIZE_SCALE_2], input2[BLOCK_SIZE_SCALE_2];
#pragma HLS ARRAY_PARTITION variable=input1 complete dim=0
#pragma HLS ARRAY_PARTITION variable=input2 complete dim=0
		int refTmpZeroCnt = 0, tagTmpZeroCnt = 0;
		colSADSumInnerLoop:for(ap_uint<8> j = 0; j < BLOCK_SIZE_SCALE_2; j++)
		{
			input1[j] = t1Col[j + SEARCH_DISTANCE];   // Get the col data centered on current event.
			input2[j] = t2Col[i+j];
			refTmpZeroCnt++;
			tagTmpZeroCnt++;
		}
		sadScale2(input1, input2, &retVal[i]);
	}

}


// This function is used to calculate the number of non-zero pixels in ref block, tag block
// and the number of the number of identical non-zero pixels between both of them.
// TODO: continue to optimize this module.
//void colZeroCnt(pix_t t1Col[BLOCK_SIZE + 2 * SEARCH_DISTANCE],
//			pix_t t2Col[BLOCK_SIZE + 2 * SEARCH_DISTANCE],  ap_uint<6> *refColZeroCnt,
//			ap_uint<6> tagValidPixCnt[2 * SEARCH_DISTANCE + 1],
//			ap_uint<6> refTagValidPixCnt[2 * SEARCH_DISTANCE + 1])
//{
//#pragma HLS ARRAY_PARTITION variable=refTagValidPixCnt complete dim=1
//#pragma HLS ARRAY_PARTITION variable=tagValidPixCnt complete dim=1
//#pragma HLS PIPELINE
//#pragma HLS ARRAY_PARTITION variable=t2Col complete dim=1
//#pragma HLS ARRAY_PARTITION variable=t1Col complete dim=1
//	int refTmpZeroCnt = 0, tagTmpZeroCnt = 0;
//	ap_uint< BLOCK_SIZE > refValidPixFlgBits, tagValidPixFlgBits;
//	for(int i = 0; i < BLOCK_SIZE; i++)
//	{
//		ap_uint<1> refTmpBool = t1Col[i + SEARCH_DISTANCE].bit(0);
//		ap_uint<1> tagTmpBool = t2Col[i].bit(0);
//		for (int j = 1; j < BITS_PER_PIXEL; j++)
//		{
//			refTmpBool |= t1Col[i + SEARCH_DISTANCE].bit(j);
//			tagTmpBool |= t2Col[i].bit(j);
//		}
//		refTmpZeroCnt +=  refTmpBool;
//		tagTmpZeroCnt +=  tagTmpBool;
//
////		if (t1Col[i + SEARCH_DISTANCE].or_reduce())   // Get the col data centered on current event.
////		{
////		  refTmpZeroCnt++;
////		}
//	}
//
//	tagValidPixCnt[0] = tagTmpZeroCnt;
//	for(int m = 1; m <= 2 * SEARCH_DISTANCE; m++)
//	{
//		ap_uint<1> tmpBool1 = t2Col[m - 1].bit(0);
//		for (int j = 1; j < BITS_PER_PIXEL; j++)
//		{
//			tmpBool1 |= t2Col[m - 1].bit(j);
//		}
//
//		ap_uint<1> tmpBool2 = t2Col[BLOCK_SIZE + m - 1].bit(0);
//		for (int j = 1; j < BITS_PER_PIXEL; j++)
//		{
//			tmpBool2 |= t2Col[BLOCK_SIZE + m - 1].bit(j);
//		}
//
////		ap_uint<1> refTagTmpBool1 = (t1Col[m - 1 + SEARCH_DISTANCE].bit(0) == t2Col[m - 1].bit(0)) & (t2Col[m - 1].bit(0) != 0);
////		ap_uint<1> refTagTmpBool2 = (t1Col[BLOCK_SIZE + m - 1 + SEARCH_DISTANCE].bit(0) == t2Col[BLOCK_SIZE + m - 1].bit(0)) & (t2Col[BLOCK_SIZE + m - 1].bit(0) != 0);
////
//		tagValidPixCnt[m] = tagValidPixCnt[m - 1] + tmpBool2 - tmpBool1;
////		refTagValidPixCnt[m] = tagValidPixCnt[m - 1] + refTagTmpBool2 - refTagTmpBool1;
//	}
//
//	for(int m = 0; m <= 2 * SEARCH_DISTANCE; m++)
//	{
//		int refTagTmpZeroCnt = 0;
//		for(int n = 0; n < BLOCK_SIZE; n++)
//		{
//			ap_uint<1> refTmpBool = (t1Col[n + SEARCH_DISTANCE] != 0);
//			ap_uint<1> tagTmpBool = (t2Col[n + m] != 0);
////			for (int j = 1; j < BITS_PER_PIXEL; j++)
////			{
////				refTmpBool |= t1Col[n + SEARCH_DISTANCE].bit(j);
////				tagTmpBool |= t2Col[n + m].bit(j);
////			}
//
//			ap_uint<1> refTagTmpBool = refTmpBool & tagTmpBool;
//			refTagTmpZeroCnt += refTagTmpBool;
//		}
//		refTagValidPixCnt[m] = refTagTmpZeroCnt;
//	}
//
//	*refColZeroCnt = refTmpZeroCnt;
//}

// This function is used to calculate the number of non-zero pixels in ref block, tag block
// and the number of the number of identical non-zero pixels between both of them.
// TODO: continue to optimize this module.
void colZeroCntScale0(pix_t t1Col[BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE],
			pix_t t2Col[BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE],  ap_uint<6> *refColZeroCnt,
			ap_uint<6> tagValidPixCnt[2 * SEARCH_DISTANCE + 1],
			ap_uint<6> refTagValidPixCnt[2 * SEARCH_DISTANCE + 1])
{
#pragma HLS ARRAY_PARTITION variable=refTagValidPixCnt complete dim=1
#pragma HLS ARRAY_PARTITION variable=tagValidPixCnt complete dim=1
#pragma HLS PIPELINE
#pragma HLS ARRAY_PARTITION variable=t2Col complete dim=1
#pragma HLS ARRAY_PARTITION variable=t1Col complete dim=1
	int refTmpZeroCnt = 0, tagTmpZeroCnt = 0;
	ap_uint< BLOCK_SIZE_SCALE_0 > refValidPixFlgBits, tagValidPixFlgBits;
	for(int i = 0; i < BLOCK_SIZE_SCALE_0; i++)
	{
		ap_uint<1> refTmpBool = t1Col[i + SEARCH_DISTANCE].bit(0);
		ap_uint<1> tagTmpBool = t2Col[i].bit(0);
		for (int j = 1; j < BITS_PER_PIXEL; j++)
		{
			refTmpBool |= t1Col[i + SEARCH_DISTANCE].bit(j);
			tagTmpBool |= t2Col[i].bit(j);
		}
		refTmpZeroCnt +=  refTmpBool;
		tagTmpZeroCnt +=  tagTmpBool;

//		if (t1Col[i + SEARCH_DISTANCE].or_reduce())   // Get the col data centered on current event.
//		{
//		  refTmpZeroCnt++;
//		}
	}

	tagValidPixCnt[0] = tagTmpZeroCnt;
	for(int m = 1; m <= 2 * SEARCH_DISTANCE; m++)
	{
		ap_uint<1> tmpBool1 = t2Col[m - 1].bit(0);
		for (int j = 1; j < BITS_PER_PIXEL; j++)
		{
			tmpBool1 |= t2Col[m - 1].bit(j);
		}

		ap_uint<1> tmpBool2 = t2Col[BLOCK_SIZE_SCALE_0 + m - 1].bit(0);
		for (int j = 1; j < BITS_PER_PIXEL; j++)
		{
			tmpBool2 |= t2Col[BLOCK_SIZE_SCALE_0 + m - 1].bit(j);
		}

//		ap_uint<1> refTagTmpBool1 = (t1Col[m - 1 + SEARCH_DISTANCE].bit(0) == t2Col[m - 1].bit(0)) & (t2Col[m - 1].bit(0) != 0);
//		ap_uint<1> refTagTmpBool2 = (t1Col[BLOCK_SIZE + m - 1 + SEARCH_DISTANCE].bit(0) == t2Col[BLOCK_SIZE + m - 1].bit(0)) & (t2Col[BLOCK_SIZE + m - 1].bit(0) != 0);
//
		tagValidPixCnt[m] = tagValidPixCnt[m - 1] + tmpBool2 - tmpBool1;
//		refTagValidPixCnt[m] = tagValidPixCnt[m - 1] + refTagTmpBool2 - refTagTmpBool1;
	}

	for(int m = 0; m <= 2 * SEARCH_DISTANCE; m++)
	{
		int refTagTmpZeroCnt = 0;
		for(int n = 0; n < BLOCK_SIZE_SCALE_0; n++)
		{
			ap_uint<1> refTmpBool = (t1Col[n + SEARCH_DISTANCE] != 0);
			ap_uint<1> tagTmpBool = (t2Col[n + m] != 0);
//			for (int j = 1; j < BITS_PER_PIXEL; j++)
//			{
//				refTmpBool |= t1Col[n + SEARCH_DISTANCE].bit(j);
//				tagTmpBool |= t2Col[n + m].bit(j);
//			}

			ap_uint<1> refTagTmpBool = refTmpBool & tagTmpBool;
			refTagTmpZeroCnt += refTagTmpBool;
		}
		refTagValidPixCnt[m] = refTagTmpZeroCnt;
	}

	*refColZeroCnt = refTmpZeroCnt;
}

// This function is used to calculate the number of non-zero pixels in ref block, tag block
// and the number of the number of identical non-zero pixels between both of them.
// TODO: continue to optimize this module.
void colZeroCntScale1(pix_t t1Col[BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE],
			pix_t t2Col[BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE],  ap_uint<6> *refColZeroCnt,
			ap_uint<6> tagValidPixCnt[2 * SEARCH_DISTANCE + 1],
			ap_uint<6> refTagValidPixCnt[2 * SEARCH_DISTANCE + 1])
{
#pragma HLS ARRAY_PARTITION variable=refTagValidPixCnt complete dim=1
#pragma HLS ARRAY_PARTITION variable=tagValidPixCnt complete dim=1
#pragma HLS PIPELINE
#pragma HLS ARRAY_PARTITION variable=t2Col complete dim=1
#pragma HLS ARRAY_PARTITION variable=t1Col complete dim=1
	int refTmpZeroCnt = 0, tagTmpZeroCnt = 0;
	ap_uint< BLOCK_SIZE_SCALE_1 > refValidPixFlgBits, tagValidPixFlgBits;
	for(int i = 0; i < BLOCK_SIZE_SCALE_1; i++)
	{
		ap_uint<1> refTmpBool = t1Col[i + SEARCH_DISTANCE].bit(0);
		ap_uint<1> tagTmpBool = t2Col[i].bit(0);
		for (int j = 1; j < BITS_PER_PIXEL; j++)
		{
			refTmpBool |= t1Col[i + SEARCH_DISTANCE].bit(j);
			tagTmpBool |= t2Col[i].bit(j);
		}
		refTmpZeroCnt +=  refTmpBool;
		tagTmpZeroCnt +=  tagTmpBool;

//		if (t1Col[i + SEARCH_DISTANCE].or_reduce())   // Get the col data centered on current event.
//		{
//		  refTmpZeroCnt++;
//		}
	}

	tagValidPixCnt[0] = tagTmpZeroCnt;
	for(int m = 1; m <= 2 * SEARCH_DISTANCE; m++)
	{
		ap_uint<1> tmpBool1 = t2Col[m - 1].bit(0);
		for (int j = 1; j < BITS_PER_PIXEL; j++)
		{
			tmpBool1 |= t2Col[m - 1].bit(j);
		}

		ap_uint<1> tmpBool2 = t2Col[BLOCK_SIZE_SCALE_1 + m - 1].bit(0);
		for (int j = 1; j < BITS_PER_PIXEL; j++)
		{
			tmpBool2 |= t2Col[BLOCK_SIZE_SCALE_1 + m - 1].bit(j);
		}

//		ap_uint<1> refTagTmpBool1 = (t1Col[m - 1 + SEARCH_DISTANCE].bit(0) == t2Col[m - 1].bit(0)) & (t2Col[m - 1].bit(0) != 0);
//		ap_uint<1> refTagTmpBool2 = (t1Col[BLOCK_SIZE + m - 1 + SEARCH_DISTANCE].bit(0) == t2Col[BLOCK_SIZE + m - 1].bit(0)) & (t2Col[BLOCK_SIZE + m - 1].bit(0) != 0);
//
		tagValidPixCnt[m] = tagValidPixCnt[m - 1] + tmpBool2 - tmpBool1;
//		refTagValidPixCnt[m] = tagValidPixCnt[m - 1] + refTagTmpBool2 - refTagTmpBool1;
	}

	for(int m = 0; m <= 2 * SEARCH_DISTANCE; m++)
	{
		int refTagTmpZeroCnt = 0;
		for(int n = 0; n < BLOCK_SIZE_SCALE_1; n++)
		{
			ap_uint<1> refTmpBool = (t1Col[n + SEARCH_DISTANCE] != 0);
			ap_uint<1> tagTmpBool = (t2Col[n + m] != 0);
//			for (int j = 1; j < BITS_PER_PIXEL; j++)
//			{
//				refTmpBool |= t1Col[n + SEARCH_DISTANCE].bit(j);
//				tagTmpBool |= t2Col[n + m].bit(j);
//			}

			ap_uint<1> refTagTmpBool = refTmpBool & tagTmpBool;
			refTagTmpZeroCnt += refTagTmpBool;
		}
		refTagValidPixCnt[m] = refTagTmpZeroCnt;
	}

	*refColZeroCnt = refTmpZeroCnt;
}

// This function is used to calculate the number of non-zero pixels in ref block, tag block
// and the number of the number of identical non-zero pixels between both of them.
// TODO: continue to optimize this module.
void colZeroCntScale2(pix_t t1Col[BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE],
			pix_t t2Col[BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE],  ap_uint<6> *refColZeroCnt,
			ap_uint<6> tagValidPixCnt[2 * SEARCH_DISTANCE + 1],
			ap_uint<6> refTagValidPixCnt[2 * SEARCH_DISTANCE + 1])
{
#pragma HLS ARRAY_PARTITION variable=refTagValidPixCnt complete dim=1
#pragma HLS ARRAY_PARTITION variable=tagValidPixCnt complete dim=1
#pragma HLS PIPELINE
#pragma HLS ARRAY_PARTITION variable=t2Col complete dim=1
#pragma HLS ARRAY_PARTITION variable=t1Col complete dim=1
	int refTmpZeroCnt = 0, tagTmpZeroCnt = 0;
	ap_uint< BLOCK_SIZE_SCALE_2 > refValidPixFlgBits, tagValidPixFlgBits;
	for(int i = 0; i < BLOCK_SIZE_SCALE_2; i++)
	{
		ap_uint<1> refTmpBool = t1Col[i + SEARCH_DISTANCE].bit(0);
		ap_uint<1> tagTmpBool = t2Col[i].bit(0);
		for (int j = 1; j < BITS_PER_PIXEL; j++)
		{
			refTmpBool |= t1Col[i + SEARCH_DISTANCE].bit(j);
			tagTmpBool |= t2Col[i].bit(j);
		}
		refTmpZeroCnt +=  refTmpBool;
		tagTmpZeroCnt +=  tagTmpBool;

//		if (t1Col[i + SEARCH_DISTANCE].or_reduce())   // Get the col data centered on current event.
//		{
//		  refTmpZeroCnt++;
//		}
	}

	tagValidPixCnt[0] = tagTmpZeroCnt;
	for(int m = 1; m <= 2 * SEARCH_DISTANCE; m++)
	{
		ap_uint<1> tmpBool1 = t2Col[m - 1].bit(0);
		for (int j = 1; j < BITS_PER_PIXEL; j++)
		{
			tmpBool1 |= t2Col[m - 1].bit(j);
		}

		ap_uint<1> tmpBool2 = t2Col[BLOCK_SIZE_SCALE_2 + m - 1].bit(0);
		for (int j = 1; j < BITS_PER_PIXEL; j++)
		{
			tmpBool2 |= t2Col[BLOCK_SIZE_SCALE_2 + m - 1].bit(j);
		}

//		ap_uint<1> refTagTmpBool1 = (t1Col[m - 1 + SEARCH_DISTANCE].bit(0) == t2Col[m - 1].bit(0)) & (t2Col[m - 1].bit(0) != 0);
//		ap_uint<1> refTagTmpBool2 = (t1Col[BLOCK_SIZE + m - 1 + SEARCH_DISTANCE].bit(0) == t2Col[BLOCK_SIZE + m - 1].bit(0)) & (t2Col[BLOCK_SIZE + m - 1].bit(0) != 0);
//
		tagValidPixCnt[m] = tagValidPixCnt[m - 1] + tmpBool2 - tmpBool1;
//		refTagValidPixCnt[m] = tagValidPixCnt[m - 1] + refTagTmpBool2 - refTagTmpBool1;
	}

	for(int m = 0; m <= 2 * SEARCH_DISTANCE; m++)
	{
		int refTagTmpZeroCnt = 0;
		for(int n = 0; n < BLOCK_SIZE_SCALE_2; n++)
		{
			ap_uint<1> refTmpBool = (t1Col[n + SEARCH_DISTANCE] != 0);
			ap_uint<1> tagTmpBool = (t2Col[n + m] != 0);
//			for (int j = 1; j < BITS_PER_PIXEL; j++)
//			{
//				refTmpBool |= t1Col[n + SEARCH_DISTANCE].bit(j);
//				tagTmpBool |= t2Col[n + m].bit(j);
//			}

			ap_uint<1> refTagTmpBool = refTmpBool & tagTmpBool;
			refTagTmpZeroCnt += refTagTmpBool;
		}
		refTagValidPixCnt[m] = refTagTmpZeroCnt;
	}

	*refColZeroCnt = refTmpZeroCnt;
}


// Function Description: return the minimum value of an array.
ap_int<16> min(ap_int<16> inArr[2*SEARCH_DISTANCE + 1], int8_t *index)
{
#pragma HLS PIPELINE
#pragma HLS ARRAY_RESHAPE variable=inArr complete dim=1
#pragma HLS INLINE off
	ap_int<16> tmp = inArr[0];
	int8_t tmpIdx = 0;
	minLoop: for(int8_t i = 0; i < 2*SEARCH_DISTANCE + 1; i++)
	{
		// Here is a bug. Use the if-else statement,
		// cannot use the question mark statement.
		// Otherwise a lot of muxs will be generated,
		// DON'T KNOW WHY. SHOULD BE A BUG.
		if(inArr[i] < tmp) tmpIdx = i;
		if(inArr[i] < tmp) tmp = inArr[i];
//		tmp = (inArr[i] < tmp) ? inArr[i] : tmp;
	}
	*index = tmpIdx;
	return tmp;
}

ap_int<16> minWide(apUintColSum_t inData, int8_t *index)
{
#pragma HLS PIPELINE
#pragma HLS INLINE off
	ap_int<16> tmp = inData.range(COL_SUM_BITS - 1, 0);
	inData = inData >> COL_SUM_BITS;
	int8_t tmpIdx = 0;
	minLoop: for(int8_t i = 1; i < 2*SEARCH_DISTANCE + 1; i++)
	{
		ap_int<16> currentData = inData.range(COL_SUM_BITS - 1, 0);
		inData = inData >> COL_SUM_BITS;
		ap_uint<1> cond = (currentData < tmp);
		tmpIdx = (cond) ? i : tmpIdx;
		tmp = (cond) ? currentData : tmp;
	}
	*index = tmpIdx;
	return tmp;
}

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

void resetPix(apUint10_t x, apUint10_t y, sliceIdx_t sliceIdx)
{
#pragma HLS INLINE
	glPLSlices[sliceIdx][x][y/COMBINED_PIXELS] = 0;
	glPLSlicesScale1[sliceIdx][x/2][y/COMBINED_PIXELS/2] = 0;
	glPLSlicesScale2[sliceIdx][x/4][y/COMBINED_PIXELS/4] = 0;
}

void resetPixScale0(apUint10_t x, apUint10_t y, sliceIdx_t sliceIdx)
{
#pragma HLS INLINE
	glPLSlices[sliceIdx][x][y/COMBINED_PIXELS] = 0;
}

void resetPixScale1(apUint10_t x, apUint10_t y, sliceIdx_t sliceIdx)
{
#pragma HLS INLINE
	glPLSlicesScale1[sliceIdx][x][y/COMBINED_PIXELS] = 0;
}

void resetPixScale2(apUint10_t x, apUint10_t y, sliceIdx_t sliceIdx)
{
#pragma HLS INLINE
	glPLSlicesScale2[sliceIdx][x][y/COMBINED_PIXELS] = 0;
}

void writePix(apUint10_t x, apUint10_t y, sliceIdx_t sliceIdx)
{
#pragma HLS DEPENDENCE variable=glPLSlicesScale2 inter false
#pragma HLS DEPENDENCE variable=glPLSlicesScale1 inter false
#pragma HLS RESOURCE variable=glPLSlicesScale2 core=RAM_T2P_BRAM
#pragma HLS ARRAY_PARTITION variable=glPLSlicesScale2 cyclic factor=1 dim=3
#pragma HLS ARRAY_PARTITION variable=glPLSlicesScale2 complete dim=1
#pragma HLS RESOURCE variable=glPLSlicesScale1 core=RAM_T2P_BRAM
#pragma HLS ARRAY_PARTITION variable=glPLSlicesScale1 cyclic factor=1 dim=3
#pragma HLS ARRAY_PARTITION variable=glPLSlicesScale1 complete dim=1
#pragma HLS PIPELINE
#pragma HLS RESOURCE variable=glPLSlices core=RAM_T2P_BRAM
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=glPLSlices complete dim=1
#pragma HLS ARRAY_PARTITION variable=glPLSlices cyclic factor=1 dim=3
#pragma HLS DEPENDENCE variable=glPLSlices inter false
	col_pix_t tmpData;
	pix_t tmpTmpData;

	ap_uint<8> yNewIdx = y%COMBINED_PIXELS;

	tmpData = glPLSlices[sliceIdx][x][y/COMBINED_PIXELS];

	tmpTmpData = readPixFromCol(tmpData, yNewIdx);

	ap_uint<1> cmpFlg = ap_uint<1>(tmpTmpData < (ap_uint< BITS_PER_PIXEL >(0xff)));
	tmpTmpData +=  cmpFlg;

	writePixToCol(&tmpData, yNewIdx, tmpTmpData);

	glPLSlices[sliceIdx][x][y/COMBINED_PIXELS] = tmpData;

    // write scale 1
	apUint10_t xScale1 = x/2;
	apUint10_t yScale1 = y/2;
    ap_uint<8> yNewIdxScale1 = yScale1%COMBINED_PIXELS;

	col_pix_t tmpDataScale1;
	pix_t tmpTmpDataScale1;

	tmpDataScale1 = glPLSlicesScale1[sliceIdx][xScale1][yScale1/COMBINED_PIXELS];
	tmpTmpDataScale1 = readPixFromCol(tmpDataScale1, yNewIdxScale1);
	ap_uint<1> cmpFlgScale1 = ap_uint<1>(tmpTmpDataScale1 < (ap_uint< BITS_PER_PIXEL >(0xff)));
	tmpTmpDataScale1 +=  cmpFlgScale1;
	writePixToCol(&tmpDataScale1, yNewIdxScale1, tmpTmpDataScale1);
    glPLSlicesScale1[sliceIdx][xScale1][yScale1/COMBINED_PIXELS] = tmpDataScale1;

    // write scale 2
    // write scale 1
    apUint10_t xScale2 = x/4;
    apUint10_t yScale2 = y/4;
    ap_uint<8> yNewIdxScale2 = yScale2%COMBINED_PIXELS;

	col_pix_t tmpDataScale2;
	pix_t tmpTmpDataScale2;

	tmpDataScale2 = glPLSlicesScale2[sliceIdx][xScale2][yScale2/COMBINED_PIXELS];
	tmpTmpDataScale2 = readPixFromCol(tmpDataScale2, yNewIdxScale2);
	ap_uint<1> cmpFlgScale2 = ap_uint<1>(tmpTmpDataScale2 < (ap_uint< BITS_PER_PIXEL >(0xff)));
	tmpTmpDataScale2 +=  cmpFlgScale2;
	writePixToCol(&tmpDataScale2, yNewIdxScale2, tmpTmpDataScale2);
    glPLSlicesScale2[sliceIdx][xScale2][yScale2/COMBINED_PIXELS] = tmpDataScale2;
}

void writePixScale0(apUint10_t x, apUint10_t y, sliceIdx_t sliceIdx)
{
#pragma HLS PIPELINE
#pragma HLS RESOURCE variable=glPLSlices core=RAM_T2P_BRAM
#pragma HLS INLINE
#pragma HLS ARRAY_PARTITION variable=glPLSlices complete dim=1
#pragma HLS ARRAY_PARTITION variable=glPLSlices cyclic factor=1 dim=3
#pragma HLS DEPENDENCE variable=glPLSlices inter false
	col_pix_t tmpData;
	pix_t tmpTmpData;

	ap_uint<8> yNewIdx = y%COMBINED_PIXELS;

	tmpData = glPLSlices[sliceIdx][x][y/COMBINED_PIXELS];

	tmpTmpData = readPixFromCol(tmpData, yNewIdx);

	ap_uint<1> cmpFlg = ap_uint<1>(tmpTmpData < (ap_uint< BITS_PER_PIXEL >(0xff)));
	tmpTmpData +=  cmpFlg;

	writePixToCol(&tmpData, yNewIdx, tmpTmpData);

	glPLSlices[sliceIdx][x][y/COMBINED_PIXELS] = tmpData;
}

void writePixScale1(apUint10_t x, apUint10_t y, sliceIdx_t sliceIdx)
{
#pragma HLS DEPENDENCE variable=glPLSlicesScale1 inter false
#pragma HLS RESOURCE variable=glPLSlicesScale1 core=RAM_T2P_BRAM
#pragma HLS ARRAY_PARTITION variable=glPLSlicesScale1 cyclic factor=1 dim=3
#pragma HLS ARRAY_PARTITION variable=glPLSlicesScale1 complete dim=1
#pragma HLS PIPELINE
#pragma HLS INLINE
    // write scale 1
	apUint10_t xScale1 = x/2;
	apUint10_t yScale1 = y/2;
    ap_uint<8> yNewIdxScale1 = yScale1%COMBINED_PIXELS;

	col_pix_t tmpDataScale1;
	pix_t tmpTmpDataScale1;

	tmpDataScale1 = glPLSlicesScale1[sliceIdx][xScale1][yScale1/COMBINED_PIXELS];
	tmpTmpDataScale1 = readPixFromCol(tmpDataScale1, yNewIdxScale1);
	ap_uint<1> cmpFlgScale1 = ap_uint<1>(tmpTmpDataScale1 < (ap_uint< BITS_PER_PIXEL >(0xff)));
	tmpTmpDataScale1 +=  cmpFlgScale1;
	writePixToCol(&tmpDataScale1, yNewIdxScale1, tmpTmpDataScale1);
    glPLSlicesScale1[sliceIdx][xScale1][yScale1/COMBINED_PIXELS] = tmpDataScale1;
}

void writePixScale2(apUint10_t x, apUint10_t y, sliceIdx_t sliceIdx)
{
#pragma HLS DEPENDENCE variable=glPLSlicesScale2 inter false
#pragma HLS RESOURCE variable=glPLSlicesScale2 core=RAM_T2P_BRAM
#pragma HLS ARRAY_PARTITION variable=glPLSlicesScale2 cyclic factor=1 dim=3
#pragma HLS ARRAY_PARTITION variable=glPLSlicesScale2 complete dim=1
#pragma HLS PIPELINE
#pragma HLS INLINE
    // write scale 2
    apUint10_t xScale2 = x/4;
    apUint10_t yScale2 = y/4;
    ap_uint<8> yNewIdxScale2 = yScale2%COMBINED_PIXELS;

	col_pix_t tmpDataScale2;
	pix_t tmpTmpDataScale2;

	tmpDataScale2 = glPLSlicesScale2[sliceIdx][xScale2][yScale2/COMBINED_PIXELS];
	tmpTmpDataScale2 = readPixFromCol(tmpDataScale2, yNewIdxScale2);
	ap_uint<1> cmpFlgScale2 = ap_uint<1>(tmpTmpDataScale2 < (ap_uint< BITS_PER_PIXEL >(0xff)));
	tmpTmpDataScale2 +=  cmpFlgScale2;
	writePixToCol(&tmpDataScale2, yNewIdxScale2, tmpTmpDataScale2);
    glPLSlicesScale2[sliceIdx][xScale2][yScale2/COMBINED_PIXELS] = tmpDataScale2;
}


// for scale 0
void readBlockCols(apUint10_t x, apUint10_t y, ap_int<8> xInitOffset, ap_int<8> yInitOffset,
		sliceIdx_t sliceIdxRef, sliceIdx_t sliceIdxTag,
		pix_t refCol[BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE],
		pix_t tagCol[BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE])
{
#pragma HLS INLINE
#pragma HLS PIPELINE
#pragma HLS ARRAY_RESHAPE variable=refCol complete dim=1
#pragma HLS ARRAY_RESHAPE variable=tagCol complete dim=1

	two_cols_pix_t refColData;
    two_cols_pix_t tagColData;
    ap_uint<10> xWithInitOffset = x + xInitOffset;
    ap_uint<10> yWithInitOffset = y + yInitOffset;

    ap_uint<8> neighboryOffset;
    if ( y%COMBINED_PIXELS < BLOCK_SIZE_SCALE_0/2 + SEARCH_DISTANCE )
    {
        neighboryOffset = y/COMBINED_PIXELS - 1;
    }
    else
    {
        neighboryOffset = y/COMBINED_PIXELS + 1;
    }

    ap_uint<8> neighboryOffsetWithInitOffset;
    if ( yWithInitOffset%COMBINED_PIXELS < BLOCK_SIZE_SCALE_0/2 + SEARCH_DISTANCE )
    {
    	neighboryOffsetWithInitOffset = yWithInitOffset/COMBINED_PIXELS - 1;
    }
    else
    {
    	neighboryOffsetWithInitOffset = yWithInitOffset/COMBINED_PIXELS + 1;
    }

    // concatenate two columns together, permanent offset for ref colomun is SEARCH_DISTANCE
    refColData = (glPLSlices[sliceIdxRef][x + SEARCH_DISTANCE][y/COMBINED_PIXELS], glPLSlices[sliceIdxRef][x + SEARCH_DISTANCE][neighboryOffset]);
    //	cout << "refColData: " << refColData << endl;
    // concatenate two columns together
    // Use explicit cast here, otherwise it will generate a lot of select operations which consumes more LUTs than MUXs.
    tagColData = (glPLSlices[(sliceIdx_t)(sliceIdxTag + 0)][xWithInitOffset][yWithInitOffset/COMBINED_PIXELS], glPLSlices[(sliceIdx_t)(sliceIdxTag + 0)][xWithInitOffset][neighboryOffsetWithInitOffset]);

	// find the bottom pixel of the column that centered on y.
	ap_uint<6> yColOffsetIdx = y%COMBINED_PIXELS - BLOCK_SIZE_SCALE_0/2 - SEARCH_DISTANCE + COMBINED_PIXELS;
	readRefLoop: for(ap_uint<8> i = 0; i < BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE; i++)
	{
		refCol[i] = readPixFromTwoCols(refColData,  yColOffsetIdx);
		yColOffsetIdx++;
	}

	// find the bottom pixel of the column that centered on yInitOffset.
	ap_uint<6> yColOffsetWithInitOffsetIdx = yWithInitOffset%COMBINED_PIXELS - BLOCK_SIZE_SCALE_0/2 - SEARCH_DISTANCE + COMBINED_PIXELS;
	readRefLoopWithInitOffset: for(ap_uint<8> i = 0; i < BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE; i++)
	{
		tagCol[i] = readPixFromTwoCols(tagColData,  yColOffsetWithInitOffsetIdx);
		yColOffsetWithInitOffsetIdx++;
	}
}


void readBlockColsScale1(apUint10_t x, apUint10_t y, ap_int<8> xInitOffset, ap_int<8> yInitOffset,
		sliceIdx_t sliceIdxRef, sliceIdx_t sliceIdxTag,
		pix_t refColScale1[BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE],
		pix_t tagColScale1[BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE])
{
#pragma HLS ARRAY_RESHAPE variable=tagColScale1 complete dim=1
#pragma HLS ARRAY_RESHAPE variable=refColScale1 complete dim=1
#pragma HLS PIPELINE
#pragma HLS INLINE

	two_cols_pix_t refColData;
    two_cols_pix_t tagColData;
    ap_uint<10> xWithInitOffset = x + xInitOffset;
    ap_uint<10> yWithInitOffset = y + yInitOffset;

    ap_uint<8> neighboryOffset;
    if ( y%COMBINED_PIXELS < BLOCK_SIZE_SCALE_1/2 + SEARCH_DISTANCE )
    {
        neighboryOffset = y/COMBINED_PIXELS - 1;
    }
    else
    {
        neighboryOffset = y/COMBINED_PIXELS + 1;
    }

    ap_uint<8> neighboryOffsetWithInitOffset;
    if ( yWithInitOffset%COMBINED_PIXELS < BLOCK_SIZE_SCALE_1/2 + SEARCH_DISTANCE )
    {
    	neighboryOffsetWithInitOffset = yWithInitOffset/COMBINED_PIXELS - 1;
    }
    else
    {
    	neighboryOffsetWithInitOffset = yWithInitOffset/COMBINED_PIXELS + 1;
    }

    // concatenate two columns together, permanent offset for ref colomun is SEARCH_DISTANCE
    refColData = (glPLSlicesScale1[sliceIdxRef][x + SEARCH_DISTANCE][y/COMBINED_PIXELS], glPLSlicesScale1[sliceIdxRef][x + SEARCH_DISTANCE][neighboryOffset]);
    //	cout << "refColData: " << refColData << endl;
    // concatenate two columns together
    // Use explicit cast here, otherwise it will generate a lot of select operations which consumes more LUTs than MUXs.
    tagColData = (glPLSlicesScale1[(sliceIdx_t)(sliceIdxTag + 0)][xWithInitOffset][yWithInitOffset/COMBINED_PIXELS], glPLSlicesScale1[(sliceIdx_t)(sliceIdxTag + 0)][xWithInitOffset][neighboryOffsetWithInitOffset]);

	// find the bottom pixel of the column that centered on y.
	ap_uint<6> yColOffsetIdx = y%COMBINED_PIXELS - BLOCK_SIZE_SCALE_1/2 - SEARCH_DISTANCE + COMBINED_PIXELS;
	readRefLoop: for(ap_uint<8> i = 0; i < BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE; i++)
	{
		refColScale1[i] = readPixFromTwoCols(refColData,  yColOffsetIdx);
		yColOffsetIdx++;
	}

	// find the bottom pixel of the column that centered on yInitOffset.
	ap_uint<6> yColOffsetWithInitOffsetIdx = yWithInitOffset%COMBINED_PIXELS - BLOCK_SIZE_SCALE_1/2 - SEARCH_DISTANCE + COMBINED_PIXELS;
	readRefLoopWithInitOffset: for(ap_uint<8> i = 0; i < BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE; i++)
	{
		tagColScale1[i] = readPixFromTwoCols(tagColData,  yColOffsetWithInitOffsetIdx);
		yColOffsetWithInitOffsetIdx++;
	}
}

void readBlockColsScale2(apUint10_t x, apUint10_t y, ap_int<8> xInitOffset, ap_int<8> yInitOffset,
		sliceIdx_t sliceIdxRef, sliceIdx_t sliceIdxTag,
		pix_t refColScale2[BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE],
		pix_t tagColScale2[BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE])
{
#pragma HLS ARRAY_RESHAPE variable=tagColScale2 complete dim=1
#pragma HLS ARRAY_RESHAPE variable=refColScale2 complete dim=1
#pragma HLS PIPELINE
#pragma HLS INLINE

	two_cols_pix_t refColData;
    two_cols_pix_t tagColData;
    ap_uint<10> xWithInitOffset = x + xInitOffset;
    ap_uint<10> yWithInitOffset = y + yInitOffset;

    ap_uint<8> neighboryOffset;
    if ( y%COMBINED_PIXELS < BLOCK_SIZE_SCALE_2/2 + SEARCH_DISTANCE )
    {
        neighboryOffset = y/COMBINED_PIXELS - 1;
    }
    else
    {
        neighboryOffset = y/COMBINED_PIXELS + 1;
    }

    ap_uint<8> neighboryOffsetWithInitOffset;
    if ( yWithInitOffset%COMBINED_PIXELS < BLOCK_SIZE_SCALE_2/2 + SEARCH_DISTANCE )
    {
    	neighboryOffsetWithInitOffset = yWithInitOffset/COMBINED_PIXELS - 1;
    }
    else
    {
    	neighboryOffsetWithInitOffset = yWithInitOffset/COMBINED_PIXELS + 1;
    }
    // concatenate two columns together
    refColData = (glPLSlicesScale2[sliceIdxRef][x][y/COMBINED_PIXELS], glPLSlicesScale2[sliceIdxRef][x][neighboryOffset]);
    //	cout << "refColData: " << refColData << endl;
    // concatenate two columns together
    // Use explicit cast here, otherwise it will generate a lot of select operations which consumes more LUTs than MUXs.
    tagColData = (glPLSlicesScale2[(sliceIdx_t)(sliceIdxTag + 0)][xWithInitOffset][yWithInitOffset/COMBINED_PIXELS], glPLSlicesScale2[(sliceIdx_t)(sliceIdxTag + 0)][xWithInitOffset][neighboryOffsetWithInitOffset]);

	// find the bottom pixel of the column that centered on y.
	ap_uint<6> yColOffsetIdx = y%COMBINED_PIXELS - BLOCK_SIZE_SCALE_2/2 - SEARCH_DISTANCE + COMBINED_PIXELS;
	readRefLoop: for(ap_uint<8> i = 0; i < BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE; i++)
	{
		refColScale2[i] = readPixFromTwoCols(refColData,  yColOffsetIdx);
		yColOffsetIdx++;
	}

	// find the bottom pixel of the column that centered on yInitOffset.
	ap_uint<6> yColOffsetWithInitOffsetIdx = yWithInitOffset%COMBINED_PIXELS - BLOCK_SIZE_SCALE_2/2 - SEARCH_DISTANCE + COMBINED_PIXELS;
	readRefLoopWithInitOffset: for(ap_uint<8> i = 0; i < BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE; i++)
	{
		tagColScale2[i] = readPixFromTwoCols(tagColData,  yColOffsetWithInitOffsetIdx);
		yColOffsetWithInitOffsetIdx++;
	}
}

void getXandY(const uint64_t * data, hls::stream<apUint10_t>  &xStream, hls::stream<apUint10_t> &yStream, hls::stream<uint32_t> &tsStream, hls::stream<apUint17_t> &packetEventDataStream)
//void getXandY(const uint64_t * data, int32_t eventsArraySize, ap_uint<8> *xStream, ap_uint<8> *yStream)
{
#pragma HLS INLINE off
#pragma HLS INLINE off

	// Every event always consists of 2 int32_t which is 8bytes.
//	getXandYLoop:for(int32_t i = 0; i < eventIterSize; i++)
//	{
		uint64_t tmp = *data;
		apUint10_t xWr, yWr;
		xWr = ((tmp) >> POLARITY_X_ADDR_SHIFT) & POLARITY_X_ADDR_MASK;
		yWr = ((tmp) >> POLARITY_Y_ADDR_SHIFT) & POLARITY_Y_ADDR_MASK;
		bool pol  = ((tmp) >> POLARITY_SHIFT) & POLARITY_MASK;
		uint32_t ts = tmp >> 32;

//		writePix(xWr, yWr, glPLActiveSliceIdx);
//		resetPix(xWr, yWr, glPLActiveSliceIdx + 3);

//		shiftCnt = 0;
//		miniRetVal = 0x7fff;
//		for(int8_t i = 0; i <= 2*SEARCH_DISTANCE; i++)
//		{
//				miniSumTmp[i] = 0;
//		}
//		for(int8_t i = 0; i <= 2*SEARCH_DISTANCE; i++)
//		{
//			for(int8_t j = 0; j <= 2*SEARCH_DISTANCE; j++)
//			{
//				localSumReg[i][j] = 0;
//			}
//		}

		xStream << xWr;
		yStream << yWr;
		tsStream << ts;
		packetEventDataStream << apUint17_t(xWr.to_int() + (yWr.to_int() << 8) + (pol << 16));
//		*xStream++ = xWr;
//		*yStream++ = yWr;
//	}
}

static uint16_t areaEventRegs[AREA_NUMBER][AREA_NUMBER];
static uint16_t areaEventThr = INIT_AREA_THERSHOLD;

void rotateSliceNoRotationFlg(hls::stream<apUint10_t>  &xInStream, hls::stream<apUint10_t> &yInStream,
				 hls::stream<apUint10_t> &xOutStream, hls::stream<apUint10_t> &yOutStream, hls::stream<sliceIdx_t> &idxStream)
{
#pragma HLS RESOURCE variable=areaEventRegs core=RAM_2P_LUTRAM
#pragma HLS ARRAY_PARTITION variable=areaEventRegs complete dim=2
#pragma HLS INLINE off
//	glPLActiveSliceIdx--;

//	rotateSliceOutLoop:for(int32_t i = 0; i < eventIterSize; i++)
//	{
		apUint10_t x, y;
		x = xInStream.read();
		y = yInStream.read();

		uint16_t c = areaEventRegs[x/AREA_SIZE][y/AREA_SIZE];
		c = c + 1;
		areaEventRegs[x/AREA_SIZE][y/AREA_SIZE] = c;


		// The area threshold reached, rotate the slice index and clear the areaEventRegs.
		if (c > areaEventThr)
		{
			glPLActiveSliceIdx--;

            for(int r = 0; r < 1; r++)
            {
                std::cout << "Rotated successfully from HW!!!!" << std::endl;
                std::cout << "x is: " << x << "\t y is: " << y << "\t idx is: " << glPLActiveSliceIdx << std::endl;
            }


			rotateSliceLoop:for(int areaX = 0; areaX < AREA_NUMBER; areaX++)
			{
#pragma HLS PIPELINE
				rotateSliceInnerLoop:for(int areaY = 0; areaY < AREA_NUMBER; areaY++)
				{
					areaEventRegs[areaX][areaY] = 0;
				}
			}

//		   for (int16_t resetCnt = 0; resetCnt < 2048; resetCnt = resetCnt + 2)
//		   {
//			   resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL) * COMBINED_PIXELS, (sliceIdx_t)(glPLActiveSliceIdx + 3));
//			   resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL + 1) * COMBINED_PIXELS, (sliceIdx_t)(glPLActiveSliceIdx + 3));
//		   }
		}

		xOutStream.write(x);
		yOutStream.write(y);
		idxStream.write(glPLActiveSliceIdx);
//	}
}

// areaEventThr is occupied by feedback, here we use another value to copy its initial value.
// Remember to update this value when areaEventThr is updated.
uint16_t areaEventThrBak = areaEventThr;
static uint32_t lastTsHW = 0, currentTsHW = 0;
static ap_uint<9> deltaTsHW, deltaTsHWBak;
void rotateSlice(hls::stream<apUint10_t>  &xInStream, hls::stream<apUint10_t> &yInStream, hls::stream<uint32_t> &tsInStream,
				 hls::stream<apUint10_t> &xOutStream, hls::stream<apUint10_t> &yOutStream,
				 hls::stream<sliceIdx_t> &idxStream)
{
#pragma HLS RESOURCE variable=areaEventRegs core=RAM_2P_LUTRAM
#pragma HLS ARRAY_PARTITION variable=areaEventRegs complete dim=2
#pragma HLS INLINE off
//	glPLActiveSliceIdx--;

	apUint10_t x, y;
	x = xInStream.read();
	y = yInStream.read();
	uint32_t ts = tsInStream.read();

	static uint16_t tmpThr = INIT_AREA_THERSHOLD;

//	if (!glThrStream.empty())	tmpThr = glThrStream.read();

	glRotateFlg = 0;
	// The area threshold reached, rotate the slice index and clear the areaEventRegs.
	if ( areaCountExceeded || (ts - currentTsHW) >= MAX_SLICE_DURATION_US )
	{
		glPLActiveSliceIdx--;
		glRotateFlg = 1;

        lastTsHW = currentTsHW;
        currentTsHW = ts;

        for(int r = 0; r < 1; r++)
		{
			std::cout << "Rotated successfully from HW!!!!" << std::endl;
			std::cout << "x is: " << x << "\t y is: " << y << "\t idx is: " << glPLActiveSliceIdx << std::endl;
			std::cout << "delataTsHW is: " << ((currentTsHW - lastTsHW) >> 9) << std::endl;
		}


		rotateSliceResetLoop:for(int areaX = 0; areaX < AREA_NUMBER; areaX++)
		{
#pragma HLS PIPELINE
#pragma HLS INLINE off
			for(int areaY = 0; areaY < AREA_NUMBER; areaY++)
			{
				areaEventRegs[areaX][areaY] = 0;
			}
		}

//		   for (int16_t resetCnt = 0; resetCnt < 2048; resetCnt = resetCnt + 2)
//		   {
//			   resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL) * COMBINED_PIXELS, (sliceIdx_t)(glPLActiveSliceIdx + 3));
//			   resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL + 1) * COMBINED_PIXELS, (sliceIdx_t)(glPLActiveSliceIdx + 3));
//		   }
	}

	xOutStream.write(x);
	yOutStream.write(y);
	idxStream.write(glPLActiveSliceIdx);
	deltaTsHW = ((currentTsHW - lastTsHW) >> 9);
	deltaTsHWBak = deltaTsHW;
}

void rotateSliceAllScales(hls::stream<apUint10_t>  &xInStream, hls::stream<apUint10_t> &yInStream, hls::stream<uint32_t> &tsInStream,
				 hls::stream<apUint10_t> &xOutStream, hls::stream<apUint10_t> &yOutStream, hls::stream<sliceIdx_t> &idxStream,
				 hls::stream<apUint10_t> &xOutStreamScale1, hls::stream<apUint10_t> &yOutStreamScale1, hls::stream<sliceIdx_t> &idxStreamScale1,
				 hls::stream<apUint10_t> &xOutStreamScale2, hls::stream<apUint10_t> &yOutStreamScale2, hls::stream<sliceIdx_t> &idxStreamScale2)
{
#pragma HLS RESOURCE variable=areaEventRegs core=RAM_2P_LUTRAM
#pragma HLS ARRAY_PARTITION variable=areaEventRegs complete dim=2
#pragma HLS INLINE off
//	glPLActiveSliceIdx--;

	apUint10_t x, y;
	x = xInStream.read();
	y = yInStream.read();
	uint32_t ts = tsInStream.read();

	//	static uint16_t tmpThr = INIT_AREA_THERSHOLD;

	if(glConfig[0] == 1)         // Using external threshold
	{
		glSFASTAreaCntThr = glConfig.range(23, 8);
	}
//	else                        // Using the onboard hardcoded threshold
//	{
//		glSFASTAreaCntThr = SFAST_THRESHOLD;
//	}
	glSFASTAreaCntThrBak = glSFASTAreaCntThr;  // store it in the shadow register for status output

//	if (!glThrStream.empty())	tmpThr = glThrStream.read();

	glRotateFlg = 0;
	// The area threshold reached, rotate the slice index and clear the areaEventRegs.
	if ( areaCountExceeded || (ts - currentTsHW) >= MAX_SLICE_DURATION_US )
	{
		glPLActiveSliceIdx--;
		glRotateFlg = 1;

        lastTsHW = currentTsHW;
        currentTsHW = ts;

        for(int r = 0; r < 1; r++)
		{
			std::cout << "Rotated successfully from HW!!!!" << std::endl;
			std::cout << "x is: " << x << "\t y is: " << y << "\t idx is: " << glPLActiveSliceIdx << std::endl;
			std::cout << "delataTsHW is: " << ((currentTsHW - lastTsHW) >> 9) << std::endl;
		}


		rotateSliceResetLoop:for(int areaX = 0; areaX < AREA_NUMBER; areaX++)
		{
#pragma HLS PIPELINE
#pragma HLS INLINE off
			for(int areaY = 0; areaY < AREA_NUMBER; areaY++)
			{
				areaEventRegs[areaX][areaY] = 0;
			}
		}

//		   for (int16_t resetCnt = 0; resetCnt < 2048; resetCnt = resetCnt + 2)
//		   {
//			   resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL) * COMBINED_PIXELS, (sliceIdx_t)(glPLActiveSliceIdx + 3));
//			   resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL + 1) * COMBINED_PIXELS, (sliceIdx_t)(glPLActiveSliceIdx + 3));
//		   }
	}

	uint16_t c = areaEventRegs[x/AREA_SIZE][y/AREA_SIZE];
	c = c + 1;
	areaEventRegs[x/AREA_SIZE][y/AREA_SIZE] = c;
    areaCountExceeded = (c >= glSFASTAreaCntThr);

	xOutStream.write(x);
	yOutStream.write(y);
	xOutStreamScale1.write(x);
	yOutStreamScale1.write(y);
	xOutStreamScale2.write(x);
	yOutStreamScale2.write(y);

	idxStream.write(glPLActiveSliceIdx);
	idxStreamScale1.write(glPLActiveSliceIdx);
	idxStreamScale2.write(glPLActiveSliceIdx);

	deltaTsHW = ((currentTsHW - lastTsHW) >> 9);
	deltaTsHWBak = deltaTsHW;
}

void rotateSliceAndWriteResetSlice(apUint10_t x, apUint10_t y, ap_uint<64> ts)
{
#pragma HLS RESOURCE variable=areaEventRegs core=RAM_2P_LUTRAM
#pragma HLS ARRAY_PARTITION variable=areaEventRegs complete dim=2
#pragma HLS INLINE

//	glPLActiveSliceIdx--;

	static uint16_t tmpThr = INIT_AREA_THERSHOLD;

//	if (!glThrStream.empty())	tmpThr = glThrStream.read();

	glRotateFlgBypass = 0;
	// The area threshold reached, rotate the slice index and clear the areaEventRegs.
	if ( areaCountExceeded || (ts - currentTsHW) >= MAX_SLICE_DURATION_US )
	{
		glPLActiveSliceIdx--;
		glRotateFlgBypass = 1;

#if DEBUG
		/* This is only for C-simulation and debugging. */
		if (oldIdx != glPLActiveSliceIdx)
		{
			oldIdx = glPLActiveSliceIdx;
			// Check the accumulation slice is clear or not
			for(int32_t xAddr = 0; xAddr < SLICE_WIDTH; xAddr++)
			{
				for(int32_t yAddr = 0; yAddr < SLICE_HEIGHT; yAddr = yAddr + COMBINED_PIXELS)
				{
					if (glPLSlices[glPLActiveSliceIdx][xAddr][yAddr/COMBINED_PIXELS] != 0)
					{
						for(int r = 0; r < 10; r++)
						{
							std::cout << "Ha! I caught you, the pixel which is not clear!" << std::endl;
							std::cout << "x is: " << xAddr << "\t y is: " << yAddr << "\t idx is: " << glPLActiveSliceIdx << std::endl;
						}
					}
				}
			}
		}


		/* This is only for C-simulation and debugging. */
		if (oldIdxScale1 != glPLActiveSliceIdx)
		{
			oldIdxScale1 = glPLActiveSliceIdx;
			// Check the accumulation slice is clear or not
			for(int32_t xAddr = 0; xAddr < SLICE_WIDTH/2; xAddr++)
			{
				for(int32_t yAddr = 0; yAddr < SLICE_HEIGHT/2; yAddr = yAddr + COMBINED_PIXELS)
				{
					if (glPLSlicesScale1[glPLActiveSliceIdx][xAddr][yAddr/COMBINED_PIXELS] != 0)
					{
						for(int r = 0; r < 10; r++)
						{
							std::cout << "Ha! I caught you, the pixel which is not clear!" << std::endl;
							std::cout << "x is: " << xAddr << "\t y is: " << yAddr << "\t idx is: " << glPLActiveSliceIdx << std::endl;
						}
					}
				}
			}
		}


		/* This is only for C-simulation and debugging. */
		if (oldIdxScale2 != glPLActiveSliceIdx)
		{
			oldIdxScale2 = glPLActiveSliceIdx;
			// Check the accumulation slice is clear or not
			for(int32_t xAddr = 0; xAddr < SLICE_WIDTH/4; xAddr++)
			{
				for(int32_t yAddr = 0; yAddr < SLICE_HEIGHT/4; yAddr = yAddr + COMBINED_PIXELS)
				{
					if (glPLSlicesScale2[glPLActiveSliceIdx][xAddr][yAddr/COMBINED_PIXELS] != 0)
					{
						for(int r = 0; r < 10; r++)
						{
							std::cout << "Ha! I caught you, the pixel which is not clear!" << std::endl;
							std::cout << "x is: " << xAddr << "\t y is: " << yAddr << "\t idx is: " << glPLActiveSliceIdx << std::endl;
						}
					}
				}
			}
		}

#endif

        lastTsHW = currentTsHW;
        currentTsHW = ts;

        for(int r = 0; r < 1; r++)
		{
			std::cout << "Rotated successfully from HW!!!!" << std::endl;
			std::cout << "x is: " << x << "\t y is: " << y << "\t idx is: " << glPLActiveSliceIdx << std::endl;
			std::cout << "delataTsHW is: " << ((currentTsHW - lastTsHW) >> 9) << std::endl;
		}

		rotateSliceResetLoop:for(int areaX = 0; areaX < AREA_NUMBER; areaX++)
		{
#pragma HLS PIPELINE
#pragma HLS INLINE off
			for(int areaY = 0; areaY < AREA_NUMBER; areaY++)
			{
				areaEventRegs[areaX][areaY] = 0;
			}
		}

//		   for (int16_t resetCnt = 0; resetCnt < 2048; resetCnt = resetCnt + 2)
//		   {
//			   resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL) * COMBINED_PIXELS, (sliceIdx_t)(glPLActiveSliceIdx + 3));
//			   resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL + 1) * COMBINED_PIXELS, (sliceIdx_t)(glPLActiveSliceIdx + 3));
//		   }
	}

	uint16_t c = areaEventRegs[x/AREA_SIZE][y/AREA_SIZE];
	c = c + 1;
	areaEventRegs[x/AREA_SIZE][y/AREA_SIZE] = c;
    areaCountExceeded = (c >= tmpThr);

    sliceIdx_t idx = glPLActiveSliceIdx;
	if(idx == 0)
	{

		writePixScale0(x, y, 0);
		writePixScale1(x, y, 0);
		writePixScale2(x, y, 0);

		resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
		resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
		resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
		resetCntScale0++;
		resetCntScale1++;
		resetCntScale2++;
		resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
		resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
		resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
		resetCntScale0++;
		resetCntScale1++;
		resetCntScale2++;
	}
	else if(idx == 1)
	{

		writePixScale0(x, y, 1);
		writePixScale1(x, y, 1);
		writePixScale2(x, y, 1);

		resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
		resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
		resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
		resetCntScale0++;
		resetCntScale1++;
		resetCntScale2++;
		resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
		resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
		resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
		resetCntScale0++;
		resetCntScale1++;
		resetCntScale2++;
	}
	else if(idx == 2)
	{
		writePixScale0(x, y, 2);
		writePixScale1(x, y, 2);
		writePixScale2(x, y, 2);

		resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
		resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
		resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
		resetCntScale0++;
		resetCntScale1++;
		resetCntScale2++;
		resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
		resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
		resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
		resetCntScale0++;
		resetCntScale1++;
		resetCntScale2++;
	}
	else
	{
		writePixScale0(x, y, 3);
		writePixScale1(x, y, 3);
		writePixScale2(x, y, 3);

		resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
		resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
		resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
		resetCntScale0++;
		resetCntScale1++;
		resetCntScale2++;
		resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
		resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
		resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
		resetCntScale0++;
		resetCntScale1++;
		resetCntScale2++;
	}

	deltaTsHW = ((currentTsHW - lastTsHW) >> 9);
	deltaTsHWBak = deltaTsHW;
}


//void readSlices(hls::stream<apUint10_t> &xStream, hls::stream<apUint10_t> &yStream, hls::stream<sliceIdx_t> &idxStream,
//		hls::stream<apUint10_t> &xWrStream, hls::stream<apUint10_t> &yWrStream, hls::stream<sliceIdx_t> &idxWrStream,
//		hls::stream<col_pix_t> &currentPixStream, hls::stream<apIntBlockCol_t> &refStreamOut, hls::stream<apIntBlockCol_t> &tagStreamOut)
//{
//	apUint10_t xRd;
//	apUint10_t yRd;
//	sliceIdx_t idx;
//
//	readSlicesInnerLoop:for(int8_t xOffSet = 0; xOffSet < BLOCK_SIZE + 2 * SEARCH_DISTANCE + 1; xOffSet++)
//	{
//#pragma HLS PIPELINE rewind
//		if (xOffSet == 0)
//		{
//			xRd = xStream.read();
//			yRd = yStream.read();
//			idx = idxStream.read();
//
//			col_pix_t tmpData;
//
//			tmpData = glPLSlices[idx][xRd][yRd/COMBINED_PIXELS];
//
//			xWrStream.write(xRd);
//			yWrStream.write(yRd);
//			idxWrStream.write(idx);
//			currentPixStream.write(tmpData);
//		}
//		else
//		{
//			pix_t out1[BLOCK_SIZE + 2 * SEARCH_DISTANCE];
//			pix_t out2[BLOCK_SIZE + 2 * SEARCH_DISTANCE];
//
////				resetPix(xRd + xOffSet, yRd , (sliceIdx_t)(idx + 3));
//
////			resetPix(xRd + xOffSet, 1 , (sliceIdx_t)(idx + 3));
//
//			readBlockCols(xRd - BLOCK_SIZE/2 - SEARCH_DISTANCE + xOffSet - 1, yRd , idx + 1, idx + 2, out1, out2);
//
//			apIntBlockCol_t refBlockCol;
//			apIntBlockCol_t tagBlockCol;
//
//			for (int8_t l = 0; l < BLOCK_SIZE + 2 * SEARCH_DISTANCE; l++)
//			{
//				refBlockCol.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l) = out1[l];
//				tagBlockCol.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l) = out2[l];
//			}
//
//			refStreamOut << refBlockCol;
//			tagStreamOut << tagBlockCol;
//		}
//	}
//}

//void writeSlices(hls::stream<apUint10_t> &xWrStream, hls::stream<apUint10_t> &yWrStream, hls::stream<sliceIdx_t> &idxWrStream,
//		hls::stream<col_pix_t> &currentColStream)
//{
//	apUint10_t xWr;
//	apUint10_t yWr;
//	sliceIdx_t idx;
//	col_pix_t currentColData;
//
//	writeSlicesInnerLoop:for(int8_t xOffSet = 0; xOffSet < BLOCK_SIZE + 2 * SEARCH_DISTANCE + 1; xOffSet++)
//	{
//		if (xOffSet == 0)
//		{
//			xWr = xWrStream.read();
//			yWr = yWrStream.read();
//			idx = idxWrStream.read();
//			currentColData = currentColStream.read();
//
//			pix_t tmpTmpData;
//			ap_uint<8> yNewIdx = yWr%COMBINED_PIXELS;
//
//			tmpTmpData = readPixFromCol(currentColData, yNewIdx);
//
//			tmpTmpData +=  1;
//
//			writePixToCol(&currentColData, yNewIdx, tmpTmpData);
//
//			glPLSlices[idx][xWr][yWr/COMBINED_PIXELS] = currentColData;
//		}
//		else
//		{
//			resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL) * COMBINED_PIXELS, (sliceIdx_t)(idx + 3));
//			resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL + 1) * COMBINED_PIXELS, (sliceIdx_t)(idx + 3));
//			resetCnt += 2;
//		}
//	}
//}


//void rwSlices(hls::stream<apUint10_t> &xStream, hls::stream<apUint10_t> &yStream, hls::stream<sliceIdx_t> &idxStream,
//			  hls::stream<apIntBlockCol_t> &refStreamOut, hls::stream<apIntBlockCol_t> &tagStreamOut,
//			  hls::stream<apIntBlockCol_t> &refStreamOutScale1, hls::stream<apIntBlockCol_t> &tagStreamOutScale1,
//			  hls::stream<apIntBlockCol_t> &refStreamOutScale2, hls::stream<apIntBlockCol_t> &tagStreamOutScale2)
//{
//#pragma HLS INLINE off
//	apUint10_t xRd;
//	apUint10_t yRd;
//	sliceIdx_t idx;
//
//	apIntBlockCol_t colData0[BLOCK_SIZE], colData1[BLOCK_SIZE + 2 * SEARCH_DISTANCE];
//
//	pix_t out1_debug[BLOCK_SIZE + 2 * SEARCH_DISTANCE][BLOCK_SIZE + 2 * SEARCH_DISTANCE];
//	pix_t out2_debug[BLOCK_SIZE + 2 * SEARCH_DISTANCE][BLOCK_SIZE + 2 * SEARCH_DISTANCE];
//
//    pix_t out1Scale1_debug[BLOCK_SIZE + 2 * SEARCH_DISTANCE][BLOCK_SIZE+ 2 * SEARCH_DISTANCE];
//    pix_t out2Scale1_debug[BLOCK_SIZE + 2 * SEARCH_DISTANCE][BLOCK_SIZE+ 2 * SEARCH_DISTANCE];
//
//    pix_t out1Scale2_debug[BLOCK_SIZE + 2 * SEARCH_DISTANCE][BLOCK_SIZE+ 2 * SEARCH_DISTANCE];
//    pix_t out2Scale2_debug[BLOCK_SIZE + 2 * SEARCH_DISTANCE][BLOCK_SIZE+ 2 * SEARCH_DISTANCE];
//
////	rwSlicesLoop:for(int32_t i = 0; i < eventIterSize; i++)
////	{
//		rwSlicesInnerLoop:for(int8_t xOffSet = 0; xOffSet < BLOCK_SIZE * (2 * SEARCH_DISTANCE + 1); xOffSet++)
//		{
//#pragma HLS PIPELINE rewind
////			xRd = (xOffSet == 0)? (ap_uint<8>)(xStream.read()): xRd;
////			yRd = (xOffSet == 0)? (ap_uint<8>)(yStream.read()): yRd;
//			if (xOffSet == 0)
//			{
//				xRd = xStream.read();
//				yRd = yStream.read();
//				idx = idxStream.read();
//
//				/* This is only for C-simulation and debugging. */
//				if (oldIdx != idx)
//				{
//					oldIdx = idx;
//					// Check the accumulation slice is clear or not
//					for(int32_t xAddr = 0; xAddr < SLICE_WIDTH; xAddr++)
//					{
//						for(int32_t yAddr = 0; yAddr < SLICE_HEIGHT; yAddr = yAddr + COMBINED_PIXELS)
//						{
//							if (glPLSlices[idx][xAddr][yAddr/COMBINED_PIXELS] != 0)
//							{
//								for(int r = 0; r < 10; r++)
//								{
//									std::cout << "Ha! I caught you, the pixel which is not clear!" << std::endl;
//									std::cout << "x is: " << xAddr << "\t y is: " << yAddr << "\t idx is: " << idx << std::endl;
//								}
//							}
//						}
//					}
//				}
//
//#if DEBUG
//				/* This is only for C-simulation and debugging. */
//				debugRegion:
//				{
//					for(int i = 0; i < BLOCK_SIZE + 2 * SEARCH_DISTANCE; i++)
//					{
//						readBlockCols(xRd - BLOCK_SIZE/2 - SEARCH_DISTANCE + i, yRd , idx + 1, idx + 2, out1_debug[i], out2_debug[i]);
//						readBlockColsScale1(xRd/2 - BLOCK_SIZE/2 - SEARCH_DISTANCE + i, yRd/2 , idx + 1, idx + 2, out1Scale1_debug[i], out2Scale1_debug[i]);
//						readBlockColsScale2(xRd/4 - BLOCK_SIZE/2 - SEARCH_DISTANCE + i, yRd/4 , idx + 1, idx + 2, out1Scale2_debug[i], out2Scale2_debug[i]);
//					}
//				}
//#endif
//
//				writePix(xRd, yRd, idx);
//
//				resetPix(resetCnt/(PIXS_PER_COL), (resetCnt % (PIXS_PER_COL)) * COMBINED_PIXELS, (sliceIdx_t)(idx + 3));
//				resetCnt++;
//			}
//			else if(xOffSet < BLOCK_SIZE + 2 * SEARCH_DISTANCE + 1)
//			{
//				pix_t out1[BLOCK_SIZE + 2 * SEARCH_DISTANCE];
//				pix_t out2[BLOCK_SIZE + 2 * SEARCH_DISTANCE];
//
//	            pix_t out1Scale1[BLOCK_SIZE+ 2 * SEARCH_DISTANCE];
//	            pix_t out2Scale1[BLOCK_SIZE+ 2 * SEARCH_DISTANCE];
//
//	            pix_t out1Scale2[BLOCK_SIZE+ 2 * SEARCH_DISTANCE];
//	            pix_t out2Scale2[BLOCK_SIZE+ 2 * SEARCH_DISTANCE];
//
//				readBlockCols(xRd - BLOCK_SIZE/2 - SEARCH_DISTANCE + xOffSet - 1, yRd , idx + 1, idx + 2, out1, out2);
//				readBlockColsScale1(xRd/2 - BLOCK_SIZE/2 - SEARCH_DISTANCE + xOffSet - 1, yRd/2 , idx + 1, idx + 2, out1Scale1, out2Scale1);
//				readBlockColsScale2(xRd/4 - BLOCK_SIZE/2 - SEARCH_DISTANCE + xOffSet - 1, yRd/4 , idx + 1, idx + 2, out1Scale2, out2Scale2);
//
//				apIntBlockCol_t refBlockCol;
//				apIntBlockCol_t tagBlockCol;
//
//				apIntBlockCol_t refBlockColScale1;
//				apIntBlockCol_t tagBlockColScale1;
//
//				apIntBlockCol_t refBlockColScale2;
//				apIntBlockCol_t tagBlockColScale2;
//
//				for (int8_t l = 0; l < BLOCK_SIZE + 2 * SEARCH_DISTANCE; l++)
//				{
//					refBlockCol.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l) = out1[l];
//					tagBlockCol.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l) = out2[l];
//
//					refBlockColScale1.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l) = out1Scale1[l];
//					tagBlockColScale1.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l) = out2Scale1[l];
//
//					refBlockColScale2.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l) = out1Scale2[l];
//					tagBlockColScale2.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l) = out2Scale2[l];
//				}
//
//				if (xOffSet > SEARCH_DISTANCE && xOffSet <= SEARCH_DISTANCE + BLOCK_SIZE)
//				{
//					refStreamOut << refBlockCol;
//					refStreamOutScale1 <<  refBlockColScale1;
//					refStreamOutScale2 <<  refBlockColScale2;
//				}
//				tagStreamOut << tagBlockCol;
//				tagStreamOutScale1 << tagBlockColScale1;
//				tagStreamOutScale2 << tagBlockColScale2;
//			}
//			else
//			{
//				// Reset two pixels at the same time because it has two write ports.
//				resetPix(resetCnt/(PIXS_PER_COL), (resetCnt % (PIXS_PER_COL)) * COMBINED_PIXELS, (sliceIdx_t)(idx + 3));
//				resetCnt++;
//				resetPix(resetCnt/(PIXS_PER_COL), (resetCnt % (PIXS_PER_COL)) * COMBINED_PIXELS, (sliceIdx_t)(idx + 3));
//				resetCnt++;
//			}
//		}
////	}
//
//#if DEBUG
//	printRegion: if(xRd == 211 && yRd == 242)
//	{
//		std::cout << "Reference block of scale 0 is: " << std::endl;
//		for(uint8_t blockX = SEARCH_DISTANCE; blockX < BLOCK_SIZE + SEARCH_DISTANCE; blockX++)
//		{
//			for(uint8_t blockY = SEARCH_DISTANCE; blockY < BLOCK_SIZE + SEARCH_DISTANCE; blockY++)
//			{
//				std::cout << out1_debug[blockX][blockY] << "\t";
//			}
//			std::cout << std::endl;
//		}
//		std::cout << std::endl;
//
//		std::cout << "target block of scale 0 is: " << std::endl;
//		for(uint8_t blockX = 0; blockX < BLOCK_SIZE + 2 * SEARCH_DISTANCE; blockX++)
//		{
//			for(uint8_t blockY = 0; blockY < BLOCK_SIZE + 2 * SEARCH_DISTANCE; blockY++)
//			{
//				std::cout << out2_debug[blockX][blockY] << "\t";
//			}
//			std::cout << std::endl;
//		}
//		std::cout << std::endl;
//
//		std::cout << "Reference block of scale 1 is: " << std::endl;
//		for(uint8_t blockX = SEARCH_DISTANCE; blockX < BLOCK_SIZE + SEARCH_DISTANCE; blockX++)
//		{
//			for(uint8_t blockY = SEARCH_DISTANCE; blockY < BLOCK_SIZE + SEARCH_DISTANCE; blockY++)
//			{
//				std::cout << out1Scale1_debug[blockX][blockY] << "\t";
//			}
//			std::cout << std::endl;
//		}
//		std::cout << std::endl;
//
//		std::cout << "target block of scale 1 is: " << std::endl;
//		for(uint8_t blockX = 0; blockX < BLOCK_SIZE + 2 * SEARCH_DISTANCE; blockX++)
//		{
//			for(uint8_t blockY = 0; blockY < BLOCK_SIZE + 2 * SEARCH_DISTANCE; blockY++)
//			{
//				std::cout << out2Scale1_debug[blockX][blockY] << "\t";
//			}
//			std::cout << std::endl;
//		}
//		std::cout << std::endl;
//
//		std::cout << "Reference block of scale 2 is: " << std::endl;
//		for(uint8_t blockX = SEARCH_DISTANCE; blockX < BLOCK_SIZE + SEARCH_DISTANCE; blockX++)
//		{
//			for(uint8_t blockY = SEARCH_DISTANCE; blockY < BLOCK_SIZE + SEARCH_DISTANCE; blockY++)
//			{
//				std::cout << out1Scale2_debug[blockX][blockY] << "\t";
//			}
//			std::cout << std::endl;
//		}
//		std::cout << std::endl;
//
//		std::cout << "target block of scale 2 is: " << std::endl;
//		for(uint8_t blockX = 0; blockX < BLOCK_SIZE + 2 * SEARCH_DISTANCE; blockX++)
//		{
//			for(uint8_t blockY = 0; blockY < BLOCK_SIZE + 2 * SEARCH_DISTANCE; blockY++)
//			{
//				std::cout << out2Scale2_debug[blockX][blockY] << "\t";
//			}
//			std::cout << std::endl;
//		}
//		std::cout << std::endl;
//	}
//
//
//	resetLoop: for (int16_t resetCnt = 0; resetCnt < SLICE_HEIGHT * SLICE_WIDTH / COMBINED_PIXELS; resetCnt = resetCnt + 2)
//	{
//		resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL) * COMBINED_PIXELS, (sliceIdx_t)(idx + 3));
//		resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL + 1) * COMBINED_PIXELS, (sliceIdx_t)(idx + 3));
//	}
//#endif
//
//
////	resetLoop: for (int16_t resetCnt = 0; resetCnt < SLICE_HEIGHT * SLICE_WIDTH / COMBINED_PIXELS; resetCnt = resetCnt + 2)
////	{
////		resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL) * COMBINED_PIXELS, (sliceIdx_t)(idx + 3));
////		resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL + 1) * COMBINED_PIXELS, (sliceIdx_t)(idx + 3));
////	}
//
//}

void rwSlicesScale0(hls::stream<apUint10_t> &xStream, hls::stream<apUint10_t> &yStream,
		  hls::stream< ap_int<8> > &xInitOffsetStream, hls::stream< ap_int<8> > &yInitOffsetStream,
		  hls::stream<sliceIdx_t> &idxStream,
		  hls::stream<apIntBlockScale0Col_t> &refSingleStreamOut, hls::stream<apIntBlockScale0Col_t> &tagSingleStreamOut)
{
#pragma HLS INLINE
	apUint10_t xRd;
	apUint10_t yRd;
	sliceIdx_t idx;
	ap_int<8> xInitOffset, yInitOffset;

	apIntBlockScale0Col_t colData0[BLOCK_SIZE_SCALE_0], colData1[BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE];

	pix_t out1_debug[BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE][BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE];
	pix_t out2_debug[BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE][BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE];

	pix_t out1[BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE];
	pix_t out2[BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE];

	apIntBlockScale0Col_t refBlockCol;
	apIntBlockScale0Col_t tagBlockCol;

	int iterationCnt_i = 0, iterationCnt_k = 0;

//	rwSlicesLoop:for(int32_t i = 0; i < eventIterSize; i++)
//	{
		rwSlicesInnerLoop:for(int16_t xOffSet = -1; xOffSet < BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE; xOffSet++)
		{
#pragma HLS PIPELINE rewind
//			xRd = (xOffSet == 0)? (ap_uint<8>)(xStream.read()): xRd;
//			yRd = (xOffSet == 0)? (ap_uint<8>)(yStream.read()): yRd;
			if (xOffSet == -1)
			{
				xRd = xStream.read();
				yRd = yStream.read();
				idx = idxStream.read();
				xInitOffset = xInitOffsetStream.read();
				yInitOffset = yInitOffsetStream.read();

#if DEBUG
				/* This is only for C-simulation and debugging. */
				debugRegion:
				{
					for(int i = 0; i < BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE; i++)
					{
						readBlockCols(xRd - BLOCK_SIZE_SCALE_0/2 - SEARCH_DISTANCE + i, yRd , xInitOffset, yInitOffset, idx + 1, idx + 2, out1_debug[i], out2_debug[i]);
					}
				}
#endif
			}
			else
			{
				if(idx == 0)
				{
					if(xOffSet == 0)
					{
						writePixScale0(xRd, yRd, 0);
					}

					resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
					resetCntScale0++;
					resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
					resetCntScale0++;

					if(xOffSet >= 0 && xOffSet < BLOCK_SIZE_SCALE_0 + (2 * SEARCH_DISTANCE))
					{
						readBlockCols(apUint10_t(xRd - BLOCK_SIZE_SCALE_0/2 - SEARCH_DISTANCE + xOffSet), yRd , xInitOffset, yInitOffset, (sliceIdx_t)(0 + 1), (sliceIdx_t)(0 + 2), out1, out2);
					}
				}
				else if(idx == 1)
				{
					if(xOffSet == 0)
					{
						writePixScale0(xRd, yRd, 1);
					}

					resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
					resetCntScale0++;
					resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
					resetCntScale0++;

					if(xOffSet >= 0 && xOffSet < BLOCK_SIZE_SCALE_0 + (2 * SEARCH_DISTANCE))
					{
						readBlockCols(apUint10_t(xRd - BLOCK_SIZE_SCALE_0/2 - SEARCH_DISTANCE + xOffSet), yRd , xInitOffset, yInitOffset, (sliceIdx_t)(1 + 1), (sliceIdx_t)(1 + 2), out1, out2);
					}

				}
				else if(idx == 2)
				{
					if(xOffSet == 0)
					{
						writePixScale0(xRd, yRd, 2);
					}

					resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
					resetCntScale0++;
					resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
					resetCntScale0++;

					if(xOffSet >= 0 && xOffSet < BLOCK_SIZE_SCALE_0 + (2 * SEARCH_DISTANCE))
					{
						readBlockCols(apUint10_t(xRd - BLOCK_SIZE_SCALE_0/2 - SEARCH_DISTANCE + xOffSet), yRd , xInitOffset, yInitOffset, (sliceIdx_t)(2 + 1), (sliceIdx_t)(2 + 2), out1, out2);
					}
				}
				else
				{
					if(xOffSet == 0)
					{
						writePixScale0(xRd, yRd, 3);
					}

					resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
					resetCntScale0++;
					resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
					resetCntScale0++;

					if(xOffSet >= 0 && xOffSet < BLOCK_SIZE_SCALE_0 + (2 * SEARCH_DISTANCE))
					{
						readBlockCols(apUint10_t(xRd - BLOCK_SIZE_SCALE_0/2 - SEARCH_DISTANCE + xOffSet), yRd , xInitOffset, yInitOffset, (sliceIdx_t)(3 + 1), (sliceIdx_t)(3 + 2), out1, out2);
					}
				}

				for (int8_t l = 0; l < BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE; l++)
				{
					refBlockCol.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l) = out1[l];
					tagBlockCol.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l) = out2[l];
				}

				refSingleStreamOut << refBlockCol;
				tagSingleStreamOut << tagBlockCol;
			}
		}
//	}

#if DEBUG
	printRegion: if(xRd == 290 && yRd == 134)
	{
		std::cout << "Reference block of scale 0 is: " << std::endl;
		for(uint8_t blockX = 0; blockX < BLOCK_SIZE_SCALE_0 + 0; blockX++)
		{
			for(uint8_t blockY = SEARCH_DISTANCE; blockY < BLOCK_SIZE_SCALE_0 + SEARCH_DISTANCE; blockY++)
			{
				std::cout << out1_debug[blockX][blockY] << "\t";
			}
			std::cout << std::endl;
		}
		std::cout << std::endl;

		std::cout << "target block of scale 0 is: " << std::endl;
		for(uint8_t blockX = 0; blockX < BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE; blockX++)
		{
			for(uint8_t blockY = 0; blockY < BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE; blockY++)
			{
				std::cout << out2_debug[blockX][blockY] << "\t";
			}
			std::cout << std::endl;
		}
		std::cout << std::endl;
	}

	resetLoop: for (int16_t resetCnt = 0; resetCnt < SLICE_HEIGHT * SLICE_WIDTH / COMBINED_PIXELS; resetCnt = resetCnt + 2)
	{
		resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(idx + 3));
		resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(idx + 3));
	}
#endif


//	resetLoop: for (int16_t resetCnt = 0; resetCnt < SLICE_HEIGHT * SLICE_WIDTH / COMBINED_PIXELS; resetCnt = resetCnt + 2)
//	{
//		resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL) * COMBINED_PIXELS, (sliceIdx_t)(idx + 3));
//		resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL + 1) * COMBINED_PIXELS, (sliceIdx_t)(idx + 3));
//	}

}

void rwSlicesScale1(hls::stream<apUint10_t> &xStream, hls::stream<apUint10_t> &yStream,
		  hls::stream< ap_int<8> > &xInitOffsetStream, hls::stream< ap_int<8> > &yInitOffsetStream,
		  hls::stream<sliceIdx_t> &idxStream,
		  hls::stream<apIntBlockScale1Col_t> &refStreamOutScale1, hls::stream<apIntBlockScale1Col_t> &tagStreamOutScale1)
{
#pragma HLS INLINE
	apUint10_t xRd;
	apUint10_t yRd;
	sliceIdx_t idx;
	ap_int<8> xInitOffset, yInitOffset;

	apIntBlockScale1Col_t colData0[BLOCK_SIZE_SCALE_1], colData1[BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE];

    pix_t out1Scale1_debug[BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE][BLOCK_SIZE_SCALE_1+ 2 * SEARCH_DISTANCE];
    pix_t out2Scale1_debug[BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE][BLOCK_SIZE_SCALE_1+ 2 * SEARCH_DISTANCE];

    pix_t out1Scale1[BLOCK_SIZE_SCALE_1+ 2 * SEARCH_DISTANCE];
    pix_t out2Scale1[BLOCK_SIZE_SCALE_1+ 2 * SEARCH_DISTANCE];

	apIntBlockScale1Col_t refBlockCol;
	apIntBlockScale1Col_t tagBlockCol;

//	rwSlicesLoop:for(int32_t i = 0; i < eventIterSize; i++)
//	{
		rwSlicesInnerLoop:for(int16_t xOffSet = -1; xOffSet < BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE; xOffSet++)
		{
#pragma HLS PIPELINE rewind
//			xRd = (xOffSet == 0)? (ap_uint<8>)(xStream.read()): xRd;
//			yRd = (xOffSet == 0)? (ap_uint<8>)(yStream.read()): yRd;
			if (xOffSet == -1)
			{
				xRd = xStream.read();
				yRd = yStream.read();
				idx = idxStream.read();
				xInitOffset = xInitOffsetStream.read();
				yInitOffset = yInitOffsetStream.read();

#if DEBUG
				/* This is only for C-simulation and debugging. */
				debugRegion:
				{
					for(int i = 0; i < BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE; i++)
					{
						readBlockColsScale1(xRd/2 - BLOCK_SIZE_SCALE_1/2 - SEARCH_DISTANCE + i, yRd/2 , xInitOffset, yInitOffset, idx + 1, idx + 2, out1Scale1_debug[i], out2Scale1_debug[i]);
					}
				}
#endif
			}
			else
			{
				if(idx == 0)
				{
					if(xOffSet == 0)
					{
						writePixScale1(xRd, yRd, 0);
					}

					resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
					resetCntScale1++;
					resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
					resetCntScale1++;

					readBlockColsScale1(xRd/2 - BLOCK_SIZE_SCALE_1/2 - SEARCH_DISTANCE + xOffSet, yRd/2 , xInitOffset, yInitOffset, 0 + 1, 0 + 2, out1Scale1, out2Scale1);
				}
				else if(idx == 1)
				{
					if(xOffSet == 0)
					{
						writePixScale1(xRd, yRd, 1);
					}

					resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
					resetCntScale1++;
					resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
					resetCntScale1++;

					readBlockColsScale1(xRd/2 - BLOCK_SIZE_SCALE_1/2 - SEARCH_DISTANCE + xOffSet, yRd/2 , xInitOffset, yInitOffset, 1 + 1, 1 + 2, out1Scale1, out2Scale1);
				}
				else if(idx == 2)
				{
					if(xOffSet == 0)
					{
						writePixScale1(xRd, yRd, 2);
					}

					resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
					resetCntScale1++;
					resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
					resetCntScale1++;

					readBlockColsScale1(xRd/2 - BLOCK_SIZE_SCALE_1/2 - SEARCH_DISTANCE + xOffSet, yRd/2 , xInitOffset, yInitOffset, 2 + 1, 2 + 2, out1Scale1, out2Scale1);
				}
				else
				{
					if(xOffSet == 0)
					{
						writePixScale1(xRd, yRd, 3);
					}

					resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
					resetCntScale1++;
					resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
					resetCntScale1++;

					readBlockColsScale1(xRd/2 - BLOCK_SIZE_SCALE_1/2 - SEARCH_DISTANCE + xOffSet, yRd/2 , xInitOffset, yInitOffset, 3 + 1, 3 + 2, out1Scale1, out2Scale1);
				}

				for (int8_t l = 0; l < BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE; l++)
				{
					refBlockCol.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l) = out1Scale1[l];
					tagBlockCol.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l) = out2Scale1[l];
				}

				refStreamOutScale1 << refBlockCol;
				tagStreamOutScale1 << tagBlockCol;
			}
		}
//	}

#if DEBUG
	printRegion: if(xRd == 290 && yRd == 134)
	{
		std::cout << "Reference block of scale 1 is: " << std::endl;
		for(uint8_t blockX = 0; blockX < BLOCK_SIZE_SCALE_1 + 0; blockX++)
		{
			for(uint8_t blockY = SEARCH_DISTANCE; blockY < BLOCK_SIZE_SCALE_1 + SEARCH_DISTANCE; blockY++)
			{
				std::cout << out1Scale1_debug[blockX][blockY] << "\t";
			}
			std::cout << std::endl;
		}
		std::cout << std::endl;

		std::cout << "target block of scale 1 is: " << std::endl;
		for(uint8_t blockX = 0; blockX < BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE; blockX++)
		{
			for(uint8_t blockY = 0; blockY < BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE; blockY++)
			{
				std::cout << out2Scale1_debug[blockX][blockY] << "\t";
			}
			std::cout << std::endl;
		}
		std::cout << std::endl;
	}

	resetLoop: for (int16_t resetCnt = 0; resetCnt < SLICE_HEIGHT * SLICE_WIDTH / ( COMBINED_PIXELS * 2 ); resetCnt = resetCnt + 2)
	{
		resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(idx + 3));
		resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(idx + 3));
	}
#endif


//	resetLoop: for (int16_t resetCnt = 0; resetCnt < SLICE_HEIGHT * SLICE_WIDTH / COMBINED_PIXELS; resetCnt = resetCnt + 2)
//	{
//		resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL) * COMBINED_PIXELS, (sliceIdx_t)(idx + 3));
//		resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL + 1) * COMBINED_PIXELS, (sliceIdx_t)(idx + 3));
//	}

}

void rwSlicesScale2(hls::stream<apUint10_t> &xStream, hls::stream<apUint10_t> &yStream, hls::stream<sliceIdx_t> &idxStream,
			  hls::stream<apIntBlockScale2Col_t> &refStreamOutScale2, hls::stream<apIntBlockScale2Col_t> &tagStreamOutScale2)
{
#pragma HLS INLINE
	apUint10_t xRd;
	apUint10_t yRd;
	sliceIdx_t idx;

	apIntBlockScale2Col_t colData0[BLOCK_SIZE_SCALE_2], colData1[BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE];

    pix_t out1Scale2_debug[BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE][BLOCK_SIZE_SCALE_2+ 2 * SEARCH_DISTANCE];
    pix_t out2Scale2_debug[BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE][BLOCK_SIZE_SCALE_2+ 2 * SEARCH_DISTANCE];

    pix_t out1Scale2[BLOCK_SIZE_SCALE_2+ 2 * SEARCH_DISTANCE];
    pix_t out2Scale2[BLOCK_SIZE_SCALE_2+ 2 * SEARCH_DISTANCE];

//	rwSlicesLoop:for(int32_t i = 0; i < eventIterSize; i++)
//	{
		rwSlicesInnerLoop:for(int16_t xOffSet = -1; xOffSet < BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE; xOffSet++)
		{
#pragma HLS PIPELINE rewind
//			xRd = (xOffSet == 0)? (ap_uint<8>)(xStream.read()): xRd;
//			yRd = (xOffSet == 0)? (ap_uint<8>)(yStream.read()): yRd;
			if (xOffSet == -1)
			{
				xRd = xStream.read();
				yRd = yStream.read();
				idx = idxStream.read();

#if DEBUG
				/* This is only for C-simulation and debugging. */
				debugRegion:
				{
					for(int i = 0; i < BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE; i++)
					{
						readBlockColsScale2(xRd/4 - BLOCK_SIZE_SCALE_2/2 - SEARCH_DISTANCE + i, yRd/4 , 0, 0, idx + 1, idx + 2, out1Scale2_debug[i], out2Scale2_debug[i]);
					}
				}
#endif
			}
			else
			{
				if(idx == 0)
				{
					if(xOffSet == 0)
					{
						writePixScale2(xRd, yRd, 0);
					}

					resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
					resetCntScale2++;
					resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
					resetCntScale2++;

					readBlockColsScale2(xRd/4 - BLOCK_SIZE_SCALE_2/2 - SEARCH_DISTANCE + xOffSet, yRd/4 , 0, 0, 0 + 1, 0 + 2, out1Scale2, out2Scale2);
				}
				else if(idx == 1)
				{
					if(xOffSet == 0)
					{
						writePixScale2(xRd, yRd, 1);
					}

					resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
					resetCntScale2++;
					resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
					resetCntScale2++;

					readBlockColsScale2(xRd/4 - BLOCK_SIZE_SCALE_2/2 - SEARCH_DISTANCE + xOffSet, yRd/4 , 0, 0, 1 + 1, 1 + 2, out1Scale2, out2Scale2);
				}
				else if(idx == 2)
				{
					if(xOffSet == 0)
					{
						writePixScale2(xRd, yRd, 2);
					}

					resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
					resetCntScale2++;
					resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
					resetCntScale2++;

					readBlockColsScale2(xRd/4 - BLOCK_SIZE_SCALE_2/2 - SEARCH_DISTANCE + xOffSet, yRd/4 , 0, 0, 2 + 1, 2 + 2, out1Scale2, out2Scale2);
				}
				else
				{
					if(xOffSet == 0)
					{
						writePixScale2(xRd, yRd, 3);
					}

					resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
					resetCntScale2++;
					resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
					resetCntScale2++;

					readBlockColsScale2(xRd/4 - BLOCK_SIZE_SCALE_2/2 - SEARCH_DISTANCE + xOffSet, yRd/4 , 0, 0, 3 + 1, 3 + 2, out1Scale2, out2Scale2);
				}

				apIntBlockScale2Col_t refBlockColScale2;
				apIntBlockScale2Col_t tagBlockColScale2;

				for (int8_t l = 0; l < BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE; l++)
				{
					refBlockColScale2.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l) = out1Scale2[l];
					tagBlockColScale2.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l) = out2Scale2[l];
				}

				if (xOffSet >= SEARCH_DISTANCE && xOffSet < SEARCH_DISTANCE + BLOCK_SIZE_SCALE_2)
				{
					refStreamOutScale2 <<  refBlockColScale2;
				}
				tagStreamOutScale2 << tagBlockColScale2;
			}
		}
//	}
#if DEBUG
	printRegion: if(xRd == 290 && yRd == 134)
	{
		std::cout << "Reference block of scale 2 is: " << std::endl;
		for(uint8_t blockX = SEARCH_DISTANCE; blockX < BLOCK_SIZE_SCALE_2 + SEARCH_DISTANCE; blockX++)
		{
			for(uint8_t blockY = SEARCH_DISTANCE; blockY < BLOCK_SIZE_SCALE_2 + SEARCH_DISTANCE; blockY++)
			{
				std::cout << out1Scale2_debug[blockX][blockY] << "\t";
			}
			std::cout << std::endl;
		}
		std::cout << std::endl;

		std::cout << "target block of scale 2 is: " << std::endl;
		for(uint8_t blockX = 0; blockX < BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE; blockX++)
		{
			for(uint8_t blockY = 0; blockY < BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE; blockY++)
			{
				std::cout << out2Scale2_debug[blockX][blockY] << "\t";
			}
			std::cout << std::endl;
		}
		std::cout << std::endl;
	}


	resetLoop: for (int16_t resetCnt = 0; resetCnt < SLICE_HEIGHT * SLICE_WIDTH / ( COMBINED_PIXELS * 4 ); resetCnt = resetCnt + 2)
	{
		resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(idx + 3));
		resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(idx + 3));
	}
#endif


//	resetLoop: for (int16_t resetCnt = 0; resetCnt < SLICE_HEIGHT * SLICE_WIDTH / COMBINED_PIXELS; resetCnt = resetCnt + 2)
//	{
//		resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL) * COMBINED_PIXELS, (sliceIdx_t)(idx + 3));
//		resetPix(resetCnt/PIXS_PER_COL, (resetCnt % PIXS_PER_COL + 1) * COMBINED_PIXELS, (sliceIdx_t)(idx + 3));
//	}

}

void reOrderStreamScale0(hls::stream<apIntBlockScale0Col_t> &refSingleStreamOut,
		hls::stream<apIntBlockScale0Col_t> &tagSingleStreamOut,
		hls::stream<apIntBlockScale0ColNPC_t> &refNPCStreamOut,
		hls::stream<apIntBlockScale0ColNPC_t> &tagNPCStreamOut)
{
#pragma HLS INLINE

	apIntBlockScale0Col_t refBlockCol[BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE], tagBlockCol[BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE];
//#pragma HLS RESOURCE variable=refBlockCol core=RAM_2P_LUTRAM
//#pragma HLS RESOURCE variable=tagBlockCol core=RAM_2P_LUTRAM
#pragma HLS ARRAY_PARTITION variable=refBlockCol complete dim=0
#pragma HLS ARRAY_PARTITION variable=tagBlockCol complete dim=0
	apIntBlockScale0ColNPC_t refBlockColFinal = 0, tagBlockColFinal = 0;

	int iterationCnt_i = 0, iterationCnt_k = 0, iterationCnt_j = 0, iterationCnt_l = 0;

	// It consists of three stages:
	// The first stage: read data from column stream one by one, and output a NPC stream after every NPC cycle.
	// The second stage: only read data and don't output stream
	// The third stage: at this stage, the array are prepared, so we can output NPC stream every single cycle.
	// In fact, the second stage could be removed, but this will make the logic not easy to understand.
	// Currently, the first stage's is corresponding to generate the first final SAD minimum, and the third stage
	// will generated the rest 2*SEARCH_DISTANCE minimums.
	for(int16_t xOffSet = 0; xOffSet < BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE + ITER_CNT_NPC_SCALE_0 * (2 * SEARCH_DISTANCE); xOffSet++)
	{
#pragma HLS PIPELINE rewind
		if(xOffSet >= 0 && xOffSet < ITER_CNT_NPC_SCALE_0 * NPC_SCALE_0)
		{
			refBlockCol[xOffSet] = refSingleStreamOut.read();
			tagBlockCol[xOffSet] = tagSingleStreamOut.read();

			// iterationCnt_l is used to control when to write NPC stream.
			// iterationCnt_j is used to indicate the start offset of a NPC stream.
			if(iterationCnt_l == NPC_SCALE_0 - 1)
			{
				for (int npcIdx = 0; npcIdx < NPC_SCALE_0; npcIdx++)
				{
					refBlockColFinal = refBlockColFinal << (BLOCK_SCALE0_COL_PIXELS);
					refBlockColFinal.range(BLOCK_SCALE0_COL_PIXELS - 1, 0) = refBlockCol[iterationCnt_j + npcIdx];

					tagBlockColFinal = tagBlockColFinal << (BLOCK_SCALE0_COL_PIXELS);
					tagBlockColFinal.range(BLOCK_SCALE0_COL_PIXELS - 1, 0) = tagBlockCol[iterationCnt_j + npcIdx];
				}
				refNPCStreamOut << refBlockColFinal;
				tagNPCStreamOut << tagBlockColFinal;

				if(iterationCnt_j + NPC_SCALE_0 >= BLOCK_SIZE_SCALE_0)
				{
					iterationCnt_j = 0;
					iterationCnt_i++;      // One block is done
				}
				else
				{
					iterationCnt_j = iterationCnt_j + NPC_SCALE_0;
				}
				iterationCnt_l = 0;
			}
			else
			{
				iterationCnt_l++;
			}
		}
		else if(xOffSet >= ITER_CNT_NPC_SCALE_0 * NPC_SCALE_0 && xOffSet < BLOCK_SIZE_SCALE_0 + (2 * SEARCH_DISTANCE))
		{
			refBlockCol[xOffSet] = refSingleStreamOut.read();
			tagBlockCol[xOffSet] = tagSingleStreamOut.read();
		}
		else
		{
			for (int npcIdx = 0; npcIdx < NPC_SCALE_0; npcIdx++)
			{
				refBlockColFinal = refBlockColFinal << (BLOCK_SCALE0_COL_PIXELS);
				refBlockColFinal.range(BLOCK_SCALE0_COL_PIXELS - 1, 0) = refBlockCol[iterationCnt_k + npcIdx];

				tagBlockColFinal = tagBlockColFinal << (BLOCK_SCALE0_COL_PIXELS);
				tagBlockColFinal.range(BLOCK_SCALE0_COL_PIXELS - 1, 0) = tagBlockCol[iterationCnt_k + iterationCnt_i + npcIdx];
			}
			refNPCStreamOut << refBlockColFinal;
			tagNPCStreamOut << tagBlockColFinal;

			if(iterationCnt_k + NPC_SCALE_0 >= BLOCK_SIZE_SCALE_0)  // This is the last iteration of iterationCnt_k inside iterationCnt_i loop
			{
				iterationCnt_k = 0;
				iterationCnt_i++;      // One block is done
			}
			else
			{
				iterationCnt_k = iterationCnt_k + NPC_SCALE_0;
			}
		}
	}
}

void reOrderStreamScale1(hls::stream<apIntBlockScale1Col_t> &refSingleStreamOut,
		hls::stream<apIntBlockScale1Col_t> &tagSingleStreamOut,
		hls::stream<apIntBlockScale1ColNPC_t> &refNPCStreamOut,
		hls::stream<apIntBlockScale1ColNPC_t> &tagNPCStreamOut)
{
#pragma HLS INLINE

	apIntBlockScale1Col_t refBlockCol[BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE], tagBlockCol[BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE];
//#pragma HLS RESOURCE variable=refBlockCol core=RAM_2P_LUTRAM
//#pragma HLS RESOURCE variable=tagBlockCol core=RAM_2P_LUTRAM
#pragma HLS ARRAY_PARTITION variable=refBlockCol complete dim=0
#pragma HLS ARRAY_PARTITION variable=tagBlockCol complete dim=0
	apIntBlockScale1ColNPC_t refBlockColFinal = 0, tagBlockColFinal = 0;

	int iterationCnt_i = 0, iterationCnt_k = 0, iterationCnt_j = 0, iterationCnt_l = 0;

	// It consists of three stages:
	// The first stage: read data from column stream one by one, and output a NPC stream after every NPC cycle.
	// The second stage: only read data and don't output stream
	// The third stage: at this stage, the array are prepared, so we can output NPC stream every single cycle.
	// In fact, the second stage could be removed, but this will make the logic not easy to understand.
	// Currently, the first stage's is corresponding to generate the first final SAD minimum, and the third stage
	// will generated the rest 2*SEARCH_DISTANCE minimums.
	for(int16_t xOffSet = 0; xOffSet < BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE + ITER_CNT_NPC_SCALE_1 * (2 * SEARCH_DISTANCE); xOffSet++)
	{
#pragma HLS PIPELINE rewind
		if(xOffSet >= 0 && xOffSet < ITER_CNT_NPC_SCALE_1 * NPC_SCALE_1)
		{
			refBlockCol[xOffSet] = refSingleStreamOut.read();
			tagBlockCol[xOffSet] = tagSingleStreamOut.read();

			// iterationCnt_l is used to control when to write NPC stream.
			// iterationCnt_j is used to indicate the start offset of a NPC stream.
			if(iterationCnt_l == NPC_SCALE_1 - 1)
			{
				for (int npcIdx = 0; npcIdx < NPC_SCALE_1; npcIdx++)
				{
					refBlockColFinal = refBlockColFinal << (BLOCK_SCALE1_COL_PIXELS);
					refBlockColFinal.range(BLOCK_SCALE1_COL_PIXELS - 1, 0) = refBlockCol[iterationCnt_j + npcIdx];

					tagBlockColFinal = tagBlockColFinal << (BLOCK_SCALE1_COL_PIXELS);
					tagBlockColFinal.range(BLOCK_SCALE1_COL_PIXELS - 1, 0) = tagBlockCol[iterationCnt_j + npcIdx];
				}
				refNPCStreamOut << refBlockColFinal;
				tagNPCStreamOut << tagBlockColFinal;

				if(iterationCnt_j + NPC_SCALE_1 >= BLOCK_SIZE_SCALE_1)
				{
					iterationCnt_j = 0;
					iterationCnt_i++;      // One block is done
				}
				else
				{
					iterationCnt_j = iterationCnt_j + NPC_SCALE_1;
				}
				iterationCnt_l = 0;
			}
			else
			{
				iterationCnt_l++;
			}
		}
		else if(xOffSet >= ITER_CNT_NPC_SCALE_1 * NPC_SCALE_1 && xOffSet < BLOCK_SIZE_SCALE_1 + (2 * SEARCH_DISTANCE))
		{
			refBlockCol[xOffSet] = refSingleStreamOut.read();
			tagBlockCol[xOffSet] = tagSingleStreamOut.read();
		}
		else
		{
			for (int npcIdx = 0; npcIdx < NPC_SCALE_1; npcIdx++)
			{
				refBlockColFinal = refBlockColFinal << (BLOCK_SCALE1_COL_PIXELS);
				refBlockColFinal.range(BLOCK_SCALE1_COL_PIXELS - 1, 0) = refBlockCol[iterationCnt_k + npcIdx];

				tagBlockColFinal = tagBlockColFinal << (BLOCK_SCALE1_COL_PIXELS);
				tagBlockColFinal.range(BLOCK_SCALE1_COL_PIXELS - 1, 0) = tagBlockCol[iterationCnt_k + iterationCnt_i + npcIdx];
			}

			if(iterationCnt_k + NPC_SCALE_1 >= BLOCK_SIZE_SCALE_1)  // This is the last iteration of iterationCnt_k inside iterationCnt_i loop
			{
				iterationCnt_k = 0;
				iterationCnt_i++;
			}
			else
			{
				iterationCnt_k = iterationCnt_k + NPC_SCALE_1;
			}

			refNPCStreamOut << refBlockColFinal;
			tagNPCStreamOut << tagBlockColFinal;
		}
	}
}


// Function description: reorder the column stream read directly from the memory slices.
void colStreamToColSumScale0(hls::stream<apIntBlockScale0ColNPC_t> &colStream0, hls::stream<apIntBlockScale0ColNPC_t> &colStream1,
		hls::stream<apUintColSumNPC_t> &outStream, hls::stream< apUintRefZeroCntNPC_t > &refZeroCntStream,
		hls::stream<apUintValidCntNPC_t> &tagColValidCntStream,
		hls::stream<apUintValidCntNPC_t> &refTagValidCntStream)
{
//	apIntBlockScale0Col_t colData0[BLOCK_SIZE_SCALE_0], colData1[BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE];
//#pragma HLS RESOURCE variable=colData1 core=RAM_2P_LUTRAM
//#pragma HLS RESOURCE variable=colData0 core=RAM_2P_LUTRAM

	apIntBlockScale0ColNPC_t tmpStreamData0, tmpStreamData1;
	apUintColSumNPC_t outputDataNPCRet = 0;
	apUintValidCntNPC_t refTagValidOutputDataNPCRet = 0, tagColValidOutputDataNPCRet = 0;
	apUintRefZeroCntNPC_t refColZeroCntNPCRet = 0;

	colStreamToColSum_label1:for(int i = 0; i < 2 * SEARCH_DISTANCE + 1; i++)
	{
		colStreamToColSum_label2:for(int k = 0; k < BLOCK_SIZE_SCALE_0; k = k + NPC_SCALE_0)
		{
#pragma HLS PIPELINE rewind
			NPCLoop: for(int j = 0; j < NPC_SCALE_0; j++)
			{
				if(j == 0)
				{
					tmpStreamData0 = colStream0.read();
					tmpStreamData1 = colStream1.read();
				}

				apIntBlockScale0Col_t tmpData0 = tmpStreamData0.range(BLOCK_SCALE0_COL_PIXELS - 1, 0);
				apIntBlockScale0Col_t tmpData1 = tmpStreamData1.range(BLOCK_SCALE0_COL_PIXELS - 1, 0);

				pix_t in1[BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE];
				pix_t in2[BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE];

				int16_t out[2*SEARCH_DISTANCE + 1];
				ap_uint<6> refColZeroCnt, tagColValidCnt[2*SEARCH_DISTANCE + 1], refTagValidPixCnt[2*SEARCH_DISTANCE + 1];

				// This forloop should be unrolled completely, otherwise it will take a lot of shift registers
				// to calculate the range function. However, unroll it completely will make all this operations
				// are only wires connection and will not consume any resources.
				for (int8_t l = 0; l < BLOCK_SIZE_SCALE_0 + 2 * SEARCH_DISTANCE; l++)
				{
					in1[l] = tmpData0.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l);
					in2[l] = tmpData1.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l);
				}

				colSADSumScale0(in1, in2, out);

				colZeroCntScale0(in1, in2, &refColZeroCnt, tagColValidCnt, refTagValidPixCnt);

				apUintColSum_t outputData;
				apUintValidCnt_t tagColValidOutputData, refTagValidOutputData;

				for (int l = 0; l < 2 * SEARCH_DISTANCE + 1; l++)
				{
					outputData.range(16 * l + 15, 16 * l) = out[l];
					tagColValidOutputData.range(6 * l + 5, 6 * l) = tagColValidCnt[l];
					refTagValidOutputData.range(6 * l + 5, 6 * l) = refTagValidPixCnt[l];
				}

				// Shift output
				refColZeroCntNPCRet = refColZeroCntNPCRet << 6;
				outputDataNPCRet = outputDataNPCRet << (COL_SUM_BITS * (2 * SEARCH_DISTANCE + 1));
				tagColValidOutputDataNPCRet = tagColValidOutputDataNPCRet << (VALID_CNT_BITS * (2 * SEARCH_DISTANCE + 1));
				refTagValidOutputDataNPCRet = refTagValidOutputDataNPCRet << (VALID_CNT_BITS * (2 * SEARCH_DISTANCE + 1));

				refColZeroCntNPCRet.range(5, 0) = refColZeroCnt;
				outputDataNPCRet.range(COL_SUM_BITS * (2 * SEARCH_DISTANCE + 1) - 1, 0) = outputData;
				tagColValidOutputDataNPCRet.range(VALID_CNT_BITS * (2 * SEARCH_DISTANCE + 1) - 1, 0) = tagColValidOutputData;
				refTagValidOutputDataNPCRet.range(VALID_CNT_BITS * (2 * SEARCH_DISTANCE + 1) - 1, 0) = refTagValidOutputData;

				// Shift input.
				tmpStreamData0 = tmpStreamData0 >> BLOCK_SCALE0_COL_PIXELS;
				tmpStreamData1 = tmpStreamData1 >> BLOCK_SCALE0_COL_PIXELS;

				if(j == NPC_SCALE_0 - 1)
				{
					refZeroCntStream.write(refColZeroCntNPCRet);
					outStream.write(outputDataNPCRet);
					tagColValidCntStream.write(tagColValidOutputDataNPCRet);
					refTagValidCntStream.write(refTagValidOutputDataNPCRet);
				}
			}
		}
	}
}

// Function description: reorder the column stream read directly from the memory slices.
void colStreamToColSumScale1(hls::stream<apIntBlockScale1ColNPC_t> &colStream0, hls::stream<apIntBlockScale1ColNPC_t> &colStream1,
		hls::stream<apUintColSumScale1NPC_t> &outStream, hls::stream< apUintRefZeroCntScale1NPC_t > &refZeroCntStream,
		hls::stream<apUintValidCntScale1NPC_t> &tagColValidCntStream,
		hls::stream<apUintValidCntScale1NPC_t> &refTagValidCntStream)
{
//	apIntBlockScale1Col_t colData0[BLOCK_SIZE_SCALE_1], colData1[BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE];
//#pragma HLS RESOURCE variable=colData1 core=RAM_2P_LUTRAM
//#pragma HLS RESOURCE variable=colData0 core=RAM_2P_LUTRAM

	apIntBlockScale1ColNPC_t tmpStreamData0, tmpStreamData1;
	apUintColSumScale1NPC_t outputDataNPCRet = 0;
	apUintValidCntScale1NPC_t refTagValidOutputDataNPCRet = 0, tagColValidOutputDataNPCRet = 0;
	apUintRefZeroCntScale1NPC_t refColZeroCntNPCRet = 0;

	colStreamToColSum_label1:for(int i = 0; i < 2 * SEARCH_DISTANCE + 1; i++)
	{
		colStreamToColSum_label2:for(int k= 0; k < BLOCK_SIZE_SCALE_1; k = k + NPC_SCALE_1)
		{
#pragma HLS PIPELINE rewind
			NPCLoop: for(int j = 0; j < NPC_SCALE_1; j++)
			{
				if(j == 0)
				{
					tmpStreamData0 = colStream0.read();
					tmpStreamData1 = colStream1.read();
				}

				apIntBlockScale1Col_t tmpData0 = tmpStreamData0.range(BLOCK_SCALE1_COL_PIXELS - 1, 0);
				apIntBlockScale1Col_t tmpData1 = tmpStreamData1.range(BLOCK_SCALE1_COL_PIXELS - 1, 0);

				pix_t in1[BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE];
				pix_t in2[BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE];

				int16_t out[2*SEARCH_DISTANCE + 1];
				ap_uint<6> refColZeroCnt, tagColValidCnt[2*SEARCH_DISTANCE + 1], refTagValidPixCnt[2*SEARCH_DISTANCE + 1];

				// This forloop should be unrolled completely, otherwise it will take a lot of shift registers
				// to calculate the range function. However, unroll it completely will make all this operations
				// are only wires connection and will not consume any resources.
				for (int8_t l = 0; l < BLOCK_SIZE_SCALE_1 + 2 * SEARCH_DISTANCE; l++)
				{
					in1[l] = tmpData0.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l);
					in2[l] = tmpData1.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l);
				}

				colSADSumScale1(in1, in2, out);

				colZeroCntScale1(in1, in2, &refColZeroCnt, tagColValidCnt, refTagValidPixCnt);

				apUintColSum_t outputData;
				apUintValidCnt_t tagColValidOutputData, refTagValidOutputData;

				for (int l = 0; l < 2 * SEARCH_DISTANCE + 1; l++)
				{
					outputData.range(16 * l + 15, 16 * l) = out[l];
					tagColValidOutputData.range(6 * l + 5, 6 * l) = tagColValidCnt[l];
					refTagValidOutputData.range(6 * l + 5, 6 * l) = refTagValidPixCnt[l];
				}

				// Shift output
				refColZeroCntNPCRet = refColZeroCntNPCRet << 6;
				outputDataNPCRet = outputDataNPCRet << (COL_SUM_BITS * (2 * SEARCH_DISTANCE + 1));
				tagColValidOutputDataNPCRet = tagColValidOutputDataNPCRet << (VALID_CNT_BITS * (2 * SEARCH_DISTANCE + 1));
				refTagValidOutputDataNPCRet = refTagValidOutputDataNPCRet << (VALID_CNT_BITS * (2 * SEARCH_DISTANCE + 1));

				refColZeroCntNPCRet.range(5, 0) = refColZeroCnt;
				outputDataNPCRet.range(COL_SUM_BITS * (2 * SEARCH_DISTANCE + 1) - 1, 0) = outputData;
				tagColValidOutputDataNPCRet.range(VALID_CNT_BITS * (2 * SEARCH_DISTANCE + 1) - 1, 0) = tagColValidOutputData;
				refTagValidOutputDataNPCRet.range(VALID_CNT_BITS * (2 * SEARCH_DISTANCE + 1) - 1, 0) = refTagValidOutputData;

				// Shift input.
				tmpStreamData0 = tmpStreamData0 >> BLOCK_SCALE1_COL_PIXELS;
				tmpStreamData1 = tmpStreamData1 >> BLOCK_SCALE1_COL_PIXELS;

				if(j == NPC_SCALE_1 - 1)
				{
					refZeroCntStream.write(refColZeroCntNPCRet);
					outStream.write(outputDataNPCRet);
					tagColValidCntStream.write(tagColValidOutputDataNPCRet);
					refTagValidCntStream.write(refTagValidOutputDataNPCRet);
				}
			}
		}
	}
}

// Function description: reorder the column stream read directly from the memory slices.
void colStreamToColSumScale2(hls::stream<apIntBlockScale2Col_t> &colStream0, hls::stream<apIntBlockScale2Col_t> &colStream1,
		hls::stream<apUint112_t> &outStream, hls::stream<apUint6_t> &refZeroCntStream,
		hls::stream<apUint42_t> &tagColValidCntStream,
		hls::stream<apUint42_t> &refTagValidCntStream)
{
	apIntBlockScale2Col_t colData0[BLOCK_SIZE_SCALE_2], colData1[BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE];
#pragma HLS RESOURCE variable=colData1 core=RAM_2P_LUTRAM
#pragma HLS RESOURCE variable=colData0 core=RAM_2P_LUTRAM

	colStreamToColSum_label1:for(int i = 0; i < 2 * SEARCH_DISTANCE + 1; i++)
	{
		colStreamToColSum_label2:for(int k= 0; k < BLOCK_SIZE_SCALE_2; k++)
		{
#pragma HLS PIPELINE rewind
			apIntBlockScale2Col_t tmpData0, tmpData1;

			if(i == 0)
			{
				colData0[k] = colStream0.read();
				colData1[k] = colStream1.read();

				tmpData0 = colData0[k];
				tmpData1 = colData1[k];
			}
			else
			{
				if((i == 1) && (k < 2 * SEARCH_DISTANCE))  colData1[BLOCK_SIZE_SCALE_2 + k] = colStream1.read();

				tmpData0 = colData0[k];
				tmpData1 = colData1[i + k];
			}

			pix_t in1[BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE];
			pix_t in2[BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE];

			int16_t out[2*SEARCH_DISTANCE + 1];
			ap_uint<6> refColZeroCnt, tagColValidCnt[2*SEARCH_DISTANCE + 1], refTagValidPixCnt[2*SEARCH_DISTANCE + 1];

			// This forloop should be unrolled completely, otherwise it will take a lot of shift registers
			// to calculate the range function. However, unroll it completely will make all this operations
			// are only wires connection and will not consume any resources.
			for (int8_t l = 0; l < BLOCK_SIZE_SCALE_2 + 2 * SEARCH_DISTANCE; l++)
			{
				in1[l] = tmpData0.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l);
				in2[l] = tmpData1.range(BITS_PER_PIXEL * l + BITS_PER_PIXEL - 1, BITS_PER_PIXEL * l);
			}

			colSADSumScale2(in1, in2, out);

			colZeroCntScale2(in1, in2, &refColZeroCnt, tagColValidCnt, refTagValidPixCnt);

			apUint112_t outputData;
			apUint42_t tagColValidOutputData, refTagValidOutputData;

			for (int l = 0; l < 2 * SEARCH_DISTANCE + 1; l++)
			{
				outputData.range(16 * l + 15, 16 * l) = out[l];
				tagColValidOutputData.range(6 * l + 5, 6 * l) = tagColValidCnt[l];
				refTagValidOutputData.range(6 * l + 5, 6 * l) = refTagValidPixCnt[l];
			}

			refZeroCntStream.write(refColZeroCnt);
			outStream.write(outputData);
			tagColValidCntStream.write(tagColValidOutputData);
			refTagValidCntStream.write(refTagValidOutputData);
		}
	}
}

ap_int<COL_SUM_BITS * (2 * SEARCH_DISTANCE + 1)> lastSumDataWide = 0;
ap_uint< 9 * (2 * SEARCH_DISTANCE + 1) > lastTagColValidCntSumData;
ap_uint< 9 * (2 * SEARCH_DISTANCE + 1) > lastrefTagValidCntSumData;
uint16_t lastSumRefZeroCnt;
// TODO: continue to optimize this function.
void accumulateStreamScale0(hls::stream<apUintColSumNPC_t> &inStream, hls::stream<int16_t> &outStream, hls::stream<int8_t> &OF_yStream,
		hls::stream<apUintRefZeroCntNPC_t> &refZeroCntStream,
		hls::stream<apUintValidCntNPC_t> &tagColValidCntStream,
		hls::stream<apUintValidCntNPC_t> &refTagValidCntStream)
{
	apUintColSumNPC_t inDataNPC;
	apUintValidCntNPC_t tagColValidCntDataNPC;
	apUintValidCntNPC_t refTagValidCntDataNPC;
	apUintRefZeroCntNPC_t refZeroCntNPC;

	for(int i = 0; i < 2 * SEARCH_DISTANCE + 1; i++)
	{
		accumulateStream_label3:for(int k = 0; k < BLOCK_SIZE_SCALE_0; k = k + NPC_SCALE_0)
		{
#pragma HLS PIPELINE rewind
			apUintColSum_t lastSumDataTmp = 0;
			apUintValidCnt_t tagColValidCntDataTmp = 0;
			ap_uint< 9 * (2 * SEARCH_DISTANCE + 1) > lastTagColValidCntSumDataTmp = 0;
			ap_uint< 9 * (2 * SEARCH_DISTANCE + 1) > lastrefTagValidCntSumDataTmp = 0;
			uint16_t lastSumRefZeroCntTmp = 0;

			ap_uint<1> outlierCond;
			ap_uint<1> refValidCond;
			ap_uint<1> tagValidCond;
			ap_uint<1> refTagValidCond;

			NPCLoop: for(int j = 0; j < NPC_SCALE_0; j++)
			{
				if(j == 0)
				{
					inDataNPC = inStream.read();
					tagColValidCntDataNPC = tagColValidCntStream.read();
					refTagValidCntDataNPC = refTagValidCntStream.read();
					refZeroCntNPC = refZeroCntStream.read();
				}

				apUintColSum_t inData = inDataNPC.range(COL_SUM_BITS * (2 * SEARCH_DISTANCE + 1) - 1, 0);
				apUintValidCnt_t tagColValidCntData = tagColValidCntDataNPC.range(VALID_CNT_BITS * (2 * SEARCH_DISTANCE + 1) - 1, 0);
				apUintValidCnt_t refTagValidCntData = refTagValidCntDataNPC.range(VALID_CNT_BITS * (2 * SEARCH_DISTANCE + 1) - 1, 0);
				apUint6_t refZeroCnt = refZeroCntNPC.range(6 - 1, 0);

				if(k + j <= BLOCK_SIZE_SCALE_0 - 1)
				{
					for (int l = 0; l < 2 * SEARCH_DISTANCE + 1; l++)
					{
						lastSumDataTmp.range(16 * l + 15, 16 * l) = lastSumDataTmp.range(16 * l + 15, 16 * l)
								+ inData.range(16 * l + 15, 16 * l);

						apUint6_t tmpInputTagColValidCntData = tagColValidCntData.range(6 * l + 5, 6 * l);
						lastTagColValidCntSumDataTmp.range(9 * l + 8, 9 * l) = lastTagColValidCntSumDataTmp.range(9 * l + 8, 9 * l)
								+ tmpInputTagColValidCntData;

						apUint6_t tmpInputRefTagValidCntData = refTagValidCntData.range(6 * l + 5, 6 * l);
						 lastrefTagValidCntSumDataTmp.range(9 * l + 8, 9 * l) = lastrefTagValidCntSumDataTmp.range(9 * l + 8, 9 * l)
								 + tmpInputRefTagValidCntData;
					}
					lastSumRefZeroCntTmp += refZeroCnt;
				}

				// Shift input
				inDataNPC = inDataNPC >> (COL_SUM_BITS * (2 * SEARCH_DISTANCE + 1));
				tagColValidCntDataNPC = tagColValidCntDataNPC >> (VALID_CNT_BITS * (2 * SEARCH_DISTANCE + 1));
				refTagValidCntDataNPC = refTagValidCntDataNPC >> (VALID_CNT_BITS * (2 * SEARCH_DISTANCE + 1));
				refZeroCntNPC = refZeroCntNPC >> 6;
			}

			if(k + NPC_SCALE_0 >= BLOCK_SIZE_SCALE_0)            // This is the last iteration of k inside the i-th outer loop.
			{
				for (int l = 0; l < 2 * SEARCH_DISTANCE + 1; l++)
				{
					lastSumDataWide.range(16 * l + 15, 16 * l) = lastSumDataWide.range(16 * l + 15, 16 * l)
							+ lastSumDataTmp.range(16 * l + 15, 16 * l);
					lastTagColValidCntSumData.range(9 * l + 8, 9 * l) = lastTagColValidCntSumData.range(9 * l + 8, 9 * l)
							+ lastTagColValidCntSumDataTmp.range(9 * l + 8, 9 * l);
					lastrefTagValidCntSumData.range(9 * l + 8, 9 * l) = lastrefTagValidCntSumData.range(9 * l + 8, 9 * l)
							+ lastrefTagValidCntSumDataTmp.range(9 * l + 8, 9 * l);
					lastSumRefZeroCnt += lastSumRefZeroCntTmp;

					refValidCond = (lastSumRefZeroCnt < glMinValidPixNumScale0) ? 1 : 0;
					tagValidCond = (lastTagColValidCntSumData.range(9 * l + 8, 9 * l) < glMinValidPixNumScale0) ? 1 : 0;
					refTagValidCond = (lastrefTagValidCntSumData.range(9 * l + 8, 9 * l) < glMinValidPixNumScale0) ? 1 : 0;

					outlierCond = refValidCond | tagValidCond | refTagValidCond;

					// Here, we get the block SAD, if the outlier condition of the corresponding block
					// is satisfied, we simply set the block SAD to 0x7fff
					lastSumDataWide.range(16 * l + 15, 16 * l) = (outlierCond == 1) ? ap_int<16>(0x7fff) : lastSumDataWide.range(16 * l + 15, 16 * l);
				}

				ap_int<16> outputMinData;
				int8_t index;
				outputMinData = minWide(lastSumDataWide, &index);
				outStream.write(outputMinData.to_short());
				OF_yStream.write(index);

				lastSumDataWide = 0;
				lastSumRefZeroCnt = 0;
				lastTagColValidCntSumData = 0;
				lastrefTagValidCntSumData = 0;
			}
			else
			{
				for (int l = 0; l < 2 * SEARCH_DISTANCE + 1; l++)
				{
					lastSumDataWide.range(16 * l + 15, 16 * l) = lastSumDataWide.range(16 * l + 15, 16 * l)
							+ lastSumDataTmp.range(16 * l + 15, 16 * l);
					lastTagColValidCntSumData.range(9 * l + 8, 9 * l) = lastTagColValidCntSumData.range(9 * l + 8, 9 * l)
							+ lastTagColValidCntSumDataTmp.range(9 * l + 8, 9 * l);
					lastrefTagValidCntSumData.range(9 * l + 8, 9 * l) = lastrefTagValidCntSumData.range(9 * l + 8, 9 * l)
							+ lastrefTagValidCntSumDataTmp.range(9 * l + 8, 9 * l);
					lastSumRefZeroCnt += lastSumRefZeroCntTmp;
				}
			}
		}
	}

}

ap_int<COL_SUM_BITS * (2 * SEARCH_DISTANCE + 1)> lastSumDataWideScale1 = 0;
ap_uint< 9 * (2 * SEARCH_DISTANCE + 1) > lastTagColValidCntSumDataScale1;
ap_uint< 9 * (2 * SEARCH_DISTANCE + 1) > lastrefTagValidCntSumDataScale1;
uint16_t lastSumRefZeroCntScale1;
// TODO: continue to optimize this function.
void accumulateStreamScale1(hls::stream<apUintColSumScale1NPC_t> &inStream, hls::stream<int16_t> &outStream, hls::stream<int8_t> &OF_yStream,
		hls::stream<apUintRefZeroCntScale1NPC_t> &refZeroCntStream,
		hls::stream<apUintValidCntScale1NPC_t> &tagColValidCntStream,
		hls::stream<apUintValidCntScale1NPC_t> &refTagValidCntStream)
{
	apUintColSumScale1NPC_t inDataNPC;
	apUintValidCntScale1NPC_t tagColValidCntDataNPC;
	apUintValidCntScale1NPC_t refTagValidCntDataNPC;
	apUintRefZeroCntScale1NPC_t refZeroCntNPC;

	for(int i = 0; i < 2 * SEARCH_DISTANCE + 1; i++)
	{
		accumulateStream_label3:for(int k= 0; k < BLOCK_SIZE_SCALE_1; k = k + NPC_SCALE_1)
		{
#pragma HLS PIPELINE rewind
			apUintColSum_t lastSumDataTmp = 0;
			apUintValidCnt_t tagColValidCntDataTmp = 0;
			ap_uint< 9 * (2 * SEARCH_DISTANCE + 1) > lastTagColValidCntSumDataTmp = 0;
			ap_uint< 9 * (2 * SEARCH_DISTANCE + 1) > lastrefTagValidCntSumDataTmp = 0;
			uint16_t lastSumRefZeroCntTmp = 0;

			ap_uint<1> outlierCond;
			ap_uint<1> refValidCond;
			ap_uint<1> tagValidCond;
			ap_uint<1> refTagValidCond;

			NPCLoop: for(int j = 0; j < NPC_SCALE_1; j++)
			{
				if(j == 0)
				{
					inDataNPC = inStream.read();
					tagColValidCntDataNPC = tagColValidCntStream.read();
					refTagValidCntDataNPC = refTagValidCntStream.read();
					refZeroCntNPC = refZeroCntStream.read();
				}

				apUintColSum_t inData = inDataNPC.range(COL_SUM_BITS * (2 * SEARCH_DISTANCE + 1) - 1, 0);
				apUintValidCnt_t tagColValidCntData = tagColValidCntDataNPC.range(VALID_CNT_BITS * (2 * SEARCH_DISTANCE + 1) - 1, 0);
				apUintValidCnt_t refTagValidCntData = refTagValidCntDataNPC.range(VALID_CNT_BITS * (2 * SEARCH_DISTANCE + 1) - 1, 0);
				apUint6_t refZeroCnt = refZeroCntNPC.range(6 - 1, 0);

				if(k + j <= BLOCK_SIZE_SCALE_1 - 1)
				{
					for (int l = 0; l < 2 * SEARCH_DISTANCE + 1; l++)
					{
						lastSumDataTmp.range(16 * l + 15, 16 * l) = lastSumDataTmp.range(16 * l + 15, 16 * l)
								+ inData.range(16 * l + 15, 16 * l);

						apUint6_t tmpInputTagColValidCntData = tagColValidCntData.range(6 * l + 5, 6 * l);
						lastTagColValidCntSumDataTmp.range(9 * l + 8, 9 * l) = lastTagColValidCntSumDataTmp.range(9 * l + 8, 9 * l)
								+ tmpInputTagColValidCntData;

						apUint6_t tmpInputRefTagValidCntData = refTagValidCntData.range(6 * l + 5, 6 * l);
						 lastrefTagValidCntSumDataTmp.range(9 * l + 8, 9 * l) = lastrefTagValidCntSumDataTmp.range(9 * l + 8, 9 * l)
								 + tmpInputRefTagValidCntData;
					}
					lastSumRefZeroCntTmp += refZeroCnt;
				}

				// Shift input
				inDataNPC = inDataNPC >> (COL_SUM_BITS * (2 * SEARCH_DISTANCE + 1));
				tagColValidCntDataNPC = tagColValidCntDataNPC >> (VALID_CNT_BITS * (2 * SEARCH_DISTANCE + 1));
				refTagValidCntDataNPC = refTagValidCntDataNPC >> (VALID_CNT_BITS * (2 * SEARCH_DISTANCE + 1));
				refZeroCntNPC = refZeroCntNPC >> 6;
			}

			if(k + NPC_SCALE_1 >= BLOCK_SIZE_SCALE_1)            // This is the last iteration of k inside the i-th outer loop.
			{
				for (int l = 0; l < 2 * SEARCH_DISTANCE + 1; l++)
				{
					lastSumDataWideScale1.range(16 * l + 15, 16 * l) = lastSumDataWideScale1.range(16 * l + 15, 16 * l)
							+ lastSumDataTmp.range(16 * l + 15, 16 * l);
					lastTagColValidCntSumDataScale1.range(9 * l + 8, 9 * l) = lastTagColValidCntSumDataScale1.range(9 * l + 8, 9 * l)
							+ lastTagColValidCntSumDataTmp.range(9 * l + 8, 9 * l);
					lastrefTagValidCntSumDataScale1.range(9 * l + 8, 9 * l) = lastrefTagValidCntSumDataScale1.range(9 * l + 8, 9 * l)
							+ lastrefTagValidCntSumDataTmp.range(9 * l + 8, 9 * l);
					lastSumRefZeroCntScale1 += lastSumRefZeroCntTmp;

					refValidCond = (lastSumRefZeroCntScale1 < glMinValidPixNumScale1) ? 1 : 0;
					tagValidCond = (lastTagColValidCntSumDataScale1.range(9 * l + 8, 9 * l) < glMinValidPixNumScale1) ? 1 : 0;
					refTagValidCond = (lastrefTagValidCntSumDataScale1.range(9 * l + 8, 9 * l) < glMinValidPixNumScale1) ? 1 : 0;

					outlierCond = refValidCond | tagValidCond | refTagValidCond;

					// Here, we get the block SAD, if the outlier condition of the corresponding block
					// is satisfied, we simply set the block SAD to 0x7fff
					lastSumDataWideScale1.range(16 * l + 15, 16 * l) = (outlierCond == 1) ? ap_int<16>(0x7fff) : lastSumDataWideScale1.range(16 * l + 15, 16 * l);
				}

				ap_int<16> outputMinData;
				int8_t index;
				outputMinData = minWide(lastSumDataWideScale1, &index);
				outStream.write(outputMinData.to_short());
				OF_yStream.write(index);

				lastSumDataWideScale1 = 0;
				lastSumRefZeroCntScale1 = 0;
				lastTagColValidCntSumDataScale1 = 0;
				lastrefTagValidCntSumDataScale1 = 0;
			}
			else
			{
				for (int l = 0; l < 2 * SEARCH_DISTANCE + 1; l++)
				{
					lastSumDataWideScale1.range(16 * l + 15, 16 * l) = lastSumDataWideScale1.range(16 * l + 15, 16 * l)
							+ lastSumDataTmp.range(16 * l + 15, 16 * l);
					lastTagColValidCntSumDataScale1.range(9 * l + 8, 9 * l) = lastTagColValidCntSumDataScale1.range(9 * l + 8, 9 * l)
							+ lastTagColValidCntSumDataTmp.range(9 * l + 8, 9 * l);
					lastrefTagValidCntSumDataScale1.range(9 * l + 8, 9 * l) = lastrefTagValidCntSumDataScale1.range(9 * l + 8, 9 * l)
							+ lastrefTagValidCntSumDataTmp.range(9 * l + 8, 9 * l);
					lastSumRefZeroCntScale1 += lastSumRefZeroCntTmp;
				}
			}
		}
	}

}

static ap_int<16> lastSumDataScale2[2 * SEARCH_DISTANCE + 1];
static ap_uint< 9 * (2 * SEARCH_DISTANCE + 1) > lastTagColValidCntSumDataScale2;
static ap_uint< 9 * (2 * SEARCH_DISTANCE + 1) > lastrefTagValidCntSumDataScale2;
static uint16_t lastSumRefZeroCntScale2;
// TODO: continue to optimize this function.
void accumulateStreamScale2(hls::stream<apUint112_t> &inStream, hls::stream<int16_t> &outStream, hls::stream<int8_t> &OF_yStream,
		hls::stream<apUint6_t> &refZeroCntStream,
		hls::stream<apUint42_t> &tagColValidCntStream,
		hls::stream<apUint42_t> &refTagValidCntStream)
{
#pragma HLS ARRAY_RESHAPE variable=lastSumDataScale2 complete dim=1
	for(int i = 0; i < 2 * SEARCH_DISTANCE + 1; i++)
	{
		accumulateStream_label3:for(int k= 0; k < BLOCK_SIZE_SCALE_2; k++)
		{
#pragma HLS PIPELINE rewind
			apUint112_t inData = inStream.read();
			apUint42_t tagColValidCntData = tagColValidCntStream.read();
			apUint42_t refTagValidCntData = refTagValidCntStream.read();
			apUint6_t refZeroCnt = refZeroCntStream.read();

			uint16_t inputData[2 * SEARCH_DISTANCE + 1];
#pragma HLS ARRAY_RESHAPE variable=inputData complete dim=1
			apUint6_t inputTagColValidCntData[2 * SEARCH_DISTANCE + 1];


			if(k == BLOCK_SIZE_SCALE_2 - 1)
			{
				ap_int<16> tmpData[2 * SEARCH_DISTANCE + 1];

				ap_uint<1> outlierCond;
				ap_uint<1> refValidCond;
				ap_uint<1> tagValidCond;
				ap_uint<1> refTagValidCond;

				lastSumRefZeroCntScale2 += refZeroCnt;

				for (int l = 0; l < 2 * SEARCH_DISTANCE + 1; l++)
				{
					inputData[l] = inData.range(16 * l + 15, 16 * l);
					lastSumDataScale2[l] = lastSumDataScale2[l] + inputData[l];

					apUint6_t tmpInputTagColValidCntData = tagColValidCntData.range(6 * l + 5, 6 * l);
					ap_uint<9> tmplastTagColValidCntSumDataScale2 = lastTagColValidCntSumDataScale2.range(9 * l + 8, 9 * l);
					tmplastTagColValidCntSumDataScale2 += tmpInputTagColValidCntData;
					lastTagColValidCntSumDataScale2.range(9 * l + 8, 9 * l) = tmplastTagColValidCntSumDataScale2;

					apUint6_t tmpInputRefTagValidCntData = refTagValidCntData.range(6 * l + 5, 6 * l);
					ap_uint<9> tmplastrefTagValidCntSumDataScale2 = lastrefTagValidCntSumDataScale2.range(9 * l + 8, 9 * l);
					tmplastrefTagValidCntSumDataScale2 += tmpInputRefTagValidCntData;
					lastrefTagValidCntSumDataScale2.range(9 * l + 8, 9 * l) = tmplastrefTagValidCntSumDataScale2;

					refValidCond = (lastSumRefZeroCntScale2 < glMinValidPixNumScale2) ? 1 : 0;
					tagValidCond = (tmplastTagColValidCntSumDataScale2 < glMinValidPixNumScale2) ? 1 : 0;
					refTagValidCond = (tmplastrefTagValidCntSumDataScale2 < glMinValidPixNumScale2) ? 1 : 0;

					outlierCond = refValidCond | tagValidCond | refTagValidCond;

					// Here, we get the block SAD, if the outlier condition of the corresponding block
					// is satisfied, we simply set the block SAD to 0x7fff
					lastSumDataScale2[l] = (outlierCond == 1) ? ap_int<16>(0x7fff) : lastSumDataScale2[l];
				}

				ap_int<16> outputMinData;
				int8_t index;
				outputMinData = min(lastSumDataScale2, &index);
				outStream.write(outputMinData.to_short());
				OF_yStream.write(index);

				// If use reshape directive, then here must use decrease form.
				// if use increase form, then the II is 2 cannot be 1.
				// And lastSumDataScale2 couldn't be 0.
				// DON'T KNOW WHY. MIGHT BE A BUG.
				for (int l = 2 * SEARCH_DISTANCE; l >= 0; l--)
				{
					lastSumDataScale2[l] = 0;
				}
				lastSumRefZeroCntScale2 = 0;
				lastTagColValidCntSumDataScale2 = 0;
				lastrefTagValidCntSumDataScale2 = 0;
			}
			else
			{
				for (int l = 0; l < 2 * SEARCH_DISTANCE + 1; l++)
				{
					inputData[l] = inData.range(16 * l + 15, 16 * l);
					lastSumDataScale2[l] += inputData[l];

					apUint6_t tmpInputTagColValidCntData = tagColValidCntData.range(6 * l + 5, 6 * l);
					ap_uint<9> tmplastTagColValidCntSumDataScale2 = lastTagColValidCntSumDataScale2.range(9 * l + 8, 9 * l);
					tmplastTagColValidCntSumDataScale2 += tmpInputTagColValidCntData;
					lastTagColValidCntSumDataScale2.range(9 * l + 8, 9 * l) = tmplastTagColValidCntSumDataScale2;

					apUint6_t tmpInputRefTagValidCntData = refTagValidCntData.range(6 * l + 5, 6 * l);
					ap_uint<9> tmplastrefTagValidCntSumDataScale2 = lastrefTagValidCntSumDataScale2.range(9 * l + 8, 9 * l);
					tmplastrefTagValidCntSumDataScale2 += tmpInputRefTagValidCntData;
					lastrefTagValidCntSumDataScale2.range(9 * l + 8, 9 * l) = tmplastrefTagValidCntSumDataScale2;
				}
				lastSumRefZeroCntScale2 += refZeroCnt;
			}
		}
	}

}



static apUint15_t currentMin = 0x7fff;
void findStreamMinScale0(hls::stream<int16_t> &inStream, hls::stream<int8_t> &OF_yStream,
		hls::stream<apUint15_t> &minStream,  hls::stream<apUint6_t> &OFStream)
{
	apUint6_t OFRet = 0x3f;

	findStreamMin_label4:for(int i = 0; i < 2 * SEARCH_DISTANCE + 1; i++)
	{
		int16_t inData = inStream.read();

		ap_uint<3> tmpOF_y = ap_uint<3>(OF_yStream.read());
		ap_uint<1> compCond;


		if(i == 2 * SEARCH_DISTANCE)
		{
			compCond = (inData < currentMin) ? 1 : 0;

			currentMin = (compCond == 1) ? apUint15_t(inData) : currentMin;
			OFRet = (compCond == 1) ? tmpOF_y.concat(ap_uint<3>(i)) : OFRet;

			minStream.write(currentMin);
			OFStream.write(OFRet);
			currentMin = 0x7fff;
		}
		else
		{
			compCond = (inData < currentMin) ? 1 : 0;

			currentMin = (compCond == 1) ? apUint15_t(inData) : currentMin;
			OFRet = (compCond == 1) ? tmpOF_y.concat(ap_uint<3>(i)) : OFRet;
		}
	}
}


static apUint15_t currentMinScale1 = 0x7fff;
void findStreamMinScale1(hls::stream<int16_t> &inStream, hls::stream<int8_t> &OF_yStream,
		hls::stream<apUint15_t> &minStream,  hls::stream<apUint6_t> &OFStream)
{
	apUint6_t OFRet = 0x3f;

	findStreamMin_label4:for(int i = 0; i < 2 * SEARCH_DISTANCE + 1; i++)
	{
		int16_t inData = inStream.read();

		ap_uint<3> tmpOF_y = ap_uint<3>(OF_yStream.read());
		ap_uint<1> compCond;


		if(i == 2 * SEARCH_DISTANCE)
		{
			compCond = (inData < currentMinScale1) ? 1 : 0;

			currentMinScale1 = (compCond == 1) ? apUint15_t(inData) : currentMinScale1;
			OFRet = (compCond == 1) ? tmpOF_y.concat(ap_uint<3>(i)) : OFRet;

			minStream.write(currentMinScale1);
			OFStream.write(OFRet);
			currentMinScale1 = 0x7fff;
		}
		else
		{
			compCond = (inData < currentMinScale1) ? 1 : 0;

			currentMinScale1 = (compCond == 1) ? apUint15_t(inData) : currentMinScale1;
			OFRet = (compCond == 1) ? tmpOF_y.concat(ap_uint<3>(i)) : OFRet;
		}
	}
}

static apUint15_t currentMinScale2 = 0x7fff;
void findStreamMinScale2(hls::stream<int16_t> &inStream, hls::stream<int8_t> &OF_yStream,
		hls::stream<apUint15_t> &minStream,  hls::stream<apUint6_t> &OFStream)
{
	apUint6_t OFRet = 0x3f;

	findStreamMin_label4:for(int i = 0; i < 2 * SEARCH_DISTANCE + 1; i++)
	{
		int16_t inData = inStream.read();

		ap_uint<3> tmpOF_y = ap_uint<3>(OF_yStream.read());
		ap_uint<1> compCond;


		if(i == 2 * SEARCH_DISTANCE)
		{
			compCond = (inData < currentMinScale2) ? 1 : 0;

			currentMinScale2 = (compCond == 1) ? apUint15_t(inData) : currentMinScale2;
			OFRet = (compCond == 1) ? tmpOF_y.concat(ap_uint<3>(i)) : OFRet;

			minStream.write(currentMinScale2);
			OFStream.write(OFRet);
			currentMinScale2 = 0x7fff;
		}
		else
		{
			compCond = (inData < currentMinScale2) ? 1 : 0;

			currentMinScale2 = (compCond == 1) ? apUint15_t(inData) : currentMinScale2;
			OFRet = (compCond == 1) ? tmpOF_y.concat(ap_uint<3>(i)) : OFRet;
		}
	}
}


static uint16_t OFRetRegs[8][8]; // Increase the size to power of 2 to save some resources.

void feedback(apUint15_t miniSumRet, apUint6_t OFRet, apUint1_t rotateFlg, uint16_t *thrRet)
{
#pragma HLS RESOURCE variable=OFRetRegs core=RAM_2P_LUTRAM
    if(miniSumRet <= 0x1ff && miniSumRet > 0 && OFRet != 0x3f)
    {
        uint16_t OFRetHistCnt = OFRetRegs[OFRet.range(2, 0)][OFRet.range(5, 3)];
        OFRetHistCnt = OFRetHistCnt + 1;
        OFRetRegs[OFRet.range(2, 0)][OFRet.range(5, 3)] = OFRetHistCnt;
    }

	if(rotateFlg)
	{
		ap_uint<16> countSum = 0;
		ap_uint<16> histCountSum = 0;
		ap_uint<16> radiusSum =  0;
		ap_uint<16> radiusCountSum =  0;

		feedbackReadOFLoop:for(int8_t OFRetHistX = -SEARCH_DISTANCE; OFRetHistX <= SEARCH_DISTANCE; OFRetHistX++)
		{
			feedbackReadOFInnerLoop:for(int8_t OFRetHistY = -SEARCH_DISTANCE; OFRetHistY <= SEARCH_DISTANCE; OFRetHistY++)
			{

#pragma HLS PIPELINE
				ap_uint<16> count = OFRetRegs[OFRetHistX+SEARCH_DISTANCE][OFRetHistY+SEARCH_DISTANCE];
				ap_uint<16> tmpRadius = OFRetHistX * OFRetHistX + OFRetHistY *  OFRetHistY;
				ap_uint<16> radius = tmpRadius;
				countSum += count;
				radiusCountSum += radius * count;

				histCountSum += 1;
				radiusSum += radius;

				// Clear OF histgram
				OFRetRegs[OFRetHistX+SEARCH_DISTANCE][OFRetHistY+SEARCH_DISTANCE] = 0;
			}
		}

		if (countSum >= 10)
		{
			uint32_t avgMatchMul =  radiusCountSum * histCountSum;
			uint32_t avgTargetMul = radiusSum * countSum;

			// 3/64 = 0.046875~ 0.05
			uint16_t deltaThr = areaEventThr * 3 / 64;
			// Comment this line if the feedback feature is required to be support.
			deltaThr = 0;
			if(avgMatchMul > avgTargetMul )
			{
//				areaEventThr -= deltaThr;
				if (areaEventThr <= 100)
				{
					areaEventThr = 100;
				}
//            	areaEventThr -= 50;
				std::cout << "AreaEventThr is decreased. New areaEventThr from HW is: " << areaEventThr << std::endl;
			}
			else if (avgMatchMul < avgTargetMul)
			{
//				areaEventThr += deltaThr;
				if (areaEventThr >= 1500)
				{
					areaEventThr = 1500;
				}
//            	areaEventThr += 50;
				std::cout << "AreaEventThr is increased. New areaEventThr from HW is: " << areaEventThr << std::endl;
			}
		}
	}

	areaEventThrBak = areaEventThr;
    *thrRet = areaEventThr;
}

static apUint16_t OFHistCntSum = 0;
static apUint16_t OFHistRadiusSum = 0;
static apUint16_t glOFHistCntSum, glOFHistRadiusSum;
void feedbackWithoutOFHist(apUint16_t miniSumRet, apUint16_t OFRet, apUint1_t rotateFlg, uint16_t *thrRet)
{
//#pragma HLS PIPELINE

	if(OFRet != 0x7f7f)    // invalid data
	{
		ap_int<8> xOFRet = ap_int<8>(OFRet.range(7, 0));
		ap_int<8> yOFRet = ap_int<8>(OFRet.range(15, 8));
		ap_uint<16> tmpRadius = xOFRet * xOFRet + yOFRet *  yOFRet;
#pragma HLS RESOURCE variable=tmpRadius core=DSP_Macro
		OFHistRadiusSum += tmpRadius;
		OFHistCntSum += 1;
	}

	if(glConfig[1] == 1)
	{
		glAverageTargetValue = glConfig.range(23, 8);
	}

	if(rotateFlg && (OFHistCntSum > 0))
	{
		// 3/64 = 0.046875~ 0.05
		uint16_t deltaThr = areaEventThr * 3 / 64;
		// Comment this line if the feedback feature is required to be support.
//		deltaThr = 0;
		if(OFHistRadiusSum > OFHistCntSum * glAverageTargetValue )
		{
			areaEventThr -= deltaThr;
			if (areaEventThr <= 100)
			{
				areaEventThr = 100;
			}
			std::cout << "AreaEventThr is decreased. New areaEventThr from HW is: " << areaEventThr << std::endl;
		}
		else
		{
			areaEventThr += deltaThr;
			if (areaEventThr >= 2000)
			{
				areaEventThr = 2000;
			}
			std::cout << "AreaEventThr is increased. New areaEventThr from HW is: " << areaEventThr << std::endl;
		}

		glOFHistCntSum = OFHistCntSum;
		glOFHistRadiusSum = OFHistRadiusSum;
		OFHistCntSum = 0;
		OFHistRadiusSum = 0;
	}

	areaEventThrBak = areaEventThr;
	glAverageTargetValueBak = glAverageTargetValue;
    *thrRet = areaEventThr;
}


void feedbackWrapperAndOutputResult(hls::stream<apUint15_t> &miniSumStreamScale0, hls::stream<apUint6_t> &OFRetStreamScale0,
		hls::stream<apUint15_t> &miniSumStreamScale1, hls::stream<apUint6_t> &OFRetStreamScale1,
		hls::stream<apUint15_t> &miniSumStreamScale2, hls::stream<apUint6_t> &OFRetStreamScale2,
						hls::stream<apUint17_t> &packetEventDataStream,
					 hls::stream<uint16_t> &thrStream, int32_t *eventSlice)
{
	apUint17_t tmp1 = packetEventDataStream.read();

	apUint15_t tmpMiniSumRetScale0 = miniSumStreamScale0.read();
	apUint6_t tmpOFScale0 = OFRetStreamScale0.read();

	apUint15_t tmpMiniSumRetScale1 = miniSumStreamScale1.read();
	apUint6_t tmpOFScale1 = OFRetStreamScale1.read();

	apUint15_t tmpMiniSumRetScale2 = miniSumStreamScale2.read();
	apUint6_t tmpOFScale2 = OFRetStreamScale2.read();

	ap_int<16> miniRet;
	ap_uint<6> OFRet;
	ap_uint<2> scaleRet;

    if(tmpOFScale0 != 0x3f) tmpMiniSumRetScale0 = (tmpMiniSumRetScale0 << 4);
    if(tmpOFScale1 != 0x3f) tmpMiniSumRetScale1 = (tmpMiniSumRetScale1 << 2);
    miniRet = tmpMiniSumRetScale2;
    OFRet = tmpOFScale2;
    scaleRet = 2;
    if(tmpMiniSumRetScale1 < miniRet)
    {
        miniRet = tmpMiniSumRetScale1;
        OFRet = tmpOFScale1;
        scaleRet = 1;
    }
    if(tmpMiniSumRetScale0 < miniRet)
    {
        miniRet = tmpMiniSumRetScale0;
        OFRet = tmpOFScale0;
        scaleRet = 0;
    }

//	apUint1_t tmpFlg = rotateFlgStream.read();

	uint16_t tmpThr;

	ap_int<9> tmp2 = miniRet.range(8, 0);
	apUint6_t tmpOF = OFRet;

	feedback(miniRet, tmpOF, glRotateFlg, &tmpThr);

	if(glRotateFlg)
	{
		thrStream.write(tmpThr);
	}

	ap_uint<32> output = (deltaTsHW, (tmpOF, tmp1));
//		std :: cout << "tmp1 is "  << std::hex << tmp1 << std :: endl;
//		std :: cout << "tmp2 is "  << std::hex << tmp2 << std :: endl;
//		std :: cout << "output is "  << std::hex << output << std :: endl;
//		std :: cout << "eventSlice is "  << std::hex << output.to_int() << std :: endl;
	*eventSlice++ = output.to_int();
}

void outputResult(hls::stream<apUint15_t> &miniSumStream, hls::stream<apUint6_t> &OFRetStream,  hls::stream<apUint17_t> &packetEventDataStream, int32_t *eventSlice)
{
//	outputLoop: for(int32_t i = 0; i < eventIterSize; i++)
//	{
		apUint17_t tmp1 = packetEventDataStream.read();
		apUint15_t miniSumRet = miniSumStream.read();
		ap_int<9> tmp2 = miniSumRet.range(8, 0);
		apUint6_t tmpOF = OFRetStream.read();

		ap_uint<32> output = (tmp2, (tmpOF, tmp1));
//		std :: cout << "tmp1 is "  << std::hex << tmp1 << std :: endl;
//		std :: cout << "tmp2 is "  << std::hex << tmp2 << std :: endl;
//		std :: cout << "output is "  << std::hex << output << std :: endl;
//		std :: cout << "eventSlice is "  << std::hex << output.to_int() << std :: endl;
		*eventSlice++ = output.to_int();

//	}
}

//void testSingleRwslicesHW(apUint10_t x, apUint10_t y, sliceIdx_t idx, pix_t refCol[BLOCK_SIZE + 2 * SEARCH_DISTANCE], pix_t tagCol[BLOCK_SIZE + 2 * SEARCH_DISTANCE])
//{
//	writePix(x, y, idx);
//	readBlockCols(x, y, idx + 1, idx + 2, refCol, tagCol);
//	resetPix(x, y, idx + 3);
//}

//void testRwslices(uint64_t * data, sliceIdx_t idx, int16_t eventCnt,
//			  apIntBlockCol_t *refData, apIntBlockCol_t *tagData)
//{
//	hls::stream<apUint10_t>  xStream("xStream"), yStream("yStream");
//	hls::stream<sliceIdx_t> idxStream("idxStream");
//	hls::stream<apUint17_t> pktEventDataStream("EventStream");
//	hls::stream<apIntBlockCol_t> refStream("refStream"), tagStreamIn("tagStream");
//	hls::stream<apIntBlockCol_t> refStreamScale1("refStreamScale1"), tagStreamInScale1("tagStreamScale1");
//	hls::stream<apIntBlockCol_t> refStreamScale2("refStreamScale2"), tagStreamInScale2("tagStreamScale2");
//
//	eventIterSize = eventCnt;
//
//	getXandYLoop:for(int32_t i = 0; i < eventIterSize; i++)
//	{
//		uint64_t tmp = data[i];
//		ap_uint<8> xWr, yWr;
//		xWr = ((tmp) >> POLARITY_X_ADDR_SHIFT) & POLARITY_X_ADDR_MASK;
//		yWr = ((tmp) >> POLARITY_Y_ADDR_SHIFT) & POLARITY_Y_ADDR_MASK;
//		bool pol  = ((tmp) >> POLARITY_SHIFT) & POLARITY_MASK;
//		int64_t ts = tmp >> 32;
//
//		xStream << xWr;
//		yStream << yWr;
//		idxStream << idx;
//	}
//
//	rwSlices(xStream, yStream, idxStream, refStream, tagStreamIn, refStreamScale1, tagStreamInScale1, refStreamScale2, tagStreamInScale2);
//
//	writeFromStream: for(int32_t i = 0; i < eventIterSize * (BLOCK_SIZE + 2 * SEARCH_DISTANCE); i++)
//	{
//		refStream >> *refData++;
//		tagStreamIn >> *tagData++;
//	}
//
//}

//void parseEvents(uint64_t * dataStream, int32_t eventsArraySize, int32_t *eventSlice)
//{
//	hls::stream<apUint10_t>  xInStream("xInStream"), yInStream("yInStream");
//	hls::stream<apUint10_t>  xOutStream("xOutStream"), yOutStream("yOutStream");
//	hls::stream<uint32_t>  tsInStream("tsInStream");
//
//	hls::stream<sliceIdx_t> idxStream("idxStream");
//	hls::stream<apUint17_t> pktEventDataStream("EventStream");
//#pragma HLS STREAM variable=pktEventDataStream depth=2 dim=1
//#pragma HLS RESOURCE variable=pktEventDataStream core=FIFO_SRL
//
//	hls::stream<apIntBlockCol_t> refStream("refStream"), tagStreamIn("tagStream");
//#pragma HLS STREAM variable=refStream depth=2 dim=1
//#pragma HLS RESOURCE variable=refStream core=FIFO_SRL
//#pragma HLS STREAM variable=tagStreamIn depth=6 dim=1
//#pragma HLS RESOURCE variable=tagStreamIn core=FIFO_SRL
//	hls::stream<apIntBlockCol_t> refStreamScale1("refStreamScale1"), tagStreamInScale1("tagStreamScale1");
//#pragma HLS STREAM variable=tagStreamInScale1 depth=6 dim=1
//#pragma HLS STREAM variable=refStreamScale1 depth=2 dim=1
//	hls::stream<apIntBlockCol_t> refStreamScale2("refStreamScale2"), tagStreamInScale2("tagStreamScale2");
//#pragma HLS STREAM variable=tagStreamInScale2 depth=6 dim=1
//#pragma HLS STREAM variable=refStreamScale2 depth=2 dim=1
//
//	hls::stream<apUint15_t> miniSumStreamScale0("miniSumStreamScale0"), miniSumStreamScale1("miniSumStreamScale1"), miniSumStreamScale2("miniSumStreamScale2");
//#pragma HLS STREAM variable=miniSumStreamScale0 depth=2 dim=1
//#pragma HLS RESOURCE variable=miniSumStreamScale0 core=FIFO_SRL
//#pragma HLS STREAM variable=miniSumStreamScale1 depth=2 dim=1
//#pragma HLS RESOURCE variable=miniSumStreamScale1 core=FIFO_SRL
//#pragma HLS STREAM variable=miniSumStreamScale2 depth=2 dim=1
//#pragma HLS RESOURCE variable=miniSumStreamScale2 core=FIFO_SRL
//	hls::stream<apUint6_t> OFRetStreamScale0("OFRetStreamScale0"), OFRetStreamScale1("OFRetStreamScale1"), OFRetStreamScale2("OFRetStreamScale2");
//
//	hls::stream<uint16_t> thrStream("thresholdStream");
//#pragma HLS STREAM variable=thrStream depth=3 dim=1
//	hls::stream<apUint1_t> rotatFlgStream("rotationFlgStream");
//
//	hls::stream<uint8_t>  xWrStream("xWrStream"), yWrStream("yWrStream");
//	hls::stream<sliceIdx_t> idxWrStream("idxWrStream");
//	hls::stream<col_pix_t> currentColStream("currentColStream");
//
//	hls::stream<apUint112_t> outStream("sumStream"), outStreamScale1("outStreamScale1"), outStreamScale2("outStreamScale2");
//#pragma HLS STREAM variable=outStream depth=2 dim=1
//#pragma HLS RESOURCE variable=outStream core=FIFO_SRL
//#pragma HLS STREAM variable=outStreamScale1 depth=2 dim=1
//#pragma HLS RESOURCE variable=outStreamScale1 core=FIFO_SRL
//#pragma HLS STREAM variable=outStreamScale2 depth=2 dim=1
//#pragma HLS RESOURCE variable=outStreamScale2 core=FIFO_SRL
//	hls::stream<int16_t> outSumStream("outSumStream"), outSumStreamScale1("outSumStreamScale1"), outSumStreamScale2("outSumStreamScale2");
//	hls::stream<int8_t> OF_yStream("OF_yStream"), OF_yStreamScale1("OF_yStreamScale1"), OF_yStreamScale2("OF_yStreamScale2");
//
//	hls::stream<apUint6_t> refZeroCntStream("refZeroCntStream"), refZeroCntStreamScale1("refZeroCntStreamScale1"), refZeroCntStreamScale2("refZeroCntStreamScale2");
//#pragma HLS STREAM variable=refZeroCntStream depth=2 dim=1
//#pragma HLS STREAM variable=refZeroCntStreamScale1 depth=2 dim=1
//#pragma HLS STREAM variable=refZeroCntStreamScale2 depth=2 dim=1
//	hls::stream<uint16_t> refZeroCntSumStream("refZeroCntSumStream"),
//						  refZeroCntSumStreamScale1("refZeroCntSumStreamScale1"),
//						  refZeroCntSumStreamScale2("refZeroCntSumStreamScale2");
//
//	hls::stream<apUint42_t> tagColValidCntStream("tagColValidCntStream"), tagColValidCntStreamScale1("tagColValidCntStreamScale1"), tagColValidCntStreamScale2("tagColValidCntStreamScale2");
//#pragma HLS STREAM variable=tagColValidCntStream depth=2 dim=1
//#pragma HLS STREAM variable=tagColValidCntStreamScale1 depth=2 dim=1
//#pragma HLS STREAM variable=tagColValidCntStreamScale2 depth=2 dim=1
//	hls::stream<uint16_t> tagColValidCntSumStream("tagColValidCntSumStream"),
//						  tagColValidCntSumStreamScale1("tagColValidCntSumStreamScale1"),
//						  tagColValidCntSumStreamScale2("tagColValidCntSumStreamScale2");
//
//	hls::stream<apUint42_t> refTagValidCntStream("refTagValidCntStream"), refTagValidCntStreamScale1("refTagValidCntStreamScale1"), refTagValidCntStreamScale2("refTagValidCntStreamScale2");
//#pragma HLS STREAM variable=refTagValidCntStream depth=2 dim=1
//#pragma HLS STREAM variable=refTagValidCntStreamScale1 depth=2 dim=1
//#pragma HLS STREAM variable=refTagValidCntStreamScale2 depth=2 dim=1
//	hls::stream<uint16_t> refTagValidCntSumStream("tagColValidCntSumStream"),
//						  refTagValidCntSumStreamScale1("refTagValidCntSumStreamScale1"),
//						  refTagValidCntSumStreamScale2("refTagValidCntSumStreamScale2");
//
//	eventIterSize = eventsArraySize;
//
//	parseEventsLoop:for(int32_t i = 0; i < eventIterSize; i++)
//	{
//#pragma HLS LOOP_TRIPCOUNT min=1 max=10000
//		DFRegion:
//		{
//#pragma HLS DATAFLOW
//
//			// This one has wrong block sad sum module.
////			getXandY(dataStream++, xInStream, yInStream, pktEventDataStream);
////			rotateSlice(xInStream, yInStream, xOutStream, yOutStream, idxStream);
////			rwSlices(xOutStream, yOutStream, idxStream, refStream, tagStreamIn);
////			miniSADSumWrapper(refStream, tagStreamIn, miniSumStream, OFRetStream);
////			outputResult(miniSumStream, OFRetStream, pktEventDataStream, eventSlice++);
//
////			getXandY(dataStream++, xInStream, yInStream, pktEventDataStream);
////			rotateSliceNoRotationFlg(xInStream, yInStream, xOutStream, yOutStream, idxStream);
////			rwSlices(xOutStream, yOutStream, idxStream, refStream, tagStreamIn);
////			colStreamToColSum(refStream, tagStreamIn, outStream);
////			accumulateStream(outStream, outSumStream, OF_yStream);
////			findStreamMin(outSumStream, OF_yStream, miniSumStream, OFRetStream);
////			outputResult(miniSumStream, OFRetStream, pktEventDataStream, eventSlice++);
//
//			// With feedback
//			getXandY(dataStream++, xInStream, yInStream, tsInStream, pktEventDataStream);
//			rotateSlice(xInStream, yInStream, tsInStream, xOutStream, yOutStream, idxStream);
//			rwSlices(xOutStream, yOutStream, idxStream, refStream, tagStreamIn, refStreamScale1, tagStreamInScale1, refStreamScale2, tagStreamInScale2);
//
//			colStreamToColSum(refStream, tagStreamIn, outStream, refZeroCntStream, tagColValidCntStream, refTagValidCntStream);
//			accumulateStream(outStream, outSumStream, OF_yStream, refZeroCntStream, tagColValidCntStream,  refTagValidCntStream);
//			findStreamMin(outSumStream, OF_yStream, miniSumStreamScale0, OFRetStreamScale0);
//
//			colStreamToColSumScale1(refStreamScale1, tagStreamInScale1, outStreamScale1, refZeroCntStreamScale1, tagColValidCntStreamScale1, refTagValidCntStreamScale1);
//			accumulateStreamScale1(outStreamScale1, outSumStreamScale1, OF_yStreamScale1, refZeroCntStreamScale1, tagColValidCntStreamScale1,  refTagValidCntStreamScale1);
//			findStreamMinScale1(outSumStreamScale1, OF_yStreamScale1, miniSumStreamScale1, OFRetStreamScale1);
//
//			colStreamToColSumScale2(refStreamScale2, tagStreamInScale2, outStreamScale2, refZeroCntStreamScale2, tagColValidCntStreamScale2, refTagValidCntStreamScale2);
//			accumulateStreamScale2(outStreamScale2, outSumStreamScale2, OF_yStreamScale2, refZeroCntStreamScale2, tagColValidCntStreamScale2,  refTagValidCntStreamScale2);
//			findStreamMinScale2(outSumStreamScale2, OF_yStreamScale2, miniSumStreamScale2, OFRetStreamScale2);
//
//			feedbackWrapperAndOutputResult(miniSumStreamScale0, OFRetStreamScale0,
//									       miniSumStreamScale1, OFRetStreamScale1,
//										   miniSumStreamScale2, OFRetStreamScale2,
//										   pktEventDataStream, thrStream, eventSlice++);
//
//			// This is the version combined rwSlices and colStreamToColSum together
//			// It consumes less resources but has higher II.
////			getXandY(dataStream++, xInStream, yInStream, pktEventDataStream);
////			rotateSlice(xInStream, yInStream, xOutStream, yOutStream, idxStream);
////			rwSlicesAndColStreams(xOutStream, yOutStream, idxStream, outStream);
////			accumulateStream(outStream, outSumStream, OF_yStream);
////			findStreamMin(outSumStream, OF_yStream, miniSumStream, OFRetStream);
////			outputResult(miniSumStream, OFRetStream, pktEventDataStream, eventSlice++);
//
//// read and write array in separate process function is not supported in dataflow.
////			getXandY(dataStream++, xInStream, yInStream, pktEventDataStream);
////			rotateSlice(xInStream, yInStream, xOutStream, yOutStream, idxStream);
////			readSlices( xOutStream, yOutStream, idxStream, xWrStream, yWrStream, idxWrStream,currentColStream, refStream, tagStreamIn);
////			writeSlices(xWrStream, yWrStream, idxWrStream, currentColStream);
////			miniSADSumWrapper(refStream, tagStreamIn, miniSumStream, OFRetStream);
////			outputResult(miniSumStream, OFRetStream, pktEventDataStream, eventSlice++);
//
////			getXandY(dataStream, xInStream, yInStream, pktEventDataStream);
////			rotateSlice(xInStream, yInStream, thrStream, xOutStream, yOutStream, idxStream, rotatFlgStream);
////			rwSlices(xOutStream, yOutStream, idxStream, refStream, tagStreamIn);
////			miniSADSumWrapper(refStream, tagStreamIn, miniSumStream, OFRetStream);
////			feedbackWrapperAndOutputResult(miniSumStream, OFRetStream, pktEventDataStream, rotatFlgStream, thrStream, eventSlice);
//		}
//	}
//}


/*
 * Following modules are for chip directly on board.
 */
void truncateStream(hls::stream< ap_uint<16> > &xStreamIn, hls::stream< ap_uint<16> > &yStreamIn, hls::stream< ap_uint<1> > &polStreamIn, hls::stream< ap_uint<64> > &tsStreamIn,
		hls::stream< apUint10_t > &xStreamOut, hls::stream< apUint10_t > &yStreamOut, hls::stream< uint32_t > &tsStreamOut, hls::stream< ap_uint<96> > &packetEventDataStream)
{
#pragma HLS PIPELINE
	ap_uint<16> x;
	ap_uint<16> y;
	ap_uint<64> ts;
	ap_uint<1> pol;

	xStreamIn >> x;
	yStreamIn >> y;
	tsStreamIn >> ts;
	polStreamIn >> pol;

	ap_uint<96> tmpOutput;
	tmpOutput[32] = ap_uint<1>(pol);
	tmpOutput.range(31, 16) = y;
	tmpOutput.range(15, 0) = x;
	tmpOutput.range(95, 33) = ts.range(62, 0);
	packetEventDataStream << tmpOutput;

	xStreamOut << (apUint10_t)x;
	yStreamOut << (apUint10_t)y;
	tsStreamOut << (uint32_t)ts;
}

void truncateScale(ap_uint<16> xIn, ap_uint<16> yIn, ap_uint<64> tsIn, ap_uint<1> polIn,
		hls::stream< apUint10_t > &xStreamOut, hls::stream< apUint10_t > &yStreamOut, hls::stream< uint32_t > &tsStreamOut, hls::stream< ap_uint<96> > &packetEventDataStream)
{
#pragma HLS PIPELINE
	ap_uint<16> x;
	ap_uint<16> y;
	ap_uint<64> ts;
	ap_uint<1> pol;

	x = xIn;
	y = yIn;
	ts = tsIn;
	pol = polIn;

	ap_uint<96> tmpOutput;
	tmpOutput[32] = ap_uint<1>(pol);
	tmpOutput.range(31, 16) = y;
	tmpOutput.range(15, 0) = x;
	tmpOutput.range(95, 33) = ts.range(62, 0);
	packetEventDataStream << tmpOutput;

	xStreamOut << (apUint10_t)x;
	yStreamOut << (apUint10_t)y;
	tsStreamOut << (uint32_t)ts;
}

void truncateStreamWithControl(hls::stream< ap_uint<16> > &xStreamIn, hls::stream< ap_uint<16> > &yStreamIn,
		hls::stream< ap_uint<1> > &polStreamIn, hls::stream< ap_uint<64> > &tsStreamIn,
		hls::stream< ap_uint<1> > &controlStreamIn,
		hls::stream< apUint10_t > &xStreamOut, hls::stream< apUint10_t > &yStreamOut,
		hls::stream< uint32_t > &tsStreamOut, hls::stream< ap_uint<96> > &packetEventDataStream,
		ap_uint<1> *select)
{
#pragma HLS PIPELINE
	ap_uint<16> x;
	ap_uint<16> y;
	ap_uint<64> ts;
	ap_uint<1> pol;
	ap_uint<1> control;

	xStreamIn >> x;
	yStreamIn >> y;
	tsStreamIn >> ts;
	polStreamIn >> pol;
	controlStreamIn >> control;

	ap_uint<96> tmpOutput;
	tmpOutput[32] = ap_uint<1>(pol);
	tmpOutput.range(31, 16) = y;
	tmpOutput.range(15, 0) = x;
	tmpOutput.range(95, 33) = ts.range(62, 0);
	packetEventDataStream << tmpOutput;

	xStreamOut << (apUint10_t)x;
	yStreamOut << (apUint10_t)y;
	tsStreamOut << (uint32_t)ts;
	*select = control;
}


void feedbackAndCombineOutputStream(hls::stream< ap_uint<96> > &packetEventDataStream,
						hls::stream<apUint15_t> &miniSumStreamScale0, hls::stream<apUint6_t> &OFRetStreamScale0,
						hls::stream<apUint15_t> &miniSumStreamScale1, hls::stream<apUint6_t> &OFRetStreamScale1,
						hls::stream<apUint15_t> &miniSumStreamScale2, hls::stream<apUint6_t> &OFRetStreamScale2,
						hls::stream< ap_uint<16> > &xStreamOut, hls::stream< ap_uint<16> > &yStreamOut,
						hls::stream< ap_uint<1> > &polStreamOut,
						hls::stream< ap_uint<64> > &tsStreamOut, hls::stream< ap_uint<17> > &custDataStreamOut)
{
//#pragma HLS PIPELINE
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

	apUint15_t tmpMiniSumRetScale0 = miniSumStreamScale0.read();
	apUint6_t tmpOFScale0 = OFRetStreamScale0.read();

	apUint15_t tmpMiniSumRetScale1 = miniSumStreamScale1.read();
	apUint6_t tmpOFScale1 = OFRetStreamScale1.read();

	apUint15_t tmpMiniSumRetScale2 = miniSumStreamScale2.read();
	apUint6_t tmpOFScale2 = OFRetStreamScale2.read();

#if DEBUG
	printRegion: if(x == 290 && y == 134)
	{
		std::cout << "tmpMiniSumRetScale0 is: " << tmpMiniSumRetScale0 << "\t tmpOFScale0 is: " << std::hex << tmpOFScale0 << std::endl;
		std::cout << "tmpMiniSumRetScale1 is: " << std::dec << tmpMiniSumRetScale1 << "\t tmpOFScale1 is: " << std::hex << tmpOFScale1 << std::endl;
		std::cout << "tmpMiniSumRetScale2 is: " << std::dec << tmpMiniSumRetScale2 << "\t tmpOFScale2 is: " << std::hex << tmpOFScale2 << std::endl;
		std::cout << std::dec;    // Restore dec mode
	}
#endif

    ap_int<8> xInitOffsetScale1 = ap_int<8>(tmpOFScale2.range(2,0) - 3) << 1;
    ap_int<8> yInitOffsetScale1 = ap_int<8>(tmpOFScale2.range(5,3) - 3) << 1;
    ap_int<8> xInitOffsetScale0 = (ap_int<8>(tmpOFScale1.range(2,0) - 3) << 1) + (xInitOffsetScale1 << 1);
    ap_int<8> yInitOffsetScale0 = (ap_int<8>(tmpOFScale1.range(5,3) - 3) << 1) + (yInitOffsetScale1 << 1);

    if (x/4 - BLOCK_SIZE_SCALE_2/2 - SEARCH_DISTANCE < 0 || x/4 + BLOCK_SIZE_SCALE_2/2 + SEARCH_DISTANCE >= DVS_WIDTH/4
            || y/4 - BLOCK_SIZE_SCALE_2/2 - SEARCH_DISTANCE < 0 || y/4 + BLOCK_SIZE_SCALE_2/2 + SEARCH_DISTANCE >= DVS_HEIGHT/4) {
    	tmpMiniSumRetScale2 = 0x7fff;
    	tmpOFScale2 = 0x3f;
    }

    if ((x/2 + xInitOffsetScale1) - BLOCK_SIZE_SCALE_1/2 - SEARCH_DISTANCE < 0 || (x/2 + xInitOffsetScale1) + BLOCK_SIZE_SCALE_1/2 + SEARCH_DISTANCE >= DVS_WIDTH/2
            ||(y/2 + yInitOffsetScale1) - BLOCK_SIZE_SCALE_1/2 - SEARCH_DISTANCE < 0 || (y/2 + yInitOffsetScale1) + BLOCK_SIZE_SCALE_1/2 + SEARCH_DISTANCE >= DVS_HEIGHT/2) {
    	tmpMiniSumRetScale1 = 0x7fff;
    	tmpOFScale1 = 0x3f;
    }
    if ((x/1 + xInitOffsetScale0) - BLOCK_SIZE_SCALE_0/2 - SEARCH_DISTANCE < 0 || (x/1 + xInitOffsetScale0) + BLOCK_SIZE_SCALE_0/2 + SEARCH_DISTANCE >= DVS_WIDTH/1
            || (y/1 + yInitOffsetScale0) - BLOCK_SIZE_SCALE_0/2 - SEARCH_DISTANCE < 0 || (y/1 + yInitOffsetScale0) + BLOCK_SIZE_SCALE_0/2 + SEARCH_DISTANCE >= DVS_HEIGHT/1) {
    	tmpMiniSumRetScale0 = 0x7fff;
    	tmpOFScale0 = 0x3f;
    }

	ap_int<16> miniRet;
	ap_uint<16> OFRet;
	ap_uint<2> scaleRet;

    // If the result is valid, then result scale is 0. Otherwise, set scaleRet 3.
    if( tmpMiniSumRetScale2 >= maxAllowedSadValueScale2
    		|| tmpMiniSumRetScale1 >= maxAllowedSadValueScale1
			|| tmpMiniSumRetScale0 >= maxAllowedSadValueScale0 )
    {
    	// invalid result
    	miniRet = 0x7fff;
    	OFRet = 0x7f7f;
    	scaleRet = 3;
    }
    else
    {
        ap_int<8> xOFRetScale2 = ap_int<8>(tmpOFScale2.range(2,0)) - 3;
        ap_int<8> yOFRetScale2 = ap_int<8>(tmpOFScale2.range(5,3)) - 3;
        ap_int<8> xOFRetScale1 = ap_int<8>(tmpOFScale1.range(2,0)) - 3;
        ap_int<8> yOFRetScale1 = ap_int<8>(tmpOFScale1.range(5,3)) - 3;
        ap_int<8> xOFRetScale0 = ap_int<8>(tmpOFScale0.range(2,0)) - 3;
        ap_int<8> yOFRetScale0 = ap_int<8>(tmpOFScale0.range(5,3)) - 3;

        ap_int<8> xOFTmpRet = (xOFRetScale2 * 4) + (xOFRetScale1 * 2) + xOFRetScale0;
        ap_int<8> yOFTmpRet = (yOFRetScale2 * 4) + (yOFRetScale1 * 2) + yOFRetScale0;

        OFRet.range(7, 0) = ap_uint<8>(xOFTmpRet);
        OFRet.range(15, 8) = ap_uint<8>(yOFTmpRet);

        miniRet = tmpMiniSumRetScale0;
        scaleRet = 0;
    }


//	apUint1_t tmpFlg = rotateFlgStream.read();

	uint16_t tmpThr;

	ap_int<9> tmp2 = miniRet.range(8, 0);
	apUint6_t tmpOF = OFRet;


	feedbackWithoutOFHist(miniRet, OFRet, glRotateFlg, &tmpThr);
	ap_uint<17> custData;
	if(glRotateFlg)
	{
//		glThrStream.write(tmpThr);
	}

	ap_int<8> xOFRet = ap_int<8>(OFRet.range(7, 0));
	ap_int<8> yOFRet = ap_int<8>(OFRet.range(15, 8));

//	custData.range(4, 0) = xOFRet;
//	custData.range(9, 5) = yOFRet;
//	custData[10] = glRotateFlg;

	// Using compressed data so we can represent more OF results
	ap_uint<16> compressedRetData = (xOFRet + MAX_SEARCH_DIST_RADIUS) * (2 * MAX_SEARCH_DIST_RADIUS + 1) + (yOFRet + MAX_SEARCH_DIST_RADIUS);
#pragma HLS RESOURCE variable=compressedRetData core=DSP_Macro
	if(OFRet == 0x7f7f)    // invalid data
	{
		compressedRetData = 0xffff;
	}
	if(glRotateFlg)  // rotation flag data
	{
		compressedRetData = 0xfffe;
	}
	custData.range(10, 0) = compressedRetData;

	xStreamOut << x;
	yStreamOut << y;
	polStreamOut << pol;
	tsStreamOut << ts;
	custDataStreamOut << custData;
}

void feedbackAndCombineOutputScale(hls::stream< ap_uint<96> > &packetEventDataStream,
						hls::stream<apUint15_t> &miniSumStreamScale0, hls::stream<apUint6_t> &OFRetStreamScale0,
						hls::stream<apUint15_t> &miniSumStreamScale1, hls::stream<apUint6_t> &OFRetStreamScale1,
						hls::stream<apUint15_t> &miniSumStreamScale2, hls::stream<apUint6_t> &OFRetStreamScale2,
						ap_uint<16> *xOut, ap_uint<16> *yOut, ap_uint<64> *tsOut, ap_uint<1> *polOut,
						apUint17_t *pixelDataOut)
{
//#pragma HLS PIPELINE
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

	apUint15_t tmpMiniSumRetScale0 = miniSumStreamScale0.read();
	apUint6_t tmpOFScale0 = OFRetStreamScale0.read();

	apUint15_t tmpMiniSumRetScale1 = miniSumStreamScale1.read();
	apUint6_t tmpOFScale1 = OFRetStreamScale1.read();

	apUint15_t tmpMiniSumRetScale2 = miniSumStreamScale2.read();
	apUint6_t tmpOFScale2 = OFRetStreamScale2.read();

#if DEBUG
	printRegion: if(x == 106 && y == 75)
	{
		std::cout << "tmpMiniSumRetScale0 is: " << tmpMiniSumRetScale0 << "\t tmpOFScale0 is: " << std::hex << tmpOFScale0 << std::endl;
		std::cout << "tmpMiniSumRetScale1 is: " << std::dec << tmpMiniSumRetScale1 << "\t tmpOFScale1 is: " << std::hex << tmpOFScale1 << std::endl;
		std::cout << "tmpMiniSumRetScale2 is: " << std::dec << tmpMiniSumRetScale2 << "\t tmpOFScale2 is: " << std::hex << tmpOFScale2 << std::endl;
		std::cout << std::dec;    // Restore dec mode
	}
#endif

    ap_int<8> xInitOffsetScale1 = ap_int<8>(tmpOFScale2.range(2,0) - 3) << 1;
    ap_int<8> yInitOffsetScale1 = ap_int<8>(tmpOFScale2.range(5,3) - 3) << 1;
    ap_int<8> xInitOffsetScale0 = (ap_int<8>(tmpOFScale1.range(2,0) - 3) << 1) + (xInitOffsetScale1 << 1);
    ap_int<8> yInitOffsetScale0 = (ap_int<8>(tmpOFScale1.range(5,3) - 3) << 1) + (yInitOffsetScale1 << 1);

    if (x/4 - BLOCK_SIZE_SCALE_2/2 - SEARCH_DISTANCE < 0 || x/4 + BLOCK_SIZE_SCALE_2/2 + SEARCH_DISTANCE >= DVS_WIDTH/4
            || y/4 - BLOCK_SIZE_SCALE_2/2 - SEARCH_DISTANCE < 0 || y/4 + BLOCK_SIZE_SCALE_2/2 + SEARCH_DISTANCE >= DVS_HEIGHT/4) {
    	tmpMiniSumRetScale2 = 0x7fff;
    	tmpOFScale2 = 0x3f;
    }

    if ((x/2 + xInitOffsetScale1) - BLOCK_SIZE_SCALE_1/2 - SEARCH_DISTANCE < 0 || (x/2 + xInitOffsetScale1) + BLOCK_SIZE_SCALE_1/2 + SEARCH_DISTANCE >= DVS_WIDTH/2
            ||(y/2 + yInitOffsetScale1) - BLOCK_SIZE_SCALE_1/2 - SEARCH_DISTANCE < 0 || (y/2 + yInitOffsetScale1) + BLOCK_SIZE_SCALE_1/2 + SEARCH_DISTANCE >= DVS_HEIGHT/2) {
    	tmpMiniSumRetScale1 = 0x7fff;
    	tmpOFScale1 = 0x3f;
    }
    if ((x/1 + xInitOffsetScale0) - BLOCK_SIZE_SCALE_0/2 - SEARCH_DISTANCE < 0 || (x/1 + xInitOffsetScale0) + BLOCK_SIZE_SCALE_0/2 + SEARCH_DISTANCE >= DVS_WIDTH/1
            || (y/1 + yInitOffsetScale0) - BLOCK_SIZE_SCALE_0/2 - SEARCH_DISTANCE < 0 || (y/1 + yInitOffsetScale0) + BLOCK_SIZE_SCALE_0/2 + SEARCH_DISTANCE >= DVS_HEIGHT/1) {
    	tmpMiniSumRetScale0 = 0x7fff;
    	tmpOFScale0 = 0x3f;
    }

	ap_int<16> miniRet;
	ap_uint<16> OFRet;
	ap_uint<2> scaleRet;

    // If the result is valid, then result scale is 0. Otherwise, set scaleRet 3.
    if( tmpMiniSumRetScale2 >= maxAllowedSadValueScale2
    		|| tmpMiniSumRetScale1 >= maxAllowedSadValueScale1
			|| tmpMiniSumRetScale0 >= maxAllowedSadValueScale0 )
    {
    	// invalid result
    	miniRet = 0x7fff;
    	OFRet = 0x7f7f;
    	scaleRet = 3;
    }
    else
    {
        ap_int<8> xOFRetScale2 = ap_int<8>(tmpOFScale2.range(2,0)) - 3;
        ap_int<8> yOFRetScale2 = ap_int<8>(tmpOFScale2.range(5,3)) - 3;
        ap_int<8> xOFRetScale1 = ap_int<8>(tmpOFScale1.range(2,0)) - 3;
        ap_int<8> yOFRetScale1 = ap_int<8>(tmpOFScale1.range(5,3)) - 3;
        ap_int<8> xOFRetScale0 = ap_int<8>(tmpOFScale0.range(2,0)) - 3;
        ap_int<8> yOFRetScale0 = ap_int<8>(tmpOFScale0.range(5,3)) - 3;

        ap_int<8> xOFTmpRet = (xOFRetScale2 * 4) + (xOFRetScale1 * 2) + xOFRetScale0;
        ap_int<8> yOFTmpRet = (yOFRetScale2 * 4) + (yOFRetScale1 * 2) + yOFRetScale0;

        OFRet.range(7, 0) = ap_uint<8>(xOFTmpRet);
        OFRet.range(15, 8) = ap_uint<8>(yOFTmpRet);

        miniRet = tmpMiniSumRetScale0;
        scaleRet = 0;
    }


//	apUint1_t tmpFlg = rotateFlgStream.read();

	uint16_t tmpThr;

	ap_int<9> tmp2 = miniRet.range(8, 0);
	apUint6_t tmpOF = OFRet;

	feedback(miniRet, tmpOF, glRotateFlg, &tmpThr);

	ap_uint<17> custData;
	if(glRotateFlg)
	{
//		glThrStream.write(tmpThr);
	}

	ap_int<8> xOFRet = ap_int<8>(OFRet.range(7, 0));
	ap_int<8> yOFRet = ap_int<8>(OFRet.range(15, 8));

	custData.range(7, 0) = xOFRet;
	custData.range(15, 8) = yOFRet;
	custData[16] = glRotateFlg;

	*xOut = x;
	*yOut = y;
	*polOut = pol;
	*tsOut = ts;
	*pixelDataOut = custData;
}

void rwSlicesScale0WithSelect(ap_uint<1> select,
		  hls::stream<apUint10_t> &xStream, hls::stream<apUint10_t> &yStream,
		  hls::stream< ap_int<8> > &xInitOffsetStream, hls::stream< ap_int<8> > &yInitOffsetStream,
		  hls::stream<sliceIdx_t> &idxStream,
		  hls::stream<apIntBlockScale0Col_t> &refSingleStreamOut, hls::stream<apIntBlockScale0Col_t> &tagSingleStreamOut)
{
#pragma HLS INLINE off

	if(select == 1)
	{
		rwSlicesScale0(xStream, yStream, xInitOffsetStream, yInitOffsetStream, idxStream, refSingleStreamOut, tagSingleStreamOut);
	}
	else
	{
		apUint10_t x;
		apUint10_t y;
		sliceIdx_t idx;
		ap_int<8> xInitOffset, yInitOffset;

		x = xStream.read();
		y = yStream.read();
		idx = idxStream.read();
//		xInitOffset = xInitOffsetStream.read();
//		yInitOffset = yInitOffsetStream.read();

		if(idx == 0)
		{

			writePixScale0(x, y, 0);

			resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
			resetCntScale0++;
			resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
			resetCntScale0++;
		}
		else if(idx == 1)
		{

			writePixScale0(x, y, 1);

			resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
			resetCntScale0++;
			resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
			resetCntScale0++;
		}
		else if(idx == 2)
		{
			writePixScale0(x, y, 2);

			resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
			resetCntScale0++;
			resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
			resetCntScale0++;
		}
		else
		{
			writePixScale0(x, y, 3);

			resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
			resetCntScale0++;
			resetPixScale0(ap_uint<10>((resetCntScale0/(PIXS_PER_COL)) % (SLICE_WIDTH)), ap_uint<10>((resetCntScale0 % (PIXS_PER_COL)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
			resetCntScale0++;
		}


//		refStreamOut << 0;
//		tagStreamOut << 0;
	}
}

void rwSlicesScale1WithSelect(ap_uint<1> select,
		hls::stream<apUint10_t> &xStream, hls::stream<apUint10_t> &yStream,
		hls::stream< ap_int<8> > &xInitOffsetStream, hls::stream< ap_int<8> > &yInitOffsetStream,
		hls::stream<sliceIdx_t> &idxStream,
		hls::stream<apIntBlockScale1Col_t> &refStreamOutScale1, hls::stream<apIntBlockScale1Col_t> &tagStreamOutScale1)
{
#pragma HLS INLINE off

	if(select == 1)
	{
		rwSlicesScale1(xStream, yStream, xInitOffsetStream, yInitOffsetStream, idxStream, refStreamOutScale1, tagStreamOutScale1);
	}
	else
	{
		apUint10_t x;
		apUint10_t y;
		sliceIdx_t idx;
		ap_int<8> xInitOffset, yInitOffset;

		x = xStream.read();
		y = yStream.read();
		idx = idxStream.read();
//		xInitOffset = xInitOffsetStream.read();
//		yInitOffset = yInitOffsetStream.read();

		if(idx == 0)
		{
			writePixScale1(x, y, 0);

			resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
			resetCntScale1++;
			resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
			resetCntScale1++;
		}
		else if(idx == 1)
		{
			writePixScale1(x, y, 1);

			resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
			resetCntScale1++;
			resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
			resetCntScale1++;
		}
		else if(idx == 2)
		{
			writePixScale1(x, y, 2);

			resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
			resetCntScale1++;
			resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
			resetCntScale1++;
		}
		else
		{
			writePixScale1(x, y, 3);

			resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
			resetCntScale1++;
			resetPixScale1(ap_uint<10>((resetCntScale1/(PIXS_PER_COL/2)) % (SLICE_WIDTH/2)), ap_uint<10>((resetCntScale1 % (PIXS_PER_COL/2)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
			resetCntScale1++;
		}


//		refStreamOutScale1 << 0;
//		tagStreamOutScale1 << 0;
	}
}

void rwSlicesScale2WithSelect(ap_uint<1> select,
		  hls::stream<apUint10_t> &xStream, hls::stream<apUint10_t> &yStream,
		  hls::stream<sliceIdx_t> &idxStream,
		  hls::stream<apIntBlockScale2Col_t> &refStreamOutScale2, hls::stream<apIntBlockScale2Col_t> &tagStreamOutScale2)
{
#pragma HLS INLINE off

	if(select == 1)
	{
		rwSlicesScale2(xStream, yStream, idxStream, refStreamOutScale2, tagStreamOutScale2);
	}
	else
	{
		apUint10_t x;
		apUint10_t y;
		sliceIdx_t idx;
		ap_int<8> xInitOffset, yInitOffset;

		x = xStream.read();
		y = yStream.read();
		idx = idxStream.read();

		if(idx == 0)
		{
			writePixScale2(x, y, 0);

			resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
			resetCntScale2++;
			resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(0 + 3));
			resetCntScale2++;
		}
		else if(idx == 1)
		{

			writePixScale2(x, y, 1);

			resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
			resetCntScale2++;
			resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(1 + 3));
			resetCntScale2++;
		}
		else if(idx == 2)
		{
			writePixScale2(x, y, 2);

			resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
			resetCntScale2++;
			resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(2 + 3));
			resetCntScale2++;
		}
		else
		{
			writePixScale2(x, y, 3);

			resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
			resetCntScale2++;
			resetPixScale2(ap_uint<10>((resetCntScale2/(PIXS_PER_COL/4)) % (SLICE_WIDTH/4)), ap_uint<10>((resetCntScale2 % (PIXS_PER_COL/4)) * COMBINED_PIXELS), (sliceIdx_t)(3 + 3));
			resetCntScale2++;
		}

//		refStreamOutScale2 << 0;
//		tagStreamOutScale2 << 0;
	}
}


void reOrderStreamScale0WithSelect(ap_uint<1> select,
		hls::stream<apIntBlockScale0Col_t> &refSingleStreamOut,
		hls::stream<apIntBlockScale0Col_t> &tagSingleStreamOut,
		hls::stream<apIntBlockScale0ColNPC_t> &refNPCStreamOut,
		hls::stream<apIntBlockScale0ColNPC_t> &tagNPCStreamOut)
{
#pragma HLS INLINE off

	if(select == 1)
	{
		reOrderStreamScale0(refSingleStreamOut, tagSingleStreamOut, refNPCStreamOut, tagNPCStreamOut);
	}
	else
	{

	}
}

void reOrderStreamScale1WithSelect(ap_uint<1> select,
		hls::stream<apIntBlockScale1Col_t> &refSingleStreamOut,
		hls::stream<apIntBlockScale1Col_t> &tagSingleStreamOut,
		hls::stream<apIntBlockScale1ColNPC_t> &refNPCStreamOut,
		hls::stream<apIntBlockScale1ColNPC_t> &tagNPCStreamOut)
{
#pragma HLS INLINE off

	if(select == 1)
	{
		reOrderStreamScale1(refSingleStreamOut, tagSingleStreamOut, refNPCStreamOut, tagNPCStreamOut);
	}
	else
	{

	}
}

void colStreamToColSumScale0WithSelect(ap_uint<1> select,
		hls::stream<apIntBlockScale0ColNPC_t> &colStream0, hls::stream<apIntBlockScale0ColNPC_t> &colStream1,
		hls::stream<apUintColSumNPC_t> &outStream, hls::stream< apUintRefZeroCntNPC_t > &refZeroCntStream,
		hls::stream<apUintValidCntNPC_t> &tagColValidCntStream,
		hls::stream<apUintValidCntNPC_t> &refTagValidCntStream)
{
	if(select == 1)
	{
		colStreamToColSumScale0(colStream0, colStream1, outStream, refZeroCntStream, tagColValidCntStream, refTagValidCntStream);
	}
	else
	{
//		apIntBlockScale0ColNPC_t tmpStreamData0 = colStream0.read();
//		apIntBlockScale0ColNPC_t tmpStreamData1 = colStream1.read();
//		refZeroCntStream.write(0);
//		outStream.write(0);
//		tagColValidCntStream.write(0);
//		refTagValidCntStream.write(0);
	}
}

void colStreamToColSumScale1WithSelect(ap_uint<1> select,
		hls::stream<apIntBlockScale1ColNPC_t> &colStream0, hls::stream<apIntBlockScale1ColNPC_t> &colStream1,
		hls::stream<apUintColSumScale1NPC_t> &outStream, hls::stream< apUintRefZeroCntScale1NPC_t > &refZeroCntStream,
		hls::stream<apUintValidCntScale1NPC_t> &tagColValidCntStream,
		hls::stream<apUintValidCntScale1NPC_t> &refTagValidCntStream)
{
	if(select == 1)
	{
		colStreamToColSumScale1(colStream0, colStream1, outStream, refZeroCntStream, tagColValidCntStream, refTagValidCntStream);
	}
	else
	{
//		apIntBlockScale1Col_t tmpStreamData0 = colStream0.read();
//		apIntBlockScale1Col_t tmpStreamData1 = colStream1.read();
//		refZeroCntStream.write(0);
//		outStream.write(0);
//		tagColValidCntStream.write(0);
//		refTagValidCntStream.write(0);
	}
}

void colStreamToColSumScale2WithSelect(ap_uint<1> select,
		hls::stream<apIntBlockScale2Col_t> &colStream0, hls::stream<apIntBlockScale2Col_t> &colStream1,
		hls::stream<apUint112_t> &outStream, hls::stream<apUint6_t> &refZeroCntStream,
		hls::stream<apUint42_t> &tagColValidCntStream,
		hls::stream<apUint42_t> &refTagValidCntStream)
{
	if(select == 1)
	{
		colStreamToColSumScale2(colStream0, colStream1, outStream, refZeroCntStream, tagColValidCntStream, refTagValidCntStream);
	}
	else
	{
//		apIntBlockScale2Col_t tmpStreamData0 = colStream0.read();
//		apIntBlockScale2Col_t tmpStreamData1 = colStream1.read();
//		refZeroCntStream.write(0);
//		outStream.write(0);
//		tagColValidCntStream.write(0);
//		refTagValidCntStream.write(0);
	}
}


void accumulateStreamScale0WithSelect(ap_uint<1> select,
		hls::stream<apUintColSumNPC_t> &inStream, hls::stream<int16_t> &outStream, hls::stream<int8_t> &OF_yStream,
		hls::stream<apUintRefZeroCntNPC_t> &refZeroCntStream,
		hls::stream<apUintValidCntNPC_t> &tagColValidCntStream,
		hls::stream<apUintValidCntNPC_t> &refTagValidCntStream)
{
	if(select == 1)
	{
		accumulateStreamScale0(inStream, outStream, OF_yStream, refZeroCntStream, tagColValidCntStream,  refTagValidCntStream);
	}
	else
	{
		apUintColSumNPC_t inDataNPC;
		apUintValidCntNPC_t tagColValidCntDataNPC;
		apUintValidCntNPC_t refTagValidCntDataNPC;
		apUintRefZeroCntNPC_t refZeroCntNPC;

//		inDataNPC = inStream.read();
//		tagColValidCntDataNPC = tagColValidCntStream.read();
//		refTagValidCntDataNPC = refTagValidCntStream.read();
//		refZeroCntNPC = refZeroCntStream.read();
//		outStream.write(0);
//		OF_yStream.write(0);
	}
}

void accumulateStreamScale1WithSelect(ap_uint<1> select,
		hls::stream<apUintColSumScale1NPC_t> &inStream, hls::stream<int16_t> &outStream, hls::stream<int8_t> &OF_yStream,
		hls::stream<apUintRefZeroCntScale1NPC_t> &refZeroCntStream,
		hls::stream<apUintValidCntScale1NPC_t> &tagColValidCntStream,
		hls::stream<apUintValidCntScale1NPC_t> &refTagValidCntStream)
{
	if(select == 1)
	{
		accumulateStreamScale1(inStream, outStream, OF_yStream, refZeroCntStream, tagColValidCntStream,  refTagValidCntStream);
	}
	else
	{
//		apUint112_t inDataNPC;
//		apUint42_t tagColValidCntDataNPC;
//		apUint42_t refTagValidCntDataNPC;
//		apUint6_t refZeroCntNPC;
//
//		inDataNPC = inStream.read();
//		tagColValidCntDataNPC = tagColValidCntStream.read();
//		refTagValidCntDataNPC = refTagValidCntStream.read();
//		refZeroCntNPC = refZeroCntStream.read();
//		outStream.write(0);
//		OF_yStream.write(0);
	}
}

void accumulateStreamScale2WithSelect(ap_uint<1> select,
		hls::stream<apUint112_t> &inStream, hls::stream<int16_t> &outStream, hls::stream<int8_t> &OF_yStream,
		hls::stream<apUint6_t> &refZeroCntStream,
		hls::stream<apUint42_t> &tagColValidCntStream,
		hls::stream<apUint42_t> &refTagValidCntStream)
{
	if(select == 1)
	{
		accumulateStreamScale2(inStream, outStream, OF_yStream, refZeroCntStream, tagColValidCntStream,  refTagValidCntStream);
	}
	else
	{
//		apUint112_t inDataNPC;
//		apUint42_t tagColValidCntDataNPC;
//		apUint42_t refTagValidCntDataNPC;
//		apUint6_t refZeroCntNPC;
//
//		inDataNPC = inStream.read();
//		tagColValidCntDataNPC = tagColValidCntStream.read();
//		refTagValidCntDataNPC = refTagValidCntStream.read();
//		refZeroCntNPC = refZeroCntStream.read();
//		outStream.write(0);
//		OF_yStream.write(0);
	}
}


void findStreamMinScale0WithSelect(ap_uint<1> select,
		hls::stream<int16_t> &inStream, hls::stream<int8_t> &OF_yStream,
		hls::stream<apUint15_t> &minStream,  hls::stream<apUint6_t> &OFStream)
{
	if(select == 1)
	{
		findStreamMinScale0(inStream, OF_yStream, minStream, OFStream);
	}
	else
	{
//		int16_t inData = inStream.read();
//		ap_uint<3> tmpOF_y = ap_uint<3>(OF_yStream.read());
//		minStream.write(0x7fff);
//		OFStream.write(0x3f);
	}
}

void findStreamMinScale1WithSelect(ap_uint<1> select,
		hls::stream<int16_t> &inStream, hls::stream<int8_t> &OF_yStream,
		hls::stream<apUint15_t> &minStream,  hls::stream<apUint6_t> &OFStream)
{
	if(select == 1)
	{
		findStreamMinScale1(inStream, OF_yStream, minStream, OFStream);
	}
	else
	{
//		int16_t inData = inStream.read();
//		ap_uint<3> tmpOF_y = ap_uint<3>(OF_yStream.read());
//		minStream.write(0x7fff);
//		OFStream.write(0x3f);
	}
}

void findStreamMinScale2WithSelect(ap_uint<1> select,
		hls::stream<int16_t> &inStream, hls::stream<int8_t> &OF_yStream,
		hls::stream<apUint15_t> &minStream,  hls::stream<apUint6_t> &OFStream)
{
	if(select == 1)
	{
		findStreamMinScale2(inStream, OF_yStream, minStream, OFStream);
	}
	else
	{
//		int16_t inData = inStream.read();
//		ap_uint<3> tmpOF_y = ap_uint<3>(OF_yStream.read());
//		minStream.write(0x7fff);
//		OFStream.write(0x3f);
	}
}

void getInitOffsetForNextScale1WithSelect(ap_uint<1> select,
		hls::stream<apUint15_t> &miniSumStreamScale2,  hls::stream<apUint6_t> &OFRetStreamScale2,
		hls::stream< ap_int<8> > &xInitOffsetScale1Stream, hls::stream< ap_int<8> > &yInitOffsetScale1Stream,
		hls::stream< ap_int<8> > &xInitOffsetScale1StreamCopy, hls::stream< ap_int<8> > &yInitOffsetScale1StreamCopy,
		hls::stream<apUint15_t> &miniSumStreamScale2Copy,  hls::stream<apUint6_t> &OFRetStreamScale2Copy
		)
{
	if(select == 1)
	{
		apUint6_t tmpOFScale2 = OFRetStreamScale2.read();
		apUint15_t tmpMiniOFScale2 = miniSumStreamScale2.read();
		ap_int<8> xInitOffsetScale1 = ap_int<8>(tmpOFScale2.range(2,0) - 3) << 1;
		ap_int<8> yInitOffsetScale1 = ap_int<8>(tmpOFScale2.range(5,3) - 3) << 1;
		OFRetStreamScale2Copy.write(tmpOFScale2);
		miniSumStreamScale2Copy.write(tmpMiniOFScale2);
		xInitOffsetScale1Stream.write(xInitOffsetScale1);
		yInitOffsetScale1Stream.write(yInitOffsetScale1);
		xInitOffsetScale1StreamCopy.write(xInitOffsetScale1);
		yInitOffsetScale1StreamCopy.write(yInitOffsetScale1);
	}
	else
	{
//		apUint6_t tmpOFScale2 = OFRetStreamScale2.read();
//		apUint15_t tmpMiniOFScale2 = miniSumStreamScale2.read();
//		ap_int<8> xInitOffsetScale1 = ap_int<8>(tmpOFScale2.range(2,0) - 3) << 1;
//		ap_int<8> yInitOffsetScale1 = ap_int<8>(tmpOFScale2.range(5,3) - 3) << 1;
//		OFRetStreamScale2Copy.write(tmpOFScale2);
//		miniSumStreamScale2Copy.write(tmpMiniOFScale2);
//		xInitOffsetScale1Stream.write(xInitOffsetScale1);
//		yInitOffsetScale1Stream.write(yInitOffsetScale1);
//		xInitOffsetScale1StreamCopy.write(xInitOffsetScale1);
//		yInitOffsetScale1StreamCopy.write(yInitOffsetScale1);
	}

}

void getInitOffsetForNextScale0WithSelect(ap_uint<1> select,
		hls::stream<apUint15_t> &miniSumStreamScale1,  hls::stream<apUint6_t> &OFRetStreamScale1,
		hls::stream< ap_int<8> > &xInitOffsetScale1StreamCopy, hls::stream< ap_int<8> > &yInitOffsetScale1StreamCopy,
		hls::stream< ap_int<8> > &xInitOffsetScale0Stream, hls::stream< ap_int<8> > &yInitOffsetScale0Stream,
		hls::stream<apUint15_t> &miniSumStreamScale1Copy,  hls::stream<apUint6_t> &OFRetStreamScale1Copy
		)
{
	if(select == 1)
	{
		apUint6_t tmpOFScale1 = OFRetStreamScale1.read();
		apUint15_t tmpMiniOFScale1 = miniSumStreamScale1.read();
		ap_int<8> xInitOffsetScale1Copy = xInitOffsetScale1StreamCopy.read();
		ap_int<8> yInitOffsetScale1Copy = yInitOffsetScale1StreamCopy.read();
	    ap_int<8> xInitOffsetScale0 = (ap_int<8>(tmpOFScale1.range(2,0) - 3) << 1) + (xInitOffsetScale1Copy << 1);
	    ap_int<8> yInitOffsetScale0 = (ap_int<8>(tmpOFScale1.range(5,3) - 3) << 1) + (yInitOffsetScale1Copy << 1);
	    OFRetStreamScale1Copy.write(tmpOFScale1);
	    miniSumStreamScale1Copy.write(tmpMiniOFScale1);
	    xInitOffsetScale0Stream.write(xInitOffsetScale0);
	    yInitOffsetScale0Stream.write(yInitOffsetScale0);
	}
	else
	{
//		apUint6_t tmpOFScale1 = OFRetStreamScale1.read();
//		apUint15_t tmpMiniOFScale1 = miniSumStreamScale1.read();
//		ap_int<8> xInitOffsetScale1Copy = xInitOffsetScale1StreamCopy.read();
//		ap_int<8> yInitOffsetScale1Copy = yInitOffsetScale1StreamCopy.read();
//	    ap_int<8> xInitOffsetScale0 = (ap_int<8>(tmpOFScale1.range(2,0) - 3) << 1) + (xInitOffsetScale1Copy << 1);
//	    ap_int<8> yInitOffsetScale0 = (ap_int<8>(tmpOFScale1.range(5,3) - 3) << 1) + (yInitOffsetScale1Copy << 1);
//	    OFRetStreamScale1Copy.write(tmpOFScale1);
//	    miniSumStreamScale1Copy.write(tmpMiniOFScale1);
//	    xInitOffsetScale0Stream.write(xInitOffsetScale0);
//	    yInitOffsetScale0Stream.write(yInitOffsetScale0);
	}

}

void feedbackAndCombineOutputStreamWithSelect(ap_uint<1> select,
		hls::stream< ap_uint<96> > &packetEventDataStream,
		hls::stream<apUint15_t> &miniSumStreamScale0, hls::stream<apUint6_t> &OFRetStreamScale0,
		hls::stream<apUint15_t> &miniSumStreamScale1, hls::stream<apUint6_t> &OFRetStreamScale1,
		hls::stream<apUint15_t> &miniSumStreamScale2, hls::stream<apUint6_t> &OFRetStreamScale2,
		hls::stream< ap_uint<16> > &xStreamOut, hls::stream< ap_uint<16> > &yStreamOut,
		hls::stream< ap_uint<1> > &polStreamOut,
		hls::stream< ap_uint<64> > &tsStreamOut, hls::stream< ap_uint<17> > &custDataStreamOut)
{
	if(select == 1)
	{
		feedbackAndCombineOutputStream(packetEventDataStream,
				miniSumStreamScale0, OFRetStreamScale0,
				miniSumStreamScale1, OFRetStreamScale1,
				miniSumStreamScale2, OFRetStreamScale2,
				xStreamOut, yStreamOut,
				polStreamOut,
				tsStreamOut, custDataStreamOut);
	}
	else
	{
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

		ap_int<16> miniRet;
		ap_uint<16> OFRet;
		ap_uint<2> scaleRet;

    	miniRet = 0x7fff;
    	OFRet = 0x7f7f;
    	scaleRet = 3;

    	uint16_t tmpThr;

    	ap_int<9> tmp2 = miniRet.range(8, 0);
    	apUint6_t tmpOF = OFRet;

//    	feedback(miniRet, tmpOF, glRotateFlg, &tmpThr);
    	feedbackWithoutOFHist(miniRet, OFRet, glRotateFlg, &tmpThr);

		ap_uint<17> custData;

		ap_int<8> xOFRet = ap_int<8>(OFRet.range(7, 0));
		ap_int<8> yOFRet = ap_int<8>(OFRet.range(15, 8));

//		custData.range(4, 0) = xOFRet;
//		custData.range(9, 5) = yOFRet;
//		custData[10] = glRotateFlg;

		// Using compressed data so we can represent more OF results
		ap_uint<16> compressedRetData = 0xffff;   // invalid data

		if(glRotateFlg)  // rotation flag data
		{
			compressedRetData = 0xfffe;
		}
		custData.range(10, 0) = compressedRetData;

		xStreamOut << x;
		yStreamOut << y;
		polStreamOut << pol;
		tsStreamOut << ts;
		custDataStreamOut << custData;
	}
}

void EVABMOFScale0Stream(ap_uint<1> select,
		hls::stream<apUint10_t> &xStream, hls::stream<apUint10_t> &yStream,
		hls::stream< ap_int<8> > &xInitOffsetStream, hls::stream< ap_int<8> > &yInitOffsetStream,
		hls::stream<sliceIdx_t> &idxStream,
//		hls::stream< ap_uint<64> > &tsStreamIn, hls::stream< ap_uint<1> > &polStreamIn,
//		hls::stream< ap_uint<16> > &xStreamOut, hls::stream< ap_uint<16> > &yStreamOut, hls::stream< ap_uint<64> > &tsStreamOut, hls::stream< ap_uint<1> > &polStreamOut,
		hls::stream<apUint15_t> &minStream,  hls::stream<apUint6_t> &OFStream)
{
#pragma HLS DATAFLOW
#pragma HLS INLINE off

#pragma HLS INTERFACE axis register both port=OFStream
#pragma HLS INTERFACE axis register both port=minStream

#pragma HLS INTERFACE axis register both port=idxStream
#pragma HLS INTERFACE axis register both port=yInitOffsetStream
#pragma HLS INTERFACE axis register both port=xInitOffsetStream
#pragma HLS INTERFACE axis register both port=yStream
#pragma HLS INTERFACE axis register both port=xStream

	hls::stream<apIntBlockScale0Col_t> refStream("refStream"), tagStreamIn("tagStream");
#pragma HLS STREAM variable=refStream depth=10 dim=1
#pragma HLS RESOURCE variable=refStream core=FIFO_SRL
#pragma HLS STREAM variable=tagStreamIn depth=10 dim=1
#pragma HLS RESOURCE variable=tagStreamIn core=FIFO_SRL

	hls::stream<apIntBlockScale0ColNPC_t> refNPCStream("refNPCStream"), tagNPCStreamIn("tagNPCStreamIn");
#pragma HLS STREAM variable=refNPCStream depth=10 dim=1
#pragma HLS RESOURCE variable=refNPCStream core=FIFO_SRL
#pragma HLS STREAM variable=tagNPCStreamIn depth=10 dim=1
#pragma HLS RESOURCE variable=tagNPCStreamIn core=FIFO_SRL

	hls::stream<apUintColSumNPC_t> outStream("sumStream");
#pragma HLS STREAM variable=outStream depth=10 dim=1
#pragma HLS RESOURCE variable=outStream core=FIFO_SRL

	hls::stream<int16_t> outSumStream("outSumStream"), outSumStreamScale1("outSumStreamScale1"), outSumStreamScale2("outSumStreamScale2");
	hls::stream<int8_t> OF_yStream("OF_yStream"), OF_yStreamScale1("OF_yStreamScale1"), OF_yStreamScale2("OF_yStreamScale2");

	hls::stream<apUintRefZeroCntNPC_t> refZeroCntStream("refZeroCntStream");
	hls::stream<apUint6_t> refZeroCntStreamScale1("refZeroCntStreamScale1"), refZeroCntStreamScale2("refZeroCntStreamScale2");
#pragma HLS STREAM variable=refZeroCntStream depth=2 dim=1
#pragma HLS STREAM variable=refZeroCntStreamScale1 depth=2 dim=1
#pragma HLS STREAM variable=refZeroCntStreamScale2 depth=2 dim=1

	hls::stream<apUintValidCntNPC_t> tagColValidCntStream("tagColValidCntStream");
	hls::stream<apUintValidCnt_t> tagColValidCntStreamScale1("tagColValidCntStreamScale1"), tagColValidCntStreamScale2("tagColValidCntStreamScale2");
#pragma HLS STREAM variable=tagColValidCntStream depth=2 dim=1
#pragma HLS STREAM variable=tagColValidCntStreamScale1 depth=2 dim=1
#pragma HLS STREAM variable=tagColValidCntStreamScale2 depth=2 dim=1

	hls::stream<apUintValidCntNPC_t> refTagValidCntStream("refTagValidCntStream");
	hls::stream<apUintValidCnt_t> refTagValidCntStreamScale1("refTagValidCntStreamScale1"), refTagValidCntStreamScale2("refTagValidCntStreamScale2");
#pragma HLS STREAM variable=refTagValidCntStream depth=2 dim=1
#pragma HLS STREAM variable=refTagValidCntStreamScale1 depth=2 dim=1
#pragma HLS STREAM variable=refTagValidCntStreamScale2 depth=2 dim=1

	rwSlicesScale0WithSelect(select, xStream, yStream, xInitOffsetStream, yInitOffsetStream, idxStream, refStream, tagStreamIn);
	reOrderStreamScale0WithSelect(select, refStream, tagStreamIn, refNPCStream, tagNPCStreamIn);
	colStreamToColSumScale0WithSelect(select, refNPCStream, tagNPCStreamIn, outStream, refZeroCntStream, tagColValidCntStream, refTagValidCntStream);
	accumulateStreamScale0WithSelect(select, outStream, outSumStream, OF_yStream, refZeroCntStream, tagColValidCntStream,  refTagValidCntStream);
	findStreamMinScale0WithSelect(select, outSumStream, OF_yStream, minStream, OFStream);
}

void EVABMOFStreamWithControl(hls::stream< ap_uint<16> > &xStreamIn, hls::stream< ap_uint<16> > &yStreamIn,
		hls::stream< ap_uint<64> > &tsStreamIn, hls::stream< ap_uint<1> > &polStreamIn,
		hls::stream< ap_uint<1> > &controlStreamIn,
		hls::stream< ap_uint<16> > &xStreamOut, hls::stream< ap_uint<16> > &yStreamOut,
		hls::stream< ap_uint<64> > &tsStreamOut, hls::stream< ap_uint<1> > &polStreamOut,
		hls::stream< apUint17_t > &pixelDataStream,
		ap_uint<32> config, status_t *status)
{
// For simulation, comment them because simulation doesn't support AXI4Lite
#pragma HLS INTERFACE s_axilite port=config bundle=config
#pragma HLS INTERFACE s_axilite port=status bundle=config

#pragma HLS INTERFACE axis register both port=tsStreamOut
#pragma HLS INTERFACE axis register both port=polStreamOut
#pragma HLS INTERFACE axis register both port=yStreamOut
#pragma HLS INTERFACE axis register both port=xStreamOut
#pragma HLS INTERFACE axis register both port=pixelDataStream

#pragma HLS INTERFACE axis register both port=controlStreamIn
#pragma HLS INTERFACE axis register both port=polStreamIn
#pragma HLS INTERFACE axis register both port=tsStreamIn
#pragma HLS INTERFACE axis register both port=yStreamIn
#pragma HLS INTERFACE axis register both port=xStreamIn
#pragma HLS DATAFLOW
#pragma HLS INLINE off

	hls::stream<apUint10_t>  xInStream("xInStream"), yInStream("yInStream");
	hls::stream<uint32_t>  tsInStream("tsInStream");

	hls::stream<apUint10_t>  xOutStream("xOutStream"), yOutStream("yOutStream");
	hls::stream<apUint10_t>  xOutStreamScale1("xOutStreamScale1"), yOutStreamScale1("yOutStreamScale1");
	hls::stream<apUint10_t>  xOutStreamScale2("xOutStreamScale2"), yOutStreamScale2("yOutStreamScale2");
#pragma HLS STREAM variable=xOutStreamScale1 depth=10 dim=1
#pragma HLS RESOURCE variable=xOutStreamScale1 core=FIFO_SRL
#pragma HLS STREAM variable=yOutStreamScale1 depth=10 dim=1
#pragma HLS RESOURCE variable=yOutStreamScale1 core=FIFO_SRL
#pragma HLS STREAM variable=xOutStream depth=20 dim=1
#pragma HLS RESOURCE variable=xOutStream core=FIFO_SRL
#pragma HLS STREAM variable=yOutStream depth=20 dim=1
#pragma HLS RESOURCE variable=yOutStream core=FIFO_SRL

	hls::stream<sliceIdx_t> idxStream("idxStream");
	hls::stream<sliceIdx_t> idxStreamScale1("idxStreamScale1");
	hls::stream<sliceIdx_t> idxStreamScale2("idxStreamScale2");
#pragma HLS STREAM variable=idxStreamScale1 depth=10 dim=1
#pragma HLS RESOURCE variable=idxStreamScale1 core=FIFO_SRL
#pragma HLS STREAM variable=idxStream depth=20 dim=1
#pragma HLS RESOURCE variable=idxStream core=FIFO_SRL

	hls::stream< ap_uint<96> > pktEventDataStream("EventStream");
#pragma HLS STREAM variable=pktEventDataStream depth=70 dim=1
#pragma HLS RESOURCE variable=pktEventDataStream core=FIFO_SRL

	hls::stream<apIntBlockScale0Col_t> refStream("refStream"), tagStreamIn("tagStream");
#pragma HLS STREAM variable=refStream depth=20 dim=1
#pragma HLS RESOURCE variable=refStream core=FIFO_SRL
#pragma HLS STREAM variable=tagStreamIn depth=20 dim=1
#pragma HLS RESOURCE variable=tagStreamIn core=FIFO_SRL
	hls::stream<apIntBlockScale0ColNPC_t> refNPCStream("refNPCStream"), tagNPCStreamIn("tagNPCStreamIn");
#pragma HLS STREAM variable=refNPCStream depth=20 dim=1
#pragma HLS RESOURCE variable=refNPCStream core=FIFO_SRL
#pragma HLS STREAM variable=tagNPCStreamIn depth=20 dim=1
#pragma HLS RESOURCE variable=tagNPCStreamIn core=FIFO_SRL
	hls::stream<apIntBlockScale1Col_t> refStreamScale1("refStreamScale1"), tagStreamInScale1("tagStreamScale1");
#pragma HLS STREAM variable=tagStreamInScale1 depth=20 dim=1
#pragma HLS RESOURCE variable=tagStreamInScale1 core=FIFO_SRL
#pragma HLS STREAM variable=refStreamScale1 depth=20 dim=1
#pragma HLS RESOURCE variable=refStreamScale1 core=FIFO_SRL
	hls::stream<apIntBlockScale1ColNPC_t> refNPCStreamScale1("refNPCStreamScale1"), tagNPCStreamInScale1("tagNPCStreamInScale1");
#pragma HLS STREAM variable=refNPCStreamScale1 depth=20 dim=1
#pragma HLS RESOURCE variable=refNPCStreamScale1 core=FIFO_SRL
#pragma HLS STREAM variable=tagNPCStreamInScale1 depth=20 dim=1
#pragma HLS RESOURCE variable=tagNPCStreamInScale1 core=FIFO_SRL
	hls::stream<apIntBlockScale2Col_t> refStreamScale2("refStreamScale2"), tagStreamInScale2("tagStreamScale2");
#pragma HLS STREAM variable=tagStreamInScale2 depth=20 dim=1
#pragma HLS RESOURCE variable=tagStreamInScale2 core=FIFO_SRL
#pragma HLS STREAM variable=refStreamScale2 depth=20 dim=1
#pragma HLS RESOURCE variable=refStreamScale2 core=FIFO_SRL

	hls::stream<apUint15_t> miniSumStreamScale0("miniSumStreamScale0"), miniSumStreamScale1("miniSumStreamScale1"), miniSumStreamScale2("miniSumStreamScale2");
#pragma HLS STREAM variable=miniSumStreamScale0 depth=30 dim=1
#pragma HLS RESOURCE variable=miniSumStreamScale0 core=FIFO_SRL
#pragma HLS STREAM variable=miniSumStreamScale1 depth=30 dim=1
#pragma HLS RESOURCE variable=miniSumStreamScale1 core=FIFO_SRL
#pragma HLS STREAM variable=miniSumStreamScale2 depth=30 dim=1
#pragma HLS RESOURCE variable=miniSumStreamScale2 core=FIFO_SRL
	hls::stream<apUint15_t> miniSumStreamScale1Copy("miniSumStreamScale1Copy"), miniSumStreamScale2Copy("miniSumStreamScale2Copy");
#pragma HLS STREAM variable=miniSumStreamScale1Copy depth=30 dim=1
#pragma HLS RESOURCE variable=miniSumStreamScale1Copy core=FIFO_SRL
#pragma HLS STREAM variable=miniSumStreamScale2Copy depth=30 dim=1
#pragma HLS RESOURCE variable=miniSumStreamScale2Copy core=FIFO_SRL

	hls::stream<apUint6_t> OFRetStreamScale0("OFRetStreamScale0"), OFRetStreamScale1("OFRetStreamScale1"), OFRetStreamScale2("OFRetStreamScale2");
#pragma HLS STREAM variable=OFRetStreamScale0 depth=30 dim=1
#pragma HLS RESOURCE variable=OFRetStreamScale0 core=FIFO_SRL
#pragma HLS STREAM variable=OFRetStreamScale1 depth=30 dim=1
#pragma HLS RESOURCE variable=OFRetStreamScale1 core=FIFO_SRL
#pragma HLS STREAM variable=OFRetStreamScale2 depth=30 dim=1
#pragma HLS RESOURCE variable=OFRetStreamScale2 core=FIFO_SRL
	hls::stream<apUint6_t> OFRetStreamScale1Copy("OFRetStreamScale1Copy"), OFRetStreamScale2Copy("OFRetStreamScale2Copy");
#pragma HLS STREAM variable=OFRetStreamScale1Copy depth=30 dim=1
#pragma HLS RESOURCE variable=OFRetStreamScale1Copy core=FIFO_SRL
#pragma HLS STREAM variable=OFRetStreamScale2Copy depth=30 dim=1
#pragma HLS RESOURCE variable=OFRetStreamScale2Copy core=FIFO_SRL

	hls::stream< ap_int<8> > xInitOffsetScale1Stream("xInitOffsetScale1Stream"), yInitOffsetScale1Stream("yInitOffsetScale1Stream");
#pragma HLS STREAM variable=xInitOffsetScale1Stream depth=30 dim=1
#pragma HLS RESOURCE variable=xInitOffsetScale1Stream core=FIFO_SRL
#pragma HLS STREAM variable=yInitOffsetScale1Stream depth=30 dim=1
#pragma HLS RESOURCE variable=yInitOffsetScale1Stream core=FIFO_SRL
	hls::stream< ap_int<8> > xInitOffsetScale1StreamCopy("xInitOffsetScale1StreamCopy"), yInitOffsetScale1StreamCopy("yInitOffsetScale1StreamCopy");
#pragma HLS STREAM variable=xInitOffsetScale1StreamCopy depth=30 dim=1
#pragma HLS RESOURCE variable=xInitOffsetScale1StreamCopy core=FIFO_SRL
#pragma HLS STREAM variable=yInitOffsetScale1StreamCopy depth=30 dim=1
#pragma HLS RESOURCE variable=yInitOffsetScale1StreamCopy core=FIFO_SRL
	hls::stream< ap_int<8> > xInitOffsetScale0Stream("xInitOffsetScale0Stream"), yInitOffsetScale0Stream("yInitOffsetScale0Stream");
#pragma HLS STREAM variable=xInitOffsetScale0Stream depth=30 dim=1
#pragma HLS RESOURCE variable=xInitOffsetScale0Stream core=FIFO_SRL
#pragma HLS STREAM variable=yInitOffsetScale0Stream depth=30 dim=1
#pragma HLS RESOURCE variable=yInitOffsetScale0Stream core=FIFO_SRL

	hls::stream<uint16_t> thrStream("thresholdStream");
#pragma HLS STREAM variable=thrStream depth=3 dim=1
	hls::stream<apUint1_t> rotatFlgStream("rotationFlgStream");

	hls::stream<uint8_t>  xWrStream("xWrStream"), yWrStream("yWrStream");
	hls::stream<sliceIdx_t> idxWrStream("idxWrStream");
	hls::stream<col_pix_t> currentColStream("currentColStream");

	hls::stream<apUintColSumNPC_t> outStream("sumStream");
#pragma HLS STREAM variable=outStream depth=20 dim=1
#pragma HLS RESOURCE variable=outStream core=FIFO_SRL
	hls::stream<apUintColSumScale1NPC_t> outStreamScale1("outStreamScale1");
#pragma HLS STREAM variable=outStreamScale1 depth=20 dim=1
#pragma HLS RESOURCE variable=outStreamScale1 core=FIFO_SRL
	hls::stream<apUintColSum_t> outStreamScale2("outStreamScale2");
#pragma HLS STREAM variable=outStreamScale2 depth=20 dim=1
#pragma HLS RESOURCE variable=outStreamScale2 core=FIFO_SRL

	hls::stream<int16_t> outSumStream("outSumStream"), outSumStreamScale1("outSumStreamScale1"), outSumStreamScale2("outSumStreamScale2");
#pragma HLS STREAM variable=outSumStream depth=20 dim=1
#pragma HLS RESOURCE variable=outSumStream core=FIFO_SRL
#pragma HLS STREAM variable=outSumStreamScale1 depth=20 dim=1
#pragma HLS RESOURCE variable=outSumStreamScale1 core=FIFO_SRL
#pragma HLS STREAM variable=outSumStreamScale2 depth=20 dim=1
#pragma HLS RESOURCE variable=outSumStreamScale2 core=FIFO_SRL
	hls::stream<int8_t> OF_yStream("OF_yStream"), OF_yStreamScale1("OF_yStreamScale1"), OF_yStreamScale2("OF_yStreamScale2");
#pragma HLS STREAM variable=OF_yStream depth=20 dim=1
#pragma HLS RESOURCE variable=OF_yStream core=FIFO_SRL
#pragma HLS STREAM variable=OF_yStreamScale1 depth=20 dim=1
#pragma HLS RESOURCE variable=OF_yStreamScale1 core=FIFO_SRL
#pragma HLS STREAM variable=OF_yStreamScale2 depth=20 dim=1
#pragma HLS RESOURCE variable=OF_yStreamScale2 core=FIFO_SRL

	hls::stream<apUintRefZeroCntNPC_t> refZeroCntStream("refZeroCntStream");
#pragma HLS STREAM variable=refZeroCntStream depth=20 dim=1
#pragma HLS RESOURCE variable=refZeroCntStream core=FIFO_SRL
	hls::stream<apUintRefZeroCntScale1NPC_t> refZeroCntStreamScale1("refZeroCntStreamScale1");
#pragma HLS STREAM variable=refZeroCntStreamScale1 depth=20 dim=1
#pragma HLS RESOURCE variable=refZeroCntStreamScale1 core=FIFO_SRL
	hls::stream<apUint6_t> refZeroCntStreamScale2("refZeroCntStreamScale2");
#pragma HLS STREAM variable=refZeroCntStreamScale2 depth=20 dim=1
#pragma HLS RESOURCE variable=refZeroCntStreamScale2 core=FIFO_SRL

	hls::stream<apUintValidCntNPC_t> tagColValidCntStream("tagColValidCntStream");
#pragma HLS STREAM variable=tagColValidCntStream depth=20 dim=1
#pragma HLS RESOURCE variable=tagColValidCntStream core=FIFO_SRL
	hls::stream<apUintValidCntScale1NPC_t> tagColValidCntStreamScale1("tagColValidCntStreamScale1");
#pragma HLS STREAM variable=tagColValidCntStreamScale1 depth=20 dim=1
#pragma HLS RESOURCE variable=tagColValidCntStreamScale1 core=FIFO_SRL
	hls::stream<apUintValidCnt_t> tagColValidCntStreamScale2("tagColValidCntStreamScale2");
#pragma HLS STREAM variable=tagColValidCntStreamScale2 depth=20 dim=1
#pragma HLS RESOURCE variable=tagColValidCntStreamScale2 core=FIFO_SRL

	hls::stream<apUintValidCntNPC_t> refTagValidCntStream("refTagValidCntStream");
#pragma HLS STREAM variable=refTagValidCntStream depth=20 dim=1
#pragma HLS RESOURCE variable=refTagValidCntStream core=FIFO_SRL
	hls::stream<apUintValidCntScale1NPC_t> refTagValidCntStreamScale1("refTagValidCntStreamScale1");
#pragma HLS STREAM variable=refTagValidCntStreamScale1 depth=20 dim=1
#pragma HLS RESOURCE variable=refTagValidCntStreamScale1 core=FIFO_SRL
	hls::stream<apUintValidCnt_t> refTagValidCntStreamScale2("refTagValidCntStreamScale2");
#pragma HLS STREAM variable=refTagValidCntStreamScale2 depth=20 dim=1
#pragma HLS RESOURCE variable=refTagValidCntStreamScale2 core=FIFO_SRL

	ap_uint<1> select;
#pragma HLS STREAM variable=select depth=30 dim=1
#pragma HLS RESOURCE variable=select core=FIFO_SRL

    glConfig = config;

	truncateStreamWithControl(xStreamIn, yStreamIn, polStreamIn, tsStreamIn, controlStreamIn,
			xInStream, yInStream, tsInStream, pktEventDataStream, &select);

//	rotateSlice(xInStream, yInStream, tsInStream, xOutStream, yOutStream, idxStream);
	rotateSliceAllScales(xInStream, yInStream, tsInStream, xOutStream, yOutStream, idxStream,
				xOutStreamScale1, yOutStreamScale1, idxStreamScale1,
				xOutStreamScale2, yOutStreamScale2, idxStreamScale2);
//	rwSlices(xOutStream, yOutStream, idxStream, refStream, tagStreamIn, refStreamScale1, tagStreamInScale1, refStreamScale2, tagStreamInScale2);
	rwSlicesScale2WithSelect(select, xOutStreamScale2, yOutStreamScale2, idxStreamScale2, refStreamScale2, tagStreamInScale2);
	colStreamToColSumScale2WithSelect(select, refStreamScale2, tagStreamInScale2, outStreamScale2, refZeroCntStreamScale2, tagColValidCntStreamScale2, refTagValidCntStreamScale2);
	accumulateStreamScale2WithSelect(select, outStreamScale2, outSumStreamScale2, OF_yStreamScale2, refZeroCntStreamScale2, tagColValidCntStreamScale2,  refTagValidCntStreamScale2);
	findStreamMinScale2WithSelect(select, outSumStreamScale2, OF_yStreamScale2, miniSumStreamScale2, OFRetStreamScale2);

	getInitOffsetForNextScale1WithSelect(select,
			miniSumStreamScale2, OFRetStreamScale2,
			xInitOffsetScale1Stream, yInitOffsetScale1Stream,
			xInitOffsetScale1StreamCopy, yInitOffsetScale1StreamCopy,
			miniSumStreamScale2Copy, OFRetStreamScale2Copy);

	rwSlicesScale1WithSelect(select, xOutStreamScale1, yOutStreamScale1, xInitOffsetScale1Stream, yInitOffsetScale1Stream, idxStreamScale1, refStreamScale1, tagStreamInScale1);
	reOrderStreamScale1WithSelect(select, refStreamScale1, tagStreamInScale1, refNPCStreamScale1, tagNPCStreamInScale1);
	colStreamToColSumScale1WithSelect(select, refNPCStreamScale1, tagNPCStreamInScale1, outStreamScale1, refZeroCntStreamScale1, tagColValidCntStreamScale1, refTagValidCntStreamScale1);
	accumulateStreamScale1WithSelect(select, outStreamScale1, outSumStreamScale1, OF_yStreamScale1, refZeroCntStreamScale1, tagColValidCntStreamScale1,  refTagValidCntStreamScale1);
	findStreamMinScale1WithSelect(select, outSumStreamScale1, OF_yStreamScale1, miniSumStreamScale1, OFRetStreamScale1);

	getInitOffsetForNextScale0WithSelect(select,
			miniSumStreamScale1, OFRetStreamScale1,
			xInitOffsetScale1StreamCopy, yInitOffsetScale1StreamCopy,
			xInitOffsetScale0Stream, yInitOffsetScale0Stream,
			miniSumStreamScale1Copy, OFRetStreamScale1Copy);

	rwSlicesScale0WithSelect(select, xOutStream, yOutStream, xInitOffsetScale0Stream, yInitOffsetScale0Stream, idxStream, refStream, tagStreamIn);
	reOrderStreamScale0WithSelect(select, refStream, tagStreamIn, refNPCStream, tagNPCStreamIn);
	colStreamToColSumScale0WithSelect(select, refNPCStream, tagNPCStreamIn, outStream, refZeroCntStream, tagColValidCntStream, refTagValidCntStream);
	accumulateStreamScale0WithSelect(select, outStream, outSumStream, OF_yStream, refZeroCntStream, tagColValidCntStream,  refTagValidCntStream);
	findStreamMinScale0WithSelect(select, outSumStream, OF_yStream, miniSumStreamScale0, OFRetStreamScale0);

	feedbackAndCombineOutputStreamWithSelect(select,
								pktEventDataStream,
								miniSumStreamScale0, OFRetStreamScale0,
								miniSumStreamScale1Copy, OFRetStreamScale1Copy,
								miniSumStreamScale2Copy, OFRetStreamScale2Copy,
								xStreamOut, yStreamOut, polStreamOut, tsStreamOut, pixelDataStream);

	glStatus.currentDeltaTSHW = deltaTsHWBak;
	glStatus.currentAreaCntThr = glSFASTAreaCntThrBak;
	glStatus.currentFeedbackAreaCntThr = areaEventThrBak;
	glStatus.currentOFHistCntSum = glOFHistCntSum;
	glStatus.currentOFHistRadiusSum = glOFHistRadiusSum;
	glStatus.currentAverageTgtValue = glAverageTargetValueBak;
    *status = glStatus;
}

