cmake_minimum_required(VERSION 3.10)
project(CalculatorProject CXX)

set(CMAKE_CXX_STANDARD 11)

add_library(calculator STATIC src/calculator.cpp)

target_include_directories(calculator PUBLIC ${PROJECT_SOURCE_DIR}/include)

add_executable(calculator_exec src/main.cpp)

target_link_libraries(calculator_exec calculator)

set(CMAKE_GENERATOR "Ninja")