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
    file.open("some_bad_withsml.csv",std::ios::out);
    file<<std::fixed;
    file.precision(30);

    float f=0.0, fp, dx=0.00000001, fi=1.0;
    some_wierd_thing aw;
    //aw.f=f;
    for (unsigned i=0;i<10000000; i++)
    {
        fp=f;
        if (f!=fp)
        {
            std::cout<<"some not ok "<<i<<'\n';
            break;
        }
        if (i%10000==0 || i<100000)
            file<<f<<'\n';
        f+=2*dx/((dx*i*dx*i)+1);//2*dx/((dx*dx)*(i*i)+1);
        if (i%10000==0)
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
        if (i%1000000==0)
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
            std::cout<<fi<<'\n';
        }
        /*if (f==fp)//(*(uint*)((void*)(&f))==*(uint*)((void*)(&fp)))
        {
            std::cout<<"some ok "<<i<<'\n';
            break;
        }*/
    }
    std::cout<<f<<'\n';
    return 0;
}