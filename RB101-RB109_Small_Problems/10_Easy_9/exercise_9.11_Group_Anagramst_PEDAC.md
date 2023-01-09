# Small Problems > Easy 9 > Group Anagrams

[Link to Problem](https://launchschool.com/exercises/3e3f841c)

## The Problem

print out arrays of words from a list of words. the printed words should be anagrams for each other and grouped as such

## P: Understand the Problem

**Input:** array of strings

**Output:** printed arrays of anagram strings

### Explicit Requirements

- find anagrams in a group of words
- anagrams are words with the same letters but in different order
- group all anagrams together
- there are more than one set of anagrams in the given list
- print out the results
- all words have same number of letters


## E: Examples and Test Cases

```ruby
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

["demo", "dome", "mode"]
["neon", "none"]
#(etc)
```





## D: Data Structures

array


## A: Algorithm

1. define a method to take an array of string elements
1. initialize a new local variable and set it to reference the element at the first index of the array (words[0])
1. iterate over the array checking all the chars referenced by the local variable are also in each elment of the array
1. if found add to new array
1. move to next element in the array and repeat until all elements have been checked.
1. 
