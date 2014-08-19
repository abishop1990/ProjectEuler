=begin
Project Euler Problem 31
Written By Alan Bishop 6/10/14

"In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:

    1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).

It is possible to make £2 in the following way:

    1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p

How many different ways can £2 be made using any number of coins?"
=end

start = Time.now

$DESIRED_AMOUNT = 200
coins = [1,2,5,10,20,50,100,200]
combos = Array.new($DESIRED_AMOUNT + 1)
combos[0] = 1;

for coin in coins
    for amt in coin..$DESIRED_AMOUNT
        if(combos[amt] == nil)
            combos[amt] = 0
        end
        combos[amt] += combos[amt - coin] 
    end
end

puts "The number of possible combinations is #{combos[$DESIRED_AMOUNT]}"

puts "Total Runtime: #{Time.now-start} Seconds."
