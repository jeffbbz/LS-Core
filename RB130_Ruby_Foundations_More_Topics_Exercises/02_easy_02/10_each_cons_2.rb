=begin

### Goal:
Implement a method like Enumberable#each_cons:
Take an array and a block, yield n consecutive elements to the block, return nil

### Rules:
INPUT:Array, n consecutive elements to iterate argument and Block
OUTPUT: nil
- argument is group size for consecutive elements
  - if 3 then 3 cons elements:
    [1, 2, 3, 4, 5]
    [1, 2, 3]  [2, 3, 4]  [3, 4, 5]

### Initial Thoughts:
- Pass n number of elements to the block

### Algorithm
- Iterate over the array with index
    - break from iteration if the element referenced by cons - 1 of the array is nil
    - if condition: 
      - if cons argument references 1
        - yield current element to the block
      - else 
        - yield a range sliced from the array from the current index to cons - 1
        - increment cons
- Return nil

=end

# with each_with_index

def each_cons(array, cons)
  array.each_with_index do |element, index|
    break if !array[cons - 1]
    if cons == 1
      yield(element)
    else
      yield(array[index..(cons - 1)])
      cons += 1
    end
  end
  nil
end

# same but with splat operator

def each_cons(array, cons)
  array.each_with_index do |element, index|
    break if !array[cons - 1]
    yield(*array[index..(cons - 1)])
    cons += 1
  end
  nil
end

# upto

def each_cons(array, cons)
  0.upto(array.size - cons) do |index|
    if cons == 1
      yield(array[index])
    else
      yield(array[index..(cons - 1)])
      cons += 1
    end
  end
  nil
end

# same but with splat operator

def each_cons(arr, cons)
  0.upto(arr.size - cons) { |index| yield(*arr[index, cons]) }
  nil
end

hash = {}
each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
p hash == { 1 => true, 3 => true, 6 => true, 10 => true }

hash = {}
each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
each_cons([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6], 3 => [6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6, 10] }

hash = {}
each_cons([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
p hash == {}
