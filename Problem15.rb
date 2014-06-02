=begin

Project Euler Problem #15

Written By Alan Bishop 6/2/14

This is a formality because I just solved this mathmatically
(40!/(20!)*(20)!) 

Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20×20 grid?
=end

start = Time.now

#I probably will copy-paste this later
def factorial(n)
    fact = 1;
    for i in 1..n; fact *= i; end;
    return fact;
end


def calcGridPaths(x,y)
    return factorial(x+y)/(factorial(x) * factorial(y));
end

puts "Num paths in a 20x20 grid is #{calcGridPaths(20,20)}"

puts "Elapsed Time #{Time.now}"
