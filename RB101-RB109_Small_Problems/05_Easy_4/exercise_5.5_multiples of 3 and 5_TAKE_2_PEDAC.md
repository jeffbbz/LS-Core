# Small Problems > Easy 3 > Multiples of 3 and 5

[Link to Problem](https://launchschool.com/exercises/675bc8c9)

## The Problem
Writing a method that takes an integer great than one argument and return a integer that is the sum of all multiples of 3 or 5 between 1 and the given argument integer.

For instance, if the supplied number is `20`, the result should be `98` (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

## P: Understand the Problem
**Input:** integer greater than 1
**Output:** integer (sum of all multiples of 3/5 between 1 and input)

### Explicit Requirements
- integer input
- find the multiples of 3 within the input
- find the mutlipes of 5 within the input
- sum those numbers and return the value

## E: Examples and Test Cases

```ruby
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
```



## D: Data Structures
An Array of integers

## A: Algorithm
1. define a method with one parameter
2. initialize a range of number between 1 and input 
   1. find numbers in that range which are evenly divisible by 3
   2. find numbers in that range which are evenly divisible by 5
   3. select the found numbers and save them to a new array
3. sum the elements of the array
4. return sum