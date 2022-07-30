set(CMAKE_CROSSCOMPILING TRUE)
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR powerpc)

set(CMAKE_C_COMPILER "C:/Program Files/KuriboClang/bin/clang.exe")
set(CMAKE_CXX_COMPILER "C:/Program Files/KuriboClang/bin/clang++.exe")

set(triple powerpc-gecko-ibm-kuribo-eabi)
set(CMAKE_C_COMPILER_TARGET ${triple})
set(CMAKE_CXX_COMPILER_TARGET ${triple})

if(WIN32)
	set(CMAKE_LIBRARY_PATH "C:/Windows/System32")
endif(WIN32)

set(CMAKE_SYSROOT "C:/msys64/mingw64")

set(CMAKE_EXE_LINKER_FLAGS_INIT "-fuse-ld=lld")
set(CMAKE_MODULE_LINKER_FLAGS_INIT "-fuse-ld=lld")
set(CMAKE_SHARED_LINKER_FLAGS_INIT "-fuse-ld=lld")

set(CMAKE_CXX_STANDARD_LIBRARIES "")

set(SMS_COMPILE_FLAGS
    $<$<COMPILE_LANGUAGE:CXX>:-std=gnu++17>
    --target=powerpc-gecko-ibm-kuribo-eabi
    -fdeclspec -fno-exceptions -fno-rtti
    -fno-unwind-tables -ffast-math -flto
    -nodefaultlibs -nobuiltininc -nostdinc++ -nostdlib -fno-use-init-array
    -fno-use-cxa-atexit -fno-c++-static-destructors
    -fno-function-sections -fno-data-sections -Wno-main
    -fpermissive -Werror
    -Wno-incompatible-library-redeclaration
)

set(SMS_LINK_FLAGS
    $<$<COMPILE_LANGUAGE:CXX>:-std=gnu++17>
    --target=powerpc-gecko-ibm-kuribo-eabi
    -fdeclspec -fno-exceptions -fno-rtti
    -fno-unwind-tables -ffast-math -flto
    -nodefaultlibs -nostdlib -fno-use-init-array
    -fno-use-cxa-atexit -fno-c++-static-destructors
    -fno-function-sections -fno-data-sections
    -fuse-ld=lld -fpermissive -Werror
)

set(LIBSTDCPP_VERSION "10.2.0")
set(DKP_PATH "C:/devkitPro/devkitPPC/powerpc-eabi/include")

include_directories(SYSTEM
	"C:/devkitPro/devkitPPC/powerpc-eabi/include/c++/10.2.0"
	"C:/devkitPro/devkitPPC/powerpc-eabi/include"
	"C:/devkitPro/devkitPPC/powerpc-eabi/include/c++/10.2.0/powerpc-eabi"
)

set(CMAKE_C_COMPILER_FORCED TRUE)
set(CMAKE_CXX_COMPILER_FORCED TRUE)

set(CMAKE_OBJCOPY C:/devkitPro/devkitPPC/bin/powerpc-eabi-objcopy.exe CACHE PATH "" FORCE)