#Exercise 9

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next if number_a !=5 && number_b != 5 
  # or # next unless number_a == 5 || number_b == 5
  
  puts "5 was reached!"
  break
end

# Further Exploration

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  
  if number_a == 5 || number_b == 5
    puts "5 was reached!"
    break
  end
end

# Explanation

# Two local variables are iniatlized on lines 3 and 4, both referencing the value of integer object 0
# lines 6-14 is a loop statement. On lines 7 and 8 of the loop block, the variables are incremented by
# the return value of Kernel#rand with an input of 2 (0 or 1). Line 9 has a next condition. If
# niether variable is referencing an integer == 5 then the interation continues. If one of them is
# then the String#puts method is invoked and the string is output to console and the break
# is executed and loop exits.