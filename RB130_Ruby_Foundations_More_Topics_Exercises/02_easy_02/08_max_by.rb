=begin

### Goal:
Implement a method similar to max_by:
Takes an array and a block, yields to the block, returns the element from the input array
for which the block returns the largest value

### Rules:
INPUT: Array and Block
OUTPUT: Element from input array
- if input array is empty return nil
- element returned should be the original element from the array not the return value of
  the block
- but block return value selects the element to return

### Algorithm:
1. Return nil if array is empty
2. Initialize a "largest" local variable to first element of array
3. Initialize a size variable to the return value of yielding largest to the block
2. Iterate over the argument array. For each element:
  - yield to the block and pass the element in
  - re-assign a "largest" to the element and size to the block return if the return is
    greater than the current value of size
3. Return value of largest variable

=end

# with each

def max_by(array)
  return nil if array.empty?
  largest = array[0]
  size = yield(largest)
  array[1..-1].each do |element|
    largest, size = element, yield(element) if yield(element) > size
  end
  largest
end

# with each_with_object, kinda goofy

def max_by(array)
  return nil if array.empty?
  size = yield(array[0])
  array[1..-1].each_with_object([array[0]]) do |element, arr|
    arr[0], size = element, yield(element) if yield(element) > size
  end.first
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil