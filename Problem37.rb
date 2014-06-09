=begin
Project Euler Problem 37
Written By Alan Bishop 6/8/14

"The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

Find the sum of the only eleven primes that are both truncatable from left to right and right to left. (Not counting 1 digit primes)"

=end


start = Time.now


class Integer
    def isPrime?
        return false if self<2
         for i in 2..Math.sqrt(self)   
            return false if self%i == 0
        end
        return true
    end
    
    def isMagicPrime?
        n = self
        #Trunc off left
        while n > 0
            if !n.isPrime?
                #puts "#{n} (from #{self}) isn't prime"
                return false 
            end
            n = (n/10).to_i
        end
        #Check right to left
        n = self
        while n > 0
            if !n.isPrime?
                return false 
            end
            n = n %10**Math.log10(n).to_i
        end

        return true
    end
end

$primes = Array.new
$primes.push(2)
$primes.push(3)
$primes.push(5)
$primes.push(7)

n = 10
sum = 0
foundPrimes = 0

while foundPrimes < 11
    if n.isPrime?
        $primes.push(n)
        #puts "#{n} is prime"
        if n.isMagicPrime?
            sum += n
            #puts "#Sum is #{n}"
            foundPrimes += 1
        end
    end
    n += 1
end

puts "Sum of the primes prime-truncatable left to right and right to left are #{sum}"

puts "Elapsed Time #{Time.now-start} seconds"
