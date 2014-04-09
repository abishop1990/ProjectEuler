/* I've got an interview using Java so let's try this one in Java
 * (I'll do it in C++ later)
 */

/* Problem9.java
 *
 * Solves problem 9 on projecteuler.net
 *
 *
 * "A Pythagorean triplet is a set of three natural numbers, a < b < c, 
 *  for which,a2 + b2 = c2
 *
 * For example, 32 + 42 = 9 + 16 = 25 = 52.
 *
 * There exists exactly one Pythagorean triplet for which a + b + c = 1000.
 * Find the product abc."
 *
 *
 * Written by Alan Bishop
 * Last modified 4/8/2014
 */

import java.util.*;


public class Problem9
{
    public static void main(String [] args)
    {
        //What time is it?
        //ALGEBRA TIME!
        // a + b + c = 1000 and c^2 = a^2 + b^2
        //We assume these are all positive numbers
        //Let's sub for c
        // c = 1000 - a - b and c = sqrt(a^2 + b^2)
        // 1000 - a - b = sqrt(a^2 + b^2)
        // (1000 - a - b)^2 = a^2 + b^2
        // ....several maths later
        // a = (500000-1000*b) / (1000-b)
        // Solving time!
        int a = 0;
        int c = 0;
        int b;
        for(b=0;b<1000; ++b)
        {
            a = (500000-1000*b)/(1000-b);
            c = 1000 - a - b;
            if(a*a + b*b == c*c && a < b) break;
        }
        int d = a*b*c;
        System.out.println("a=" +a+" b="+b+"c="+c+" The magic value is " +d);
    }

}
