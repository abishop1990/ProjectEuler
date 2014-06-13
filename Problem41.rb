
=begin
Project Euler Problem 41
Written By Alan Bishop 6/13/14




=end

start = Time.now

def getAllPrimesTo(n)
    nums = [nil, nil, *2..n]
    (2..Math.sqrt(n)).each do |i|
        (i**2..n).step(i){|m| nums[m] = nil}  if nums[i]
    end
    nums.compact
end

primes = getAllPrimesTo($MAX_PRIMES)



puts "Total Runtime: #{Time.now-start} Seconds."
