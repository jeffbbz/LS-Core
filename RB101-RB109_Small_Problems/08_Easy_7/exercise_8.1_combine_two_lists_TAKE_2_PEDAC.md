# Small Problems > Easy 7 > Combine Two Lists

[Link to Problem](https://launchschool.com/exercises/3b64283e)

## The Problem

write a method that takes two arrays and interleaves their elements into one new array

## P: Understand the Problem

**Input:** two arrays

**Output:** one new array

### Explicit Requirements

- argument arrays will have same number of elements
- argument arrays will not be empty

### Implicit Requirements

- returned array will be double the size of a single argument array


## E: Examples and Test Cases

```ruby
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
```

## D: Data Structures

arrays!


## A: Algorithm

1. define a method that takes two array arguments

2. initialize a new empty array

3. pass alternating elements from each array to the new array until all elements have been added to the new array

   1. newarray << first element of array 1
   2. newarray << first element of array 2
   3. stop when new array length is == to array1 and array 2 length

   4. return new array