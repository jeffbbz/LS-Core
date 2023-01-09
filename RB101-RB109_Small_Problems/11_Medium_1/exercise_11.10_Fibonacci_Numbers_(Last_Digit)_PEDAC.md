# Small Problems > Medium 1 > Fibonacci Numbers (Last Digit)

[Link to Problem](https://launchschool.com/exercises/c1dfffc8)

## The Problem

find the number at the given digit of a fiboncacci sequence then return the last digit in that number

## P: Understand the Problem

**Input:** a place number in the fib sequence

**Output:** last digit of the number found at that place

### Explicit Requirements

- find the number at a certain place in the fib series
- find the last digit of that number

## E: Examples and Test Cases

```ruby
fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4
```

## D: Data Structures

array


## A: Algorithm

1. define a method that takes an integer
1. iterate argument - 2 times with an array of two elements [1, 1] which are the first two fib series numbers
1. one each iteration append the a new element to the array which is the element at the current index number added to the element at the next index number
1. increase the index by 1
1. access the last element of the resulting array and return the last digit in that element
