#ifndef fast_sort_hpp__

#include "arrays.hpp"

#define fast_sort_hpp__

void comb_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp);

void merge_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp);

bool quick_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp);

void heap_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp);

#endif