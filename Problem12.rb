=begin

Project Euler Problem #12

Writen By Alan Bishop on 6/1/14


The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

Let us list the factors of the first seven triangle numbers:

     1: 1
     3: 1,3
     6: 1,2,3,6
    10: 1,2,5,10
    15: 1,3,5,15
    21: 1,3,7,21
    28: 1,2,4,7,14,28

We can see that 28 is the first triangle number to have over five divisors.

What is the value of the first triangle number to have over five hundred divisors?

=end

def getNumDivisors(curNumber)
    numDivisors = 0
    curDivisor = 1
    begin
        if(curNumber%curDivisor == 0)
            numDivisors = numDivisors + 1
           # puts "curNumber #{curNumber} curDivisor #{curDivisor}"
        end
        curDivisor = curDivisor + 1 
    end while curDivisor <= curNumber
    return numDivisors
end

curTriangleNumber = 0
curNumber = 0
numDivisors = 1
highestDivisors = 1

begin
    curNumber = curNumber +1
    curTriangleNumber = curNumber + curTriangleNumber
    numDivisors = getNumDivisors(curNumber)
    if numDivisors > highestDivisors
        puts "#{highestDivisors} #{curTriangleNumber}"
        highestDivisors = numDivisors
    end
end until numDivisors > 500

puts "First triangle number with over 500 divisors is #{numDivisors}\n"
