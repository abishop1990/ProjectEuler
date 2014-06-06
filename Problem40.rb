=begin
Project Euler Problem 40
Written By Alan Bishop 6/6/14



"An irrational decimal fraction is created by concatenating the positive integers:

0.123456789101112131415161718192021...

It can be seen that the 12th digit of the fractional part is 1.

If dn represents the nth digit of the fractional part, find the value of the following expression.

d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000"
=end

start = Time.now

str = ""
#build string
#(1..1000000).each do |i|
 #   str += i.to_s
#end
#I found this online, works way better
#str = ("1".."1000000").to_a.join.chars.to_a


#Do the maths! (Also remember it's -1 on those indexes, so 0 not 1, 9 not 10, etc)
mult = str[0].to_i * str[9].to_i * str[99].to_i \
       * str[999].to_i * str[9999].to_i * str[99999].to_i * str[999999].to_i


puts "Product is #{mult}"

puts "Elapsed Time: #{Time.now-start} seconds"
