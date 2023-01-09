# Small Problems > Medium 2 > Unlucky Days

[Link to Problem](https://launchschool.com/exercises/a7fce257)

## The Problem

find how many friday the 13ths are in a given year

## P: Understand the Problem

**Input:** integer representing a year	

**Output:** integer count of number of firday the 13ths 

### Explicit Requirements

- use gregorian calendar
  
- use the Date class
  


## E: Examples and Test Cases

```ruby
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2
```

## D: Data Structures

array of dates


## A: Algorithm

1. require the date class
1. define a method to take an integer year argument
1. set a given year variable to the first day of the given year
1. set a year end variable to the last day of the given year
1. iterate over an array of dates of the year and select any day that is both friday and the 13th
1. count the size of the return new array
1. return that size integer
