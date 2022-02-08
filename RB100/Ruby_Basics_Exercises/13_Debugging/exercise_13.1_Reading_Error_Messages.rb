#Exercise 13.1

# What errors does it raise for the given examples 
# and what exactly do the error messages mean?

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0)

# Error ->
# rb:6:in `find_first_nonzero_among': wrong number of arguments 
# (given 6, expected 1) (ArgumentError) from rb:14:in `<main>'

# This ArguementError is returned because the method defined on line 6
# accepts 1 parameter (numbers) but when its called on line 14 there are 6 arguments.

# line 14 should be invoked one array: find_first_nonzero_among([0, 0, 1, 0, 2, 0])

find_first_nonzero_among(1)

# rb:7:in `find_first_nonzero_among': 
# undefined method `each' for 1:Integer (NoMethodError)
# numbers.each do |n|
#         ^^^^^
#from rb:25:in `<main>'

# This NoMethodError occurs because the method definition 
# calls the #each method on line 7. #each is used on arrays not integers
# and the argument on line 25 is not an array.

# line 28 should be invoked as: find_first_nonzero_among([1])