=begin
Project Euler Problem 24
Written By Alan Bishop 6/10/14

"A permutation is an ordered arrangement of objects. For example, 3124 is one 
possible permutation of the digits 1, 2, 3 and 4. If all of the permutations 
are listed numerically or alphabetically, we call it lexicographic order. The 
lexicographic permutations of 0, 1 and 2 are:

012   021   102   120   201   210

What is the millionth lexicographic permutation of the digits:
0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?"

=end


start = Time.now

#I <3 Ruby...This is easy, I'd hate to do this in C
digits = [0,1,2,3,4,5,6,7,8,9]

digitPermutations = digits.permutation(10).to_a

millionthPermutation = digitPermutations[999999].join


puts "The 1,000,000th permutation is #{millionthPermutation}"

puts "Total Runtime: #{Time.now-start} seconds"
