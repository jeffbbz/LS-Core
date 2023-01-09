# Small Problems > Easy 8 > Palindromic Substrings

[Link to Problem](https://launchschool.com/exercises/77884ef5)

## The Problem

return an array of substrings of all the palindromes in a given string

## P: Understand the Problem

**Input:** string

**Output:** array of palindromic substrings in order of appearance in given string

### Explicit Requirements

- find palindrome substrings in given string
- need to be in same order of given string
- palindromes are same forwards and backwards, case matters as does non alpha characters
- a single char is not a palindrome
- can use previous substring method


## E: Examples and Test Cases

```ruby
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
```

## D: Data Structures

strings and arrays


## A: Algorithm

1. define a method to take one string argument
1. pass the string to a method to create an array of all substrings
1. check if each substring is equal to itself reversed and that its size is greatere than 1.
1. if so select it to add to a new array to be returned
1. return the array of palindromes
