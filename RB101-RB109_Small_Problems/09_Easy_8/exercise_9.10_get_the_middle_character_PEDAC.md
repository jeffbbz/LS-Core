# Small Problems > Easy 8 > Get The Middle Character

[Link to Problem](https://launchschool.com/exercises/365dfb8b)

## The Problem

return a one or two character string which is the substring found at the middle of a given string

## P: Understand the Problem

**Input:** string

**Output:** string

### Explicit Requirements

- find the middle of a given string and return that substring
- if the length of the string is odd return a single char
- if length is even return two chars
- string will not be empty
- string can contain multiple words (whitespace chars)


## E: Examples and Test Cases

```ruby
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
```

## D: Data Structures




## A: Algorithm

1. define a method to take one string argument
1. initialize a variable to reference the value of the index integer of the middle character
   1. the length of the string - 1 divided by 2

1. If the string length is odd then use the index variable to access the char at that index
1. If the string length is even then use the index variable to access a range of that char and one additional char
1. return the middle of the string

