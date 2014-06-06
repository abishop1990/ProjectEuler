=begin
Project Euler Problem 36

Written By Alan Bishop 6/6/14

Find the sum of all numbers 1-1,000,000 where both binary and base 10 are palindromes

=end

start = Time.now

class Integer

    def isPalindrome?
        return self.to_s == self.to_s.reverse
    end

    def isBinaryPalindrome?
        return  self.toBinary == self.toBinary.reverse
    end

    def toBinary
        return self.to_s(2) #Base 2 (Binary)
    end

end

sum = 0
(1..1000000).each do |i|
    if(i.isPalindrome? && i.isBinaryPalindrome?)
        sum += i
        #puts "#{i} is a palindrome in binary and base-10"
    end
end


puts "Sum of requested numbers is #{sum}"

puts "Elapsed Time #{Time.now-start} seconds"
