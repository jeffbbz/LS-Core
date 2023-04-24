=begin
  
### Goal:

Write a method that takes and array and block (that returns a boolean) and returns the count of how many times
the block returns true for the elements of the array.

### Rules:
INPUT: Array of elements, block
OUTPUT: Integer (number of times block returns true)
- Empty array returns 0
- inputs can be integers or strings or whatever
- block should return boolean values (T/F)

### Data Stucture: 
Array and Block

### Algorithm:
1. Iterate over the collection
  - for each element, yield and pass it to the block
  - select that element and add it to a new array
2. Return the size of the new array
=end

def count(collection)
  collection.select { |element| yield(element) }.size
end

# # with Integer#upto and #with_object for some reason

def count(collection)
  0.upto(collection.size - 1).with_object([]) do |index, arr|
    arr << true if yield(collection[index])
  end.size
end

# # with times for fun

def count(collection)
  collection.size.times.with_object([]) do |index, arr|
    arr << true if yield(collection[index])
  end.size
end

# with inject

def count(collection)
  collection.inject(0) do |sum, element|
    yield(element) ? sum + 1 : sum
  end
end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2