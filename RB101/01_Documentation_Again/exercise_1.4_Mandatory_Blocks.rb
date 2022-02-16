#Exercise 1.4

a = [1, 4, 8, 11, 15, 19]


# core API > Array method > Array#bsearch 
# https://ruby-doc.org/core-3.1.0/Array.html#method-i-bsearch

# bsearch {|element| ... } → object
# bsearch → new_enumerator

 value = a.bsearch { |element| element > 8 }

 puts value