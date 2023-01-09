# Small Problems > Easy 5 > Letter Counter (Part 1)

[Link to Problem](https://launchschool.com/exercises/ae82edb6)

## The Problem

Write a method that takes a string with one or more space specreated words and returns a hash with the count of letters and how many words have that number of letters


## P: Understand the Problem
**Input:** string of word or words with spaces

**Output:** hash with key letter counts, value count of words with those counts

### Requirements

- words are any string of characters
- spaces not required
- empty string returns and empty array


## E: Examples and Test Cases

```ruby
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}
```

## D: Data Structures

an array and a hash

## A: Algorithm

**Mine**

1. define a method with one string argument
1. split the words of the string up into an array
1. iterate over the array, transforming each element to the length of that element
1. save that result to a new array
1. transform the array into a hash with the array elements as the keys, and the count of those elements in the array as the value
1. return the hash

**LS**

1. define a method with one string argument
2. initialize a new hash with a default value of 0
3. split the words of the string up into an array
4. iterate over the array assigning the length of each word element as keys of the hash, and the count of each element as the value
5. return the hash

