# Small Problems > Medium 1 > Fibonacci Numbers (Recursion)

[Link to Problem](https://launchschool.com/exercises/83e16900)

## The Problem

write a method that finds the given fibonacci number using recursion

## P: Understand the Problem

**Input:** an integer representing the place in the fibonnaci sequence

**Output:** the integer found at that place in the fib sequence

### Requirements

- find the n placed number in the fibonacci series using recursion

- fibonacci series  are endless series of numbers where the first two are 1 and then each after is the sum of the previous two
  - 11235813...
  - if n is < 2
    - F(1) = 1
      F(2) = 1
    - if n > 2 then 
      - F(n) = F(n - 1) + F(n - 2)

- recursive methods
  - call themselves at least once
  - have a stop condition
  - use the result returned by themselves



## E: Examples and Test Cases

```ruby
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765
```

## D: Data Structures

integers and recursive method


## A: Algorithm

1. define a method that takes an integer argument
1. create a return condition for when n == 1 or n == 2 (return 1) and end the recursion and method
1. call the fibbonaci method from within itself and pass as argument the given number minus 1
1. add this to the the same recursive call but number - 2
1. return the return value of the above
