# Small Problems > Easy 8 > Reverse the Digits In a Number

[Link to Problem](https://launchschool.com/exercises/351fdfdb)

## The Problem

taken given integer and return it with digits reversed

## P: Understand the Problem

**Input:** positive integer

**Output:** reverse positive integer

### Explicit Requirements

- don't worry about leading zeros
- numbers should be reveresed
- one digit integer return same


## E: Examples and Test Cases

```ruby
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1
```

## D: Data Structures

string


## A: Algorithm

1. define a method that takes one integer argument
1. convert the integer to string
1. reverse the string
1. convert back into integer
1. return integer

