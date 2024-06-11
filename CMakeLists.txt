# I’m only setting this as the minimum CMake version because this is the
# version that I happen to have installed at the moment. I don’t know what the
# actual minimum version for this project is.
cmake_minimum_required(VERSION 3.28.3)

# C++17 is required for “#include <filesystem>” [1].
#
# [1]: <https://isocpp.org/std/standing-documents/sd-6-sg10-feature-test-recommendations#__cpp_lib_filesystem>
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

project(StdFilesystemPathExample)
add_executable(StdFilesystemPathExample main.cpp)
