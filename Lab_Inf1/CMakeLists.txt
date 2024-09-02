cmake_minimum_required(VERSION 2.8)
project( Lab_Inf1 )
set(CMAKE_CXX_STANDARD 20)


add_compile_options(-fopenmp )
add_compile_options(-Wl,--as-needed -lfoo)

add_executable( main main.cpp n2sort.cpp ../arrays.cpp)
