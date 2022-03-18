# Exercise 5

numbers = []

loop do
  puts "Enter any number:"
  input = gets.chomp.to_i
  numbers << input # or # numbers.push(input)
  break if numbers.length == 5
end

puts numbers

# or

numbers = []
counter = 0

loop do
  puts "Enter any number:"
  input = gets.chomp.to_i
  numbers << input # or # numbers.push(input)
  counter += 1
  break if counter == 5
end

puts numbers

# Code Explanation

# On line 3, the local variable numbers is initalized to reference an empty array.
# Lines 5-10 are a loop statement. 
# On line 6 of the loop, a string is output to console.
# On line 7 the users input is converted to an integer by the integer#to_i method and its reference is stored in
# a newly initialized local variable input. 
# Line 8 invokes the shovel operator method to destructively append the value referenced by input variable to the array referenced by numbers variable. 
# Line 9 is a break condition whereby if the return value of invoking the array#length method on the array
# referenced by the numbers variable is equal to 5, the break is executed and the loop is exited.
# Otherwise the loop will contiue to iterate. 
#Finally on line 12 the puts method is called on the array referenced by the variable numbers which outputs its integer object elements to the console.
