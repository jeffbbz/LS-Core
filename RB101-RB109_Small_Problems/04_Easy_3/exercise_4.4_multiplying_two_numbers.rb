#Exercise 4.4

def multiply(num_1, num_2)
  num_1 * num_2
end

p multiply(5, 3)

# Further Exploration

# If the first argument is an array, calling the method will return a new array with the 
# array contents repeated x amount of times where x is the second argument given.

# multiply([4, 5, 6], 3) => [4, 5, 6, 4, 5, 6, 4, 5, 6]