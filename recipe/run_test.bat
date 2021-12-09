setlocal EnableDelayedExpansion

cd test

:: Compile example that links assimp
cmake -GNinja -DCMAKE_BUILD_TYPE=Release .
if errorlevel 1 exit 1

cmake --build . --config Release
if errorlevel 1 exit 1

:: Run example
.\assimp_main.exe
if errorlevel 1 exit 1
