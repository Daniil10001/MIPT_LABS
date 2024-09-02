#include <fstream>
#include <iostream>
#include <chrono>
#include "n2sort.hpp"
#include "../fast_sort.hpp"

int main()
{
    int array[]={1,2,3,4,5,9,8,7,6,0};
    merge_sort(array,10);
    
    for (int j=0;j<10;j++)
        std::cout << array[j] << ' ';
        std::cout<<'\n';
    return 0;
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
    int* result;
    auto start = std::chrono::high_resolution_clock::now();
    my_sort(array, len);
    auto end = std::chrono::high_resolution_clock::now();
    if (test_result(array, len))
        return start-end;
    else
        return std::chrono::duration<double>::zero();
}