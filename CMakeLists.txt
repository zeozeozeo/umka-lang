cmake_minimum_required(VERSION 3.12)
project(umc LANGUAGES C)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# umc
file(GLOB_RECURSE SOURCES "src/*.c")
add_executable(${PROJECT_NAME} ${SOURCES})
target_compile_definitions(${PROJECT_NAME} PRIVATE UMKA_STATIC)
