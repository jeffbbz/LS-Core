# RB101 Lesson 3: Practice Problems - Medium 1.2

# puts "the value of 40 + 2 is " + (40 + 2)

# You can't concatenate an integer to a string. 
# You could fix it using string interpolation, like this:

puts "the value of 40 + 2 is #{40 + 2}"

# or by calling the #to_s method to convert the integers to string:

puts "the value of 40 + 2 is " + (40 + 2).to_s