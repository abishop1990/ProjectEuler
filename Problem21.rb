=begin
Project Euler Problem 21

Written By Alan Bishop on 6/4/14


"Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000."
=end

start = Time.now

class Integer

    def amicableSum
        sum = 1
        for i in 2..Math.sqrt(self) do 
            sum += self/i + i if self%i == 0
        end
        return sum
    end

end

sum = 0

for a in 1..10000 do
    b = a.amicableSum
    sum += a if (a!=b && b.amicableSum == a)
end

puts "Sum of amicable numbers under 10000 is #{sum}"

puts "Elapsed Time #{Time.now-start} seconds"
