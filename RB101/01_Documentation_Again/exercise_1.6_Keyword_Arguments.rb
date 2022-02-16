#Exercise 1.6

5.step(to: 10, by: 3) { |value| puts value }

# will print 5 and 8


# Numeric#step: The Numeric class step method
# https://ruby-doc.org/core-3.1.0/Numeric.html#method-i-step

# The relevant signature here is:
# step(to = nil, by = 1) {|n| ... } → self

# Generates a sequence of numbers; with a block given, traverses the sequence.

# will begin with "self" the integer given and then iteratively increment the
# :by keyword argument (the step value 3) to the given integer until the :to 
# keyword argument (the limit value 10) is reached. If the index exceeds the
# limit value, the loop exits and the numeric#step iterations cease.

# For each iteration, the block is also executed which prints the values to the
# console. It starts with self so 5, then increments by 3 to 8, which is the 
# last number as any higher would go over 10.