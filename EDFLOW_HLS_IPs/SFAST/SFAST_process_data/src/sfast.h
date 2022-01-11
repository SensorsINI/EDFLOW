#ifndef SFAST
#define SFAST

#include<stdint.h>
#include "ap_int.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"
#include "assert.h"

#define DEBUG 0
#define OUTER_STREAK_INFO_DEBUG 0

#define CUST_DATA_MASK 0x3ff
#define POLARITY_SHIFT 1
#define POLARITY_MASK 0x00000001
#define POLARITY_Y_ADDR_SHIFT 2
#define POLARITY_Y_ADDR_MASK 0x000001FF      //  Reduce mask bit width to reduce LUTs
#define POLARITY_X_ADDR_SHIFT 17
#define POLARITY_X_ADDR_MASK 0x000001FF      //  Reduce mask bit width to reduce LUTs

#define AEDAT_POLARITY_SHIFT 11
#define AEDAT_POLARITY_MASK (1 << AEDAT_POLARITY_SHIFT)  // 1 bit at bit 11
#define AEDAT_POLARITY_Y_ADDR_SHIFT 22
#define AEDAT_POLARITY_Y_ADDR_MASK (511 << AEDAT_POLARITY_Y_ADDR_SHIFT) // 9 bits from bits 22 to 30
#define AEDAT_POLARITY_X_ADDR_SHIFT 12
#define AEDAT_POLARITY_X_ADDR_MASK (1023 << AEDAT_POLARITY_X_ADDR_SHIFT) // 10 bits from bits 12 to 21

#define SLICES_NUMBER 4
#define SLICE_WIDTH  512
#define SLICE_HEIGHT 512

#define DVS_WIDTH  346
#define DVS_HEIGHT 260

// This two macros will not influence the slice memory size,
// only used to indicate the real chip size.
// Used for removing boarder events.
#define DVS_REAL_WIDTH 346
#define DVS_REAL_HEIGHT 260

#define BITS_PER_PIXEL 4
#define COMBINED_PIXELS 32

#define BLOCK_COL_PIXELS BITS_PER_PIXEL * (BLOCK_SIZE + 2 * SEARCH_DISTANCE)
#define PIXS_PER_COL (SLICE_HEIGHT/COMBINED_PIXELS)

// ABMOF parameters, hardcoded:
#define BLOCK_SIZE 11
#define SEARCH_DISTANCE 3
#define AREA_NUMBER 32
#define AREA_SIZE (SLICE_WIDTH/AREA_NUMBER)
#define INIT_AREA_THERSHOLD 700
#define MAX_SLICE_DURATION_US 300000

#define X_TYPE ap_uint<10>
#define Y_TYPE ap_uint<10>

// Change them together
#define TS_TYPE_BIT_WIDTH 32
#define LOG_TS_TYPE_BIT_WIDTH 5   // Log(TS_TYPE_BIT_WIDTH), used in pix read and pix write

// This parameter specify how many events are interleaved.
// Events interleaved might decrease accuracy.
// Use power of 2 only.
#define GROUP_EVENTS_NUM 1

#define INNER_SIZE 8
#define OUTER_SIZE 12

#define INNER_STREAK_SIZE_START 3
#define INNER_STREAK_SIZE_END 6

#define OUTER_STREAK_SIZE_START 3
#define OUTER_STREAK_SIZE_END (OUTER_SIZE-1)
#define OUTER_STREAK_RANGE (OUTER_STREAK_SIZE_END - OUTER_STREAK_SIZE_START + 1)
#define OUTER_STREAK_SIZE_DATA_BITS 8
#define OUTER_STREAK_POSITION_DATA_BITS 4

// SFAST hyperparameter : threshold
#define SFAST_THRESHOLD  3

typedef struct
{
	uint64_t inEventsNum;
	uint64_t outEventsNum;
	uint64_t cornerEventsNum;
	uint32_t currentThreshold;
	uint32_t currentAreaCntThr;
} status_t;

// Valid pixel occupancy paramter
const float glValidPixOccupancy = 0.01;
const int glMinValidPixNum = ceil(glValidPixOccupancy * (BLOCK_SIZE * BLOCK_SIZE));

#define BLOCK_COL_PIXELS BITS_PER_PIXEL * (BLOCK_SIZE + 2 * SEARCH_DISTANCE)
#define COL_BITS BITS_PER_PIXEL * (BLOCK_SIZE)

typedef ap_axiu<64,1,1,1> inputDataElement;
typedef ap_axiu<32,1,1,1> outputDataElement_t;

typedef ap_uint<BITS_PER_PIXEL> pix_t;
typedef ap_int<COMBINED_PIXELS * BITS_PER_PIXEL> col_pix_t;
typedef ap_int<COMBINED_PIXELS * BITS_PER_PIXEL * 2> two_cols_pix_t;
typedef ap_uint<2> sliceIdx_t;

typedef ap_int<BLOCK_COL_PIXELS> apIntBlockCol_t;
typedef ap_int<COL_BITS> apIntColBits_t;
typedef ap_uint<17> apUint17_t;
typedef ap_uint<15> apUint15_t;
typedef ap_uint<6> apUint6_t;
typedef ap_uint<1> apUint1_t;
typedef ap_uint<16 * (2 * SEARCH_DISTANCE + 1)> apUint112_t;
typedef ap_uint<6 * (2 * SEARCH_DISTANCE + 1)> apUint42_t;
typedef ap_uint<10> apUint10_t;

void testMuxWithPrior(ap_uint< 12*4 > din,  ap_uint<12> sel, ap_uint<4> *dout);

void SFAST_process_data(hls::stream< ap_uint<16> > &xStreamIn, hls::stream< ap_uint<16> > &yStreamIn,
		hls::stream< ap_uint<64> > &tsStreamIn, hls::stream< ap_uint<1> > &polStreamIn,
		hls::stream< ap_uint<16> > &xStreamOut, hls::stream< ap_uint<16> > &yStreamOut, hls::stream< ap_uint<64> > &tsStreamOut, hls::stream< ap_uint<1> > &polStreamOut,
		hls::stream< ap_uint<10> > &isFinalCornerStream,
		ap_uint<32> config, status_t *status);

#endif
