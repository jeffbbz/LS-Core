=begin

### Goal:
Define a new map method which implements the same functionality as Enumerable#map: 
Takes an array and a block, transforms the array via the block, and returns
a new array with the same number of elements, which have been transformed

### Rules:
INPUT: Array of elements, block
OUTPUT: A new array of the same number of elements, but transformed by the block
- Returns new array
- New Array elements are same in number as input array
- new array elements are transformed by the block
  - each element becomes the return the value of the block for its iteration
- only use a few methods to implement it

### Initial Thoughts
- Iterate over the input array
  - on each iteration, yield to the block and pass the element to it
  - add the trasformed element to a new array
  - return new array
- Return new array

### Data Structure:
Arrays, Block

### Algorithm:
1. Iterate over the input array and on each iteration:
  - yield to block
  - pass current element to the block
  - add return value of the yielded block to new array
2. Return new array

=end

# Enumerable#each_with_object

def map(arr)
  arr.each_with_object([]) { |element, new_arr| new_arr << yield(element) }
end

# Enumerable#each

def map(arr)
  new_arr = []
  arr.each { |element| new_arr << yield(element) }
  new_arr
end

# Enumerable#inject

def map(arr)
  arr.inject([]) { |arr, element| arr.push(yield(element)) }
end

p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]