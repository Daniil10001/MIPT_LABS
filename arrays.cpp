#define ull unsigned long long int

void swap(int* p1,int* p2)
{
    p1=(int*)((ull)p2^(ull)p1);
    p2=(int*)((ull)p2^(ull)p1);
    p1=(int*)((ull)p2^(ull)p1);
}

void shift_data(int* start, int len, int k=1)
{
    for (int i=len-1;i>0;i--)
    {
        *(start+i+k)=*(start+i);
    }
}

bool default_comp(int* p1, int* p2)
{
    return *p1<*p2;
}