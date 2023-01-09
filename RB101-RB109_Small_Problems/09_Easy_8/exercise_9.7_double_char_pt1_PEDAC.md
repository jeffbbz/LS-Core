# Small Problems > Easy 8 > Double Char (Part 1)

[Link to Problem](https://launchschool.com/exercises/665638e3)

## The Problem

double each char in a given string and return the string

## P: Understand the Problem

**Input:** string

**Output:** string

### Explicit Requirements

- double every char in a given string
  - spaces and non-alpha characters included

- return the string
- empty strings should be returned empty


## E: Examples and Test Cases

```ruby
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
```

## D: Data Structures

string


## A: Algorithm

1. define a method to take string argument
1. convert the string to an array of chars
3. iterate over the array doubling each character element
   1. element x 2

4. rejoin the array into string
5. return the string
