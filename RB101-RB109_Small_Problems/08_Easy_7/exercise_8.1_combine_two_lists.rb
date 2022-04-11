# Exercise 8.1

def interleave(arr1, arr2)
  new_arr = []
  index = 0
  
  loop do
    break if index >= arr2.length
    new_arr << arr1[index] << arr2[index]
    index += 1
  end

  new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c'])# == [1, 'a', 2, 'b', 3, 'c']

# or

def interleave(arr1, arr2)
  new_arr = []
  index = 0

  arr2.length.times do |i|
    new_arr << arr1[index] << arr2[index]
    index += 1
  end

  new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c'])# == [1, 'a', 2, 'b', 3, 'c']

# or 

def interleave(arr1, arr2)
  new_arr = Array.new(arr1.length) { |index| [arr1[index], arr2[index]] }
  new_arr.flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c'])# == [1, 'a', 2, 'b', 3, 'c']

# or Example Answer

def interleave(arr1, arr2)
  new_arr = []
  arr1.each_with_index { |element, index| new_arr << element << arr2[index] }
  new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c'])# == [1, 'a', 2, 'b', 3, 'c']

# further exploration with zip

def interleave(arr1, arr2)
  new_arr = arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c'])# == [1, 'a', 2, 'b', 3, 'c']