=begin
Project Euler Problem 50
Written By Alan Bishop 6/13/14


"The prime 41, can be written as the sum of six consecutive primes:
41 = 2 + 3 + 5 + 7 + 11 + 13

This is the longest sum of consecutive primes that adds to a prime below one-hundred.

The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.

Which prime, below one-million, can be written as the sum of the most consecutive primes?"
=end


start = Time.now

def getAllPrimesTo(n)
    nums = [nil, nil, *2..n]
    (2..Math.sqrt(n)).each do |i|
        (i**2..n).step(i){|m| nums[m] = nil}  if nums[i]
    end
    nums.compact
end

primes = getAllPrimesTo(1000000)
puts "Found #{primes.length} Primes, Highest: #{primes.max}"

maxPrime = 0
sum = 0
endN = 0

for startN in 0..primes.length
    #Find highest valid num
    for i in endN..primes.length
        sum += primes[i]
        endN = i
        break if sum > primes.max
        if primes.include?(sum) && maxPrime < sum
            puts "New maxPrime = #{sum} (start = #{startN}, end = #{endN})"
            maxPrime = sum
        end
    end
    #Get a good starting point for next iteration
    while sum > primes.max || (!primes.include?(sum) && sum > 0)
        sum -= primes[endN]
        endN -= 1
    end
    sum -= primes[startN]
end


puts "Sum below 1,000,000 with longest consecutive primes sum is #{maxPrime}"

puts "Total Runtime: #{Time.now-start} Seconds."
