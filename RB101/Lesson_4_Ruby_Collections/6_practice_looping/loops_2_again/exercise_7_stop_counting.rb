# Exercise 7

5.times do |index|
puts index unless index > 2
end

# or

5.times do |index|
  puts index
  break if index == 2
end

# Further Exploration

5.times do |index|
  puts index
  break if index == 4
end

# => 0 1 2 3 4

5.times do |index|
  puts index
  break if index < 7
end

# => 0

# Explanation

# On line 3 we invoke the Integer#times method which counts to one less than the specified number
# (5 here). The method takes a block and the block has a parameter, index which is the number of
# current iteration. On line 4, String#puts method is called on the parameter index, here on the first
# iteration referencing the value 0. The block will continue to iterate and call this method on 
# successive iterations of index unless the referenced value of index parameter is greater than 2.


