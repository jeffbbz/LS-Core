#Exercise 3.10

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# will print: 
# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo

# Why? Because although the arrays are different collections, elements they contain
# are references to the same String objects. So if the string objects are mutated
# then anywhere they are referenced will be affected. 

# This could get you in trouble if you aren't careful. Manually declaring variables or
# passing duplicate variable would help solve this problem