# Small Problems > Easy 5 > Letter Swap

[Link to Problem](https://launchschool.com/exercises/56e92849)

## The Problem

Write a method that takes a string of words argument and returns a string with first and last letters of each word swapped.


## P: Understand the Problem
**Input:** string

- at least one char
- at least one word
- only words and whitespace

**Output:**  new string with input transformed

### Explicit Requirements

- define a method
- transform given string to swap letters

### Implicit Requirements



### Questions

1. Only one char word -> return char
1. only one word -> swap just that word


## E: Examples and Test Cases

```ruby
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'
```

## D: Data Structures

Array and strings


## A: Algorithm
1. define a method that takes a string argument
1. initialize an array whose elements are each words minus white space of the argument string
1. initialize an array whose elements are the first char of each word of previously initialized words array
4. iterate over the words array swapping the first char and last char of each word element
   1. re-assign the char substring found at index 0 of the string to the value of the char substring found at -1
   2. re-assign the char substring found at index -1 with the char element of the first chars array from step 3.
   3. return the transformed word as the return value of the block
5. store the result in a new array
6. join the elements of the array back into a single string
7. return the string