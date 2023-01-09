# Small Problems > Easy 5 > Fibonacci Number Location By Length

[Link to Problem](https://launchschool.com/exercises/1ba53710)

## The Problem

Write a method that takes an integer argument and returns the location of where in the fib sequence the first number with the argument number of digits is found 

## P: Understand the Problem

**Input:** integer

**Output:** integer

### Requirements

- need to create a sequence of numbers
- first two numbers are 1 and every other number is sum of two previous numbers
- find the x numbered number that has the length of digits as the given argument number
- argument will always be greater than 2


## E: Examples and Test Cases

```ruby
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
```

Ex: the argument is 2. In the fibonacci sequence the first number with two digits (13) is the 7th number (at index 6 of an array)



## D: Data Structures

array


## A: Algorithm
1. Define method with one integer parameter
1. initialize a new array to contain the fibonacci sequence, with intial elements of 1 and 1
1. initialize a second number variable for the sequence to 1
1. initialize a next number variable to reference 2
5. loop over the numbers adding them to the array until the argument number is the same as the number of digits of the last number in the array
   1. add the number referenced by next number to the array
   2. iniitalize a first number variable to reference the current value of the second num variable
   3. re-assign the second num variable to the value referenced by the next num variable
   4. re-assign the next num variable to the sum of the values referenced by first and second nums.
   5. repeat the loop until the above condtion is met
   6. return the length of the array which is the position of the desired integer.