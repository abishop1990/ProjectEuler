/*
 * Problem1.cpp
 *
 * Solves problem #4 on projecteuler.net
 * 
 *
 * "A palindromic number reads the same both ways. 
 *  The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
 *  Find the largest palindrome made from the product of two 3-digit numbers."
 *
 * Written By Alan Bishop 
 * Last Updated 4/6/2014
 */

#include <stdio.h>

int Problem4(void);
bool isPalindrome(int n);

//Small main to allow problems to all be combined into one program
int main(int argc, char * argv[])
{
    Problem4();
    return 0;
}

int Problem4(void)
{
    //Trial #1 BRUTE FORCE (HORRIBLE TIME)
    int i,j;
    int highest = 0;
    int cur = 0;
    for(int i = 100; i < 1000; ++i)
    {
        for(int j = 100; j < 1000; ++j)
        {
            cur = i*j;
            if(cur > highest && isPalindrome(cur))
            {
                highest = cur;   
            }
        }
    }

    
    printf("The highest 3-digit palindrome is %d\n",highest);
    return highest;
}

//This is mathmatical!
//Relies on the fact that n/10 truncates
//I took this part from StackOverflow, found it very interesting
bool isPalindrome(int n)
{
    int r = 0;
    int num=n;
    int d;
    while(num > 0)
    {
        d = num%10;
        r = r * 10 + d;
        num = num/10;
    }
    return n == r;
}
