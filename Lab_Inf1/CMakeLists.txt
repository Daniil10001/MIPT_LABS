cmake_minimum_required(VERSION 2.8)
project( Lab_Inf1 )
set(CMAKE_CXX_STANDARD 14)


add_compile_options(-fopenmp )
add_compile_options(-Wall -Werror)

add_executable( main main.cpp n2sort.cpp ../arrays.cpp ../fast_sort.cpp)
