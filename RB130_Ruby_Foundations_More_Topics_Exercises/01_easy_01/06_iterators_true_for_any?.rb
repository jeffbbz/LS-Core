=begin
  
### Goal:

Write an implementation of the Enumerable#any? method which takes
an array argument and a block and returns true if any element returns
true for the block or false otherwise

### Rules:
INPUT: Array of elements, block that returns a truthy/falsey value
OUTPUT: true or false
- Don't use all?, any? none? or one?
- return false if array empty
- stop and return true as soon as a block that returns true is encountered
- method should return true if the block returns true for any element

### Data Stucture:
Array and Block

### Algorithm:
1. Iterate over the input array
  - yield to the block for each element, passing it to the block
  - return true immediately if the block return true
2. If the iteration did not return true, return false

=end

def any?(collection)
  collection.each { |element| return true if yield(element) }
  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false