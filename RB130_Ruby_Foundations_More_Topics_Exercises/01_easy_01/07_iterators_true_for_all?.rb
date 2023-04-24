=begin

### Goal:

Write an implementation of Enumerable#all? which returns true if
all elements return truthy values from the block or false otherwise

### Rules:
INPUT: Array, block
OUTPUT: true/false boolean
- don't use all?, any?, none? or one?
- method should return true if the block returns true for all elements
- method should stop iterating and return false immediately if the block returns false
- empty array should return true

### Data Structures:
Array and Block

### Algorithm:
1. Iterate over the input array
  - for each element, yield to the block and pass it to the block
  - return false if return value is falsey
2. Return True if iteration did not return false

=end

def all?(collection)
  collection.each { |element| return false unless yield(element) }
  true
end

p all?([1, 3, 5, 6]) { |value| value.odd? } == false
p all?([1, 3, 5, 7]) { |value| value.odd? } == true
p all?([2, 4, 6, 8]) { |value| value.even? } == true
p all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p all?([1, 3, 5, 7]) { |value| true } == true
p all?([1, 3, 5, 7]) { |value| false } == false
p all?([]) { |value| false } == true