#include <fstream>
#include <iostream>
#include <chrono>
#include <random>
#include "n2sort.hpp"
#include "../fast_sort.hpp"



int rand_uns(int min, int max) {
    unsigned seed = std::chrono::steady_clock::now().time_since_epoch().count();
    static std::default_random_engine e(seed);
    std::uniform_int_distribution<int> d(min, max);
    return d(e);
}

bool test_result(int* array, int len)
{
    bool rs=true;
    for (int i=1; i<len; i++)
    {
        rs=array[i-1]<=array[i];
        if (!rs) break;
    }
    return rs;
}

std::chrono::duration<double> timer(int* (*my_sort)(int*,int), int* array, int len)
{
    auto start = std::chrono::high_resolution_clock::now();
    my_sort(array, len);
    auto end = std::chrono::high_resolution_clock::now();
    if (test_result(array, len))
        return start-end;
    else
        return std::chrono::duration<double>::zero();
}

int main()
{
    int array[]={1,2,3,9,5,9,8,7,6};
    for (int i=0;i<9;i++) array[i]=rand_uns(0,9);
    for (int j=0;j<9;j++) std::cout << array[j] << ' ';
        std::cout<<'\n';
    quick_sort(array,9);
    
    for (int j=0;j<9;j++) std::cout << array[j] << ' ';
        std::cout<<'\n';
    return 0;
}
