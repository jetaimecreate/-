cmake_minimum_required(VERSION 3.5)
project(LaneDetection)

set(CMAKE_CXX_STANDARD 11)

find_package(OpenCV REQUIRED)

include_directories(${OpenCV_INCLUDE_DIRS} include)

add_executable(LaneDetection src/main.cpp src/lane.cpp)

target_link_libraries(LaneDetection ${OpenCV_LIBS})