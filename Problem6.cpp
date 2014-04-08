/*
 * Problem6.cpp
 *
 * Solves problem #6 on projecteuler.net
 * 
 *
 *
 *"The sum of the squares of the first ten natural numbers is,
 * 12 + 22 + ... + 102 = 385
 *
 * The square of the sum of the first ten natural numbers is,
 *( 1 + 2 + ... + 10)2 = 552 = 3025
 *
 * Hence the difference between the sum of the squares of the first ten natural numbers and the 
 * square of the sum is 3025 − 385 = 2640.
 *
 * Find the difference between the sum of the squares of the first one hundred natural numbers 
 * and the square of the sum."
 *
 *
 * Written By Alan Bishop 
 * Last Updated 4/6/2014
 */


#include <stdio.h>

int Problem6(void);

//Small main to allow problems to all be combined into one program
int main(int argc, char * argv[])
{
    Problem6();
    return 0;
}

int Problem6(void)
{
    //Round #1 (Brute Force)
    int i;
    int sqsum = 0;
    int sumsq = 0;
    for(i = 1; i < 101; ++i)
    {
        sqsum += i;
        sumsq += i * i;
    }
    int diff = sqsum * sqsum - sumsq;
    printf("The difference between the sum of squared of the first 100 natural numbers is %d\n", diff);
    return diff;
}
