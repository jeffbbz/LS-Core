# Exercise 8.8

# map with index

def multiply_list(arr1, arr2)
  arr1.map.with_index { |arr1_el, index| arr1_el * arr2[index] }
end

# or zip with inject

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |sub_arr| sub_arr.inject(:*) }
end

# or while loop

def multiply_list(arr1, arr2)
  new_arr = []
  index = 0

  while index < arr2.length
    new_arr << arr1[index] * arr2[index]
    index += 1
  end
  new_arr
end

# or times with index

def multiply_list(arr1, arr2)
  new_arr = [] 
  arr2.length.times.with_index do |_, index|
    new_arr << arr1[index] * arr2[index]
  end
  new_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]