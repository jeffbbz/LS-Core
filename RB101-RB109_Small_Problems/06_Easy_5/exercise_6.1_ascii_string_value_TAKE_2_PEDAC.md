# Small Problems > Easy 5 > ASCII String Value

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
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0
```

## D: Data Structures




## A: Algorithm
1. Define method with one string parameter
1. initialize array of substring chars from given argument string
1. iterate over the array and find the ascii value of each substring char
4. sum all returned values to one integer
5. return integer sum