cmake_minimum_required (VERSION 2.8)
project("tbb")

add_definitions(-DDO_ITT_NOTIFY)
include_directories(include src src/rml/include)
set(CMAKE_VERBOSE_MAKEFILE ON)

file(GLOB tbb_src "src/tbb/*.cpp")
list(APPEND tbb_src src/rml/client/rml_tbb.cpp)

set(tbbmalloc_src
  src/tbbmalloc/backend.cpp
  src/tbbmalloc/large_objects.cpp
  src/tbbmalloc/backref.cpp
  src/tbbmalloc/tbbmalloc.cpp
  src/tbbmalloc/frontend.cpp
  src/tbb/itt_notify.cpp)
 
set(tbbmalloc_proxy_src
  src/tbbmalloc/proxy.cpp
  src/tbbmalloc/tbb_function_replacement.cpp)

if (UNIX)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mrtm -DUSE_PTHREAD -std=c++11 -D_TBB_CPP0X")
elseif(WIN32)
  cmake_minimum_required (VERSION 3.1)
  enable_language(ASM_MASM)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /GS- /Zc:wchar_t /Zc:forScope /DUSE_WINTHREAD /D_TBB_CPP0X")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /D_CRT_SECURE_NO_DEPRECATE /D_WIN32_WINNT=0x0600 /volatile:iso")
  if (CMAKE_SIZEOF_VOID_P EQUAL 8)
    list(APPEND tbb_src src/tbb/intel64-masm/atomic_support.asm
	    src/tbb/intel64-masm/itsx.asm src/tbb/intel64-masm/intel64_misc.asm)
    set(CMAKE_ASM_MASM_FLAGS "/DEM64T=1")
  else()
    list(APPEND tbb_src src/tbb/ia32-masm/atomic_support.asm
	    src/tbb/ia32-masm/itsx.asm src/tbb/ia32-masm/lock_byte.asm)
  endif()
endif()

# TBB library
add_library(tbb STATIC ${tbb_src})
set_property(TARGET tbb APPEND PROPERTY COMPILE_DEFINITIONS "__TBB_BUILD=1")
set_target_properties(tbb PROPERTIES LINKER_LANGUAGE CXX)

# TBB malloc library
add_library(tbbmalloc STATIC ${tbbmalloc_src})
set_property(TARGET tbbmalloc APPEND PROPERTY COMPILE_DEFINITIONS "__TBBMALLOC_BUILD=1")
set_target_properties(tbbmalloc PROPERTIES LINKER_LANGUAGE CXX)

# TBB malloc proxy library
add_library(tbbmalloc_proxy STATIC ${tbbmalloc_proxy_src})
set_property(TARGET tbbmalloc_proxy APPEND PROPERTY COMPILE_DEFINITIONS "__TBBMALLOC_BUILD=1")
set_target_properties(tbbmalloc_proxy PROPERTIES LINKER_LANGUAGE CXX)
link_libraries(tbbmalloc_proxy tbbmalloc)

if(UNIX)
  set_property(TARGET tbb APPEND PROPERTY COMPILE_FLAGS "-frtti -fexceptions")
  set_property(TARGET tbbmalloc APPEND PROPERTY COMPILE_FLAGS "-fno-rtti -fno-exceptions")
  set_property(TARGET tbbmalloc_proxy APPEND PROPERTY COMPILE_FLAGS "-fno-rtti -fno-exceptions")
elseif(WIN32)
  set_property(TARGET tbb APPEND PROPERTY COMPILE_FLAGS "/EHsc /GR")
  set_property(TARGET tbbmalloc APPEND PROPERTY COMPILE_FLAGS "/EHs- /GR-")
  set_property(TARGET tbbmalloc_proxy APPEND PROPERTY COMPILE_FLAGS "/EHs- /GR-")
endif()

install(TARGETS tbb tbbmalloc tbbmalloc_proxy ARCHIVE DESTINATION lib)
install(DIRECTORY include/tbb DESTINATION include)
