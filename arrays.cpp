#define ull unsigned long long int

void swap_p(int** p1,int** p2)
{
    if (*p1==*p2) return;
    *p1=(int*)((ull)*p1^(ull)*p2);
    *p2=(int*)((ull)*p1^(ull)*p2);
    *p1=(int*)((ull)*p1^(ull)*p2);
}

void swap(int* p1,int* p2)
{
    if (*p1==*p2) return;
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
    return *p1<=*p2;
}

bool(*comp_function)(int*,int*)=&default_comp;

bool compare(int* p1,int* p2)
{
    return comp_function(p1,p2)||( *p1 == *p2 );
}


void update_heap(int* array, int len, bool (*comp)(int*,int*)=&default_comp, int head=0,bool reverse=false)
{
    if (head>len) return;
    bool a=false,b=false;
    if (head*2+1<len)
        if (comp(array+head,array+head*2+1) ^ reverse)
        {
            a=true;
        }
    if (head*2+2<len)
        if (comp(array+head,array+head*2+2) ^ reverse)
        {
            b=true;
        }
    if (a==b && a==true)
    {
            if (comp(array+head*2+2,array+head*2+1) ^ reverse)
            {
                swap(array+head,array+head*2+1);
                update_heap(array,len,comp,head*2+1);
            }
            else
            {
                swap(array+head,array+head*2+2);
                update_heap(array,len,comp,head*2+2);
            }
            return;
    }
    if (a)
    {
        swap(array+head,array+head*2+1);
        update_heap(array,len,comp,head*2+1);
    }
    if (b)
    {
        swap(array+head,array+head*2+2);
        update_heap(array,len,comp,head*2+2);
    }
    
}

void heap(int* array, int len, bool (*comp)(int*,int*)=&default_comp, int head=0,bool reverse=false)
{
    for (int i = len / 2 - 1; i >= 0; i--)
        update_heap(array, len, comp, i);
}