# Small Problems > Easy 5 > After Midnight (Part 1)

[Link to Problem](https://launchschool.com/exercises/864acdb4)

## The Problem

Write a method that takes a minutes integer argument and returns the time of day in 24 hour format


## P: Understand the Problem
**Input:** an integer

- can be positive, negative, or 0

**Output:** a string representation of the time

- in the format "hh:mm"

### Explicit Requirements
- don't use Date or Time classes
- disregard DST and ST and other such things
- positive numbers are times after midnight
- negative numbers are times before midnight

### Implicit Requirements

- 0 can be an input. any integer input is valid
- might use Integer#divmod method or % method
- Kernel#format might be useful
- midnight is 00:00
  - 1 minute after midnight (1) will be 00:01
  - 1 minute before midnight (-1) will be 23:59

### Questions

1. Hint: 1440 minutes in a day


## E: Examples and Test Cases

```ruby
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"
```

## D: Data Structures

use some time constants. 


## A: Algorithm
1. initialize a constant variable minutes in a day to 1440 minutes and a constant variable minutes in an hour to 60
1. define a method that takes one integer argument
3. compare string argument to time of day constant
   1. if greater than then