=begin
Project Euler Problem 48

Written By Alan Bishop 6/4/14

Find the sum of 1**1 + 2**2 + ... 1000**1000
=end

start = Time.now

sum = 0

for i in 1..1000 do
    sum += i ** i
end

puts "Last 10 digits of sum is #{sum.to_s[-10,10]}"

puts "Elapsed Time #{Time.now-start} seconds"
