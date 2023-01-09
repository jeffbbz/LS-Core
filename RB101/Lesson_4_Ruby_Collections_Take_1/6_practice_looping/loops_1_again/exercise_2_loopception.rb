# Exercise 2

loop do
  puts "This is the outer loop."
  
  loop do
    puts "This is the inner loop."
    break
  end
  
  break
end

puts 'This is outside all loops.'

# Explanation of Code

# This is a nested loop. Lines 3-12 are an outer loop and lines 6-9 are an inner loop.
# The inner loop calls the put s method on its string and outputs that to console one time,
# before line 8 breaks out of the loop. Prior to this, the outer loop calls the put s method 
# on its string and outputs that to console one time, then the inner loop is executed one time,
# Then the outer loop is exited on line 11 with the break statement. Finally line 14 calls
# the put s method on a loop and outputs that to console.