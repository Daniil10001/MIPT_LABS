#include <fstream>
#include <iostream>
#include <chrono>
#include <random>
#include <string>
#include <climits>
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
    int n_sorts=8;
    void (* sort [])(int*, int, bool(int*,int*))={&heap_sort,&merge_sort, &quick_sort, &comb_sort,
                                                     &buble_sort,&choose_sort,&shaker_sort,&put_sort};
    int limits[]={2000000,2000000,2000000,100,100,100,100,100};
    int k_tests=10;
    std::string names[]={"heap_sort","merge_sort", "quick_sort", "comb_sort",
                            "buble_sort","choose_sort","shaker_sort","put_sort"};
    int array[2000000];
    for (int srt=0;srt<n_sorts;srt++){
        for (int i=0;i<limits[srt];i++) array[i]=rand_uns(INT16_MIN,INT16_MAX);
        sort[srt](array,limits[srt],default_comp);
        if (test_result(array,limits[srt])) std::cout<<"ok"<<std::endl;
        else{
            for (int i=0;i<limits[srt];i++) std::cout<<array[i]<<' ';
            std::cout<<std::endl<<names[srt]<<std::endl;
        }
    }
    return 0;
}
