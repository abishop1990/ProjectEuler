=begin
Project Euler Problem 23

Written By Alan Bishop 6/5/14

"A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.

Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers."
=end

start = Time.now


$MAX = 28123

class Integer
    def isAbundant
        return true if self < self.sumOfFactors
        return false
    end 

    def sumOfFactors
        sum = 1
        for i in 2..Math.sqrt(self) do 
            sum += self/i + i if self%i == 0
        end
        return sum
    end

end

#Get array of abundant numbers
$abundantNumbers = Array.new
max = 0
for i in 2..$MAX  do
    if(i.isAbundant)
        $abundantNumbers[max] = i
        max += 1
    end
end

puts "#{$abundantNumbers.size} numbers"

ANSums = []
#Get all sums
$abundantNumbers.each do |a|
    $abundantNumbers.each do |b|
        sum = a+b
        if sum <= $MAX && a != b
            ANSums.push(sum)
        else 
            break
        end
    end
end




puts "Elapsed Time #{Time.now-start} seconds"
