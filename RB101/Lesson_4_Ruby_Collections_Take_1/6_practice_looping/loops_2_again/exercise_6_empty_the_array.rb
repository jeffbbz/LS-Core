# Exercise 6

names = %w(Sally Joe Lisa Henry)

loop do
  puts names.shift 
  break if names.length == 0 # or # break if names.empty?
end

# Further Exploration (Reverse the order while printing names)

names = %w(Sally Joe Lisa Henry)

loop do
  puts names.pop
  break if names.empty? # or # break if names.length == 0
end

# Explanation

# On line 3 we initialize a local variable, names, to reference an array collection of four strings objects.
# On lines 5-8 we have a loop statement. Line 6 of the block in the loop calls the Array#shift
# method on the array referenced by names variable. This is a mutating method that removes the first
# element of the array and returns its value (In this case index 0 is a string object). We call String#puts on the return value which
# prints the element to the console. The loop iterates over the array in this way until the 
# break condition on line 7 is met. The break will execute and the loop will exit when the return
# value of Array#length method calls on the names array is equal to 0 (when there are no elements in
# the array).