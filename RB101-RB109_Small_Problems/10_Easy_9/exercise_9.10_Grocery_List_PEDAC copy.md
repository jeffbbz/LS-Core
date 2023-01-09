# Small Problems > Easy 9 > Grocery List

[Link to Problem](https://launchschool.com/exercises/c1dfffc8)

## The Problem

take a nested array where each inner array is a two element array of fruit and quantity and return an array where each fruit element is repeated as many times as the quanity.

## P: Understand the Problem

**Input:** nested array of string and integer

**Output:** 1d array of strings

### Explicit Requirements

- 


## E: Examples and Test Cases

```ruby
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
```

## D: Data Structures

array and maybe hash?


## A: Algorithm

1. define a method to take a 2d array
1. convert the array to a hash where the fruit is the key and the value is the quanity and store the reference in a new local variable
1. iterate over the hash passing each fruit key to a new array its quantity value number of times
1. return array 
