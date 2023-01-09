# Small Problems > Easy 4 > Leap Years (Part 1)
[Link to Problem](https://launchschool.com/exercises/f44b8f8b)

## The Problem

Write a method with integer input representing  a certain year and returns true or false if that year is a leep year

## P: Understand the Problem
**Input:** a positive integer (a year)
**Output:** boolean value (true for leep year, false for not)

### Explicit Requirements
- define a method with one parameter
- leap years are years that can be dividled by 4 with no remainder unless also divided by 100.
- if divisible by 100 then only a leep year if also divisible by 400

### Implicit Requirements

- 

### Questions
1. 

## E: Examples and Test Cases

```ruby
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true
```



## D: Data Structures
method

## A: Algorithm
1. write a method that takes one argument
1. check if argument integer is divisible by 4 and not 100
1. check if argument integer is divisible by 400 if divisible by 4 and 100.
1. return true if the above is true, false if not