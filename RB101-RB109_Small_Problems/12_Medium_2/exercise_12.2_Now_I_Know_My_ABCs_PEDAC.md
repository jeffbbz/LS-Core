# Small Problems > Medium 2 > Now I Know My ABCs

[Link to Problem](https://launchschool.com/exercises/41e03303)

## The Problem

write a method that checks if a given word can be spelled via a table of "blocks" and returns true or false

## P: Understand the Problem

**Input:** a string

**Output:** boolean true or false

### Explicit Requirements

- we have a table of word blocks
  - only one letter from the block can be used at a time

- input string case insensitive

## E: Examples and Test Cases

```ruby
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true
```

## D: Data Structures

nested array of array pairs



we pop off elements from pairs only if size is 2

## A: Algorithm

1. create a constant array with the spelling blocks
1. define a method to take a string argument
1. duplicate the constant array for manipulation
1. split the input string into an array of characters
1. iterate through the string remvoing each character from the spelling blocks array if the sub array size is == 2 or else return false
1. return true of all returned true, false otherwise
