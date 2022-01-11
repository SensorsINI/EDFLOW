#include "sfast.h"
#include <stdlib.h>
#include <cmath>
#include <fstream>
#include <iostream>
#include <iomanip>
#include <cstdlib>
using namespace std;
#include "ap_fixed.h"
#include "time.h"
//#include "insertion_cell_sort.h"

const static int MAX_NUMBER=1000;
#define DTYPE ap_uint<32>
#define TEST_TIMES 200

static const unsigned int sensor_width_ = DVS_REAL_WIDTH;
static const unsigned int sensor_height_ = DVS_REAL_HEIGHT;

const int circle1_[8][2] = {{0, 1}, {1, 1}, {1, 0}, {1, -1},
    {0, -1}, {-1, -1}, {-1, 0}, {-1, 1}};
const int circle2_[12][2] = {{0, 2}, {1, 2}, {2, 1}, {2, 0},
    {2, -1}, {1, -2}, {0, -2}, {-1, -2},
    {-2, -1}, {-2, 0}, {-2, 1}, {-1, 2}};
const int circle3_[16][2] = {{0, 3}, {1, 3}, {2, 2}, {3, 1},
      {3, 0}, {3, -1}, {2, -2}, {1, -3},
      {0, -3}, {-1, -3}, {-2, -2}, {-3, -1},
      {-3, 0}, {-3, 1}, {-2, 2}, {-1, 3}};
const int circle4_[20][2] = {{0, 4}, {1, 4}, {2, 3}, {3, 2},
      {4, 1}, {4, 0}, {4, -1}, {3, -2},
      {2, -3}, {1, -4}, {0, -4}, {-1, -4},
      {-2, -3}, {-3, -2}, {-4, -1}, {-4, 0},
      {-4, 1}, {-3, 2}, {-2, 3}, {-1, 4}};

// SAE (Surface of Active Event)
static int sae_[2][DVS_HEIGHT][DVS_WIDTH];

static pix_t slicesSW[SLICES_NUMBER][SLICE_WIDTH][SLICE_HEIGHT];
static pix_t slicesScale1SW[SLICES_NUMBER][SLICE_WIDTH/2][SLICE_HEIGHT/2];
static pix_t slicesScale2SW[SLICES_NUMBER][SLICE_WIDTH/4][SLICE_HEIGHT/4];
static sliceIdx_t glPLActiveSliceIdxSW = 0, sliceIdxFromGTFile = 0;
static hls::stream< sliceIdx_t > glSliceIdxStreamSW("glSliceIdxStreamSW");

void muxWithPriorSW(ap_uint< 12*4 > din,  ap_uint<12> sel, ap_uint<4> *dout)
{
	for(int i = 11; i >= 0;  i--)
	{
		if(sel[i] == 1)
		{
			*dout = din.range(i*4 + 7, i*4);
			break;
		}
	}
}

void resetPixSW(ap_uint<10> x, ap_uint<10> y, sliceIdx_t sliceIdx)
{
	slicesSW[sliceIdx][y][x] = 0;
	slicesScale1SW[sliceIdx][y/2][x/2] = 0;
	slicesScale2SW[sliceIdx][y/4][x/4] = 0;
}

void writePixSW(X_TYPE x, Y_TYPE y, sliceIdx_t sliceIdx)
{
    // write scale 0
	int8_t xNewIdx = x%COMBINED_PIXELS;
//	cout << "Data before write : " << slicesSW[sliceIdx][y][x/COMBINED_PIXELS].range(4 * xNewIdx + 3, 4 * xNewIdx) << endl;
	pix_t tmp = slicesSW[sliceIdx][y][x];
    if (tmp >= (ap_uint< BITS_PER_PIXEL >(0xff))) tmp = (ap_uint< BITS_PER_PIXEL >(0xff));
    else tmp += 1;
	slicesSW[sliceIdx][y][x] = tmp;
//	cout << "Data after write : " << slicesSW[sliceIdx][y][x/COMBINED_PIXELS].range(4 * xNewIdx + 3, 4 * xNewIdx) << endl;

    // write scale 1
	X_TYPE xScale1 = x/2;
	Y_TYPE yScale1 = y/2;
	int8_t xNewIdxScale1 = xScale1%COMBINED_PIXELS;
//	cout << "Data before write : " << slicesScale1SW[sliceIdx][xScale1][yScale1/COMBINED_PIXELS].range(4 * yNewIdxScale1 + 3, 4 * yNewIdxScale1) << endl;
	pix_t tmpScale1 = slicesScale1SW[sliceIdx][yScale1][xScale1];
    if (tmpScale1 >= (ap_uint< BITS_PER_PIXEL >(0xff))) tmpScale1 = (ap_uint< BITS_PER_PIXEL >(0xff));
    else tmpScale1 += 1;
	slicesScale1SW[sliceIdx][yScale1][xScale1] = tmpScale1;
//	cout << "Data after write : " << slicesScale1SW[sliceIdx][xScale1][yScale1/COMBINED_PIXELS].range(4 * yNewIdxScale1 + 3, 4 * yNewIdxScale1) << endl;

    // write scale 2
	X_TYPE xScale2 = x/4;
	Y_TYPE yScale2 = y/4;
	int8_t xNewIdxScale2 = xScale2%COMBINED_PIXELS;
//	cout << "Data before write : " << slicesScale2SW[sliceIdx][xScale2][yScale2/COMBINED_PIXELS].range(4 * yNewIdxScale2 + 3, 4 * yNewIdxScale2) << endl;
	pix_t tmpScale2 = slicesScale2SW[sliceIdx][yScale2][xScale2];
    if (tmpScale2 >= (ap_uint< BITS_PER_PIXEL >(0xff))) tmpScale2 = (ap_uint< BITS_PER_PIXEL >(0xff));
    else tmpScale2 += 1;
	slicesScale2SW[sliceIdx][yScale2][xScale2] = tmpScale2;
//	cout << "Data after write : " << slicesScale2SW[sliceIdx][xScale2][yScale2/COMBINED_PIXELS].range(4 * yNewIdxScale2 + 3, 4 * yNewIdxScale2) << endl;
}

void insertion_sortSW(ap_uint<TS_TYPE_BIT_WIDTH> A[20], int size, ap_uint<TS_TYPE_BIT_WIDTH> sortOut[20]) {
    L1:
    for(int i = 1; i < size; i++) {
        DTYPE item = A[i];
        int j = i;
    DTYPE t = A[j-1];
        L2:
        while(j > 0 && A[j - 1] > item ) {
            #pragma HLS pipeline II=1
            A[j] = A[j - 1];
            j--;
        }
        A[j] = item;
    }
}

// Simple binary search algorithm
ap_uint<5> binarySearch(ap_uint<TS_TYPE_BIT_WIDTH> arr[], int l, int r, int x)
{
    if (r>=l)
    {
    	ap_uint<5> mid = l + (r - l)/2;
        if (arr[mid] == x)
            return mid;
        if (arr[mid] > x)
            return binarySearch(arr, l, mid-1, x);
        return binarySearch(arr, mid+1, r, x);
    }
    return -1;
}

// function takes an infinite size array and a key to be
//  searched and returns its position if found else -1.
// We don't know size of arr[] and we can assume size to be
// infinite in this function.
// NOTE THAT THIS FUNCTION ASSUMES arr[] TO BE OF INFINITE SIZE
// THEREFORE, THERE IS NO INDEX OUT OF BOUND CHECKING
ap_uint<5> findPos(ap_uint<TS_TYPE_BIT_WIDTH> arr[], ap_uint<TS_TYPE_BIT_WIDTH> key)
{
    int l = 0, h = 1;
    ap_uint<TS_TYPE_BIT_WIDTH> val = arr[0];

    // Find h to do binary search
    while (val < key)
    {
        l = h;        // store previous high
        h = 2*h;      // double high index
        val = arr[h]; // update new val
    }

    // at this point we have updated low and
    // high indices, Thus use binary search
    // between them
    return binarySearch(arr, l, h, key);
}

void sortedIndexSW(ap_uint<TS_TYPE_BIT_WIDTH> A[20], int size, ap_uint<5> sortOut[20])
{
	for(int i = 0; i < size; i++)
	{
		int temp = 0;
		for(int j = 0; j < size; j++)
		{
			if(A[j] < A[i]) temp += 1;
		}
		sortOut[i] = temp;
	}
}


void rwSAESW(X_TYPE x, Y_TYPE y, ap_uint<1> pol, ap_uint<TS_TYPE_BIT_WIDTH> ts, ap_uint<2>  stage, ap_uint<TS_TYPE_BIT_WIDTH> outputData[OUTER_SIZE], ap_uint<5> *size)
{
	if(x == 0 || y == 0 || stage == 2 || ts == 0)
	{
		for(ap_uint<8> i = 0; i < OUTER_SIZE; i = i + 1)
		{
			outputData[i] = 0;
		}
		*size = 0;
		return;
	}

	if(stage == 0)
	{
		sae_[pol][y][x] = ts;
		for(ap_uint<8> i = 0; i < INNER_SIZE; i = i + 1)
		{
			outputData[i] = sae_[pol][y + circle1_[i][1]][x + circle1_[i][0]];
		}
		for(int i = INNER_SIZE; i < OUTER_SIZE; i++)
		{
			outputData[i] = 0;
		}
		*size = INNER_SIZE;
	}
	else if(stage == 1)
	{
		for(ap_uint<8> i = 0; i < OUTER_SIZE; i = i + 1)
		{
			outputData[i] = sae_[pol][y + circle2_[i][1]][x + circle2_[i][0]];
		}
		*size = OUTER_SIZE;
	}
	else
	{
		for(ap_uint<8> i = 0; i < OUTER_SIZE; i = i + 1)
		{
			outputData[i] = 0;
		}
		*size = 0;
	}
}


