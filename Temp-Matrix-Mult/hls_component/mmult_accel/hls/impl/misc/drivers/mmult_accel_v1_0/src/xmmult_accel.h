// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMMULT_ACCEL_H
#define XMMULT_ACCEL_H

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
#include "xmmult_accel_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XMmult_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMmult_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMmult_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMmult_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMmult_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMmult_accel_ReadReg(BaseAddress, RegOffset) \
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
#ifdef SDT
int XMmult_accel_Initialize(XMmult_accel *InstancePtr, UINTPTR BaseAddress);
XMmult_accel_Config* XMmult_accel_LookupConfig(UINTPTR BaseAddress);
#else
int XMmult_accel_Initialize(XMmult_accel *InstancePtr, u16 DeviceId);
XMmult_accel_Config* XMmult_accel_LookupConfig(u16 DeviceId);
#endif
int XMmult_accel_CfgInitialize(XMmult_accel *InstancePtr, XMmult_accel_Config *ConfigPtr);
#else
int XMmult_accel_Initialize(XMmult_accel *InstancePtr, const char* InstanceName);
int XMmult_accel_Release(XMmult_accel *InstancePtr);
#endif

void XMmult_accel_Start(XMmult_accel *InstancePtr);
u32 XMmult_accel_IsDone(XMmult_accel *InstancePtr);
u32 XMmult_accel_IsIdle(XMmult_accel *InstancePtr);
u32 XMmult_accel_IsReady(XMmult_accel *InstancePtr);
void XMmult_accel_EnableAutoRestart(XMmult_accel *InstancePtr);
void XMmult_accel_DisableAutoRestart(XMmult_accel *InstancePtr);

void XMmult_accel_Set_a(XMmult_accel *InstancePtr, u64 Data);
u64 XMmult_accel_Get_a(XMmult_accel *InstancePtr);
void XMmult_accel_Set_b(XMmult_accel *InstancePtr, u64 Data);
u64 XMmult_accel_Get_b(XMmult_accel *InstancePtr);
void XMmult_accel_Set_c(XMmult_accel *InstancePtr, u64 Data);
u64 XMmult_accel_Get_c(XMmult_accel *InstancePtr);
void XMmult_accel_Set_dim(XMmult_accel *InstancePtr, u32 Data);
u32 XMmult_accel_Get_dim(XMmult_accel *InstancePtr);

void XMmult_accel_InterruptGlobalEnable(XMmult_accel *InstancePtr);
void XMmult_accel_InterruptGlobalDisable(XMmult_accel *InstancePtr);
void XMmult_accel_InterruptEnable(XMmult_accel *InstancePtr, u32 Mask);
void XMmult_accel_InterruptDisable(XMmult_accel *InstancePtr, u32 Mask);
void XMmult_accel_InterruptClear(XMmult_accel *InstancePtr, u32 Mask);
u32 XMmult_accel_InterruptGetEnabled(XMmult_accel *InstancePtr);
u32 XMmult_accel_InterruptGetStatus(XMmult_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
