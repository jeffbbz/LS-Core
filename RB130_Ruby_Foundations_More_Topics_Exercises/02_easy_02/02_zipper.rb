=begin
  
### Goal:

Implement a method based on Array#zip, which takes two same sized arrays and returns
a nested array of two element arrays where each element is a consecutive element from each array


### Rules:
INPUT: two arrays of equal size
OUTPUT: a new nested array of x number of two element arrays were x is the size of the original input array
- arrays will be same sized
- inside two element arrays will be same number as array size
- elements are combined in order: [[array1[idx0], array2[idx0]], etc, etc]
- don't use Array#zip
- original array should not be mutated
- returned array is a new array

### Initial Thoughts:
- initailize a local var to a new empty array
- iterate over the first array with index
  - map the element at index 0 from array 1 and from array 2 to a nested array
  - and so on
- return new array


### Algorithm:
1. Iterate over first array with index
  - map the elements at each successive index from both arrays to a 2 element array
2. Return new nested array

=end

def zip(arr1, arr2)
  arr1.map.with_index { |arr1_el, idx| [arr1_el, arr2[idx]] }
end

# More complicated but another way

def zip(arr1, arr2)
  arr1.each_with_object([]).with_index do |(arr1_el, new_arr), idx|
    new_arr << [arr1_el, arr2[idx]]
  end
end

# Brute Force until Loop for fun

def zip(arr1, arr2)
  idx = 0
  new_arr = []

  until new_arr.size == arr1.size
    new_arr << [arr1[idx], arr2[idx]]
    idx += 1
  end

  new_arr
end

array1 = [1, 2, 3]
array2 = [4, 5, 6]

p zip(array1, array2) == [[1, 4], [2, 5], [3, 6]]
p array1 == [1, 2, 3]
p array2 == [4, 5, 6]