=begin
Project Euler Problem 34

Written By Alan Bishop 6/5/14

"Find the sum of all numbers equal to the sum of their factorial digits"
(Excluding 1! and 2!)
=end


start = Time.now

#Cache the 9 values (makes it faster)
$facts = Array.new
$facts[0] = 1 #This is kind of important, but seems odd to me
$facts[1] = 1
for i in 2..9 do
    $facts[i] = i * $facts[i-1]
end

class Integer
    def sumOfFactDigits
        strNum = self.to_s
        sum = 0
        strNum.scan(/./).each do |i|
            sum+= $facts[i.to_i]
        end
        return sum
    end
end


sum = 0
#Guessing on the max...trial and error? 
#I need mathmatical proof
for i in 3..100000 do
    if(i == i.sumOfFactDigits)
        sum += i
        puts "#{i} is equal to the factorials of its digits summed"
    end
end


puts "The total sum is #{sum}"

puts "Elapsed Time #{Time.now-start} seconds"
