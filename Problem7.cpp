/*
 * Problem1.cpp
 *
 * Solves problem #1 on projecteuler.net
 *
 * "By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
 *  What is the 10 001st prime number?"
 * 
 * Written By Alan Bishop 
 * Last Updated 4/7/2014
 */


#include <stdio.h>

long long int Problem7(void);
bool isPrime(long long int n);

//Small main to allow problems to all be combined into one program
int main(int argc, char * argv[])
{
    Problem7();
    return 0;
}

long long int Problem7(void)
{
    //I should probably use a sieve for this...
    //...but let's brute force first!
        //Also in hindsight maybe I shouldn't do these tired...
        //This will work but the logic needs cleaned up later
    long long int i = 2;
    int n = 0;
    bool prime;
    while(true)
    {
        if(isPrime(i)) ++n;
        if(n == 10001) break;
        ++i;
    }

    printf("The 10,001st prime number is %lld\n",i);
    return i;
}

bool isPrime(long long int n)
{
    long long int i;
    bool prime = true;
    for(i = 2; i < n; ++i)
    {
        if(n%i == 0)
        {
            prime = false;
            break;
        }
    }
    return prime;
}



