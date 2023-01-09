# Small Problems > Medium 2 > Sum Square - Square Sum

[Link to Problem](https://launchschool.com/exercises/ce453287)

## The Problem

Take a given integer and find the square of the sum of all numbers between 1 and the integer. Then subtract the sum of squaring each integer between 1 and integer.

## P: Understand the Problem

**Input:** an integer

**Output:** an integer

### Explicit Requirements

- input will be positive
- 1 returns 0
- if 3 is input
- the numbers up to and including 3 are 1, 2, and 3 
- so we find the sum (1 + 2 + 3) = 6
- then we square the sum 6\*\*2 = 36
- then we find the sum of squaring each integer (1\*\*2 + 2\*\*2 + 3\*\*2) = 14
- then subtract 36 by 14 36-14 = 22
- return the final result of 22

## E: Examples and Test Cases

```ruby
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150
```

## D: Data Structures

array of integers

## A: Algorithm

1. define a method that takes an integer
1. initialize an array to store the integers from one to given integer
1. find the integers from 1 to given integer and add them to the array in order
   1. create a range and store it in an array
1. sum the array
1. square the sum
1. iterate over the original array, and transform each element to return value of squaring it
1. sum the returned array
1. subtract the sum of step 7 from step 4 sum
1. return the integer result
