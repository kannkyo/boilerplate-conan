cmake_minimum_required(VERSION 3.1)
project(sample CXX)

if(EXISTS ${CMAKE_BINARY_DIR}/conanbuildinfo_multi.cmake)
  include(${CMAKE_BINARY_DIR}/conanbuildinfo_multi.cmake)
else()
  include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
endif()

foreach(_LIB ${CONAN_LIBS_DEBUG})
  set(CMAKE_C_COMPILER afl-gcc)
  set(CMAKE_CXX_COMPILER afl-g++)
endforeach()

conan_basic_setup()

add_library(sample sample.cpp)
add_library(md5 md5.cpp)
