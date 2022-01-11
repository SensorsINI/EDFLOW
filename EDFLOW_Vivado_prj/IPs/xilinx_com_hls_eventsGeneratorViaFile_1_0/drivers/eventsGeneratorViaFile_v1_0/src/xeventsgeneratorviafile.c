// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xeventsgeneratorviafile.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XEventsgeneratorviafile_CfgInitialize(XEventsgeneratorviafile *InstancePtr, XEventsgeneratorviafile_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Config_BaseAddress = ConfigPtr->Config_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XEventsgeneratorviafile_Set_input_V(XEventsgeneratorviafile *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEventsgeneratorviafile_WriteReg(InstancePtr->Config_BaseAddress, XEVENTSGENERATORVIAFILE_CONFIG_ADDR_INPUT_V_DATA, (u32)(Data));
    XEventsgeneratorviafile_WriteReg(InstancePtr->Config_BaseAddress, XEVENTSGENERATORVIAFILE_CONFIG_ADDR_INPUT_V_DATA + 4, (u32)(Data >> 32));
}

u64 XEventsgeneratorviafile_Get_input_V(XEventsgeneratorviafile *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEventsgeneratorviafile_ReadReg(InstancePtr->Config_BaseAddress, XEVENTSGENERATORVIAFILE_CONFIG_ADDR_INPUT_V_DATA);
    Data += (u64)XEventsgeneratorviafile_ReadReg(InstancePtr->Config_BaseAddress, XEVENTSGENERATORVIAFILE_CONFIG_ADDR_INPUT_V_DATA + 4) << 32;
    return Data;
}

void XEventsgeneratorviafile_Set_input_V_vld(XEventsgeneratorviafile *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEventsgeneratorviafile_WriteReg(InstancePtr->Config_BaseAddress, XEVENTSGENERATORVIAFILE_CONFIG_ADDR_INPUT_V_CTRL, 1);
}

u32 XEventsgeneratorviafile_Get_input_V_vld(XEventsgeneratorviafile *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEventsgeneratorviafile_ReadReg(InstancePtr->Config_BaseAddress, XEVENTSGENERATORVIAFILE_CONFIG_ADDR_INPUT_V_CTRL);
    return Data & 0x1;
}
