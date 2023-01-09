# Small Problems > Easy 4 > What Century is That?

[Link to Problem](https://launchschool.com/exercises/f4f25695)

# The Problem

Write a method that takes a year as input and returns the century.   The return value should be a string that begins with the century number, and ends with `st`, `nd`, `rd`, or `th` as appropriate for that number.

New centuries begin in years that end with `01`. So, the years 1901-2000 comprise the [20th century](https://en.wikipedia.org/wiki/20th_century).

## P: Understand the Problem

**Input:** integer

- represents a year

**Output:** a string

- representing the century
- beings with century number
- ends with proper number ending

### Explicit Requirements
- should end with  `st`, `nd`, `rd`, or `th` as appropriate for that number
- new centuries begin in years that end in 01
  - 1901-2000 == 20th century


### Implicit Requirements

- 1: st
- 2: nd
- 3: rd
- 4-20: th
- 21: st
- 22: nd
- 23: rd
- 24-30: th
- ...
- 1, 2, 3: st, nd, rd
- 0, 4-9: th
- except for 11, 12, 13, 14

### Questions

1. 

## E: Examples and Test Cases

```ruby
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
```

## D: Data Structures


## A: Algorithm
1. define a method to take one integer argument
1. Find the century
1. append the appropriate ending
1. return string of the century with ending