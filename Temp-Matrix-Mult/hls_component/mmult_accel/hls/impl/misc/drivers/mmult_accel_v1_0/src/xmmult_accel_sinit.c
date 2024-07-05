// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xmmult_accel.h"

extern XMmult_accel_Config XMmult_accel_ConfigTable[];

#ifdef SDT
XMmult_accel_Config *XMmult_accel_LookupConfig(UINTPTR BaseAddress) {
	XMmult_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMmult_accel_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMmult_accel_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMmult_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMmult_accel_Initialize(XMmult_accel *InstancePtr, UINTPTR BaseAddress) {
	XMmult_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMmult_accel_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMmult_accel_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMmult_accel_Config *XMmult_accel_LookupConfig(u16 DeviceId) {
	XMmult_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMMULT_ACCEL_NUM_INSTANCES; Index++) {
		if (XMmult_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMmult_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMmult_accel_Initialize(XMmult_accel *InstancePtr, u16 DeviceId) {
	XMmult_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMmult_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMmult_accel_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif
