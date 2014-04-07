/*
 * Problem5.cpp
 *
 * Solves problem #5 on projecteuler.net
 *
 * "2520 is the smallest number that can be divided by each of the numbers 
 *  from 1 to 10 without any remainder. What is the smallest positive number
 *  that is evenly divisible by all of the numbers from 1 to 20?"
 *
 * Written By Alan Bishop 
 * Last Updated 4/6/2014
 */


#include <stdio.h>

long int Problem5(void);

//Small main to allow problems to all be combined into one program
int main(int argc, char * argv[])
{
    Problem5();
    return 0;
}

long int Problem5(void)
{
    //Attempt #1 (BRUTE FORCE)
    long int n = 21;
    bool done = false;
    while(!done)
    {
        done = true;
        long int i;
        for(i = 20; i > 1; --i)
        {
            if(n%i != 0)
            {
                done = false;
                break;
            }
        }
        if(!done) ++n;
    }

    printf("The smallest number divisible by 1-20 is %ld\n",n);
    return n;
}
