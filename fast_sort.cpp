#include "arrays.hpp"


void comb_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp)
{
    int d=len/2;
    bool is_ready=true;
    while (d>1)
    {
        for (int i=0;i<len-d;i++)
            if (!comp(array+i,array+i+d))
            {
                swap((array+i),(array+i+d));
            }
        d>>=1;
    }
    while (true)
    {
        is_ready=true;
        for (int i=0;i<len-d;i++)
            if (!comp(array+i,array+i+d))
            {
                swap((array+i),(array+i+d));
                is_ready=false;
            }
        if (is_ready) break;
    }
    
}

#include <iostream>
void merge_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp)
{
    int* array_dop = new int[len];
    int d=1,i,j,st,k;
    while (d<len)
    {
        for (st=0;st<len;st+=2*d)
        {
            i=st;
            j=st+d;
            for (k=0;k<2*d;k++)
            {
                if (i==st+d || j==st+2*d || j>=len || i>=len) break;
                if (comp(array+i,array+j))
                    *(array_dop+st+k)=*(array+i++);
                else
                    *(array_dop+st+k)=*(array+j++);
            }
            for (; i < len && i<st+d; i++)
            {
                *(array_dop+st+k)=*(array+i);
                k++;
            }
            for (; j < len && j<st+d*2; j++)
            {
                *(array_dop+st+k)=*(array+j);
                k++;
            }
        }
        d<<=1;
        swap_p(&array,&array_dop); 
    }
    delete [] array_dop;
}

void quick_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp) //not working
{
    int* op =array+len/2;
    int l=0,r=len-1;
    while (r-l>0)
    {
        if (!comp(array+l,op) && !comp(op, array+r))
        {
            swap(array+l,array+r);
        }
        if (comp(array+l,op)) l++;
        if (comp(op, array+r)) r--;
        if (len/2 == l) l++;
        if (len/2 == r) r--;
    }
    if (l>r){l--;r++;}
    if (l==r) swap(array+l,array+l/2);
    else if (len/2 < l) swap(array+l,array+l/2);
    else if (len/2 > r) swap(array+r,array+l/2);
    quick_sort(array, len/2, comp);
    quick_sort(array+len/2, len-len/2, comp);
}

void heap_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp)
{
    for (int i=len;i>1;i--)
    {
        heap(array,i,comp);
        swap(array,array+i-1);
    }
}