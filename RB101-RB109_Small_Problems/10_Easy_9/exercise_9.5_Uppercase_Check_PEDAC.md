# Small Problems > Easy 9 > Uppercase Check

[Link to Problem](https://launchschool.com/exercises/77884ef5)

## The Problem

return a boolean true if all alphabetic charcters in a string are uppercase false otherwise. ignore non alpa chars

## P: Understand the Problem

**Input:** string

**Output:** boolean true/false

### Requirements

- get a string
- check if all alpha chars are uppercase
- ignore non-alpha chars


## E: Examples and Test Cases

```ruby
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true
```

## D: Data Structures

string

## A: Algorithm

1. define a method to take one string argument
1. compare the upcased version of the string to itself
1. if equal then true, else false
