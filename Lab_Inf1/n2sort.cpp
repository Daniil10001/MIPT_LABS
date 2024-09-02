#include "../arrays.hpp"

void buble_sort(int* massive, int len, bool (*comp)(int*,int*)=&default_comp)
{
    bool is_ready=true;
    for (int k=1;k<len;k++)
    {
        for (int i=0;i<len-k;i++)
            if (!comp(massive+i,massive+i+1))
            {
                swap((massive+i),(massive+i+1)); 
                is_ready=false;
            }
        if (is_ready) break;
    }
}

void choose_sort(int* massive, int len, bool (*comp)(int*,int*)=&default_comp)
{
    for (int i=len-1;i>0;i--)
        for (int j=0;j<i;j++)
            if (!comp(massive+i,massive+j))
                swap(massive+i,massive+j);
}

void shaker_sort(int* massive, int len, bool (*comp)(int*,int*)=&default_comp)
{
    bool is_ready=true;
    int l=0,r=len-1,i=0;
    while (r-l>0)
    {
        for (;i<r;i++)
            if (!comp(massive+i,massive+i+1))
                {
                    swap(massive+i,massive+i+1);
                    is_ready=false;
                }
        r--;
        for (;i>l;i--)
            if (!comp(massive+i-1,massive+i))
                {
                    swap(massive+i-1,massive+i);
                    is_ready=false;
                }
        l++;
        if (is_ready) break;
    }
}


void put_sort(int* massive, int len, bool (*comp)(int*,int*)=&default_comp)
{
    int *p=new int;
    for (int i=1;i<len;i++)
    {
        *p=*(massive+i);
        for (int j=0;j<i;j++)
            if (comp(p,massive+j))
            {
                shift_data(massive+j,i-j);
                swap(p,massive+j);
            }
    }
    delete p;
}