# Small Problems > Easy 6 > Find the Duplicate

[Link to Problem](https://launchschool.com/exercises/ae82edb6)

## The Problem

Write a method that returns the ASCII value of a passed argument string

## P: Understand the Problem

**Input:** A string

**Output:** an integer

### Explicit Requirements
- can use String#ord method to determine ASCII character values
- write a method that takes one string arg
- sum the ASCII values of all chars in string

### Implicit Requirements

- string may have spaces
- string may be empty (empty returns 0)
- ord returns integer ordinal of one char string so multi-char strings must be broken up in to substrings

### Questions

1. 


## E: Examples and Test Cases

```ruby
find_dup([1, 5, 3, 1]) == 1
find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
```

## D: Data Structures




## A: Algorithm
1. Define method with array parameter
2. initialize a new empty array
3. iterate over teh argument array selecting any element that has a count higher than 1 and store this elements in the new array
4. return an element from the new array