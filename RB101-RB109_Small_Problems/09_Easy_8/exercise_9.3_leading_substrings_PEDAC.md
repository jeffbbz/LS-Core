# Small Problems > Easy 8 > Leading Substrings

[Link to Problem](https://launchschool.com/exercises/8bbbc072)

## The Problem

take a string and return an array of all possible substrings which are all substrings that start with the first substring char of the string

## P: Understand the Problem

**Input:** string

**Output:** array of string elements

### Explicit Requirements

- can be one or many char substrings
- every array element should have and start with the first string substring. 
- order should be shortest to longest


## E: Examples and Test Cases

```ruby
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
```

string[0..0]

string[0..1]

string[0..2]



## D: Data Structures

array


## A: Algorithm

1. write a method that takes a string argument
1. initialize a new empty array to store the final return
1. convert the the string into an array of char substrings
4. iterate over the array passing the first element to the new empty array
   1. then the first plus next, then first plus next plus next
   2. stop when the final element of the new array is the same as the original string

