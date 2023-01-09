# Exercise 10

friends = %w(Sarah John Hannah Dave)

for friend in friends
  puts "Hello, #{friend}!"
end

# or

for friend in friends
  puts "Hello, " + friend + "!"
end

# Explanation

# On line 3, the local variable friends is initalized to reference an array of 4 string objects.
# Lines 5-7 are a for loop which initializes the variable friend to reference each element in the
# array referenced by the variable friends. Inside the loop, the code will output the string +
# the interpolated string of each element. It will iterate until all elements have been used,
# in this case four.