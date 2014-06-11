=begin
Project Euler Problem 22
Written By Alan Bishop 6/9/14


"Using 'names.txt', a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

What is the total of all the name scores in the file?"
=end

start = Time.now

#Gets the number value of a num, without position
def nameValue(name)
    sum = 0
    name.upcase.each_byte { |s| sum += s - 64 } #'A' is 65, we need one less
    return sum
end


#I had no idea how to do this so I took this from someone else
#It makes sense to me though, you remove the quotes in the file
#and then split by comma, and finally sort the list
nameFile = File.open("data/names.txt").gets or die "Can't open names.txt"
names = nameFile.gsub!('"','').split(',').sort

sum = 0
position = 1
names.each do |name|
    sum += position * nameValue(name)
    position += 1
end


puts "Total of all the names is #{sum}"

puts "Elapsed Time: #{Time.now-start} seconds"
