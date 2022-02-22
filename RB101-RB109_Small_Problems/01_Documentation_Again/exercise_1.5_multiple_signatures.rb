#Exercise 1.5

a = %w(a b c d e)

puts a.fetch(7)

# will output "index 7 outside of array bounds: -5...5 (IndexError)"
# because the array only has an index from 0(a) to 4(e)

puts a.fetch(7, 'beats me')

# will output "beats me". There is no index 7 but a default value is given
# so that is returned instead of an error

puts a.fetch(7) { |index| index**2 }

# will output 49. With argument index and a block, 
# returns the element at offset index if index is in range 
# (and the block is not called); 
# otherwise calls the block with index and returns its return value.
# Since index 7 is not in range for this array, the block is called
# and 7 squared is 49.


# core api > array > array#fetch
# https://ruby-doc.org/core-3.1.0/Array.html#method-i-fetch

# Signature:
# fetch(index) → element
# fetch(index, default_value) → element
# fetch(index) {|index| ... } → element 

# can be called with an index arg, or an index arg with default arg, 
# or an index arg with a block. default arg and block are optional, 
# but can't be used together

# Returns the element at its index and does "bounds checking" to check if
# element exists before fetching. An error is raised if element doesn't exist
# and a default value or a block are not provided.