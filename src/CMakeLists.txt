cmake_minimum_required(VERSION 3.1)
project(sample CXX)

if(EXISTS ${CMAKE_BINARY_DIR}/conanbuildinfo_multi.cmake)
  include(${CMAKE_BINARY_DIR}/conanbuildinfo_multi.cmake)
else()
  include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
endif()

conan_basic_setup()

add_executable(main.o main.cpp md5.cpp)

foreach(_LIB ${CONAN_LIBS_DEBUG})
  set(CMAKE_C_COMPILER afl-gcc)
  set(CMAKE_CXX_COMPILER afl-g++)
  target_link_libraries(main.o debug ${_LIB})
endforeach()

foreach(_LIB ${CONAN_LIBS_RELEASE})
  set(CMAKE_C_COMPILER gcc)
  set(CMAKE_CXX_COMPILER g++)
  target_link_libraries(main.o optimized ${_LIB})
endforeach()

add_library(sample sample.cpp)
add_library(md5 md5.cpp)
