=begin
Project Euler Problem 43
Written By Alan Bishop 6/12/14

"The number, 1406357289, is a 0 to 9 pandigital number because it is made up of each of the digits 0 to 9 in some order, but it also has a rather interesting sub-string divisibility property.

Let d1 be the 1st digit, d2 be the 2nd digit, and so on. In this way, we note the following:

    d2d3d4=406 is divisible by 2
    d3d4d5=063 is divisible by 3
    d4d5d6=635 is divisible by 5
    d5d6d7=357 is divisible by 7
    d6d7d8=572 is divisible by 11
    d7d8d9=728 is divisible by 13
    d8d9d10=289 is divisible by 17

Find the sum of all 0 to 9 pandigital numbers with this property."
=end

start = Time.now


def hasProperty(n)

    primes = [2,3,5,7,11,13,17]
    nStr = n.to_s
    nArr = nStr.split(//)
    for i in 0..6 
        newNum = nArr.slice(i+1..i+3).join.to_i
        #puts "newNum=#{newNum}"
        if(newNum%primes[i] != 0)
            #puts "Failing, #{newNum}/#{primes[i]} != 0"
            return false
        end
    end
    puts "#{nStr} has property"
    return true
end


#Build array of all pandigital nums
pandigitals = [0,1,2,3,4,5,6,7,8,9].permutation(10).to_a.map(&:join).select{ |n| hasProperty(n.to_i) }

#puts pandigitals.length

#Iterate through
sum = 0
pandigitals.each do |n|
    sum += n.to_i
end


puts "Sum of all pandigitals with strange prime property is #{sum}"

puts "Total Runtime: #{Time.now-start} Seconds."