// Compares two intervals according to staring times.
bool compareInterval(pair<uint32_t, int> i1, pair<uint32_t, int> i2)
{
    return (i1.first < i2.first);
}


void sortArr(uint32_t arr[], int n, uint8_t outputIdx[])
{

    // Vector to store element
    // with respective present index
    vector<pair<uint32_t, int> > vp;

    // Inserting element in pair vector
    // to keep track of previous indexes
    for (int i = 0; i < n; ++i) {
        vp.push_back(make_pair(arr[i], i));
    }

    // Sorting pair vector
    sort(vp.begin(), vp.end(), compareInterval);

    // Displaying sorted element
    // with previous indexes
    // corresponding to each element
//    cout << "Element\t"
//         << "index" << endl;
    for (int i = 0; i < vp.size(); i++) {
    	outputIdx[vp[i].second] = i;
        cout << vp[i].first << "\t"
             << vp[i].second << "\t" << i << endl;
    }
}

void testConvertandSortedIdxSW(uint32_t rawData[OUTER_SIZE], uint8_t size, uint8_t outputIdxData[OUTER_SIZE])
{
	assert(size <= OUTER_SIZE);
	cout << "Raw Data is: " << hex << endl;
	for (int i = 0; i < size; i++)
	{
		cout << rawData[i] << "\t";
	}
	cout << dec << endl;

	sortArr(rawData, size, outputIdxData);

	cout << "Idx Data SW is: " << endl;
	for (int i = 0; i < size; i++)
	{
		cout << (int)outputIdxData[i]<< "\t";
	}
	cout << endl;
}

void testConvertandSortedInnerIdxSW(uint32_t rawData[OUTER_SIZE], ap_uint<4> condIdxData[INNER_SIZE])
{
	uint8_t outputIdxData[OUTER_SIZE];
	testConvertandSortedIdxSW(rawData, INNER_SIZE, outputIdxData);

	for (int i = 0; i < INNER_SIZE; i++)
	{
		for (int streak_size = 3; streak_size<=6; streak_size++)
		{
			condIdxData[i][streak_size - 3] =  (outputIdxData[i] >= (INNER_SIZE - streak_size));
		}
	}

	cout << "Idx Bool Data SW is: " << endl;
	for (int i = 0; i < INNER_SIZE; i++)
	{
		cout << condIdxData[i][3] << condIdxData[i][2] << condIdxData[i][1] << condIdxData[i][0] << "\t";
	}
	cout << dec << endl;
}

void testIdxDataToIdxInnerBoolDataSW(int idxData[OUTER_SIZE], ap_uint<5> size, ap_uint<5> condFlg[OUTER_SIZE])
{
	if(size == INNER_SIZE || size == 18)
	{
		for(int i = 0; i < size; i++)
		{
			condFlg[i][0] = (idxData[i] >= INNER_SIZE - 3 + OUTER_SIZE - INNER_SIZE);
			condFlg[i][1] = (idxData[i]  >= INNER_SIZE - 4 + OUTER_SIZE - INNER_SIZE);
			condFlg[i][2] = (idxData[i]  >= INNER_SIZE - 5 + OUTER_SIZE - INNER_SIZE);
			condFlg[i][3] = (idxData[i]  >= INNER_SIZE - 6 + OUTER_SIZE - INNER_SIZE);
		}
	}
	else if(size == OUTER_SIZE)
	{
		for(int i = 0; i < size; i++)
		{
			condFlg[i][0] = (idxData[i] >= OUTER_SIZE - 4);
			condFlg[i][1] = (idxData[i] >= OUTER_SIZE - 5);
			condFlg[i][2] = (idxData[i] >= OUTER_SIZE - 6);
			condFlg[i][3] = (idxData[i] >= OUTER_SIZE - 7);
			condFlg[i][4] = (idxData[i] >= OUTER_SIZE - 8);
		}
	}

}

void testFromTsDataCheckInnerCornerSW(uint32_t rawData[OUTER_SIZE], uint8_t size, ap_uint<1> *isCorner)
{
	uint8_t idxData[INNER_SIZE];

	testConvertandSortedIdxSW(rawData, INNER_SIZE, idxData);

	*isCorner = 0;

	for (int streak_size = 3; streak_size<=6; streak_size++)
	{
		for (uint8_t i = 0; i < INNER_SIZE; i++)
		{
			ap_uint<1> tempCond = 1;
			uint8_t j =  0;
			for (j =  0; j < streak_size; j++)
			{
				uint8_t tmpData = ((i + j) >= INNER_SIZE) ? idxData[i + j - INNER_SIZE] : idxData[i + j];
				tempCond &= (tmpData >= (INNER_SIZE - streak_size));
			}
			if (tempCond == 1)
			{
				*isCorner = 1;
				cout << "Position is :" << (int)i << " and streak size is: " << (int)j << endl;
				return;
			}
		}
	}

}

void testFromTsDataCheckOuterCornerSW(uint32_t rawData[OUTER_SIZE], uint8_t size, ap_uint<1> *isCorner)
{
	uint8_t idxData[OUTER_SIZE];

	testConvertandSortedIdxSW(rawData, OUTER_SIZE, idxData);

	*isCorner = 0;

	for (int streak_size = 4; streak_size<=8; streak_size++)
	{
		for (uint8_t i = 0; i < OUTER_SIZE; i++)
		{
			ap_uint<1> tempCond = 1;
			uint8_t j =  0;
			for (j =  0; j < streak_size; j++)
			{
				uint8_t tmpData = ((i + j) >= OUTER_SIZE) ? idxData[i + j - OUTER_SIZE] : idxData[i + j];
				tempCond &= (tmpData >= (OUTER_SIZE - streak_size));
			}
			if (tempCond == 1)
			{
				*isCorner = 1;
				cout << "Position is :" << (int)i << " and streak size is: " << (int)j << endl;
				return;
			}
		}
	}

}

void FastDetectorisInnerFeature(int pix_x, int pix_y, int timesmp, bool polarity, bool *found_streak)
{

  // update SAE
  //const int pol = polarity ? 1 : 0; //conver plo to 1 or 0
  const int pol = 0;
  sae_[pol][pix_x][pix_y] = timesmp;//

  const int max_scale = 1;

  // only check if not too close to border
  const int cs = max_scale*4;
  if (pix_x < cs || pix_x >= sensor_width_-cs ||
      pix_y < cs || pix_y >= sensor_height_-cs)
  {
    *found_streak = false;
  }

  *found_streak = false;

  std::cout << "Idx Inner Data SW is: " << std::endl;
  for (int i=0; i<16; i++)
  {
		cout << sae_[pol][pix_x+circle1_[i][0]][pix_y+circle1_[i][1]] << "\t";
  }
	std::cout << std::endl;


  isFeatureOutterLoop:for (int i=0; i<16; i++)
  {
    FastDetectorisFeature_label2:for (int streak_size = 3; streak_size<=6; streak_size++)
    {
      // check that streak event is larger than neighbor
      if ((sae_[pol][pix_x+circle1_[i][0]][pix_y+circle1_[i][1]]) <  (sae_[pol][pix_x+circle1_[(i-1+16)%16][0]][pix_y+circle1_[(i-1+16)%16][1]]))
        continue;

      // check that streak event is larger than neighbor
      if (sae_[pol][pix_x+circle1_[(i+streak_size-1)%16][0]][pix_y+circle1_[(i+streak_size-1)%16][1]] < sae_[pol][pix_x+circle1_[(i+streak_size)%16][0]][pix_y+circle1_[(i+streak_size)%16][1]])
        continue;

      // find the smallest timestamp in corner min_t
      double min_t = sae_[pol][pix_x+circle1_[i][0]][pix_y+circle1_[i][1]];
      FastDetectorisFeature_label1:for (int j=1; j<streak_size; j++)
      {
        const double tj = sae_[pol][pix_x+circle1_[(i+j)%16][0]][pix_y+circle1_[(i+j)%16][1]];
        if (tj < min_t)
          min_t = tj;
      }

      //check if corner timestamp is higher than corner
      bool did_break = false;
      FastDetectorisFeature_label0:for (int j=streak_size; j<16; j++)
      {
        const double tj = sae_[pol][pix_x+circle1_[(i+j)%16][0]][pix_y+circle1_[(i+j)%16][1]];

        if (tj >= min_t)
        {
          did_break = true;
          break;
        }
      }

      if (!did_break)
      {
        *found_streak = true;
		cout << "Inner Corner position is : " << i << " and streak size is: " << streak_size << endl;
        break;
      }
    }

    if (*found_streak)
    {
      break;
    }
  }
}

