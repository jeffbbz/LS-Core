# Small Problems > Easy 6 > Halvsies

[Link to Problem](https://launchschool.com/exercises/d9b79537)

## The Problem

Write a method that returns a nested array of two arrays, each of the nested arrays contain the first and second half of the argument array respectively. 

## P: Understand the Problem

**Input:** an array

**Output:** a nested array of two arrays

### Explicit Requirements
- if elements of argument array are odd then first half will have one more
- split the array and put it in two, and then in one more array

### Implicit Requirements

- empty array returns a nested array of two empty arrays
- array with a single elements returns that element in the first array and and the second array is empty
- string may be empty (empty returns 0)


## E: Examples and Test Cases

```ruby
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
```

## D: Data Structures

nested array


## A: Algorithm
1. Define method with one array parameter
2. intialize two new empty arrays
3. pass the first half of the argument array to the first array
   1. take the the (array's size plus 1) / 2  number of elements from the front
4. pass the second half to the second array
   1. take the the (array's size plus 1) / 2  number of elements from the back
5. put both arrays inside another array
6. return nested array