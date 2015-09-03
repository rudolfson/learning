number = rand(10)
while (guess = gets.to_i) != number
    if guess > number
       puts "number is lower"
    else
       puts "number is higher"
    end
end
puts "found it!"