void FastDetectorisOuterFeature(int pix_x, int pix_y, int timesmp, bool polarity, bool *found_streak)
{
	// update SAE
	//const int pol = polarity ? 1 : 0; //conver plo to 1 or 0
	const int pol = 0;
	sae_[pol][pix_x][pix_y] = timesmp;//

	const int max_scale = 1;

	// only check if not too close to border
	const int cs = max_scale*4;
	if (pix_x < cs || pix_x >= sensor_width_-cs ||
	  pix_y < cs || pix_y >= sensor_height_-cs)
	{
	*found_streak = false;
	}

	*found_streak = false;

	std::cout << "Idx Outer Data SW is: " << std::endl;
	for (int i=0; i<20; i++)
	{
	cout << sae_[pol][pix_x+circle2_[i][0]][pix_y+circle2_[i][1]] << "\t";
	}
	std::cout << std::endl;

	FastDetectorisFeature_label6:for (int i=0; i<20; i++)
	{

		FastDetectorisFeature_label5:for (int streak_size = 4; streak_size<=8; streak_size++)
		{
			// check that first event is larger than neighbor
			if (sae_[pol][pix_x+circle2_[i][0]][pix_y+circle2_[i][1]] <  sae_[pol][pix_x+circle2_[(i-1+20)%20][0]][pix_y+circle2_[(i-1+20)%20][1]])
			  continue;

			// check that streak event is larger than neighbor
			if (sae_[pol][pix_x+circle2_[(i+streak_size-1)%20][0]][pix_y+circle2_[(i+streak_size-1)%20][1]] < sae_[pol][pix_x+circle2_[(i+streak_size)%20][0]][pix_y+circle2_[(i+streak_size)%20][1]])
			  continue;

			double min_t = sae_[pol][pix_x+circle2_[i][0]][pix_y+circle2_[i][1]];
			FastDetectorisFeature_label4:for (int j=1; j<streak_size; j++)
			{
				  const double tj = sae_[pol][pix_x+circle2_[(i+j)%20][0]][pix_y+circle2_[(i+j)%20][1]];
				  if (tj < min_t)
					min_t = tj;
			}

			bool did_break = false;
			FastDetectorisFeature_label3:for (int j=streak_size; j<20; j++)
			{
			  const double tj = sae_[pol][pix_x+circle2_[(i+j)%20][0]][pix_y+circle2_[(i+j)%20][1]];
			  if (tj >= min_t)
			  {
				did_break = true;
				break;
			  }
			}

			if (!did_break)
			{
			  *found_streak = true;
			  cout << "Outer Corner position is : " << i << " and streak size is: " << streak_size << endl;
			  break;
			}
		}
		if (*found_streak)
		{
			break;
		}
	}
}

#define MAX_SLICE_DURATION_US 300000
static uint16_t areaEventRegsSW[AREA_NUMBER][AREA_NUMBER];
static ap_uint<1> areaCountExceeded = false;
static uint16_t areaEventThrSW = INIT_AREA_THERSHOLD;
uint32_t currentTs = 0, lastTs = 0;
int outerTsValue[OUTER_SIZE];

void SFastDetectorisFeature(int x, int y, int timesmp, bool polarity, bool *found_streak)
{
//	if(polarity==0)
//	{
//		*found_streak = false;
//		return;
//	}

    int innerI = 0, outerI = 0, innerStreakSize = 0, outerStreakSize = 0;
    int outerStartX, outerEndX, outerStartY, outerEndY;
    bool exit_inner_loop = 0, exit_outer_loop = 0;

    ap_uint<1> skipOutBorder = false;
	const int max_scale = 2;
	// only check if not too close to border
	const int cs = 4;
	if ((x >> max_scale) < cs || (x >> max_scale) >= (sensor_width_ >> max_scale) - cs ||
			(y >> max_scale) < cs || (y >> max_scale) >= (sensor_height_ >> max_scale) - cs)
	{
		*found_streak = false;
		skipOutBorder = true;
//		return;
	}

	int pol = polarity;
	// update SAE
	sae_[pol][y][x] = timesmp;

    apUint1_t rotateFlg = 0;
    // The area threshold reached, rotate the slice index and clear the areaEventRegs.
    if( areaCountExceeded || (timesmp - currentTs) >= MAX_SLICE_DURATION_US )
    {
        glPLActiveSliceIdxSW--;
//            idx = glPLActiveSliceIdxSW;
        rotateFlg = 1;

        lastTs = currentTs;
        currentTs = timesmp;

        for(int r = 0; r < 1; r++)
        {
            cout << "Rotated successfully from SW!!!!" << endl;
            cout << "x is: " << x << "\t y is: " << y << "\t idx is: " << glPLActiveSliceIdxSW << endl;
            cout << "delataTs is: " << ((currentTs - lastTs) >> 9) << " and current ts is: "<< currentTs << endl;
        }

        // Check the accumulation slice is clear or not
        for(int32_t xAddr = 0; xAddr < SLICE_WIDTH; xAddr++)
        {
            for(int32_t yAddr = 0; yAddr < SLICE_HEIGHT; yAddr = yAddr + COMBINED_PIXELS)
            {
                if (slicesSW[glPLActiveSliceIdxSW][xAddr][yAddr/COMBINED_PIXELS] != 0)
                {
                    for(int r = 0; r < 10; r++)
                    {
                        cout << "Ha! I caught you, the pixel which is not clear!" << endl;
                        cout << "x is: " << xAddr << "\t y is: " << yAddr << "\t idx is: " << glPLActiveSliceIdxSW << endl;
                    }
                }
            }
        }

        for(int areaX = 0; areaX < AREA_NUMBER; areaX++)
        {
            for(int areaY = 0; areaY < AREA_NUMBER; areaY++)
            {
                areaEventRegsSW[areaX][areaY] = 0;
            }
        }

        // Reset the slices.
       for (int resetCnt = 0; resetCnt < SLICE_HEIGHT * SLICE_WIDTH; resetCnt = resetCnt + 1)
       {
		   resetPixSW(resetCnt%SLICE_HEIGHT, (resetCnt/SLICE_HEIGHT) , (sliceIdx_t)(glPLActiveSliceIdxSW + 3));
       }

    }

	writePixSW(x, y, glPLActiveSliceIdxSW);

	// update sliceSW
    uint16_t c = areaEventRegsSW[x/AREA_SIZE][y/AREA_SIZE];
    // x == 0 and y == 0  and timesmp == 0 means it comes from the previous manual setting not the real x, y value.
	c = c + 1;
    areaEventRegsSW[x/AREA_SIZE][y/AREA_SIZE] = c;
    areaCountExceeded = (c >= areaEventThrSW);

	if(skipOutBorder)
	{
		return;
	}

	// Following slice read will be only based on slice scale 2.
	// and slice index is the t-1 slice not the current slice.
	int pix_x = x/4;
	int pix_y = y/4;
	sliceIdx_t readSliceIdx = glPLActiveSliceIdxSW + 1;

	// Reset found_streak at first.
    *found_streak = false;

#if DEBUG
	std::cout << "Idx Inner Data SW is: " << std::endl;
	for (int i=0; i<INNER_SIZE; i++)
	{
		cout << slicesScale2SW[readSliceIdx][pix_y+circle1_[i][1]][pix_x+circle1_[i][0]] << "\t";
	}
	std::cout << std::endl;
#endif

  isFeatureOutterLoop:for (int i=0; i<INNER_SIZE; i++)
  {
    FastDetectorisFeature_label2:for (int streak_size = INNER_STREAK_SIZE_START; streak_size<=INNER_STREAK_SIZE_END; streak_size++)
    {
      // check that streak event is larger than neighbor
      if ((slicesScale2SW[readSliceIdx][pix_y+circle1_[i][1]][pix_x+circle1_[i][0]]) <  (slicesScale2SW[readSliceIdx][pix_y+circle1_[(i-1+INNER_SIZE)%INNER_SIZE][1]][pix_x+circle1_[(i-1+INNER_SIZE)%INNER_SIZE][0]]))
        continue;

      // check that streak event is larger than neighbor
      if (slicesScale2SW[readSliceIdx][pix_y+circle1_[(i+streak_size-1)%INNER_SIZE][1]][pix_x+circle1_[(i+streak_size-1)%INNER_SIZE][0]] < slicesScale2SW[readSliceIdx][pix_y+circle1_[(i+streak_size)%INNER_SIZE][1]][pix_x+circle1_[(i+streak_size)%INNER_SIZE][0]])
        continue;

      // find the smallest timestamp in corner min_t
      double min_t = slicesScale2SW[readSliceIdx][pix_y+circle1_[i][1]][pix_x+circle1_[i][0]];
      FastDetectorisFeature_label1:for (int j=1; j<streak_size; j++)
      {
        const double tj = slicesScale2SW[readSliceIdx][pix_y+circle1_[(i+j)%INNER_SIZE][1]][pix_x+circle1_[(i+j)%INNER_SIZE][0]];
        if (tj < min_t)
          min_t = tj;
      }

      //check if corner timestamp is higher than corner
      bool did_break = false;
      FastDetectorisFeature_label0:for (int j=streak_size; j<INNER_SIZE; j++)
      {
        const double tj = slicesScale2SW[readSliceIdx][pix_y+circle1_[(i+j)%INNER_SIZE][1]][pix_x+circle1_[(i+j)%INNER_SIZE][0]];

        if (tj >= min_t)
        {
          did_break = true;
          break;
        }
      }

      if (!did_break)
      {
        *found_streak = true;
#if DEBUG
		cout << "Inner Corner position is : " << i << " and streak size is: " << streak_size << endl;
#endif
        break;
      }
    }

	  if (*found_streak)
	  {
		  break;
	  }
  }

//  if (*found_streak)
  {
    *found_streak = false;

	for (int i=0; i<OUTER_SIZE; i++)
	{
		outerTsValue[i] = slicesScale2SW[readSliceIdx][pix_y+circle2_[i][1]][pix_x+circle2_[i][0]];
	}

#if DEBUG
	std::cout << "Idx Outer Data SW is: " << std::endl;
	for (int i=0; i<OUTER_SIZE; i++)
	{
		cout << slicesScale2SW[readSliceIdx][pix_y+circle2_[i][1]][pix_x+circle2_[i][0]] << "\t";
	}
	std::cout << std::endl;
#endif

	FastDetectorisFeature_label5:for (int streak_size = OUTER_STREAK_SIZE_END; streak_size>=OUTER_STREAK_SIZE_START; streak_size--)
     {
        FastDetectorisFeature_label6:for (int i=0; i<OUTER_SIZE; i++)
        {
        // check that first event is larger than neighbor
        if (slicesScale2SW[readSliceIdx][pix_y+circle2_[i][1]][pix_x+circle2_[i][0]] <  slicesScale2SW[readSliceIdx][pix_y+circle2_[(i-1+OUTER_SIZE)%OUTER_SIZE][1]][pix_x+circle2_[(i-1+OUTER_SIZE)%OUTER_SIZE][0]])
          continue;

        // check that streak event is larger than neighbor
        if (slicesScale2SW[readSliceIdx][pix_y+circle2_[(i+streak_size-1)%OUTER_SIZE][1]][pix_x+circle2_[(i+streak_size-1)%OUTER_SIZE][0]] < slicesScale2SW[readSliceIdx][pix_y+circle2_[(i+streak_size)%OUTER_SIZE][1]][pix_x+circle2_[(i+streak_size)%OUTER_SIZE][0]])
          continue;

        double min_t = slicesScale2SW[readSliceIdx][pix_y+circle2_[i][1]][pix_x+circle2_[i][0]];
        FastDetectorisFeature_label4:for (int j=1; j<streak_size; j++)
        {
          const double tj = slicesScale2SW[readSliceIdx][pix_y+circle2_[(i+j)%OUTER_SIZE][1]][pix_x+circle2_[(i+j)%OUTER_SIZE][0]];
          if (tj < min_t)
            min_t = tj;
        }

        bool did_break = false;
        FastDetectorisFeature_label3:for (int j=streak_size; j<OUTER_SIZE; j++)
        {
          const double tj = slicesScale2SW[readSliceIdx][pix_y+circle2_[(i+j)%OUTER_SIZE][1]][pix_x+circle2_[(i+j)%OUTER_SIZE][0]];
          // Check if all the values not inside the streak are smaller than the mimimum of streak values minus a threshold value
          if (tj >= min_t - SFAST_THRESHOLD)
          {
            did_break = true;
            break;
          }
        }

		if (!did_break)
		{
			outerI = i;
			outerStreakSize = streak_size;
            outerStartX = circle2_[outerI%OUTER_SIZE][0];
            outerEndX = circle2_[(outerI + outerStreakSize - 1)%OUTER_SIZE][0];
            outerStartY = circle2_[outerI%OUTER_SIZE][1];
            outerEndY = circle2_[(outerI + outerStreakSize - 1)%OUTER_SIZE][1];

            int condDiff = (streak_size%2 == 1) ? 0 : 1;  // If streak_size is even, then set it to 1. Otherwise 0.

            if((outerStreakSize == OUTER_SIZE - 1)
            		|| abs(outerStartX - outerEndX) <= condDiff
            		|| abs(outerStartY - outerEndY) <= condDiff
					)
			{
				*found_streak = false;
			}
			else
			{
				*found_streak = true;
				#if OUTER_STREAK_INFO_DEBUG
					cout << "Outer Corner position is : " << i << " and streak size is: " << streak_size << endl;
				#endif
			}
			exit_outer_loop = true;
			break;
		}
      }
      if (*found_streak || exit_outer_loop)
      {
        break;
      }
    }

  }

  //return *found_streak;
}

