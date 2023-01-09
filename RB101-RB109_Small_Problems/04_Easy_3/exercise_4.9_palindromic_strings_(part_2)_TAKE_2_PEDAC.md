# Small Problems > Easy 3 > Palindromic Strings (Part 2)

[Link to Problem](https://launchschool.com/exercises/8fca300b)

## The Problem

Write another method that returns true if the string passed as an  argument is a palindrome, false otherwise.  This time, however, your  method should be case-insensitive, and it should ignore all  non-alphanumeric characters.  If you wish, you may simplify things by  calling the `palindrome?` method you wrote in the previous exercise.

## P: Understand the Problem
**Input:** string

- maybe include upper and lower case letter characters, punctuation, and white spaces

**Output:**  boolean value

- true if palindrome
- false if not

### Explicit Requirements

- write a method with one parameter
- returns true if argument string is palindrome

### Implicit Requirements
- 

### Questions

- What is a palindrome?
- Same forwards and backwards
- Do non-alphanumeric characters count?
- no

## E: Examples and Test Cases

```ruby
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false
```



## D: Data Structures

strings and maybe an array

## A: Algorithm

1. define a method to accept one string argument
1. initialize a new empty array
1. pass alphanumeric characters only from the argument string to new array / delete non-alphanumeric characters from argument string add to to new array
1. pass new array to palindrome method
1. return boolean value