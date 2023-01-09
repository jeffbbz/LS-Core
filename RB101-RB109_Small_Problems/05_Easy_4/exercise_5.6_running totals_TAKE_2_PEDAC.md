# Small Problems > Easy 4 > Running Totals
[Link to Problem](https://launchschool.com/exercises/ba434183)

## The Problem

Write a method with an integer array argument and return an array with same number of elements the running total of the sum of the array elements

## P: Understand the Problem
**Input:** an array of integer elements
**Output:** a new array of integer elements

- same number of elements
- elements are a running total of sum of all elements in array

### Explicit Requirements
- 

### Implicit Requirements
- Need to sum each array element with its following element and add the total to a new array

### Questions
1. 

## E: Examples and Test Cases

```ruby
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
```

first element, first element + second, new second element + old third element,...

## D: Data Structures
array

## A: Algorithm
1. define method which takes one array argument
1. initialize new empty array to store the result to be returned
3. iterate over argument array passing opertaion results to the new array
   1. new_arr first element: pass first element of argument array to new array
   2. new_arr second element: pass sum of first element of argument array and second element of argument array
   3. new_arr next element: pass sum of new_arr second element and arg_arr third element
   4. repeat until the new array has same number of elements as argument array
      1. last element of new array should be sum of all elements in argument array.
4. return new array