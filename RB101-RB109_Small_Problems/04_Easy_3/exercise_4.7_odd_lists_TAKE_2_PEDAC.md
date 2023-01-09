# Small Problems > Easy 3 > Odd Lists

[Link to Problem](https://launchschool.com/exercises/7ced73ba)

## The Problem

Write a method that returns an Array that contains every other element of an `Array` that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array

## P: Understand the Problem

**Input:** an array

**Output:**  a new array

- elements are the odd numbered elements of the argument array

### Explicit Requirements

- define a method to accept one array argument
- return a new array of the odd numbered elements

### Implicit Requirements
- Odd numbered elements of the argument array will be those at even index numbers (0, 2, 4...)

### Questions

- Can the array elements be any datatype? 
  - At least strings and integers

- What to do with an empty array?
  - return an empty array

- What to do with an array of one element?
  - return that element (as it is the first anyway)


## E: Examples and Test Cases

```ruby
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
```



## D: Data Structures

array

## A: Algorithm

1. define the oddities method with a parameter
1. initialize a new empty array for the return value of the method
1. iterate over the argument array, passing the elements at even index numbers to the new array
1. return the new array