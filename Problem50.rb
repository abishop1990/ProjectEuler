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


$MAX_PRIMES = 1000000

primes = getAllPrimesTo($MAX_PRIMES)
puts "Found #{primes.length} Primes, Highest: #{primes.max}"

#Get all sums of the primes (but it's a lot)
primeSums = Array.new
primeSums[0] = 0
for i in 0..primes.length-1
    primeSums[i+1] = primeSums[i] + primes[i]
end

maxPrime = 0

#Hunt down our answer
numPrimes = 0
i = primes.length
for i in 0..primeSums.length-1
    j = i-(numPrimes+1)
    while j >= 0
        diff = primeSums[i]-primeSums[j]
        break if diff > primes.max
        idx = primes.index(diff)
        if(idx)
            numPrimes = i - j
            maxPrime = primeSums[i] - primeSums[j]
            puts "maxPrime is now #{maxPrime}, #{i}"
        end
        j -= 1
    end
end


puts "Sum below #{$MAX_PRIMES} with longest consecutive primes sum is #{maxPrime}"

puts "Total Runtime: #{Time.now-start} Seconds."
