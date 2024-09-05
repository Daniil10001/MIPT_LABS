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

std::chrono::duration<double> timer(void (*my_sort)(int*, int, bool(int*,int*)), int* array, int len, bool (*comp)(int*,int*)=&default_comp)
{
    auto start = std::chrono::high_resolution_clock::now();
    my_sort(array, len,comp);
    auto end = std::chrono::high_resolution_clock::now();
    if (test_result(array, len))
        return (end-start);
    else
        return std::chrono::duration<double>::zero();
}

int main()
{
    int n_sorts=8;
    void (* sort [])(int*, int, bool(int*,int*))={&heap_sort,&merge_sort, &quick_sort, &comb_sort,
                                                     &buble_sort,&choose_sort,&shaker_sort,&put_sort};
    int limits[]={200000,200000,200000,50000,20000,20000,20000,20000};
    int k_tests=10;
    int points=1000;
    std::fstream file;
    file.open("data_of_sort.csv");
    std::string names[]={"heap_sort","merge_sort", "quick_sort", "comb_sort",
                            "buble_sort","choose_sort","shaker_sort","put_sort"};
    int array[2000000],len;
    for (int srt=0;srt<n_sorts;srt++)
    {
        for (int p=1;p<=points;p++){
            for (int k=0;k<k_tests;k++)
            {
                len=(limits[srt]*p)/points;
                for (int i=0;i<len;i++) array[i]=rand_uns(INT16_MIN,INT16_MAX);
                //sort[srt](array,len,&default_comp);
                file<<names[srt]<<','<<len<<','<<timer(sort[srt],array,len).count()<<'\n';
                //if (test_result(array,len)) 
                //else continue;
            }
            std::flush(std::cout);
            std::cout<<'\r'<<"                                     "<<'\r'<<names[srt]<<" "<<p/(points+.0)*100<<'%';
        }
        std::cout<<std::endl;
    }
    return 0;
}
