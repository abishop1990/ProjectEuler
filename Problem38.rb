=begin
Project Euler Problem 38
Written By Alan Bishop 6/13/14


Take the number 192 and multiply it by each of 1, 2, and 3:

192 × 1 = 192
192 × 2 = 384
192 × 3 = 576

By concatenating each product we get the 1 to 9 pandigital, 192384576. We will call 192384576 the concatenated product of 192 and (1,2,3)

The same can be achieved by starting with 9 and multiplying by 1, 2, 3, 4, and 5, giving the pandigital, 918273645, which is the concatenated product of 9 and (1,2,3,4,5).

What is the largest 1 to 9 pandigital 9-digit number that can be formed as the concatenated product of an integer with (1,2, ... , n) where n > 1?
=end

start = Time.now

class Integer
    #This makes my inner C programmer want to vomit, but should work
    #Convert the number to an array of chars, sort, check equal to sorted pandigital
    def isPandigital9?
        return false if self < 123456789 || self > 987654321
        return self.to_s.split(//).sort.join == "123456789"
    end
    def isInRange?
        return (self.to_s + (self*2).to_s).to_i <= 987654321
    end
end

def concatProduct(n)
    num = 0
    concatProd = n
    m = 2
    highest = 0
    while concatProd <= 987654321
        concatProd = (concatProd.to_s + (n*m).to_s).to_i
        if(concatProd.isPandigital9?)
            highest = concatProd
        end
        m += 1
    end
    return highest
end

highest = 123456789
i = 1
while i.isInRange?
    p = concatProduct(i)
    highest = p if p > highest
    i += 1
end

puts "The largest pandigital 9-digit number can be formed is #{highest}"

puts "Total Rutime: #{Time.now-start} Seconds."
