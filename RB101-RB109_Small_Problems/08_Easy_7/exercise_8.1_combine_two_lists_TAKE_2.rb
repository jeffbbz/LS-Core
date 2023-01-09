# Small Problems > Easy 7 > Combine Two Lists

# Brute force while loop

# def interleave(arr1, arr2)
#   new_arr = []

#   while arr2.length > 0
#     new_arr.push(arr1.shift).push(arr2.shift)
#   end
#   new_arr
# end

# Integer#times

# def interleave(arr1, arr2)
#   new_arr = []
#   arr2.length.times { new_arr.push(arr1.shift).push(arr2.shift) }
#   new_arr
# end

# Enumerable#each_with_object

# def interleave(arr1, arr2)
#   index = 0
#   arr1.each_with_object([]) do |arr1_el, new_arr|
#     new_arr << arr1_el << arr2[index]
#     index += 0
#   end
# end

# Enumerable#each_with_index

# def interleave(arr1, arr2)
#   new_arr = []
#   arr1.each_with_index do |arr1_el, index|
#     new_arr << arr1_el << arr2[index]
#   end
#   new_arr
# end

# Array#zip

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']