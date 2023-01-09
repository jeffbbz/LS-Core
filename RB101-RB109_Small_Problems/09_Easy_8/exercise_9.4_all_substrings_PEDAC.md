# Small Problems > Easy 8 > All Substrings

[Link to Problem](https://launchschool.com/exercises/70718e76)

## The Problem

Write a method that takes a string and swaps the case of all letter characters and returns a new string

## P: Understand the Problem

**Input:** string

**Output:** array of substrings

### Explicit Requirements

- substrings should be sorted by position of first substring
- use the leading_substrings method is okay
- 

### Implicit Requirements

- input will always be a string


## E: Examples and Test Cases

```ruby
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
```

## D: Data Structures

array


## A: Algorithm

1. define a method to take one string argument
2. convert the string to an array of characters substrings
3. initialize a new empty array
4. iterate over the array
   1. pass each char, along with the string, and the new arr to the leading substrings method

   2. iterate over the string

   3. find the substring at the index where the current char is located and all the chars between that index and the index which is the length of the string - the current iterative index

   4. add this substring to the new array unless the last element of the arr (the most recently added) is the same as the substring

   5. return the arr to the original method and sort the results

   6. return array

