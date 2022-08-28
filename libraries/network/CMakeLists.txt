cmake_minimum_required(VERSION 3.20)

project(network VERSION 1.0.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Boost settings
set(Boost_NO_WARN_NEW_VERSIONS 1)

set(Boost_USE_STATIC_LIBS ON)
set(Boost_MULTITHREADED ON)
set(BOOST_ROOT "${IRPM_ROOT_BOOST}")
set(BOOST_INCLUDEDIR "${IRPM_BOOST_INCLUDEDIR}")
set(BOOST_LIBRARYDIR "${IRPM_BOOST_LIBRARYDIR}")
find_package(Boost 1.66.0 REQUIRED 
    COMPONENTS system thread regex date_time serialization)

if(Boost_FOUND)
    message(">>> ${Boost_VERSION}")
    message(">>> ${Boost_INCLUDE_DIRS}")
    message(">>> ${Boost_LIBRARY_DIRS}")
    message(">>> ${Boost_LIBRARIES}")
endif()

add_library(${PROJECT_NAME} STATIC)

target_sources(${PROJECT_NAME} 
    PRIVATE 
        tcp_connection.cpp
        include/network/tcp_connection.hpp 
)

target_include_directories(${PROJECT_NAME} 
    PUBLIC 
        include
        ${Boost_INCLUDE_DIRS}
)

target_link_libraries(${PROJECT_NAME}  
    PRIVATE 
        ${Boost_LIBRARIES}
)
