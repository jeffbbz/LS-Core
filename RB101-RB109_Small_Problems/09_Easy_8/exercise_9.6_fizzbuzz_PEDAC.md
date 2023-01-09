# Small Problems > Easy 8 > fizzbuzz

[Link to Problem](https://launchschool.com/exercises/f1c61d35)

## The Problem

print all numbers including and between two given numbers. except if a number divisible by 3 print fizz instead, divisible by 5 print buzz instead and divisible by 3 and 5 print fizzbuzz instead

## P: Understand the Problem

**Input:** two integers

**Output:** print to screen between fist and second integer plus words

### Explicit Requirements

- print all numbers including and between given numbers
  - 1 and 15 -> 1..15
  - replace % 3 == 0 with fizz, % 5 == 0 with buzz and both with fizzbuzz
  - print out not return


### Implicit Requirements

- create a range of numbers
- check each number to see if divisible by 5 or 3 or both


## E: Examples and Test Cases

```ruby
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
```

## D: Data Structures

range and array


## A: Algorithm

1. define a method take two integer arguments
1. create and array range including the first until the second number including
3. replace divisble numbers with appropriate words
   1. if element % 3 == 0 & not 5 then fizz
   2. if element % 5 == 0 & not 3 then buzz
   3. if element % 3 and % 5 == 0 then fizzbuzz

4. output each element of the array

