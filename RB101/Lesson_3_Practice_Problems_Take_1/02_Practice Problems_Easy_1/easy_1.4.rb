# RB101 Lesson 3: Practice Problems - Easy 1.4

# What do the following method calls do 
# (assume we reset numbers to the original array between method calls)?

numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)

# The Array#delete_at method deletes the element located at the given index integer. 
# In this case it will delete the integer 2 as Arrays are 0 based and 2 is located
# at index 1. It will return the removed item. It mutates the referenced array even though it
# doesn't have an !

# => 2
numbers # => [1, 3, 4, 5]

# ------------- #

numbers = [1, 2, 3, 4, 5]
numbers.delete(1)

# The Array#delete method deletes any occurance of the element given as argument
# In this case it will delete the integer 1. It will return the removed item.
# It mutates the referenced array even though it doesn't have an !

# => 1
numbers # => [2, 3, 4, 5]