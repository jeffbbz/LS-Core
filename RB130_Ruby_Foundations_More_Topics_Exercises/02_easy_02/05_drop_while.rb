=begin

### Goal:
Implement a method like Enumerable#drop_while:
Take an array argument and a block and and calls the block on each element
until a falsy value is returned at which point a new array is returned
with that element that made the block return a falsy value and any after it.

### Rules:
INPUT: Array and block
OUTPUT: New array of element that returned falsey value and any after
- empty array returns empty array
- if first element is falsey then new array is same as old array
- if all elements are truthy, return empty array

### Algorithm:
1. Iterate over the input array with index and a new arr
  - yield to the block
  - pass each element to the block one by one
  - if any element is falsey add it from its index until -1 index to a new array
2. return new 

# Refactored Algo:
1. Iterate over the input array with index
  - yield to the block
  - pass each element to the block
  - if any element is falsey return a new array from the calling array at that index
    to the end (-1) index
2. Otherwise return an empty array

=end

# First try with each_with_object and with_index

def drop_while(array)
  array.each_with_object([]).with_index do |(item, arr), idx|
    if !yield(item)
      arr = array[idx..-1]
      return arr
    end
  end
end

# refactored with just each_with_index

def drop_while(array)
  array.each_with_index { |item, idx| return array[idx..-1] if !yield(item) }
  []
end

# until loop for fun following LS example

def drop_while(array)
  idx = 0
  idx += 1 until idx == array.size || !yield(array[idx])
  array[idx..-1]
end  

# with inject

def drop_while(array)
  array.inject(0) do |index, element|
    return array[index..-1] if !yield(element)
    index + 1
  end
  []
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []