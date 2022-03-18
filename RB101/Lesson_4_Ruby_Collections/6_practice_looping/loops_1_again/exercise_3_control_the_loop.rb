# Exercise 3

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

# Explanation of Code

# On line 3, a local variable, iterations, has been initialized and references the integer 1.
# On line 5 a loop block is called. This block calls the put s method on a statement and 
# using string interpolation includes the value referenced by iterations (the integer 1).
# On line 7, using syntatic sugar, the variable iterations is reassigned to 1 + its value.
# The loop then iterates until the break condition on line 8 is met, which is that iterations
# references the integer 5. This will happen after 5 iterations. The loop breaks and will have
# printed to the console 5 times, each time incrementing iterations referenced value by one.

# Further Exploration

iterations = 1

loop do
  puts "Number of interations = #{iterations}"
  break if iterations == 5
  iterations += 1
end

