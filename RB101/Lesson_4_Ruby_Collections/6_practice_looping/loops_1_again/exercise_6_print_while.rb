# Exercise 6

numbers = []

while numbers.length < 5
  numbers << rand(100)
end

puts numbers

# Explanation

# On line 3, a local variable numbers is initiated to reference an empty array object.
# Lines 5-7 we have a while loop with a condition to stop iterating the while loop when
# the number of array elements is less 5. We call the Array#length method on the numbers
# array to get the number of elements and then compare that with 5. If this condition
# is not met, the while loop will continue to iterate. One line 6 we call the Kernel#rand
# method which returns a random number one less than the argument provided (here 100). Each
# time #rand returns a number, the shovel operater method is called. This appends the calling
# argument (The return value of the rand(100) method) onto the array referenced by the numbers
# variable. This mutates the array. After 5 iterations, the while condition is met and the loop
# exits. Line 9 calls put s on the value of the numbers variable which is the array of 5 integers
# and these 5 are printed to the console on seperate lines as string objects. 
