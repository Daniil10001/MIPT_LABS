#include "arrays.hpp"
#include <cstring>


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
    d=1;
    while (true)
    {
        is_ready=true;
        for (int i=0;i<len-1;i++)
            if (!comp(array+i,array+i+1))
            {
                swap((array+i),(array+i+1));
                is_ready=false;
            }
        if (is_ready) break;
    }
}


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
        std::memcpy(array,array_dop,len*sizeof(int));//swap_p(&array,&array_dop); 
    }
    delete [] array_dop;
}

void quick_sort(int* array_s,int start, int len, bool (*comp)(int*,int*), int* array_dop_s, int leni) 
{
    if (len<2) return;
    int* array=array_s+start;
    int* array_dop=array_dop_s+start;
    if (len==2)
    {
        if(!comp(array,array+1)) swap(array,array+1);
        return;
    }
    int l=0,r=len-1;
    int* op=array+len/2;
    for (int k=0;k<len;k++)
    {
        if (k==len/2) continue;
        if (comp(array+k,op))
        {
            *(array_dop+l)=*(array+k);
            l++;
        }
        else
        {
            *(array_dop+r)=*(array+k);
            r--;
        }
    }
    *(array_dop+l)=*op;
    std::memcpy(array,array_dop,((unsigned long long)len)*sizeof(int));

    quick_sort(array_s,start, l, comp, array_dop_s, leni);
    quick_sort(array_s,start+l+1, len-(l+1), comp, array_dop_s, leni);
}

void quick_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp)
{
    int* array_dop=new int[len];;
    quick_sort(array,0,len,comp,array_dop,len);
    delete [] array_dop;
}


void heap_sort(int* array, int len, bool (*comp)(int*,int*)=&default_comp)
{
    heap(array,len,comp);
    
    for (int i=len;i>1;i--)
    {
        update_heap(array,i,comp);
        swap(array,array+i-1);
    }
}