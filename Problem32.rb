=begin
Project Euler Problem 32
Written By Alan Bishop 6/11/14



We shall say that an n-digit number is pandigital if it makes use of all
the digits 1 to n exactly once; for example, the 5-digit number, 15234, 
is 1 through 5 pandigital.

The product 7254 is unusual, as the identity, 39 × 186 = 7254, containing 
multiplicand, multiplier, and product is 1 through 9 pandigital.

Find the sum of all products whose multiplicand/multiplier/product identity
can be written as a 1 through 9 pandigital.
=end

start = Time.now


products = Array.new
sum = 0
for i in 1..9999
    for j in i+1..9999  
        p = i*j
        next if products.include?(p)
        str = (i.to_s + j.to_s + p.to_s)
        break if str.length > 9
        next if str.length < 9
        str = str.split(//).sort.join
        if(str == "123456789")
            sum += p
            products.push(p)
            puts "Adding #{p} (#{i}*#{j})"
        end
    end
end

puts "Sum of all the pandigital products is #{sum}"

puts "Total Runtime: #{Time.now-start} seconds"
