# Small Problems > Easy 8 > Double Char (Part 2)

[Link to Problem](https://launchschool.com/exercises/86fbfc4c)

## The Problem

double each char in a given strin, except for vowels, digits, punctuation and whitespace and return the string

## P: Understand the Problem

**Input:** string

**Output:** string

### Explicit Requirements

- double every char in a given string except:
  - vowels
  - digits
  - punctuation
  - whitespace

- return the string
- empty strings should be returned empty


## E: Examples and Test Cases

```ruby
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
```

## D: Data Structures

probably an array


## A: Algorithm

1. define a method to take string argument
1. convert the string to an array of chars
1. iterate over the array doubling each character element
   1. element x 2
   2. unless that char is a vowel, digit, punctuation, whitespace
1. rejoin the array into string
1. return the string
