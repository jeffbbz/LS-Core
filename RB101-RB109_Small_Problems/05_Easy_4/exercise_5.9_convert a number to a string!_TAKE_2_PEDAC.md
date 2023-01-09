# Small Problems > Easy 4 > Convert a Number to a String!
[Link to Problem](https://launchschool.com/exercises/cdc65476)

## The Problem
Convert a non-negative integer to its string representation without any standard conversion methods

## P: Understand the Problem
**Input:** and non-negative integer
**Output:** a string

### Explicit Requirements
- don't use standard conversion methods
- must return a string
- integers will be positive or zero

### Implicit Requirements
- 

### Questions
1. 

## E: Examples and Test Cases

```ruby
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'
```



## D: Data Structures

an array of digits

## A: Algorithm
1. define a method that takes one integer argument
1. create a constant hash of digit keys with string rep values
1. convert the integer into an array of single digits
1. map the string value onto the digits into a new array of strings.
1. concatente the strings together
1. return string