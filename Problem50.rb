=begin
Project Euler Problem 50
Written By Alan Bishop 6/11/14


"The prime 41, can be written as the sum of six consecutive primes:
41 = 2 + 3 + 5 + 7 + 11 + 13

This is the longest sum of consecutive primes that adds to a prime below one-hundred.

The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.

Which prime, below one-million, can be written as the sum of the most consecutive primes?"
=end

start = Time.now

def getAllPrimesTo(n)
    primes = Array.new
    for i in 2..n 
        prime = true
        for j in 2..Math.sqrt(i)
            if(i%j == 0) 
                prime = false
                break
            end
        end
        push(i) if prime
    end
    return primes
end

primes = getAllPrimesTo(1000000)


longestPrimeSum = 0
mostConsecPrimes = 0
for i in 1..primes.length
    sum = 0
    consecPrimes = 0
    for j in 0..primes.length
       
    end
end


puts "Sum below 1,000,000 with longest consecutive primes sum is #{longestPrimeSum}"

puts "Total Runtime: #{Time.now-start} Seconds."
