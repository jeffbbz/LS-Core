# Small Problems > Easy 9 > Always Return Negative

[Link to Problem](https://launchschool.com/exercises/311da364)

## The Problem

take a given number and return the negative version of it, unless it is negative or zero then just return the number

## P: Understand the Problem

**Input:** integer

**Output:** negative integer or 0

### Explicit Requirements

- input will be any integer (poss, neg, 0)
- if input is positive return negative version
- if negative return input
- if 0 return input


## E: Examples and Test Cases

```ruby
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby
```

## D: Data Structures

method with integers, some sort of conditional/control flow logic


## A: Algorithm

1. write a method that takes an integer argument
1. if negative or 0 return intger immediatly
1. else return negative version
