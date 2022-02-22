#Exercise 13.5

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n.even?
end

p even_numbers # expected output: [2, 6, 8]

# Array#select returns a new array containing only the elements 
# of the original array for which the return value of the block is truthy.
# n.even? will return boolean values and as its the last and only line of
# block the return value of the block will be the return value of n.even?

# This works better for this scenario than Array#map