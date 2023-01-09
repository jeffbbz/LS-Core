# Small Problems > Easy 9 > How long are you?

[Link to Problem](https://launchschool.com/exercises/15a07c61)

## The Problem

take a given string and return an array of substring elements which are each word and a space and the words length

## P: Understand the Problem

**Input:** string

**Output:** array of strings

###  Requirements

- take a string and divide it into substrings
- substrings should be in an array
- find the length of each substring
- append a space and length to each substring
- all non space characters are part of a word substring
- words will be separated by one space.
- empty string returns empty array


## E: Examples and Test Cases

```ruby
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []
```

## D: Data Structures

array


## A: Algorithm

1. define a method take on string argument
1. split the string into words as elements in an array
1. transform each element into itself + a space + the string represention of its integer length
1. return the array
