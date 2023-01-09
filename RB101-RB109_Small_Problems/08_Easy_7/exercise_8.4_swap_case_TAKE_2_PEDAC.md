# Small Problems > Easy 7 > Swap Case

[Link to Problem](https://launchschool.com/exercises/f149de8d)

## The Problem

Write a method that takes a string and swaps the case of all letter characters and returns a new string

## P: Understand the Problem

**Input:** string

**Output:** new string

### Explicit Requirements

- lower case should become uppercase
- uppercase should become lower case
- non alpha characters should be unchanged

### Implicit Requirements

- input will always be a string


## E: Examples and Test Cases

```ruby
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
```

## D: Data Structures

array


## A: Algorithm

1. define a method to take one string argument
2. match the string against reg expressions
   1. downcase chars that match uppercase regex 
   2. upcase chars that match lowercase regex

3. return new string

