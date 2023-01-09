# Exercise 7.9

def include?(array, search_val)
  array.any? { |element| element == search_val }
end

# or

def include?(array, search_val)
  array.tally.key?(search_val)
end

# or

def include?(array, search_val)
  !!array.find_index(search_val)
end

# or

def include?(array, search_val)
  array.count(search_val) != 0
end


p include?([1,2,3,4,5], 3) #== true
p include?([1,2,3,4,5], 6) #== false
p include?([], 3) #== false
p include?([nil], nil) #== true
p include?([], nil) # == false