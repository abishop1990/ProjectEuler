=begin
Project Euler Problem 20

Written By Alan Bishop 6/4/14


"n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!"

=end

start = Time.now

#Seen this done through adding to Integer class, let's try it
class Integer
    def factorial
        result = 1;
        for i in 1..self; result *= i; end;
        return result;
    end
end

sumOfDigits = 0
100.factorial.to_s.scan(/./).each do |i|
    sumOfDigits += i.to_i
end

puts "Sum of 100! digits is #{sumOfDigits}"

puts "Elapsed Time #{Time.now-start} seconds"
