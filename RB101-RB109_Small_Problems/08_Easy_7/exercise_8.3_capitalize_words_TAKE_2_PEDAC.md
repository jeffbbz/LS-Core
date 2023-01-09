# Small Problems > Easy 7 > Capitalize Words

[Link to Problem](https://launchschool.com/exercises/1be5fbac)

## The Problem

write a method that returns a new string where the chars from a given string are lower case except for first char of each word which is uppercase

## P: Understand the Problem

**Input:** string

**Output:** new string

### Explicit Requirements

- input string will not be blank
- uppercase first letter of each word
- downcase all other letters

### Implicit Requirements

- don't uppercase quotes?


## E: Examples and Test Cases

```ruby
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
```

## D: Data Structures

array


## A: Algorithm

1. write a method that takes a string argument
1. convert the string into an array of words
3. if word is in quotes leave it alone else
   1. downcase all letters in the words
   2. upcase the first letter in the word

4. return new string

