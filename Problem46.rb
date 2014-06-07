=begin
Project Euler Problem 46
Written By Alan Bishop 6/6/14

"What is the smallest odd composite that cannot be written as 
 a sum of a prime and twice a square?"

=end

start = Time.now

class Integer
    def isPrime?
        return true if self < 4
        (2..Math.sqrt(self)).each do |i|
            return false if self%i == 0
        end
        return true
    end
    
    def isGoldbachValid?
        $primes.each do |i|
            sum = 0
            n = 1
            while sum < self do
                sum = i + 2 * n * n
                return true if sum == self
                n += 1
            end
        end    
        return false
    end
end

$primes = Array.new
n = 1
while true do
    if n.isPrime?
        $primes.push(n)
        #puts "#{n} is prime"
    elsif !n.isGoldbachValid?
        break
    else
        #puts "#{n} is goldbach valid"
    end
    n += 2
end


puts "The smallest odd composite not following Goldbach's other conjecture is #{n}"

puts "Elapsed Time #{Time.now-start} seconds"
