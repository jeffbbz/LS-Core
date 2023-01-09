# Small Problems > Easy 3 > Short Long Short
[Link to Problem](https://launchschool.com/exercises/f175ddac)

## The Problem
Write a method that takes two strings as arguments, determines the  longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

## P: Understand the Problem
**Input:** two strings

- strings will be different lengths

**Output:** a string

- concatenated string with shorter argument string twice, surrounding the longer argument string

### Explicit Requirements
- write a method with two parameters
- compare the length of each string with the length of the other string
- concatenate the strings into one
  - "shortlongshort"


### Implicit Requirements



### Questions

1. what do we do with an empty string?
   1. return the longer string.


## E: Examples and Test Cases

```ruby
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"
```

## D: Data Structures
strings

## A: Algorithm
1. define a method with two string parameters
1. find the number characters of each string
1. compare these length values to each other
4. contatenate the higher value string inside two of the lower value strings.
   1. If string1 is longer than string2:
      1. string2 + string1 + string2
      2. else: string1 + string2 + string1
5. return the new string