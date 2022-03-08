# RB101 Lesson 3: Practice Problems - Easy 1.1

numbers = [1, 2, 2, 3]
numbers.uniq

p numbers

# => 1 2 2 3  because #uniq does not mutate integer collection referenced by numbers 
#             which has not been assigned to a variable here and will return a new 
#             array.


# the puts method calls to_s on an argument and prints each item of an array collection
# to a new line. the p method calls #inspect on an argument which would return it as an
# array. >p numbers< and >puts number.inspect< would return the same thing