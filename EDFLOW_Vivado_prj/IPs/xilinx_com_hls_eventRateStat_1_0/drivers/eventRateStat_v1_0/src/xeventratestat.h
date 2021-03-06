// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XEVENTRATESTAT_H
#define XEVENTRATESTAT_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xeventratestat_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Config_BaseAddress;
} XEventratestat_Config;
#endif

typedef struct {
    u32 Config_BaseAddress;
    u32 IsReady;
} XEventratestat;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XEventratestat_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XEventratestat_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XEventratestat_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XEventratestat_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XEventratestat_Initialize(XEventratestat *InstancePtr, u16 DeviceId);
XEventratestat_Config* XEventratestat_LookupConfig(u16 DeviceId);
int XEventratestat_CfgInitialize(XEventratestat *InstancePtr, XEventratestat_Config *ConfigPtr);
#else
int XEventratestat_Initialize(XEventratestat *InstancePtr, const char* InstanceName);
int XEventratestat_Release(XEventratestat *InstancePtr);
#endif


u64 XEventratestat_Get_status_inEventsNum(XEventratestat *InstancePtr);
u32 XEventratestat_Get_status_inEventsNum_vld(XEventratestat *InstancePtr);
void XEventratestat_Set_status_cornerEventsNum(XEventratestat *InstancePtr, u64 Data);
u64 XEventratestat_Get_status_cornerEventsNum(XEventratestat *InstancePtr);
u64 XEventratestat_Get_status_durationTime(XEventratestat *InstancePtr);
u32 XEventratestat_Get_status_durationTime_vld(XEventratestat *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
