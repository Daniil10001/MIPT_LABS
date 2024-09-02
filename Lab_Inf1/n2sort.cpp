#include "../arrays.hpp"

void buble_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp)
{
    bool is_ready=true;
    for (int k=1;k<len;k++)
    {
        for (int i=0;i<len-k;i++)
            if (!comp(array+i,array+i+1))
            {
                swap((array+i),(array+i+1)); 
                is_ready=false;
            }
        if (is_ready) break;
    }
}

void choose_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp)
{
    for (int i=0;i<len;i++)
        for (int j=i+1;j<len;j++)
            if (!comp(array+i,array+j))
                swap(array+i,array+j);
}

void shaker_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp)
{
    bool is_ready=true;
    int l=0,r=len-1,i=0;
    while (r-l>0)
    {
        for (;i<r;i++)
            if (!comp(array+i,array+i+1))
                {
                    swap(array+i,array+i+1);
                    is_ready=false;
                }
        r--;
        for (;i>l;i--)
            if (!comp(array+i-1,array+i))
                {
                    swap(array+i-1,array+i);
                    is_ready=false;
                }
        l++;
        if (is_ready) break;
    }
}


#include<iostream>
void put_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp)
{
    int *p=new int;
    for (int i=1;i<len;i++)
    {
        *p=*(array+i);
        for (int j=0;j<i;j++)
            if (comp(p,array+j))
            {
                shift_data(array+j,i-j);
                swap(p,array+j);
                break;
            }
    }
    delete p;
}