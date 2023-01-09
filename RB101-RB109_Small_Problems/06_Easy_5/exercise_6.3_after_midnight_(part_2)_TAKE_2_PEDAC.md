# Small Problems > Easy 5 > After Midnight (Part 2)

[Link to Problem](https://launchschool.com/exercises/34f92353)

## The Problem

write two methods. one will take a 24 hour time of day string argument and return the minutes before midnight, the other will take the same and return minutes after midnight


## P: Understand the Problem
**Input:** string

**Output:** integer

### Explicit Requirements
- return value of integers should be in the range 0..1439
- don't' use date or time class methods
- no DST and etc.


## E: Examples and Test Cases

```ruby
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0
```

## D: Data Structures


## A: Algorithm
1. initialize a constant variable to reference the minutes in an hour (60)
2. define a method after_midnight that takes one string argument
3. convert the hours (first two substrings) to an integer and store it in an new variable
4. convert the minutes (last two substrings) to an integer  and store it in an new variable
5. multiply the hours integer by number of minutes in an hour (60)
6. add the return value to the minutes integer
7. return integer
8. define a method before_midnight that takes one string argument
9. convert the hours (first two substrings) to an integer and store it in an new variable
10. multiply the hours integer by number of minutes in an hour (60) 
11. convert the minutes (last two substrings) to an integer and store it in an new variable
12. subtract the minutes integer from from the hours integer
13. return return value