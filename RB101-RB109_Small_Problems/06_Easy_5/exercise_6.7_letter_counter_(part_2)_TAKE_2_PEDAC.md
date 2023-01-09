# Small Problems > Easy 5 > Letter Counter (Part 2)

[Link to Problem](https://launchschool.com/exercises/16124e4d)

## The Problem

Modify `word_sizes` method from before to not count non letter characters


## P: Understand the Problem
**Input:** string of words

**Output:** hash of counts of words and their characters

### Explicit Requirements
- do not count non letter characters

### Implicit Requirements



### Questions

1. 


## E: Examples and Test Cases

```ruby
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}
```

## D: Data Structures


## A: Algorithm
1. define a method with one string argument
2. split the words of the string up into an array
3. iterate over the array transforming each element by delete non word characters from each word element
4. save each transformed word element to a new local variable
5. transform each newly transformed element to the length of that element
6. save that return value to a new array
7. transform the array into a hash with the array elements as the keys, and the count of those elements in the array as the value
8. return the hash