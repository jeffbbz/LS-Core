#Exercise 1.7

s = 'abc'
puts s.public_methods.inspect

# Object#public_methods:
# https://ruby-doc.org/core-3.1.0/Object.html#method-i-public_methods

# signature:
# public_methods(all=true) → array

# Returns the list of public methods accessible to obj. 
# If the all parameter is set to false, only those methods 
# in the receiver will be listed.

# thus we need to add "all=false parameter"

s = 'abc'
puts s.public_methods(false).inspect