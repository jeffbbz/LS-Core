# Exercise 8

numbers = [7, 9, 13, 25, 18]
index = 0

until numbers.length == index
  puts numbers[index]
  index += 1
end

# or

numbers = [7, 9, 13, 25, 18]

until numbers.length == 0
  puts numbers.shift
end

# Explanation

# On line 3, the local variable numbers is initialized to reference an array of 5 integers.
# On line 4, the local variable index is initialized to reference the integer object 0
# Lines 6-9 are an until loop whose condition is to iterate its block until the value refereced
# by the index variable is equal to the number of elements in the array (determined by invoking
# the Array#length method on the variable numbers). Inside the block, line 7 calls puts on the 
# element in the numbers array located at the index equal to the current value refenced by the index
# variable. It then increments the value referenced by index variable by one and interates accross
# each element in the array until the until condition is met and then it exits the loop
