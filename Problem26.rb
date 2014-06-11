=begin
Project Euler Problem 26
Written By Alan Bishop 6/10/14

"Find the value of d < 1000 for which 1/d contains the longest 
recurring cycle in its decimal fraction part."
=end

start = Time.now

class Integer
    def Cycle
        seen = Array.new(self,0)
        curValue = 1
        position = 0
        while (curValue != 0 && seen[curValue] == 0)
            #Load current position into array
            seen[curValue] = position
            #Increase value to allow divisibilty
            curValue *=10
            #curValue is now the remainder
            curValue %= self
            #Move down one digit
            position += 1
        end
        return position
    end
end


longestCycle = 0
nForCycle = 0
for i in 1..1000
    curCycle = i.Cycle
    if curCycle > longestCycle
        nForCycle = i
        longestCycle = curCycle
    end
end

puts "The longest cycle is for d=#{nForCycle}"

puts "Total Runtime: #{Time.now-start} Seconds"
