# Small Problems > Easy 5 > Combining Arrays

[Link to Problem](https://launchschool.com/exercises/1ba11514)

## The Problem

Write a method that returns a new array which contains all the values from two argument arrays without any duplicates

## P: Understand the Problem

**Input:** two arrays

**Output:** a new array

### Explicit Requirements
- no duplicates


## E: Examples and Test Cases

```ruby
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
```

## D: Data Structures

arrays

## A: Algorithm

1. Define method to accept two array arguments
2. combine the arrays into a new array
   1. initialize a new array
   2. add each element of each array into a new array
3. delete duplicates
   1. find the uniq elements and add to new array or delete non uniq elements
4. return new array