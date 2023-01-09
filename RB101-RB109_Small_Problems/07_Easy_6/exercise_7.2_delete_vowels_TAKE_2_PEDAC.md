# Small Problems > Easy 5 > Delete vowels

[Link to Problem](https://launchschool.com/exercises/8fa5da79)

## The Problem

Write a method that takes an array of strings and returns an array of the string values with vowels deleted.

## P: Understand the Problem

**Input:** array of strings

**Output:** array of strings

### Explicit Requirements
- input is array with string object elements

### Implicit Requirements

- arrays may have one element or more
- capitalization doesn't matter for deletion


## E: Examples and Test Cases

```ruby
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
```

## D: Data Structures

arrays


## A: Algorithm
1. define a method to take one array argument
2. iterate over the array deleting vowels chars from each of its elements
   1. for each word string element in the array compare chars to vowel subset
   2. delete if matching
3. return the transformed array