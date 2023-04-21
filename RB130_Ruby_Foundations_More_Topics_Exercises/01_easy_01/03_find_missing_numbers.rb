=begin
  
### Goal:
Take a sorted (low to high) array of integers and 
return a new array of the integers that were missing in the input array
(also in order from low to high)

### Rules:
INPUT: An array of integers in numeric order (missing some nums)
OUTPUT: A new array of integers in numeric order
- Output array integers are not greater than highest input integer
- Output array integers are not lower than lowest input integer
- Output array should not include any integers from the input array
- if no numbers are missing then return empty array
- no limit on numbers in returned array
- input and returned integers can be negative or positive or zero

### Initial Thoughts:
- Take the first and last elements of the array and make a new range object
- compare the range object to the input array and add any elements not found
  in the input array to a new array.
- return the new array

### Data Structures:
- Arrays

### Algorithm:
- Define a method that takes one array argument
- Initialize a local variable to a range object
  from the first element of the arguement array to the last element.
- Iterate over the new range array
  - select each element of the new array that is not included in the input
    array
  - return a new array of just those elements
- Return new array from method

=end

# With #select following my algo

def missing(array)
  range = (array[0]..array[-1])
  range.select { |num| !array.include?(num) }
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []

# With Enumerable#each_cons following LS

def missing(array)
  array.each_cons(2).with_object([]) do | (first, second), newarr |
    newarr.concat(((first + 1)..(second - 1)).to_a)
  end
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []

# With a range and array#-

def missing(array)
  (array[0]..array[-1]).to_a - array
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []

# Further Exploration: Use a Method without a Block

# In the style of #select

def missing(array)
  new_arr = []
  range = (array.first..array.last).to_a
  counter = 0

  until counter == range.size
    new_arr << range[counter] if !array.include?(range[counter])
    counter += 1
  end
  
  new_arr
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []

# In the style of Enumerable#concat

def missing(array)
  new_arr = []
  counter = 0

  while counter < array.size - 1
    new_arr.concat(((array[counter] + 1)..(array[counter + 1] - 1)).to_a)
    counter += 1
  end

  new_arr
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
