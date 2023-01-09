# Small Problems > Medium 1 > Fibonacci Numbers (Procedural)

[Link to Problem](https://launchschool.com/exercises/336d2612)

## The Problem

re-write recursive fib method to solve without recursion

## P: Understand the Problem

**Input:** a place number in the fib sequence

**Output:** the fib number at that place number

### Requirements

- find the n placed number in the fib series without recursion
- fib series is first two numbers 1 then every next number the sum of the previous two numbers
  - 11235813...
  - if n is < 2
    - F(1) = 1
      F(2) = 1
    - if n > 2 then 
      - F(n) = F(n - 1) + F(n - 2)



## E: Examples and Test Cases

```ruby
fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501
```

## D: Data Structures




## A: Algorithm

1. define a method that take an integer argument
1. iterate argument - 2 times with an array of two elements: [1, 1] which are the first two numbers of the sequence
1. on each iteration, append a new element to array which is the element at the current index plus the element at the next index. 
1. increase the index by 1
1. return the last element of the resulting array
