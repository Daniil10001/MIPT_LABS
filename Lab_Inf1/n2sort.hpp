#ifndef n2sort_hpp__

#include "../arrays.hpp"

#define n2sort_hpp__

void buble_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp);

void choose_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp);

void shaker_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp);

void put_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp);

#endif