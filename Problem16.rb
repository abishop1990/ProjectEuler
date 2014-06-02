=begin

Project Euler Problem 16

Written By Alan Bishop on 6/2/14

Problem:
"215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
What is the sum of the digits of the number 2^1000?"

=end

start = Time.now

#Get the result turn into a string
digitString = (2**1000).to_s
#Iterate through each digit and add
sum = 0
digitString.scan(/./).each do |i|
    sum += i.to_i
end

#Display Results
puts "Sum of digits of 2**1000 is #{sum}"

puts "Elapsed Time #{Time.now-start} seconds"
