# Small Problems > Easy 3 > Palindromic Strings (Part 1)

[Link to Problem](https://launchschool.com/exercises/71ca3279)

## The Problem

Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and  backward. For this exercise, case matters as does punctuation and spaces.

## P: Understand the Problem
**Input:** string

**Output:**  boolean value

- `true` if palindrome
- `false` if not

### Explicit Requirements

- write a method that takes one argument
- return boolean value if string is palindrome or not
- case matters
- punctution matters
- spaces matter

### Implicit Requirements
- 

### Questions

- 


## E: Examples and Test Cases

```ruby
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
```



## D: Data Structures

method and strings

## A: Algorithm

1. define a method with one string parameter
1. compare the string referenced by the method local variable to itself reversed
   1. There an easy reverse method available but if we did it without that:
      1. iterate over the string, starting from the -1 (last element) index and comparing it with the first element (at index 0)
1. return true if palindrome, false if not