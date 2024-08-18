mkdir build
cd build

cmake .. ^
  -G "NMake Makefiles" ^
  -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
  -D CMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
  -DASSIMP_BUILD_ASSIMP_TOOLS=OFF ^
  -DASSIMP_BUILD_TESTS=OFF ^
  -DLIBRARY_SUFFIX:STRING="" ^
  -DCMAKE_BUILD_TYPE=Release ^
  -DASSIMP_WARNINGS_AS_ERRORS:BOOL=OFF
if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
