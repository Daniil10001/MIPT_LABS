#include <fstream>
#include <chrono>
#include "n2sort.hpp"
//using namespace std;

int main()
{

    return 0;
}


bool test_result(int* massive, int len)
{
    bool rs=true;
    for (int i=1; i<len; i++)
    {
        rs=massive[i-1]<=massive[i];
        if (!rs) break;
    }
    return rs;
}

std::chrono::duration<double> timer(int* (*my_sort)(int*,int), int* massive, int len)
{
    int* result;
    auto start = std::chrono::high_resolution_clock::now();
    my_sort(massive, len);
    auto end = std::chrono::high_resolution_clock::now();
    if (test_result(massive, len))
        return start-end;
    else
        return std::chrono::duration<double>::zero();
}