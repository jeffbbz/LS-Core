# Small Problems > Easy 5 > Does My List Include This?

[Link to Problem](https://launchschool.com/exercises/860cfef1)

## The Problem

Write a method that returns a boolean true if a given search value is found in a given array or false if not

## P: Understand the Problem

**Input:** array, object

**Output:** boolean

### Requirements

- don't use array#include?
- search value can be nil. if array contains nil it is true
- array can be empty and of course return value will be false

### Questions

1. 


## E: Examples and Test Cases

```ruby
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
```

## D: Data Structures

array


## A: Algorithm
1. Define method with given parameters
2. iterate over array checking if search value is included
   1. for each element of the array, does it equal the search value?
3. return true if yes
4. return false if no