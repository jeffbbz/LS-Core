# Small Problems > Easy 5 > Alphabetical Numbers

[Link to Problem](https://launchschool.com/exercises/c688f4e5)

## The Problem

write a method that sorts an array of integers in alphabetic order by their english word names.


## P: Understand the Problem
**Input:** array of integers

**Output:** array of integers sorted alphabetically

### Explicit Requirements

- integers will be between 0 and 19
- english words are zero to nineteen
- input and output are arrays of integers

### Implicit Requirements

- will need to sort the integers by alphabetic order but return then as integers

### Questions

1. Do we need to convert them back and forth or can we sort them without doing that?


## E: Examples and Test Cases

```ruby
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
```

input is     =>   [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]

output is  =>   [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]

This output is sorted [eight, eighteen, eleven, fifteen, five, etc...]

## D: Data Structures

arrays


## A: Algorithm
1. define a method with one array argument
1. initialize a hash constant and populate it with key (integer) - value (integer as word) pairs
1. iterate over the argument array sorting it by its elements re-assigned to words via the hash
1. return the sorted array