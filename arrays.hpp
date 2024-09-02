#ifndef arrays_hpp__
#define arrays_hpp__

void swap(int* p1,int* p2);

void swap_p(int* p1,int* p2);

void shift_data(int* start, int len, int k=1);

bool default_comp(int* p1, int* p2);

void heap(int* array, int len, bool (*comp)(int*,int*)=&default_comp, int head=0,bool reverse=true);

#endif