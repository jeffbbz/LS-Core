# Small Problems > Easy 9 > Name Swapping

[Link to Problem](https://launchschool.com/exercises/62b0d0fc)

## The Problem

take a given first name string and return a new string with the name swapped last first.

## P: Understand the Problem

**Input:** string

**Output:** string

### Explicit Requirements

- input string will have two words divided by a space "first last"
  
- output string should have two words divided by a comma and space "last, first"
  


## E: Examples and Test Cases

```ruby
swap_name('Joe Roberts') == 'Roberts, Joe'
```

## D: Data Structures

string


## A: Algorithm

1. define a method to take string argument
1. convert the string to an array of words
1. concat or interpolation the words in the necessary form and return
