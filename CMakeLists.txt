cmake_minimum_required(VERSION 3.20)

project(IRPM VERSION 1.0.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(config/cmake/cmake_path.cmake)

add_subdirectory(libraries)
add_subdirectory(apps)
