# Exercise 1

count = 1

loop do
  if count.odd? # or # if count % 2 != 0
    puts "#{count} is odd!"
  else 
    puts "#{count} is even!"
  end
  
  break if count == 5
  count += 1
end

# or

count = 1

loop do
  puts count.odd? ? "#{count} is odd!" : "#{count} is even!"
  break if count == 5
  count += 1
end

# Explanation of Code

# On line 3, the local variable count is initialized, referecing the integer object 1.
# Lines 5 through 14 we have a loop. On line 6 of the loop the block checks if the value
# referenced by the count variable is odd. This is done by invoking the Integer#odd method
# on that value. This returns a boolean true if it is odd and false if not. If it is odd
# We use string interpolation to print the statement to the console. If the method doesn't
# return true then we print the other statement to the console. On line 12, block has a break
# condition using the reserved word break. If the value referenced by count is equal to five the loop
# will exit. If not count will increment by one and reiterate on the code in the loop.