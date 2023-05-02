=begin

### Goal:
Implement a method called count that exhibits behavior similar to Enumerable#count:
Takes any number of arguments and a block and returns the count of arguments for which
the block returned true. If not block is given, returns a count of arguments.

### Rules:
INPUT: arbitrary list of arguments, block
OUTPUT: an integer count or args for which the block returns true.
- without block returns #size
- with block returns count of times the block returns true
- can be any number of arguments
- returns an integer
- no arguments returns 0

### Initial Thoughts:
- How to get an arbitrary list of arguments?
  - * prepended to parameter
- Check if block is given
  - if not given return count of args
  - if given then Iterate over the list of args
    - yield to the block
    - pass each arg to block
    - if block returns true increase a counter or add to a new array
- return size of array or value of counter

### Data Structures:
Lists, Arrays, Blocks

### Algorithm
1. Check if block is given
  - if not given then return count of args
2. If given iterate over args
    - yield to block and pass each arg to block
    - if block returns true increase a counter or add to new array
    - if using array return
3. Return the array size or the counter value as the return value of the method

=end

def count(*args)
  return args.size unless block_given?
  args.each_with_object([]) do |arg, arr|
    arr << arg if yield(arg)
  end.size
end

# with each and a counter

def count(*args)
  return args.size unless block_given?
  counter = 0
  args.each { |arg| counter += 1 if yield(arg) }
  counter
end

# with inject

def count(*args)
  return args.size unless block_given?
  args.inject(0) do |sum, arg| 
    yield(arg) ? sum + 1 : sum
  end
end

p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3
p count(1, 3, 6) == 3