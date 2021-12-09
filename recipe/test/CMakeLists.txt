cmake_minimum_required(VERSION 3.12)

project(assimp_main)

find_package(assimp REQUIRED)

add_executable(assimp_main assimp_main.cpp)

target_link_libraries(assimp_main PRIVATE assimp::assimp)

# Detect regression in assimp::assimp link of librt
get_property(assimp_INTERFACE_LINK_LIBRARIES TARGET assimp::assimp PROPERTY INTERFACE_LINK_LIBRARIES)

string(REGEX MATCH "/sysroot/usr/lib/librt" librt_problem_detected ${assimp_INTERFACE_LINK_LIBRARIES})

if(NOT ${librt_problem_detected} STREQUAL "")
  message(FATAL_ERROR "librt linking problem detected")
endif()

