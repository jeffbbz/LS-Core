# Small Problems > Easy 9 > Counting Up

[Link to Problem](https://launchschool.com/exercises/38531b9c)

## The Problem

take a given integer and return an array of numbers from 1 up to and including the integer

## P: Understand the Problem

**Input:** integer

**Output:** array of integers 

### Explicit Requirements

- given integer will always be valie
- given integer will always be greater than 0
- returned array will be [1, x, x, given_integer] where x is every number between 1 and given number
- if argument is one, array will be [1]


## E: Examples and Test Cases

```ruby
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
```

## D: Data Structures

array


## A: Algorithm

1. define a method to take one integer argument
1. create a range from 1 to that integer
1. convert to array
1. return it
