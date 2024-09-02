#define ull unsigned long long int

void swap_p(int* p1,int* p2)
{
    int* p3=p1;
    p1=p2;
    p2=p3;
}

void swap(int* p1,int* p2)
{
    *p1=*p2^*p1;
    *p2=*p2^*p1;
    *p1=*p2^*p1;
}
void shift_data(int* start, int len, int k=1)
{
    for (int i=len-1;i>-1;i--)
    {
        *(start+i+k)=*(start+i);
    }
}

bool default_comp(int* p1, int* p2)
{
    return *p1<*p2;
}

void heap(int* array, int len, bool (*comp)(int*,int*)=&default_comp, int head=0,bool reverse=true)
{
    if (head>=len) return;
    heap(array,len,comp,head*2+1);
    heap(array,len,comp,head*2+2);
    if (head*2+1<len)
        if (!comp(array+head,array+head*2+1) ^ reverse)
            swap(array+head,array+head*2+1);
    if (head*2+2<len)
        if (!comp(array+head,array+head*2+2) ^ reverse)
            swap(array+head,array+head*2+2);
}