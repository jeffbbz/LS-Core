=begin

### Goal:

Create a new implementation of a method like Enumerable#one?
which returns true if the block returns a truthy value only once
or false otherwise

### Rules:
INPUT: Array and Block
OUTPUT: Boolean T/F
- do not use all?, any?, none?, one?
- empty array returns false
- method returns true if block is truthy only once
- should stop iterating and return false as upon second truthy block return
- return false if block did not return true at least once

### Algorithm
1. Iterate over the collection
  - For each element, yield to the block and pass the element to the block
  - each time the block returns true, increment a counter array
  - return false if counter array has more than 2 elements
2. If counter array has more than 1 element return false, otherwise return true

=end

def one?(collection)
  count = collection.each_with_object([]) do |element, count|
            return false if count.size > 1
            count << true if yield(element)
          end
  count.size == 1
end

p one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
p one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
p one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
p one?([1, 3, 5, 7]) { |value| true }           # -> false
p one?([1, 3, 5, 7]) { |value| false }          # -> false
p one?([]) { |value| true }                     # -> false