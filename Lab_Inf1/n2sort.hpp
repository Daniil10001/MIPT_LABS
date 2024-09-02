#ifndef n2sort_hpp__
#define n2sort_hpp__
#include "../arrays.hpp"

void buble_sort(int* massive, int len, bool (*comp)(int*,int*)=&default_comp);

void choose_sort(int* massive, int len, bool (*comp)(int*,int*)=&default_comp);

void shaker_sort(int* massive, int len, bool (*comp)(int*,int*)=&default_comp);

void put_sort(int* massive, int len, bool (*comp)(int*,int*)=&default_comp);

#endif