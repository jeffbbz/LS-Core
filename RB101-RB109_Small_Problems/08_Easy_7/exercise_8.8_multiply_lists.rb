# Exercise 8.8

def multiply_list(arr1, arr2)
  index = 0
  result = []

  loop do
    break if index == arr1.length
    result << arr1[index] * arr2[index]
    index += 1
  end
 result
end

p multiply_list([3, 5, 7], [9, 10, 11])# == [27, 50, 77]

# or

def multiply_list(arr1, arr2)
  result = []
  arr1.each_index { |index| result << arr1[index] * arr2[index] }
  result
end

p multiply_list([3, 5, 7], [9, 10, 11])# == [27, 50, 77]

# Further Exploration

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |sub_arr| sub_arr.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])# == [27, 50, 77]