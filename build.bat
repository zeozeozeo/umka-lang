@echo off
if not exist "build/" (
    mkdir build
    cd build
    cmake .. -GNinja
    cd ..
)

cmake --build build
if %errorlevel% neq 0 (
    exit /b %errorlevel%
)
