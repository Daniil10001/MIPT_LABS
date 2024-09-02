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
    int* massive_dop = new int[len];
    int d=1,i,j,st,k;
    while (d<len)
    {
        for (st=0;st<len;st+=2*d)
        {
            i=st;
            j=st+d;
            for (k=0;k<2*d;k++)
                if (comp(massive+i,massive+j))
                    *(massive_dop+k)=*(massive+i++);
                else
                    *(massive_dop+k)=*(massive+j++);
        }
        d<<=1;
        swap(massive,massive_dop);
    }
}

