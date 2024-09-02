#include "arrays.hpp"


void put_sort(int* massive, int len, bool (*comp)(int*,int*)=&default_comp)
{
    int d=len/2;
    bool is_ready=true;
    while (d>1)
    {
        for (int i=0;i<len-d;i++)
            if (!comp(massive+i,massive+i+d))
            {
                swap((massive+i),(massive+i+d));
            }
        d>>=1;
    }
    while (true)
    {
        is_ready=true;
        for (int i=0;i<len-d;i++)
            if (!comp(massive+i,massive+i+d))
            {
                swap((massive+i),(massive+i+d));
                is_ready=false;
            }
        if (is_ready) break;
    }
    
}


void merge_sort(int* massive, int len, bool (*comp)(int*,int*)=&default_comp)
{
    if (len>2)
    {
        merge_sort(massive,len/2,comp);
        merge_sort(massive+len/2,len-len/2,comp);
    }
    if (len<2)
        return;
    int i=0, j=len/2;
    while (i!=j)
    {
        if (comp(massive+i,massive+j)) i++;
        else
        {
            swap(massive+i,massive+j);
            
        }
    }
    
}