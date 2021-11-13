cmake_minimum_required(VERSION 3.12)

project(assimp_main)

find_package(assimp REQUIRED)

add_executable(assimp_main assimp_main.cpp)

target_link_libraries(assimp_main PRIVATE assimp::assimp)
