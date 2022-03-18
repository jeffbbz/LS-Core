# Exercise 10

def greeting
  puts "Hello!"
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end

# Explanation

# On lines 3-5 we are defining a method, greeting. When called the method will invoke the puts method
# to output the string "Hello" to console. Line seven initializes a local variable number_of_greetings
# and sets it to reference the value of the integer object 2. Lines 9-12 are a while loop statement
# with the condition to iterate while the value referenced by number_of_greetings is greater than
# 0. While iterating, the while loop will invoke the greeting method to print the hello to console
# then decrement the referenced value of the variable number_of_greetings. This loop will iterate
# twice before meeting the while condition and exiting.