void parseEventsSW(uint64_t * dataStream, int32_t eventsArraySize, uint64_t *eventSlice)
{
	for (int i = 0; i < eventsArraySize; i++)
	{
		uint64_t tmp = *dataStream++;
		uint32_t x = ((tmp) >> POLARITY_X_ADDR_SHIFT) & POLARITY_X_ADDR_MASK;
		uint32_t y = ((tmp) >> POLARITY_Y_ADDR_SHIFT) & POLARITY_Y_ADDR_MASK;
		bool pol  = ((tmp) >> POLARITY_SHIFT) & POLARITY_MASK;
		ap_uint<32> ts = tmp >> 32;
#if DEBUG
		cout << "x : " << x << endl;
		cout << "y : " << y << endl;
		cout << "ts : " << ts << endl;
#endif

		bool isCorner = 0;

//		int outputData0[OUTER_SIZE], outputData1[OUTER_SIZE];
//
//		for(ap_uint<8> i = 0; i < INNER_SIZE; i = i + 1)
//		{
//			outputData0[i] = sae_[pol][y + circle1_[i][1]][x + circle1_[i][0]];
//		}
//		for(int i = INNER_SIZE; i < OUTER_SIZE; i++)
//		{
//			outputData0[i] = 0;
//		}
//
//		for(ap_uint<8> i = 0; i < OUTER_SIZE; i = i + 1)
//		{
//			outputData1[i] = sae_[pol][y + circle2_[i][1]][x + circle2_[i][0]];
//		}

		if( i == 7990)
		{
			int tmp = 1;
		}

		SFastDetectorisFeature(x, y, ts, pol, &isCorner);

	    glSliceIdxStreamSW << glPLActiveSliceIdxSW;  // store the current slice index so the hw SFAST could rotate as the same with sw.

		x = sensor_width_ - 1 - x;
		y = sensor_height_ - 1 - y;

		ap_uint<32> tmpOutput = (0 << 31) + (y << 22) + (x << 12)  + (pol << 11) + isCorner;

		ap_uint<64> output;

		// Changed to little endian mode to send it to jAER
		output.range(7,0) = tmpOutput.range(31,24);
		output.range(15,8) = tmpOutput.range(23,16);
		output.range(23,16) = tmpOutput.range(15,8);
		output.range(31,24) = tmpOutput.range(7,0);

		output.range(39, 32) = ts;

		*eventSlice++ = output.to_uint64();
	}
}

