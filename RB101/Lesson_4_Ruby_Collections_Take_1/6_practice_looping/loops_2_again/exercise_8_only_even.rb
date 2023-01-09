# Exercise 8

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

# Explanation

# On line 3, the local variable number is initiated to reference the value of the integer object 0.
# Lines 5-9 are an until loop. The condition of the until loop is when the value referenced by
# number variable is equal to 10. On line 6 we increment the value of number by 1 each iteration
# Line 7 invokes the next reserved keyword to skip to the next iteration if the return value of 
# invoking Integer#odd? on the current referenced value of number variable is the boolean true. 
# Otherwise the String#puts method is invoked to print the current value of number to the console 
# and the loop continues to iterate until its condition is met.