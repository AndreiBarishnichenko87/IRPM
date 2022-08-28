cmake_minimum_required(VERSION 3.20)

project(test VERSION 1.0.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(${PROJECT_NAME} main.cpp)

target_include_directories(${PROJECT_NAME} 
    PUBLIC 
        network
)

target_link_libraries(${PROJECT_NAME} 
    PUBLIC 
        network
)
