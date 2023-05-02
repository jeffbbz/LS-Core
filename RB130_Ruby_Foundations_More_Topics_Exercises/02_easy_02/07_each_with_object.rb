=begin

### Goal:
Implement a method similar to each_with_object:
Take an array and an object and a block, yield the elements and the object to the block,
return the object after iteration


### Rules:
INPUT: Array, collection object, block
OUTPUT: collection object modified by the block
- array can be any number of elements
- object can be array or hash
- empty array returns the original object passed as argument

### Algorithm:
1. Iterate the input array, on each iteration
  - pass the element and object to the block
  - update the object according to the return value of the block
2. Return the object modified

=end

# with inject

def each_with_object(array, object)
  array.inject(object) do |obj, element|
    yield(element, obj)
    obj
  end
end

# with each

def each_with_object(array, object)
  array.each { |element| yield(element, object) }
  object
end

# with until loop

def each_with_object(array, object)
  idx = 0
  until idx == array.size
    yield(array[idx], object)
    idx += 1
  end
  object
end

result = each_with_object([1, 3, 5], []) do |value, list|
  list << value**2
end
p result == [1, 9, 25]

result = each_with_object([1, 3, 5], []) do |value, list|
  list << (1..value).to_a
end
p result == [[1], [1, 2, 3], [1, 2, 3, 4, 5]]

result = each_with_object([1, 3, 5], {}) do |value, hash|
  hash[value] = value**2
end
p result == { 1 => 1, 3 => 9, 5 => 25 }

result = each_with_object([], {}) do |value, hash|
  hash[value] = value * 2
end
p result == {}