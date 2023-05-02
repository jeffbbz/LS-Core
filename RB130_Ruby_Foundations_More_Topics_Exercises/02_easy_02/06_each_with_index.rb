=begin

### Goal:
Write a method that implements something similar to Enumerable#each_with_object:
Take an array and a block, pass each element and its index to the block,
and return the original array

### Rules:
INPUT: array and block
OUTPUT: return arguement array
- return the same array unchanged
- must pass an index and an element to the block

### Algorithm:
1. Initialize an index variable to 0
2. Iterate over the array
  - for each element:
    - yield to the block
    - pass the element and index variable value
3. Return original array

=end

# # with each

def each_with_index(array)
  index = 0
  array.each do |element| 
    yield(element, index)
    index += 1
  end
end

# # with a while loop

def each_with_index(array)
  index = 0
  while index < array.size
    yield(array[index], index)
    index += 1
  end
  array
end

# with each_with_object (kinda dumb but wanted to try)

def each_with_index(array)
  array.each_with_object([0]) do |element, obj|
    yield(element, obj.first)
    obj[0] += 1
  end
  array
end

# with inject

def each_with_index(array)
  array.inject(0) do |index, element|
    yield(element, index)
    index + 1
  end
  array
end

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]

# 0 -> 1
# 1 -> 3
# 2 -> 36
# true