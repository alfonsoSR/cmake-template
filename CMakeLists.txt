cmake_minimum_required(VERSION 3.26.4)

# Metadata
# project(<project-name>)
set (CMAKE_CXX_STANDARD 17)

# Set default installation of clang++ as compiler
set (CMAKE_CXX_COMPILER "/usr/bin/clang++")

# Set flags for debug build
set (
    CMAKE_CXX_FLAGS_DEBUG
    "-g -O0 -Wall -fcolor-diagnostics -fansi-escape-codes"
)

# Set default build type to debug
if (NOT CMAKE_BUILD_TYPE)
    set (CMAKE_BUILD_TYPE Debug)
endif()
message(STATUS "Build configuration: ${CMAKE_BUILD_TYPE}")

# Set ./bin as default directory for binaries
set (CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/bin)
set (EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})

# Set ./lib as default directory for libraries
set (CMAKE_LIBRARY_DIR ${CMAKE_SOURCE_DIR}/lib)
set (LIBRARY_OUTPUT_PATH ${CMAKE_LIBRARY_DIR})

# Set ./include as default directory for header files
set (PROJECT_INCLUDE_DIR ${CMAKE_SOURCE_DIR}/include)
include_directories(${PROJECT_INCLUDE_DIR})

# Set ./src as default directory for source files
set (PROJECT_SOURCE_DIR ${CMAKE_SOURCE_DIR}/src)

# Add executables and libraries
# add_executable()
# add_library()
