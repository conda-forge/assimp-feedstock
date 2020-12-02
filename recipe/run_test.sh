#!/bin/bash -e

# Test linking against the assimp library
cd test

# Compile example that links assimp
cmake -DCMAKE_BUILD_TYPE=Release .

cmake --build . --config Release

# Run example
./assimp_main