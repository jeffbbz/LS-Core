=begin
  
### Goal:

Write an implementation of Enumerable#none? which returns true
if the block never returns a truthy value for an element

### Rules:
INPUT: array, block
OUTPUT: boolean t/f
- don't use all?, any?, none? one?
- method returns true if the block never does
- if the block returns true for an element imemdiately stop interating
  and return false
- empty array returns true

### Data Structures
Array and Block

### Algorithm:
1. Iterate over the input array
  - For each element, yield to the block and pass it in
  - return false if the block returns true
2. Otherwise return true

=end

def none?(collection)
  collection.each { |element| return false if yield(element) }
  true
end

# OR using previously made #any? with explicit block

def any?(collection)
  collection.each { |element| return true if yield(element) }
  false
end

def none?(collection, &block)
  !any?(collection, &block)
end

p none?([1, 3, 5, 6]) { |value| value.even? } == false
p none?([1, 3, 5, 7]) { |value| value.even? } == true
p none?([2, 4, 6, 8]) { |value| value.odd? } == true
p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p none?([1, 3, 5, 7]) { |value| true } == false
p none?([1, 3, 5, 7]) { |value| false } == true
p none?([]) { |value| true } == true