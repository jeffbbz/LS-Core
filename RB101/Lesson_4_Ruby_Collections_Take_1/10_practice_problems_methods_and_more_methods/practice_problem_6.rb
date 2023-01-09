['ant', 'bear', 'caterpillar'].pop.size

# => 11

# Array#pop destructively removes and returns the last x elements from an array (where x is an optional arg number)
# as there is no argument here it removes and returns only the last element, 'caterpillar'. the
#size method will not be Array#size but String#size because it is being called on the return
# value of #pop, which is a string here. This will return an integer of the count of chars in 
# the string, in this case 11.