int main ()
{
	int testTimes = TEST_TIMES;

    int total_err_cnt = 0;
	int retval=0;

	/******************* Test SFAST_process_data module from aedat file with GT**************************/
	FILE * fp;

	if((fp = fopen("E://xfOpenCV//hls_2018_1//SFAST//SFAST_process_data//indoor_flying1_OFResult-OFResult.bin","rb"))== NULL)
	{
		printf("can not open the file\n");
		exit(0);
	}

	int32_t eventCnt = 8000;
	uint64_t x_in[eventCnt], y_in[eventCnt];
	uint16_t x_out[eventCnt], y_out[eventCnt];
	uint64_t ts_in[eventCnt], ts_out[eventCnt];
	ap_uint<1> pol_in[eventCnt], pol_out[eventCnt];
	ap_uint<10> custData_out[eventCnt];
	uint64_t data[eventCnt];
	uint64_t eventSlice[eventCnt], eventSliceSW[eventCnt];
	ap_uint<11> GTData[eventCnt];
	ap_uint<10> retDataHW[eventCnt];

	hls::stream< ap_uint<16> >  xStreamIn("xStreamIn");
	hls::stream< ap_uint<16> >  yStreamIn("yStreamIn");
	hls::stream< ap_uint<64> > tsStreamIn("tsStreamIn");
	hls::stream< ap_uint<1> > polStreamIn("polStreamIn");
	hls::stream< sliceIdx_t > idxStreamIn("idxStreamIn");

	hls::stream< ap_uint<16> >  xStreamOut1("xStreamOut1");
	hls::stream< ap_uint<16> >  yStreamOut1("yStreamOut1");
	hls::stream< ap_uint<64> > tsStreamOut1("tsStreamOut1");
	hls::stream< ap_uint<1> > polStreamOut1("polStreamOut1");
	hls::stream< ap_uint<1> > custDataStreamOut1("custDataStreamOut1");


	hls::stream< ap_uint<16> >  xStreamOut2("xStreamOut2");
	hls::stream< ap_uint<16> >  yStreamOut2("yStreamOut2");
	hls::stream< ap_uint<64> > tsStreamOut2("tsStreamOut2");
	hls::stream< ap_uint<1> > polStreamOut2("polStreamOut2");
	hls::stream< ap_uint<1> > custDataStreamOut2("custDataStreamOut2");


	hls::stream< ap_uint<16> >  xStreamOutTmp("xStreamOutTmp");
	hls::stream< ap_uint<16> >  yStreamOutTmp("yStreamOutTmp");
	hls::stream< ap_uint<64> > tsStreamOutTmp("tsStreamOutTmp");
	hls::stream< ap_uint<1> > polStreamOutTmp("polStreamOutTmp");
	hls::stream< ap_uint<10> > custDataStreamOutTmp("custDataStreamOutTmp");

	sliceIdx_t idx;

	ap_uint<16> xTmp, yTmp;
	ap_uint<64> tsTmp;
	ap_uint<1>  polTmp, custDataTmp;

    ap_uint<32> config = 0;
    status_t status;

    uint64_t lastMaxTs = 0;  // Record last maximum ts to make all the ts are monotonic.

    testTimes = 30;

	for(int k = 0; k < testTimes; k++)
	{
		cout << "Test " << k << ":" << endl;

	    int err_cnt = 0;

		for (int i = 0; i < eventCnt; i++)
		{
			if(i == 5528)
			{
				int tmp = 0;
			}

			ap_uint<32> buf[2];
			fread(buf, 4, 2, fp);
	       	uint32_t data1 = ((uint32_t)(buf[0].range(7, 0)) << 24) + ((uint32_t)(buf[0].range(15, 8)) << 16) + ((uint32_t)(buf[0].range(23, 16)) << 8) + buf[0].range(31, 24);
	       	uint32_t data2 = ((uint32_t)(buf[1].range(7, 0)) << 24) + ((uint32_t)(buf[1].range(15, 8)) << 16) + ((uint32_t)(buf[1].range(23, 16)) << 8) + buf[1].range(31, 24);

	        x_in[i] = ((data1) & AEDAT_POLARITY_X_ADDR_MASK) >> AEDAT_POLARITY_X_ADDR_SHIFT;
			y_in[i] = ((data1) & AEDAT_POLARITY_Y_ADDR_MASK) >> AEDAT_POLARITY_Y_ADDR_SHIFT;
			pol_in[i]  = ((data1) & AEDAT_POLARITY_MASK) >> AEDAT_POLARITY_SHIFT;
			ts_in[i] = data2;

			GTData[i] = (data1 & 0x7ff);

			ap_uint<1> rotateFlg = ((GTData[i] & 0x200) >> 9);
			if(rotateFlg)
			{
				sliceIdxFromGTFile = sliceIdxFromGTFile - 1;
			}

			xStreamIn << x_in[i];
			yStreamIn << y_in[i];
			tsStreamIn << ts_in[i];
			polStreamIn << pol_in[i];
//			idxStreamIn << sliceIdxFromGTFile;


			data[i] = (uint64_t)(ts_in[i] << 32) + (uint64_t)(x_in[i] << POLARITY_X_ADDR_SHIFT) + (uint64_t)(y_in[i] << POLARITY_Y_ADDR_SHIFT) + (pol_in[i] << POLARITY_SHIFT);
//			cout << "data[" << i << "] is: "<< hex << data[i]  << endl;
		}

		parseEventsSW(data, eventCnt, eventSliceSW);

		for (int i = 0; i < eventCnt; i++)
		{
			// Read out the left over data in glSliceIdxStreamSW to remove warnings.
			ap_uint<1> idxSW = glSliceIdxStreamSW.read();

			SFAST_process_data(xStreamIn, yStreamIn, tsStreamIn, polStreamIn,
					xStreamOutTmp, yStreamOutTmp, tsStreamOutTmp, polStreamOutTmp,
					custDataStreamOutTmp, config, &status);

			x_out[i] = xStreamOutTmp.read().to_uint();
			y_out[i] = yStreamOutTmp.read().to_uint();
			ts_out[i] = tsStreamOutTmp.read().to_uint();
			pol_out[i] = polStreamOutTmp.read().to_bool();
			custData_out[i] = custDataStreamOutTmp.read().to_uint();
		}

		for (int j = 0; j < eventCnt; j++)
		{
			ap_uint<32> tmpOutput = ap_uint<32>(eventSliceSW[j]);

			// Change the order back
			ap_uint<64> tmpData;
			tmpData.range(7,0) = tmpOutput.range(31,24);
			tmpData.range(15,8) = tmpOutput.range(23,16);
			tmpData.range(23,16) = tmpOutput.range(15,8);
			tmpData.range(31,24) = tmpOutput.range(7,0);

			ap_uint<10> x_sw = tmpData.range(21, 12);
			ap_uint<10> y_sw = tmpData.range(31, 22);
			ap_uint<1> pol_sw = tmpData[11];
			ap_uint<10> custData_sw = tmpData.range(10, 0);

			x_sw = sensor_width_ - 1 - x_sw;
			y_sw = sensor_height_ - 1 - y_sw;

			if ( (custData_out[j].bit(0) != custData_sw.bit(0)) || (custData_sw.bit(0) != GTData[j].bit(10)) )
			{
//				if((custData_sw.bit(0) != GTData[j].bit(10)))
//				{
//					cout << "C++ testbench is not same as the java version." << endl;
//				}
				cout << "x_sw : " << x_sw << "\t x_hw is: " << x_out[j] << endl;
				cout << "y_sw : " << y_sw << "\t y_hw is: " << y_out[j] << endl;
				std::cout << "Corner of SW is: " << hex << custData_sw << std::endl;
				std::cout << "Corner of HW is: " << hex << custData_out[j] << std::endl;
				std::cout << "Corner of GT is: " << hex << GTData[j].bit(10) << std::endl;
				cout << dec;
				err_cnt++;
				cout << "Mismatch detected on TEST " << k << " and the mismatch index is: " << j << endl;
			}
		}

		if(err_cnt == 0)
		{
			cout << "Test " << k << " passed." << endl;
		}
		total_err_cnt += err_cnt;
		cout << endl;
	}

//	/******************* Test SFAST_process_data module from random value**************************/
//	srand(2);
////	srand((unsigned)time(NULL));
//
//	int32_t eventCnt = 8000;
//	uint16_t x[eventCnt], y[eventCnt], x_out[eventCnt], y_out[eventCnt];
//	uint64_t ts[eventCnt], ts_out[eventCnt];
//	ap_uint<1> pol[eventCnt], pol_out[eventCnt];
//	ap_uint<10> custData_out[eventCnt];
//	uint64_t data[eventCnt];
//	uint64_t eventSlice[eventCnt], eventSliceSW[eventCnt];
//
//    hls::stream< ap_uint<16> >  xStreamIn("xStreamIn");
//    hls::stream< ap_uint<16> >  yStreamIn("yStreamIn");
//    hls::stream< ap_uint<64> > tsStreamIn("tsStreamIn");
//    hls::stream< ap_uint<1> > polStreamIn("polStreamIn");
//    hls::stream< sliceIdx_t > idxStreamIn("idxStreamIn");
//
//    hls::stream< ap_uint<16> >  xStreamOut1("xStreamOut1");
//    hls::stream< ap_uint<16> >  yStreamOut1("yStreamOut1");
//    hls::stream< ap_uint<64> > tsStreamOut1("tsStreamOut1");
//    hls::stream< ap_uint<1> > polStreamOut1("polStreamOut1");
//    hls::stream< ap_uint<1> > custDataStreamOut1("custDataStreamOut1");
//
//
//    hls::stream< ap_uint<16> >  xStreamOut2("xStreamOut2");
//    hls::stream< ap_uint<16> >  yStreamOut2("yStreamOut2");
//    hls::stream< ap_uint<64> > tsStreamOut2("tsStreamOut2");
//    hls::stream< ap_uint<1> > polStreamOut2("polStreamOut2");
//    hls::stream< ap_uint<1> > custDataStreamOut2("custDataStreamOut2");
//
//
//    hls::stream< ap_uint<16> >  xStreamOutTmp("xStreamOutTmp");
//    hls::stream< ap_uint<16> >  yStreamOutTmp("yStreamOutTmp");
//    hls::stream< ap_uint<64> > tsStreamOutTmp("tsStreamOutTmp");
//    hls::stream< ap_uint<1> > polStreamOutTmp("polStreamOutTmp");
//    hls::stream< ap_uint<1> > custDataStreamOutTmp("custDataStreamOutTmp");
//
//	ap_uint<16> xTmp, yTmp;
//	ap_uint<64> tsTmp;
//	ap_uint<1>  polTmp, custDataTmp;
//
//    ap_uint<32> config = 0;
//    status_t status;
//
//    uint64_t lastMaxTs = 0;  // Record last maximum ts to make all the ts are monotonic.
//
//    testTimes = 10;
//
//	for(int k = 0; k < testTimes; k++)
//	{
//		cout << "Test " << k << ":" << endl;
//
//	    int err_cnt = 0;
//
//		for (int i = 0; i < eventCnt; i++)
//		{
//			ts[i]  = rand() + lastMaxTs;
//		}
//		sort(ts, ts+eventCnt);
//		lastMaxTs = ts[eventCnt -1];
//
//		// Initial the current slice index to 0 for every test.
//		int currentSliceIdx = 0;
//		for (int count = 0; count < eventCnt; count = count + GROUP_EVENTS_NUM)
//		{
//			for(int itr = 0; itr < GROUP_EVENTS_NUM; itr++)
//			{
//				int i = count + itr;
//
//				x[i] = rand()%346;
//				y[i] = rand()%260;
//				pol[i] = rand()%2;
//	//			idx = rand()%3;
//		//		x = 255;
//		//		y = 240;
//	//			cout << "x : " << x << endl;
//	//			cout << "y : " << y << endl;
//	//			cout << "idx : " << idx << endl;
//				data[i] = (uint64_t)(ts[i] << 32) + (uint64_t)(x[i] << 17) + (uint64_t)(y[i] << 2) + (pol[i].to_bool() << 1);
//	//			cout << "data[" << i << "] is: "<< hex << data[i]  << endl;
//			}
//		}
//
//		parseEventsSW(data, eventCnt, eventSliceSW);
//
//		for (int count = 0; count < eventCnt; count = count + GROUP_EVENTS_NUM)
//		{
//			if(k == 7 && count == 1908)
//			{
//				int tmp = 0;
//			}
//			for(int processCnt = 0; processCnt < GROUP_EVENTS_NUM; processCnt++)
//			{
//				int currentIdx = count + processCnt%GROUP_EVENTS_NUM;
//				xStreamIn << x[currentIdx];
//				yStreamIn << y[currentIdx];
//				polStreamIn << pol[currentIdx];
//				tsStreamIn << ts[currentIdx];
//
//				SFAST_process_data(xStreamIn, yStreamIn, tsStreamIn, polStreamIn, glSliceIdxStreamSW,
//						xStreamOutTmp, yStreamOutTmp, tsStreamOutTmp, polStreamOutTmp, custDataStreamOutTmp);
//
//				x_out[currentIdx] = xStreamOutTmp.read().to_uint();
//				y_out[currentIdx] = yStreamOutTmp.read().to_uint();
//				ts_out[currentIdx] = tsStreamOutTmp.read().to_uint();
//				pol_out[currentIdx] = polStreamOutTmp.read().to_bool();
//				custData_out[currentIdx] = custDataStreamOutTmp.read().to_uint();
//			}
//		}
//
//
//		for (int j = 0; j < eventCnt; j++)
//		{
//			// Important info is only contained in the lower 32bits
//			uint16_t x_sw, y_sw;
//			ap_uint<1> pol_sw;
//			ap_uint<10> custData_sw;
//
//			ap_uint<32> tmpOutput = ap_uint<32>(eventSliceSW[j]);
//
//			// Change the order back
//			ap_uint<64> tmpData;
//			tmpData.range(7,0) = tmpOutput.range(31,24);
//			tmpData.range(15,8) = tmpOutput.range(23,16);
//			tmpData.range(23,16) = tmpOutput.range(15,8);
//			tmpData.range(31,24) = tmpOutput.range(7,0);
//
//			x_sw = tmpData.range(21, 12);
//			y_sw = tmpData.range(31, 22);
//			pol_sw = tmpData[11];
//			custData_sw = tmpData.range(10, 0);
//
//			x_sw = sensor_width_ - 1 - x_sw;
//			y_sw = sensor_height_ - 1 - y_sw;
//			if (x_sw != x_out[j] || y_sw != y_out[j] || pol_sw != pol_out[j] || custData_sw != custData_out[j])
//			{
//				cout << "j : " << j << endl;
//				cout << "x_sw : " << x_sw << "\t x_hw is: " << x_out[j] << endl;
//				cout << "y_sw : " << y_sw << "\t y_hw is: " << y_out[j] << endl;
//				cout << "pol_sw : " << pol_sw << "\t pol_hw is: " << pol_out[j] << endl;
//				cout << "corner_sw : " << custData_sw.to_int() << "\t corner_hw is: " << custData_out[j].to_int() << endl;
//
//				err_cnt++;
//				cout << "Mismatch detected on TEST " << k << " and the mismatch index is: " << j << endl;
//			}
//		}
//
//		if(err_cnt == 0)
//		{
//			cout << "Test " << k << " passed." << endl;
//		}
//		else
//		{
//			cout << "Test " << k << " failed!!!" << endl;
//		}
//		total_err_cnt += err_cnt;
//		cout << endl;
//	}

//	/******************* Test parseEvents module from random value**************************/
//	srand(3);
//	int32_t eventCnt = 6000;
//	uint8_t x[eventCnt], y[eventCnt];
//	uint64_t ts[eventCnt];
//	bool pol[eventCnt];
//	uint64_t data[eventCnt];
//	uint64_t eventSlice[eventCnt], eventSliceSW[eventCnt];
//
//	testTimes = 10;
//
//	for(int k = 0; k < testTimes; k++)
//	{
//		cout << "Test " << k << ":" << endl;
//
//	    int err_cnt = 0;
//
//		for (int i = 0; i < eventCnt; i++)
//		{
//			ts[i]  = rand();
//		}
//		sort(ts, ts+eventCnt);
//
//		for (int i = 0; i < eventCnt; i++)
//		{
//			x[i] = rand()%346;
//			y[i] = rand()%260;
//			pol[i] = 1;
////			idx = rand()%3;
//	//		x = 255;
//	//		y = 240;
////			cout << "x : " << x << endl;
////			cout << "y : " << y << endl;
////			cout << "idx : " << idx << endl;
//
//			data[i] = (uint64_t)(ts[i] << 32) + (uint64_t)(x[i] << 17) + (uint64_t)(y[i] << 2) + (pol[i] << 1);
////			cout << "data[" << i << "] is: "<< hex << data[i]  << endl;
//		}
//
//		parseEventsSW(data, eventCnt, eventSliceSW);
//		parseEventsHW(data, eventCnt, eventSlice);
//
//		for (int j = 0; j < eventCnt; j++)
//		{
//			// Important info is only contained in the lower 32bits
//			if (ap_uint<64>(eventSlice[j]).range(31, 0) != ap_uint<64>(eventSliceSW[j]).range(31, 0))
//			{
//				std::cout << "eventSliceSW is: " << eventSliceSW[j] << std::endl;
//				std::cout << "eventSlice is: " << eventSlice[j] << std::endl;
//
//				cout << "j : " << j << endl;
//				cout << "x : " << int(x[j]) << endl;
//				cout << "y : " << int(y[j]) << endl;
//				cout << "ts : " << ts[j] << endl;
//				cout << "pol : " << pol[j] << endl;
//
//				err_cnt++;
//				cout << "Mismatch detected on TEST " << k << " and the mismatch index is: " << j << endl;
//			}
//		}
//
//		if(err_cnt == 0)
//		{
//			cout << "Test " << k << " passed." << endl;
//		}
//		else
//		{
//			cout << "Test " << k << " failed!!!" << endl;
//		}
//		total_err_cnt += err_cnt;
//		cout << endl;
//	}

//	/******************* Test FastCheckOuterCornerSW module from random value**************************/
////	srand((unsigned)time(NULL));
//	testTimes = 15000;
//
//	// The raw data for SW and HW are exactly the same, except the data type.
//	uint8_t x, y;
//	uint32_t ts[testTimes];
//	bool pol;
//	ap_uint<2> stage[2];
//	stage[0] = ap_uint<2>(0);
//	stage[1] = ap_uint<2>(1);
//
////	uint8_t outputIdxSW[OUTER_SIZE];
////	ap_uint<5> outputIdxHW[OUTER_SIZE];
//
//	bool isOuterCornerSW = 0;
//	ap_uint<1>  isOuterCornerHW = 0;
//
//	uint8_t size = OUTER_SIZE;
//
//	for (int i = 0; i < testTimes; i++)
//	{
//		ts[i]  = rand();
//	}
//	sort(ts, ts+testTimes);
//
//	for(int k = 0; k < testTimes; k++)
//	{
//		cout << "Test " << k << ":" << endl;
//
//		int err_cnt = 0;
//
//// 	    cout << "\nArray after sorting using "
//// 	         "default sort is : \n";
//// 	    for (int i = 0; i < eventCnt; ++i)
//// 	        cout << ts[i] << " ";
//
//			x = rand()%220 + 10;
//			y = rand()%110 + 10;
////			idx = rand()%3;
//	//		x = 255;
//	//		y = 240;
//			cout << "x : " << (int)x << endl;
//			cout << "y : " << (int)y << endl;
//			cout << "ts : " << ts[k] << endl;
//
//		if (k == 1235)
//		{
//			int tmp = 0;
//		}
//
//		fastCornerHW(x, y, ts[k], &isOuterCornerHW);
//		FastDetectorisFeature(x, y, ts[k], pol, &isOuterCornerSW);
//
//		cout << "isCornerSW is: " << isOuterCornerSW << endl;
//		cout << "isCornerHW is: " << isOuterCornerHW << endl;
//
//		if (isOuterCornerSW != isOuterCornerHW.to_bool())
//		{
//			err_cnt++;
//		}
//
//		if(err_cnt == 0)
//		{
//			cout << "Test " << k << " passed." << endl;
//		}
//		else
//		{
//			cout << "Test " << k << " failed!!!" << endl;
//		}
//		total_err_cnt += err_cnt;
//		cout << endl;
//	}

//	/******************* Test FastCheckOuterCornerSW module from random value**************************/
////	srand((unsigned)time(NULL));
//	testTimes = 10000;
//
//	// The raw data for SW and HW are exactly the same, except the data type.
//	uint8_t x, y;
//	uint32_t ts[testTimes];
//	bool pol;
////	uint8_t outputIdxSW[OUTER_SIZE];
////	ap_uint<5> outputIdxHW[OUTER_SIZE];
//
//	bool isOuterCornerSW = 0;
//	ap_uint<1>  isOuterCornerHW = 0;
//
//	uint8_t size = OUTER_SIZE;
//
//	for (int i = 0; i < testTimes; i++)
//	{
//		ts[i]  = rand();
//	}
//	sort(ts, ts+testTimes);
//
//	for(int k = 0; k < testTimes; k++)
//	{
//		cout << "Test " << k << ":" << endl;
//
//		int err_cnt = 0;
//
//// 	    cout << "\nArray after sorting using "
//// 	         "default sort is : \n";
//// 	    for (int i = 0; i < eventCnt; ++i)
//// 	        cout << ts[i] << " ";
//
//			x = rand()%220 + 10;
//			y = rand()%110 + 10;
////			idx = rand()%3;
//	//		x = 255;
//	//		y = 240;
//			cout << "x : " << (int)x << endl;
//			cout << "y : " << (int)y << endl;
//			cout << "ts : " << ts[k] << endl;
//
//	    FastDetectorisOuterFeature(x, y, ts[k], pol, &isOuterCornerSW);
//		fastCornerOuterHW(x, y, ts[k], 1, &isOuterCornerHW);
//
//		cout << "isCornerSW is: " << isOuterCornerSW << endl;
//		cout << "isCornerHW is: " << isOuterCornerHW << endl;
//
//		if (isOuterCornerSW != isOuterCornerHW.to_bool())
//		{
//			err_cnt++;
//		}
//
//		if(err_cnt == 0)
//		{
//			cout << "Test " << k << " passed." << endl;
//		}
//		else
//		{
//			cout << "Test " << k << " failed!!!" << endl;
//		}
//		total_err_cnt += err_cnt;
//		cout << endl;
//	}

//	/******************* Test FastCheckInnerCornerSW module from random value**************************/
////	srand((unsigned)time(NULL));
//	testTimes = 10000;
//
//	// The raw data for SW and HW are exactly the same, except the data type.
//	uint32_t x, y;
//	uint32_t ts[testTimes];
//	bool pol;
////	uint8_t outputIdxSW[OUTER_SIZE];
////	ap_uint<5> outputIdxHW[OUTER_SIZE];
//
//	bool isInnerCornerSW = 0;
//	ap_uint<1>  isInnerCornerHW = 0;
//
//	uint8_t size = INNER_SIZE;
//
//	for (int i = 0; i < testTimes; i++)
//	{
//		ts[i]  = rand();
//	}
//	sort(ts, ts+testTimes);
//
//	for(int k = 0; k < testTimes; k++)
//	{
//		cout << "Test " << k << ":" << endl;
//
//		int err_cnt = 0;
//
//// 	    cout << "\nArray after sorting using "
//// 	         "default sort is : \n";
//// 	    for (int i = 0; i < eventCnt; ++i)
//// 	        cout << ts[i] << " ";
//
//			x = rand()%220 + 10;
//			y = rand()%110 + 10;
////			idx = rand()%3;
//	//		x = 255;
//	//		y = 240;
//			cout << "x : " << x << endl;
//			cout << "y : " << y << endl;
//			cout << "ts : " << ts[k] << endl;
//
//		FastDetectorisInnerFeature(x, y, ts[k], pol, &isInnerCornerSW);
//		fastCornerInnerHW(x, y, ts[k], 0, &isInnerCornerHW);
//
//		cout << "isCornerSW is: " << isInnerCornerSW << endl;
//		cout << "isCornerHW is: " << isInnerCornerHW << endl;
//
//		if (isInnerCornerSW != isInnerCornerHW.to_bool())
//		{
//			err_cnt++;
//		}
//
//		if(err_cnt == 0)
//		{
//			cout << "Test " << k << " passed." << endl;
//		}
//		else
//		{
//			cout << "Test " << k << " failed!!!" << endl;
//		}
//		total_err_cnt += err_cnt;
//		cout << endl;
//	}

//	/******************* Test testFromTsDataCheckOuterCornerSW module from random value**************************/
////	srand((unsigned)time(NULL));
//	testTimes = 1000;
//
//	// The raw data for SW and HW are exactly the same, except the data type.
//	uint32_t testRawDataSW[OUTER_SIZE];
//	ap_uint<32> testRawDataHW[OUTER_SIZE];
////	uint8_t outputIdxSW[OUTER_SIZE];
////	ap_uint<5> outputIdxHW[OUTER_SIZE];
//
//	ap_uint<1> isCornerSW = 0, isCornerHW = 0;
//
//	uint8_t size = OUTER_SIZE;
//
//	for(int k = 0; k < testTimes; k++)
//	{
//		cout << "Test " << k << ":" << endl;
//
//		int err_cnt = 0;
//
//		for (int i = 0; i < size; i++)
//		{
//			testRawDataSW[i]  = rand();
//			testRawDataHW[i] = testRawDataSW[i];
//		}
//
//		// The following pattern is only used to test the boundary behavior.
//		// On normal test condition, uncomment them.
//// 		testRawDataSW[0] = 100000;
//// 		testRawDataSW[15] = 100000;
//// 		testRawDataSW[14] = 100000;
//// 		testRawDataHW[0] = 100000;
//// 		testRawDataHW[15] = 100000;
//// 		testRawDataHW[14] = 100000;
//
//		testFromTsDataCheckOuterCornerHW(testRawDataHW, size, &isCornerHW);
//		testFromTsDataCheckOuterCornerSW(testRawDataSW, size, &isCornerSW);
//
//		cout << "isCornerSW is: " << isCornerSW << endl;
//		cout << "isCornerHW is: " << isCornerHW << endl;
//
//		if (isCornerSW != isCornerHW)
//		{
//			err_cnt++;
//		}
//
//		if(err_cnt == 0)
//		{
//			cout << "Test " << k << " passed." << endl;
//		}
//		else
//		{
//			cout << "Test " << k << " failed!!!" << endl;
//		}
//		total_err_cnt += err_cnt;
//		cout << endl;
//	}

//	/******************* Test testFromTsDataCheckInnerCornerSW module from random value**************************/
////	srand((unsigned)time(NULL));
//	testTimes = 1000;
//
//    // The raw data for SW and HW are exactly the same, except the data type.
//	uint32_t testRawDataSW[OUTER_SIZE];
//	ap_uint<32> testRawDataHW[OUTER_SIZE];
////	uint8_t outputIdxSW[OUTER_SIZE];
////	ap_uint<5> outputIdxHW[OUTER_SIZE];
//
//	ap_uint<1> isCornerSW = 0, isCornerHW = 0;
//
//	uint8_t size = INNER_SIZE;
//
//	for(int k = 0; k < testTimes; k++)
//	{
//		cout << "Test " << k << ":" << endl;
//
//		int err_cnt = 0;
//
// 		for (int i = 0; i < size; i++)
//		{
// 			testRawDataSW[i]  = rand();
// 			testRawDataHW[i] = testRawDataSW[i];
//		}
//
// 		// The following pattern is only used to test the boundary behavior.
// 		// On normal test condition, uncomment them.
//// 		testRawDataSW[0] = 100000;
//// 		testRawDataSW[15] = 100000;
//// 		testRawDataSW[14] = 100000;
//// 		testRawDataHW[0] = 100000;
//// 		testRawDataHW[15] = 100000;
//// 		testRawDataHW[14] = 100000;
//
// 		testFromTsDataCheckInnerCornerSW(testRawDataSW, size, &isCornerSW);
// 		testFromTsDataToInnerCornerHW(testRawDataHW, size, &isCornerHW);
// 		// 		testFromTsDataCheckInnerCornerHW(testRawDataHW, size, &isCornerHW);
//
//		cout << "isCornerSW is: " << isCornerSW << endl;
//		cout << "isCornerHW is: " << isCornerHW << endl;
//
//		if (isCornerSW != isCornerHW)
//		{
//			err_cnt++;
//		}
//
// 		if(err_cnt == 0)
//		{
//			cout << "Test " << k << " passed." << endl;
//		}
// 		else
// 		{
//			cout << "Test " << k << " failed!!!" << endl;
// 		}
//		total_err_cnt += err_cnt;
//		cout << endl;
//	}

//	/******************* Test testConvertandSortedInnerIdxSW module from random value**************************/
////	srand((unsigned)time(NULL));
//	testTimes = 1000;
//
//	// The raw data for SW and HW are exactly the same, except the data type.
//	uint32_t testRawDataSW[OUTER_SIZE];
//	ap_uint<32> testRawDataHW[OUTER_SIZE];
//	ap_uint<4> outputIdxBoolSW[INNER_SIZE];
//	ap_uint<4> outputIdxBoolHW[INNER_SIZE];
//
//	uint8_t size = INNER_SIZE;
//
//	for(int k = 0; k < testTimes; k++)
//	{
//		cout << "Test " << k << ":" << endl;
//
//		int err_cnt = 0;
//
//		for (int i = 0; i < size; i++)
//		{
//			testRawDataSW[i]  = rand();
//
//		}
//		for (int i = 0; i < size; i++)
//		{
//			for(int j = i + 1; j < size; j++)
//			if(testRawDataSW[i] == testRawDataSW[j])  // If the same, generate again.
//				testRawDataSW[j]  = rand();
//
//			testRawDataHW[i] = testRawDataSW[i];
//		}
//
//		testFromTsDataToIdxInnerBoolDataHW(testRawDataHW, size, outputIdxBoolHW);
//		testConvertandSortedInnerIdxSW(testRawDataSW, outputIdxBoolSW);
//
//		for (int  j = 0; j < INNER_SIZE; j++)
//		{
//			for (int i = 0; i < 4; i++ )
//			{
//				if (outputIdxBoolSW[j][i] != outputIdxBoolHW[j][i])
//				{
//					err_cnt++;
//				}
//			}
//		}
//
//		if(err_cnt == 0)
//		{
//			cout << "Test " << k << " passed." << endl;
//		}
//		else
//		{
//			cout << "Test " << k << " failed!!!" << endl;
//		}
//		total_err_cnt += err_cnt;
//		cout << endl;
//	}

//	/******************* Test testFromTsDataToIdxData module from random value**************************/
////	srand((unsigned)time(NULL));
//	testTimes = 1000;
//
//    // The raw data for SW and HW are exactly the same, except the data type.
//	uint32_t testRawDataSW[OUTER_SIZE];
//	ap_uint<32> testRawDataHW[OUTER_SIZE];
//	uint8_t outputIdxSW[OUTER_SIZE];
//	ap_uint<5> outputIdxHW[OUTER_SIZE];
//
//	uint8_t size = INNER_SIZE;
//
//	for(int k = 0; k < testTimes; k++)
//	{
//		cout << "Test " << k << ":" << endl;
//
//		int err_cnt = 0;
//
// 		for (int i = 0; i < size; i++)
//		{
// 			testRawDataSW[i]  = rand();
//
//		}
// 		for (int i = 0; i < size; i++)
//		{
//	        for(int j = i + 1; j < size; j++)
//	        if(testRawDataSW[i] == testRawDataSW[j])  // If the same, generate again.
//	        	testRawDataSW[j]  = rand();
//
// 			testRawDataHW[i] = testRawDataSW[i];
//		}
//
// 		testConvertandSortedIdxSW(testRawDataSW, size, outputIdxSW);
// 		testFromTsDataToIdxDataHW(testRawDataHW, size, outputIdxHW);
//
//		for (int  j = 0; j < size; j++)
//		{
//			if (size == INNER_SIZE)
//			{
//				if (outputIdxSW[j] + (OUTER_SIZE - INNER_SIZE) != outputIdxHW[j])
//				{
//					err_cnt++;
//				}
//			}
//			else
//			{
//				if (outputIdxSW[j] != outputIdxHW[j])
//				{
//					err_cnt++;
//				}
//			}
//		}
//
// 		if(err_cnt == 0)
//		{
//			cout << "Test " << k << " passed." << endl;
//		}
// 		else
// 		{
//			cout << "Test " << k << " failed!!!" << endl;
// 		}
//		total_err_cnt += err_cnt;
//		cout << endl;
//	}

//	/******************* Test testFromTsDataCheckInnerCornerSW module from random value**************************/
////	srand((unsigned)time(NULL));
//	testTimes = 1000;
//
//    // The raw data for SW and HW are exactly the same, except the data type.
//	int idxDataSW[OUTER_SIZE];
//	ap_uint<5> idxDataHW[OUTER_SIZE];
//	ap_uint<5> outputIdxBoolSW[OUTER_SIZE];
//	ap_uint<4> outputIdxBoolHW[OUTER_SIZE];
//
//	ap_uint<1> isCornerSW = 0, isCornerHW = 0;
//
//	uint8_t size = 18;
//
//	for(int k = 0; k < testTimes; k++)
//	{
//		cout << "Test " << k << ":" << endl;
//
//		int err_cnt = 0;
//
// 		for (int i = 0; i < size; i++)
//		{
// 			idxDataSW[i]  = rand()%size;
// 			idxDataHW[i] = idxDataSW[i];
//		}
//
// 		testIdxDataToIdxInnerBoolDataSW(idxDataSW, size, outputIdxBoolSW);
// 		testIdxDataToIdxInnerBoolDataHW(idxDataHW, size, outputIdxBoolHW);
//
//		for (int  j = 0; j < 18; j++)
//		{
//			for (int i = 0; i < 4; i++ )
//			{
//				if (outputIdxBoolSW[j][i] != outputIdxBoolHW[j][i])
//				{
//					err_cnt++;
//				}
//			}
//		}
//
// 		if(err_cnt == 0)
//		{
//			cout << "Test " << k << " passed." << endl;
//		}
// 		else
// 		{
//			cout << "Test " << k << " failed!!!" << endl;
// 		}
//		total_err_cnt += err_cnt;
//		cout << endl;
//	}

//	/******************* Test rwSAE module from random value**************************/
//	srand((unsigned)time(NULL));
////	srand(2);
//	testTimes = 200;
//	int16_t eventCnt = 1000;
//	ap_uint<TS_TYPE_BIT_WIDTH> outputDataSW[OUTER_SIZE], outputDataHW[OUTER_SIZE];
//	ap_uint<5> sizeSW, sizeHW;
//
//	uint32_t x, y;
//	ap_uint<1> pol;
//	ap_uint<2> stage;
//	uint32_t ts[eventCnt];
//
//	uint64_t lastMaxTs = 0;  // Record last maximum ts to make all the ts are monotonic.
//
//	for(int k = 0; k < testTimes; k++)
//	{
//		cout << "Test " << k << ":" << endl;
//
//		int err_cnt = 0;
//
//		for (int i = 0; i < eventCnt; i++)
//		{
//			ts[i]  = rand() + lastMaxTs;
//		}
//		sort(ts, ts+eventCnt);
//		lastMaxTs = ts[eventCnt -1];
//
//// 	    cout << "\nArray after sorting using "
//// 	         "default sort is : \n";
//// 	    for (int i = 0; i < eventCnt; ++i)
//// 	        cout << ts[i] << " ";
//
// 		for (int i = 0; i < eventCnt; i++)
//		{
//			x = rand()%338+4;
//			y = rand()%252+4;
//			pol = rand()%2;
//			stage = rand()%3;
//
//	 		rwSAESW(x, y, pol, ts[i], stage, outputDataSW, &sizeSW);
//	 		testRwSAEHW(x, y, pol, ts[i], stage, outputDataHW, &sizeHW);
//
//	 		for (int  j = 0; j < OUTER_SIZE; j++)
//	 		{
//	 			if (outputDataSW[j] != outputDataHW[j])
//	 			{
// 	 				err_cnt++;
// 	 				cout << "x is: " << x << "\t" << "y is: " << y << "\t pol is: " << pol << "\t ts is: " << ts << "\t stage is: " << stage << endl;
//					cout << "Mismatch detected on TEST " << k << " and the mismatch index is: " << i << endl;
//	 			}
//	 		}
//		}
//
//
// 		if(err_cnt == 0)
//		{
//			cout << "Test " << k << " passed." << endl;
//		}
// 		else
// 		{
//			cout << "Test " << k << " failed." << endl;
// 		}
//		total_err_cnt += err_cnt;
//		cout << endl;
//	}

	/******************* Test SortedIdxData module from random value**************************/
//	ap_uint<TS_TYPE_BIT_WIDTH> input[OUTER_SIZE];
//	ap_uint<5> outputSortedIdxHW[OUTER_SIZE], outputSortedIdxSW[OUTER_SIZE];
//	for(int k = 0; k < TEST_TIMES; k++)
//	{
//		cout << "Test " << k << ":" << endl;
//
//		int err_cnt = 0;
//
//		//generate random data to sort
//		if(DEBUG) std::cout << "Random Input Data\n";
//		int size = rand()%20;
//		size = 20;
//		for(int i = 0; i < size; i++) {
//			input[i] = rand() % MAX_NUMBER + 1;
//			if(DEBUG) std::cout << input[i] << "\t";
//		}
//
//		testSortedIdxData(input, outputSortedIdxHW);
//		sortedIndex(input, size, outputSortedIdxSW);
//
//		//compare the results of insertion_sort to insertion_cell_sort; fail if they differ
//		if(DEBUG) std::cout << "\nSorted Output\n";
//		for(int i = 0; i < size; i++) {
//			if(DEBUG) std::cout << outputSortedIdxHW[i] << "\t";
//		}
//		for(int i = 0; i < size; i++) {
//			if(outputSortedIdxSW[i] != outputSortedIdxHW[i]) {
//				std::cout << "\n";
//				err_cnt = 1;
//				std::cout << "golden= " << outputSortedIdxSW[i] << " hw=" << outputSortedIdxHW[i] << "\n";
//			}
//		}
//
//		if(err_cnt == 0)
//		{
//			cout << "Test " << k << " passed." << endl;
//		}
//		total_err_cnt += err_cnt;
//		cout << endl;
//	}
	/******************* Test sort module from random value**************************/
//    srand((unsigned)time(NULL)); //change me if you want different numbers
//	srand(20);
//	int32_t eventCnt = 500;
//	uint64_t data[eventCnt];
//	int32_t eventSlice[eventCnt], eventSliceSW[eventCnt];
//
//    int fail = 0;
//    DTYPE input[20];
//    DTYPE insertion_output[20] = {0}, insertion_cell_output[20] = {0};
//    DTYPE merge_sort_input[20]= {0}, merge_sort_output[20] = {0};
//    hls::stream<DTYPE> in, out;
//
//	for(int k = 0; k < TEST_TIMES; k++)
//	{
//		cout << "Test " << k << ":" << endl;
//
//	    int err_cnt = 0;
//
//	    //generate random data to sort
//	    if(DEBUG) std::cout << "Random Input Data\n";
// 		int size = rand()%20;
// 		size = 8;
//	    for(int i = 0; i < size; i++) {
//	        input[i] = rand() % MAX_NUMBER + 1;
//	        merge_sort_input[i] = input[i];
//	        if(DEBUG) std::cout << input[i] << "\t";
//	    }
//
//	    //process the data through the insertion_cell_sort function
////	    for(int i = 0; i < size*2; i++) {
////	        if(i < size) {
////	            //feed in the SIZE elements to be sorted
////	            in.write(input[i]);
////	            insertion_cell_sort(in, out);
////	            insertion_cell_output[i] = out.read();
////	        } else {
////	            //then send in dummy data to flush pipeline
////	            in.write(MAX_NUMBER);
////	            insertion_cell_sort(in, out);
////	            insertion_cell_output[i-size] = out.read();
////	        }
////	    }
//
////	    insertionCellSort(input, insertion_cell_output);
//	    testSortHW(input, insertion_cell_output);
//	    //sort the data using the insertion_sort function
//	    insertion_sortSW(input, size, insertion_output);
//	    mergeSortParallelWithSize(merge_sort_input, size, merge_sort_output);
//
//	    //compare the results of insertion_sort to insertion_cell_sort; fail if they differ
//	    if(DEBUG) std::cout << "\nSorted Output\n";
//	    for(int i = 0; i < size; i++) {
//	        if(DEBUG) std::cout << insertion_cell_output[i] << "\t";
//	    }
//	    for(int i = 0; i < size; i++) {
//	        if(input[i] != insertion_cell_output[i]) {
//	        	err_cnt = 1;
//	            std::cout << "golden= " << input[i] << " hw=" << insertion_cell_output[i] << "\n";
//	        }
//	    }
//
//		if(err_cnt == 0)
//		{
//			cout << "Test " << k << " passed." << endl;
//		}
//		total_err_cnt += err_cnt;
//		cout << endl;
//	}

//	/******************* Test muxWithPrior module from random value**************************/
//	srand(2);
////	srand((unsigned)time(NULL));
//
//	testTimes = 4000;
//
//    ap_uint<12*4> dinTestData = ap_uint<48>("cba987654321", 16);
//	ap_uint<12> selInput;
//	ap_uint<4> doutSW, doutHW;
//
//	for(int k = 0; k < testTimes; k++)
//	{
//		cout << "Test " << k << ":" << endl;
//
//	    int err_cnt = 0;
//
//	    selInput = ap_uint<12>(rand());
//    	cout << "selInput is: " << hex << selInput << endl;
//
//	    muxWithPriorSW(dinTestData, selInput, &doutSW);
//	    testMuxWithPrior(dinTestData, selInput, &doutHW);
//
//	    if(doutHW != doutSW)
//	    {
//	    	cout << "doutSW is: " << hex << doutSW << endl;
//	    	cout << "doutHW is: " << hex << doutHW << endl;
//	    	cout << dec << endl;
//	    	cout << endl;
//	    	err_cnt++;
//	    }
//
//		if(err_cnt == 0)
//		{
//			cout << "Test " << dec << k << " passed." << endl;
//		}
//		total_err_cnt += err_cnt;
//		cout << endl;
//	}

	if (total_err_cnt == 0)
	{
			cout<<"*** TEST PASSED ***" << endl;
			retval = 0;
	} else
	{
			cout<<"!!! TEST FAILED - " << total_err_cnt << " mismatches detected !!!";
			cout<< endl;
			retval = -1;
	}

	// Return 0 if the test passes
	return retval;
}
