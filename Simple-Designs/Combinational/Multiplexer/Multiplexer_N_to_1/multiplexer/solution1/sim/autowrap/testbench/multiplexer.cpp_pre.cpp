# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer/Multiplexer_N_to_1/multiplexer.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer/Multiplexer_N_to_1/multiplexer.cpp"
# 1 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer/Multiplexer_N_to_1/multiplexer.hpp" 1



# 1 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/include/c++/6.2.0/cstddef" 1 3
# 42 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/include/c++/6.2.0/cstddef" 3
       
# 43 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/include/c++/6.2.0/cstddef" 3






# 1 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 1 3
# 197 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 3

# 197 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 3
namespace std
{
  typedef long long unsigned int size_t;
  typedef long long int ptrdiff_t;


  typedef decltype(nullptr) nullptr_t;

}
# 219 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 3
namespace std
{
  inline namespace __cxx11 __attribute__((__abi_tag__ ("cxx11"))) { }
}
namespace __gnu_cxx
{
  inline namespace __cxx11 __attribute__((__abi_tag__ ("cxx11"))) { }
}
# 496 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 3
# 1 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/os_defines.h" 1 3
# 497 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 2 3


# 1 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/cpu_defines.h" 1 3
# 500 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 2 3
# 50 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/include/c++/6.2.0/cstddef" 2 3
# 1 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/6.2.0/include/stddef.h" 1 3 4

# 1 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stddef.h" 1 3 4







# 1 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 1 3 4
# 11 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
# 1 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 1 3 4
# 13 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3 4
# 1 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h" 1 3 4
# 89 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h" 3 4
             
# 98 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h" 3 4
             
# 14 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3 4
# 1 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h" 1 3 4
# 45 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h" 3 4
extern "C++" {
template <bool __test, typename __dsttype>
  struct __if_array;
template <typename __dsttype>
  struct __if_array <true, __dsttype> {
    typedef __dsttype __type;
};
}
# 15 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3 4
# 276 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3 4
# 1 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 1 3 4
# 10 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 3 4
# 1 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 1 3 4
# 566 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3 4
# 1 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h" 1 3 4
# 567 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3 4
# 1 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h" 1 3 4
# 568 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3 4
# 11 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 2 3 4




#pragma pack(push,_CRT_PACKING)



extern "C" {





  typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 100 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 3 4
}



#pragma pack(pop)
# 277 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3 4
# 535 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3 4
extern "C" {




void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{
  __asm__ __volatile__("int {$}3":);
}




const char *__mingw_get_crt_info (void);


}
# 12 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 2 3 4




#pragma pack(push,_CRT_PACKING)
# 36 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
__extension__ typedef unsigned long long size_t;
# 46 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
__extension__ typedef long long ssize_t;






typedef size_t rsize_t;
# 63 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
__extension__ typedef long long intptr_t;
# 76 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
__extension__ typedef unsigned long long uintptr_t;
# 89 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
__extension__ typedef long long ptrdiff_t;
# 107 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;
# 139 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
typedef __time64_t time_t;
# 423 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
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







#pragma pack(pop)
# 9 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stddef.h" 2 3 4





extern "C" {




  __attribute__ ((__dllimport__)) extern int *__attribute__((__cdecl__)) _errno(void);

  errno_t __attribute__((__cdecl__)) _set_errno(int _Value);
  errno_t __attribute__((__cdecl__)) _get_errno(int *_Value);


  __attribute__ ((__dllimport__)) extern unsigned long __attribute__((__cdecl__)) __threadid(void);

  __attribute__ ((__dllimport__)) extern uintptr_t __attribute__((__cdecl__)) __threadhandle(void);


}
# 424 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 3 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/6.2.0/include/stddef.h" 2 3 4
# 51 "C:/Xilinx/Vitis_HLS/2023.2/tps/win64/msys64/mingw64/include/c++/6.2.0/cstddef" 2 3


namespace std
{

  using ::max_align_t;
}
# 5 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer/Multiplexer_N_to_1/multiplexer.hpp" 2


# 6 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer/Multiplexer_N_to_1/multiplexer.hpp"
template<typename T, size_t N>
T multiplexer(const T inputs[N], size_t sel) {
    if (sel < N) {
        return inputs[sel];
    } else {

        return inputs[0];
    }
}


extern template int multiplexer<int, 5>(const int inputs[5], size_t sel);
# 2 "C:/Users/kwokt/Desktop/Clone_HLS-Models/HLS-Models/Simple-Designs/Combinational/Multiplexer/Multiplexer_N_to_1/multiplexer.cpp" 2


template int multiplexer<int, 5>(const int inputs[5], size_t sel);
