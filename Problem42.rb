=begin
Project Euler Problem 42
Written By Alan Bishop 6/11/14



The nth term of the sequence of triangle numbers is given by, tn = ½n(n+1); so the first ten triangle numbers are:

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

By converting each letter in a word to a number corresponding to its alphabetical position and adding these values we form a word value. For example, the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word value is a triangle number then we shall call the word a triangle word.

Using words.txt (right click and 'Save Link/Target As...'), a 16K text file containing nearly two-thousand common English words, how many are triangle words?

=end

start = Time.now

#I'm borrowing some code from when I did problem 22 here...
def wordValue(word)
    sum = 0
    word.upcase.each_byte { |s| sum += s - 64 } #'A' is 65, we need one less
    return sum
end

def triangleNumber(n)
    return (n * (n+1))/2
end


#Put words in array
wordFile = File.open("data/words.txt").gets or die "Can't open words.txt"
words = wordFile.gsub!('"','').split(',')

#Get an array of the values
wordValues = Array.new
words.each do |w|
    wordValues.push(wordValue(w))
end

#Get array of triangle numbers in word array
n = 1
tn = 0
trinums = Array.new
maxtn = wordValues.max
while tn <= maxtn 
    tn = triangleNumber(n)
    trinums.push(tn)
    n += 1
end

triangleWords = 0
wordValues.each do |wv|
    triangleWords += 1 if trinums.include?(wv)
end

puts "There are #{triangleWords} triangle words in the file"

puts "Total Runtime: #{Time.now-start} Seconds."

