#include<iostream>
#include <fstream>

#define uint unsigned int

union some_wierd_thing
{
    unsigned int a;
    float f;
};

void print_bit(uint a)
{
    for (unsigned i=(1ul<<31);i>0; i>>=1)
    {
        std::cout<<(int)((i&a)!=0);
        if (i==(1ul<<31)) std::cout<<' ';
        if (i==(1ul<<23)) std::cout<<' ';
    }
}

int main()
{
    std::cout << std::fixed;
    std::cout.precision(30);

    std::fstream file;
    file.open("monoton.csv",std::ios::out);
    file<<std::fixed;
    file.precision(30);

    //file.open("data.csv",std::ios::out);
    float f=2.0, fp;
    some_wierd_thing aw;
    //aw.f=f;
    for (unsigned i=1;; i++)
    {
        fp=f;
        if (f!=fp)
        {
            std::cout<<"some not ok "<<i<<'\n';
            break;
        }
        file<<f<<'\n';
        f*=(4*i*i)/((2*i-1.0)*(2*i+1.0));
        if (i%1000==0)
        {
            for (int j=43; j>0; j--)
            {
                std::cout<<' ';
            }
            aw.f=fp;
            print_bit(aw.a);//*(uint*)((void*)(&fp))
            std::cout<<"   "<<i;
            std::cout<<'\r' << fp;
            std::cout<<'\n';
        }
        if (i%1000==0)
        {
            for (int j=43; j>0; j--)
            {
                std::cout<<' ';
            }
            aw.f=f;
            print_bit(aw.a);//*(uint*)((void*)(&f))
            std::cout<<"   "<<i;
            std::cout<<'\r' << f;
            std::cout<<'\n';
            print_bit(*(uint*)((void*)(&f)) ^ *(uint*)((void*)(&fp)));
            std::cout<<'\n';
        }
        if (f==fp)//(*(uint*)((void*)(&f))==*(uint*)((void*)(&fp)))
        {
            std::cout<<"some ok "<<i<<'\n';
            break;
        }
    }
    std::cout<<f<<'\n';
    return 0;
}