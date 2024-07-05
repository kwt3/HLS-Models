// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
# 1 "C:/Users/kwokt/Desktop/project0303/mm.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 420 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Users/kwokt/Desktop/project0303/mm.cpp" 2
# 1 "C:/Users/kwokt/Desktop/project0303/mm.hpp" 1



# 1 "C:/Xilinx/Vitis_HLS/2024.1/vcxx/lib/clang/14.0.6/include/stdint.h" 1 3
# 52 "C:/Xilinx/Vitis_HLS/2024.1/vcxx/lib/clang/14.0.6/include/stdint.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/stdint.h" 1 3
# 28 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/stdint.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/crtdefs.h" 1 3
# 10 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/crtdefs.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 1 3
# 10 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 1 3
# 10 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw_mac.h" 1 3
# 11 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 1 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw_secapi.h" 1 3
# 44 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw_secapi.h" 3
extern "C++" {
template <bool __test, typename __dsttype>
  struct __if_array;
template <typename __dsttype>
  struct __if_array <true, __dsttype> {
    typedef __dsttype __type;
};
}
# 12 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 289 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2024.1/vcxx/lib/clang/14.0.6/include/vadefs.h" 1 3
# 12 "C:/Xilinx/Vitis_HLS/2024.1/vcxx/lib/clang/14.0.6/include/vadefs.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/vadefs.h" 1 3








# 1 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 1 3
# 623 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h" 1 3
# 624 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 10 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/vadefs.h" 2 3




#pragma pack(push,_CRT_PACKING)



extern "C" {





  typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 99 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/vadefs.h" 3
}



#pragma pack(pop)
# 13 "C:/Xilinx/Vitis_HLS/2024.1/vcxx/lib/clang/14.0.6/include/vadefs.h" 2 3
# 290 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 2 3
# 575 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 3
extern "C" {
# 586 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/_mingw.h" 3
void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{

  __asm__ __volatile__("int {$}3":);







}




const char *__mingw_get_crt_info (void);


}
# 11 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 35 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
__extension__ typedef unsigned long long size_t;
# 45 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
__extension__ typedef long long ssize_t;






typedef size_t rsize_t;
# 62 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
__extension__ typedef long long intptr_t;
# 75 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
__extension__ typedef unsigned long long uintptr_t;
# 88 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
__extension__ typedef long long ptrdiff_t;
# 106 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;
# 138 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
typedef __time64_t time_t;
# 430 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {





  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;

} threadlocinfo;
# 501 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/corecrt.h" 3
#pragma pack(pop)
# 11 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/crtdefs.h" 2 3
# 29 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/stdint.h" 2 3



# 1 "C:/Xilinx/Vitis_HLS/2024.1/vcxx/lib/clang/14.0.6/include/stddef.h" 1 3
# 33 "C:/Xilinx/Vitis_HLS/2024.1/tps/mingw/10.0.0/win64.o/nt/x86_64-w64-mingw32/include/stdint.h" 2 3


typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
__extension__ typedef long long int64_t;
__extension__ typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
__extension__ typedef long long int_least64_t;
__extension__ typedef unsigned long long uint_least64_t;





typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
__extension__ typedef long long int_fast64_t;
__extension__ typedef unsigned long long uint_fast64_t;


__extension__ typedef long long intmax_t;
__extension__ typedef unsigned long long uintmax_t;
# 53 "C:/Xilinx/Vitis_HLS/2024.1/vcxx/lib/clang/14.0.6/include/stdint.h" 2 3
# 5 "C:/Users/kwokt/Desktop/project0303/mm.hpp" 2

void mmult_accel(
    uint8_t *a,
    uint8_t *b,
    uint32_t *c,
    int dim
);
# 2 "C:/Users/kwokt/Desktop/project0303/mm.cpp" 2

void mmult_accel(
    uint8_t *a,
    uint8_t *b,
    uint32_t *c,
    int dim
) {
#pragma HLS INTERFACE m_axi port=a offset=slave bundle=gmem0 depth=65536
#pragma HLS INTERFACE m_axi port=b offset=slave bundle=gmem1 depth=65536
#pragma HLS INTERFACE m_axi port=c offset=slave bundle=gmem2 depth=65536
#pragma HLS INTERFACE s_axilite port=a bundle=control
#pragma HLS INTERFACE s_axilite port=b bundle=control
#pragma HLS INTERFACE s_axilite port=c bundle=control
#pragma HLS INTERFACE s_axilite port=dim bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    int i, j, k;
    uint32_t sum;


    for (i = 0; i < dim; i++) {
        for (j = 0; j < dim; j++) {
#pragma HLS PIPELINE II=1
            sum = 0;
            for (k = 0; k < dim; k++) {
                sum += (uint32_t)a[i * dim + k] * (uint32_t)b[k * dim + j];
            }
            c[i * dim + j] = sum;
        }
    }
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_mmult_accel_ir(unsigned char *, unsigned char *, unsigned int *, int);
#ifdef __cplusplus
extern "C"
#endif
void mmult_accel_hw_stub(unsigned char *a, unsigned char *b, unsigned int *c, int dim){
mmult_accel(a, b, c, dim);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void refine_signal_handler();
#ifdef __cplusplus
extern "C"
#endif
void apatb_mmult_accel_sw(unsigned char *a, unsigned char *b, unsigned int *c, int dim){
refine_signal_handler();
apatb_mmult_accel_ir(a, b, c, dim);
return ;
}
#endif
# 32 "C:/Users/kwokt/Desktop/project0303/mm.cpp"

