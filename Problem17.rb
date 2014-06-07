=begin
Project Euler Problem 17

Written By Alan Bishop 6/5/14



"If the numbers 1 to 5 are written out in words: one, two, three, four, five, 
then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in 
words, how many letters would be used?

Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) 
contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. 
The use of "and" when writing out numbers is in compliance with British usage."

=end

#This is where I hate english for having special words for 11-19..
$words =
{
    "1" => "one",
    "2" => "two",
    "3" => "three",
    "4" => "four",
    "5" => "five",
    "6" => "six",
    "7" => "seven",
    "8" => "eight",
    "9" => "nine",
    "10" => "ten",
    "11" => "eleven",
    "12" => "twelve",
    "13" => "thirteen",
    "14" => "fourteen",
    "15" => "fifteen",
    "16" => "sixteen",
    "17" => "seventeen",
    "18" => "eighteen",
    "19" => "nineteen",
    "20" => "twenty",
    "30" => "thirty",
    "40" => "forty",
    "50" => "fifty",
    "60" => "sixty",
    "70" => "seventy",
    "80" => "eighty",
    "90" => "ninety",
    "100" => "onehundred",
    "1000" => "onethousand"
}


start = Time.now

class Integer

    def toWordString
        toString = self.to_s
        #Check if it's a common word, if so we're done
        if($words[toString] != nil)
            return $words[toString]
        end
        #21..99
        if(self < 100)
            return $words[toString[0..0] + "0"] + $words[toString[1..1]]
        end
        #101-999
        rString = $words[toString[0..0]] +"hundred"
        #To comply with rules we need an and if there are hundreds
        if(self%100 != 0)
            rString += "and"
        
            #I kind of like this syntax even if it's strange...
            #If the tens and ones are a common number, add that
            if($words[toString[1..2]] != nil)
                rString += $words[toString[1..2]]
            #If there is just hundreds and ones (ex: 808)
            elsif (toString[1..1] == "0")
                rString += $words[toString[2..2]]
            else
                rString += $words[toString[1..1] + "0"] + $words[toString[2..2]]
            end
        end
        return rString
    end

end


sum = 0
(1..1000).each do |i|
    sum += i.toWordString.size
    #puts "#{i.toWordString}"
end

puts "Sum of letters in 1..1000 in english is #{sum}"

puts "Elapsed Time #{Time.now-start} seconds"
