=begin

### Goal:
Implement a method like Enumberable#each_cons:
Take an array and a block, yield 2 consecutive elements to the block, return nil

### Rules:
INPUT:Array and Block
OUTPUT: nil

### Algorithm
- Iterate over the array with index
  - break if the array element reference returns nil(out of bounds)
  - yield to the block
  - variable 1 will be the element via element parameter
  - variable 2 will be the element via indexed element referece
  - pass these to the block
- Return nil if not already returned

=end

# with each_with_index

def each_cons(array)
  array.each_with_index do |element, idx|
    break if !array[idx+1]
    yield(element, array[idx+1])
  end
  nil
end

# with inject

def each_cons(array)
  array.inject(1) do |index, element|
    break if !array[index]
    yield(element, array[index])
    index + 1
  end
  nil
end

# with loop

def each_cons(array)
  first = 0
  second = 1

  loop do
    break if !array[second]
    yield(array[first], array[second])
    first += 1 
    second += 1
  end
  nil
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil
