=begin
Project Euler Problem 30

Written By Alan Bishop 6/4/14



Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

    1634 = 1**4 + 6**4 + 3**4 + 4**4
    8208 = 8**4 + 2**4 + 0**4 + 8**4
    9474 = 9**4 + 4**4 + 7**4 + 4**4

As 1 = 14 is not a sum it is not included.

The sum of these numbers is 1634 + 8208 + 9474 = 19316.

Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.


=end

start = Time.now


class Integer
    def sumOfDigitPowers(n)
        strNum = self.to_s
        sum = 0
        strNum.scan(/./).each do |i|
            sum+= i.to_i ** n
        end
        return sum
    end
end


sum = 0
#Kinda guessing on the max here
for i in 2..(999999) do
    if (i == i.sumOfDigitPowers(5))
        sum += i
        puts "#{i} is equal to the 5th powers of its digits summed"
    end
end

puts "The total sum is #{sum}"

puts "Elapsed Time #{Time.now-start} seconds"
