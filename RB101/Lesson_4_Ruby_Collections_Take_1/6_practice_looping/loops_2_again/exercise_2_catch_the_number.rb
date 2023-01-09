# Exercise 2

loop do
  number = rand(100)
  puts number
  break if number >= 0 && number <= 10
end

# # or

loop do
  number = rand(100)
  puts number
  break if number.between?(0, 10)
end

# or

loop do
  number = rand(100)
  puts number
  break if (1..10).include?(number)
end

# Explanation of Code

# Lines 3-7 are a loop. This loop will iterate over its block of code until its break condition
# is met. On line 4 the local variable number is initiated to reference the value of an integer
# assigned from the range 0-99 by the Kernel#rand method. Line 5 outputs this value to the console.
# Line 6 checks if the value referenced by the number variable is greater than/equal to 0 and
# less than/equal to 10. If so the condition is met and the loop exits. Otherwise it continues
# iterating.