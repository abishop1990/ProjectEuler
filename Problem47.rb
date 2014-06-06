=begin
Project Euler Problem 47
Written By Alan Bishop 6/6/14

"Find the first 4 consecutive numbers with 4 prime factors"
=end

start = Time.now

def numPrimeFactors(n)  
    facts = 0
    $primes.each do |i|
        facts+= 1 if n%i == 0
    end
    return facts
end

$primes = Array.new
found = 0
i = 2
while found < 4 do
    nf = numPrimeFactors(i)
    if nf >= 4
        found += 1
        puts "i=#{i},found=#{found}" if found > 2
    else
        found = 0
    end
    if nf == 0
        $primes.push(i) 
    end
    i += 1
end

puts "The first of the 4 numbers is #{i-4}"

puts "Elapsed Time #{Time.now-start} seconds"
