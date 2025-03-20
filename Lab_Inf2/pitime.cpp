#include<iostream>
#include <fstream>
//#include <cmath>
#include <chrono>

# define M_PI           3.14159265358979323846
#define uint unsigned int
using std::abs;

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
    //some_wierd_thing aw;
    std::cout << std::fixed;
    std::cout.precision(30);

    std::fstream file;
    file.open("f.csv",std::ios::out);
    file<<std::fixed;
    file.precision(30);

    //file.open("data.csv",std::ios::out);
    float f=0.0, fp;
    //aw.f=f;
    double epsilon=1;
    for (int k=0;k<20;k++)
    {
        epsilon/=10.;
        for (int j=0;j<10;j++)
        {
            f=0.0;
            auto start = std::chrono::high_resolution_clock::now();                                              //58845657627
            for (unsigned long long i=0;(abs(f-M_PI)>epsilon) && (std::chrono::high_resolution_clock::now()-start).count()<70000000000; i++)
            {
        /*fp=f;
        if (f!=fp)
        {
            std::cout<<"some not ok "<<i<<'\n';
            break;
        }*/
        /*if (i%100000==0)
            file<<f;*/
                f+=(i%2==0?4.0:-4.0)/(2*i+1.0);
        /*if (i%100000000==0)
        {
            for (int j=43; j>0; j--)
            {
                std::cout<<' ';
            }
            //aw.f=f-M_PI;
            //print_bit(aw.a);//*(uint*)((void*)(&fp))
            std::cout<<"   "<<i;
            std::cout<<'\r' << f-M_PI;
            std::cout<<'\n';
        }
        if (f==fp)//(*(uint*)((void*)(&f))==*(uint*)((void*)(&fp)))
        {
            std::cout<<"some ok "<<i<<'\n';
            break;
        }*/
               // std::cout<<i<<' '<<f<<' '<<abs(f-M_PI)<<'\n';
            }
            auto end = std::chrono::high_resolution_clock::now();
            auto nsec = end - start;
            if (abs(f-M_PI)<=epsilon)
            {
                file<<epsilon<<','<<nsec.count()<<'\n';
            }
            else
                break;
            std::cout<<f<<' '<<epsilon<<','<<nsec.count()<<'\n';
        }
        file.flush();
        if (abs(f-M_PI)>epsilon) break;
    }
    //std::cout<<f-M_PI<<'\n';
    return 0;
}