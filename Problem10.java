/* I've got an interview using Java so let's try this one in Java
 * (I'll do it in C++ later)
 */

/* Problem10.java
 *
 * Solves problem 10 on projecteuler.net
 *
 * Find the sum of all the primes below two million.
 * 
 * Written by Alan Bishop
 * Last modified 4/8/2014
 */

import java.util.*;

public class Problem10
{
    public static void main(String [] args)
    {
        //ROUND 1: BRUTE FORCE (Yeah I get it I need sieve stuffs)
        long sum = 2;
        boolean p;
        for(int i = 3; i < 2000000; ++i)
        {
            p = true;
            for(int j = 2; j <= Math.sqrt(i); ++j) 
            { 
                if(i%j==0) { p = false; break; }
            }
            if(p) sum += i;
        }
        System.out.println("The sum of all primes less than 2 million is " + sum);
    }
}
