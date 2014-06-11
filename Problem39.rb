=begin
Project Euler Problem 39
Written By Alan Bishop 6/11/14



"If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.

{20,48,52}, {24,45,51}, {30,40,50}

For which value of p ≤ 1000, is the number of solutions maximised?"

=end

start = Time.now


def numTriangles(p)
    n = 0
    for a in 2..((p/3)-1)
        if( (p*(p-2*a)) % (2*(p-a)) == 0)
            n += 1
        end
    end
    return n
end


#Various maths allow simplicity but we can brute force this
maxSolutions = 0
p = 2
maxp = 0
while p <= 1000
    solutions = numTriangles(p)
    if(solutions > maxSolutions)
        maxp = p
        maxSolutions = solutions
    end
    p += 2
end


puts "Maximized value of p is #{maxp}"

puts "Total Runtime: #{Time.now-start} Seconds."
