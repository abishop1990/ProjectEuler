=begin

Project Euler Problem 14

Written By Alan Bishop 6/2/14

The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:
13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.

=end

start = Time.now

=begin
For all numbers 1..1000000
    Do Collatz Sequence
        Check if we're at a value we've already been to
            Add current length to that value's length
            Break
        Continue the Collatz Sequence
            If even, divide by 2
            If odd, mult by 3, add 1
END
=end

$lengths = Array.new
$lengths[1] = 0

def collatz(n)
    length = 0
    curNum = n
    until curNum==1 do
        if $lengths.size > curNum && $lengths[curNum] != nil
            length += $lengths[curNum]
            #puts "Escaping on previous sequence at #{curNum}\n"
            break
        end
        # if curNum&2 == 0   #This doesn't seem to work?
        if curNum%2 == 0
            #curNum /= 2
            curNum = curNum >> 1
        else
            curNum = 3*curNum + 1
        end
        length += 1
    end
    $lengths[n] = length
    #puts "Collatz of #{n} is #{length}\n"
    return length
end

longestSequence = 0
currentSequence = 0
numForLongestSequence = 0
(1..1000000).each do |n|
    currentSequence = collatz(n)
    if(currentSequence > longestSequence)
        longestSequence = currentSequence
        numForLongestSequence = n
    end
end 

puts "The number producing the longest sequence is #{numForLongestSequence} producing a length of #{longestSequence}\n"

puts "Elapsed Time: #{Time.now-start}\n"
