=begin
Project Euler Problem #25

Written By Alan Bishop 6/4/14

Gets the first Fibonacci number with 1000+
=end

start = Time.now


#Returns the nth fibonacci number
def fibonacci(n)
    return 1 if n < 3
    fibn = 0
    fib1 = 1
    fib2 = 1
    for i in 2..n do
        fibn = fib1 + fib2
        fibt = fib1
        fib1 = fibn
        fib2 = fibt
    end
    return fibn
end


strFib = "1"
n = 1
while strFib.length < 1000 do
    strFib = fibonacci(n).to_s
    #puts "fibonacci #{n} is #{strFib}"
    n += 1
end 

puts "First Fibonacci term with 1000+ digits is #{n}"

puts "Elapsed Time #{Time.now-start} seconds"
