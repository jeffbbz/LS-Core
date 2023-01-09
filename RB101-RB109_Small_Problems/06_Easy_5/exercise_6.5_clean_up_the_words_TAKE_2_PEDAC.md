# Small Problems > Easy 5 > Clean up the words

[Link to Problem](https://launchschool.com/exercises/28ff0d86)

## The Problem

Write a method that replaces non-word characters with spaces but does not have more than one space in a row.


## P: Understand the Problem
**Input:** a string of words and non-word characters

**Output:** a string with only word characters and non-consecutive spaces

### Explicit Requirements
- strings will be lowercase
- consecutive spaces should be removed


## E: Examples and Test Cases

```ruby
cleanup("---what's my +*& line?") == ' what s my line '
```

## D: Data Structures

a string of substring characters / an array of chars

## A: Algorithm

**With gsub:**

1. define a method to take one string argument
1. iterate over the argument string, replacing all non-word characters with a " ".
1. Remove all consecutive spaces from the string
1. return string

**without gsub**

1. initialize a constant variable to reference an array of all word characters
2. define a method to take a string argument
3. intialize a new empty array
4. break up the string into an array of char substrings
5. iterate over the array of chars to find the word chars and pass them to the new array from #3
   1. check each char, if the char is found in the alphabet constant then add it to the new array
   2. if the char is not found, add a " " to the array unless the current last element of the array is a space
6. join the chars in the array back into a string
7. return the string