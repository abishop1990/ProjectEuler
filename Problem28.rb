=begin
Project Euler Problem 28

Written By Alan Bishop 6/5/14

"

Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:

21 22 23 24 25
20  7  8  9 10
19  6  1  2 11
18  5  4  3 12
17 16 15 14 13

It can be verified that the sum of the numbers on the diagonals is 101.

What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?"

=end

start = Time.now

#Spirals increase in change (+1, +2, +3, +4...+n)
#Start on end of last spiral
#Always do this 4 times to get a diagonal

spiralSize = 3
spiralN = 2
curNum = 1
sum = 1

while spiralSize < 1002 do
    #puts "Spiral #{spiralN}"
    for i in 1..4
        curNum += 2*(spiralN-1)
        #puts "curNum = #{curNum}"
        sum += curNum
    end
    spiralN += 1
    spiralSize = 2*(spiralN-1)
end

puts "Sum of spiral nums = #{sum}"

puts "Elapsed time: #{Time.now-start}"
